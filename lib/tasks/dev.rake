namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      load_task("Dropping existing database...") { %x(rails db:drop) }
      load_task("Creating new database...") { %x(rails db:create) }
      load_task("Migrating...") { %x(rails db:migrate) }
      load_task("Seeding...") { %x(rails db:seed) }
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

  def load_task (message)
    spinner = TTY::Spinner.new("[:spinner] #{message}")
    spinner.auto_spin
    yield
    spinner.success()
  end
end


