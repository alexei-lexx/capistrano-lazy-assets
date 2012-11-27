require 'capistrano-lazy-assets/version'

if Capistrano::Configuration.instance
  Capistrano::Configuration.instance.load do
    namespace :deploy do
      namespace :assets do
        task :precompile, :roles => :web, :except => { :no_release => true } do
          begin
            from = source.next_revision(current_revision)
          rescue
            errr = true
          end
          if errr or capture("cd #{latest_release} && #{source.local.log(from)} app/assets/ | wc -l").to_i > 0
            run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
          else
            logger.info 'Skipping asset pre-compilation because there were no asset changes'
          end
        end
      end
    end
  end
end