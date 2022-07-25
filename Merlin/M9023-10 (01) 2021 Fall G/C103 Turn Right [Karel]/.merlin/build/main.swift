import Igis
import MerlinKarel

/*
 This main code is responsible for starting Igis and initializing
 the Director.
 It rarely needs to be altered.
 */
do {
    ShellDirector.createWorld(worldPlanType: WorldPlanner.self,
                              karelExecutorType: ActionPlan.self)
    
    let igis = Igis()
    try igis.run(painterType:ShellDirector.self)
} catch (let error) {
    print("Error: \(error)")
}

