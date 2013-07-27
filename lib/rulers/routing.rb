module Rulers
  class Application
    def get_controller_and_action(env)
      _, cont, action, _after =
        env["PATH_INFO"].split('/', 4)
      cont = cont.capitalize # People
      cont += "Controller" # PeopleController
      if cont == "Controller"
        [Object.const_get("Rulers::Controller", "index")]
      else
        [Object.const_get(cont), action]
      end
    end
  end
end
