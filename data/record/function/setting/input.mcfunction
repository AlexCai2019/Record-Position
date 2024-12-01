$execute store success score #$(name) rp_core if score #$(name) rp_core matches 0
$function record:setting/translation {name: "$(name)"}
$tellraw @a ["$(text) 現已設為 ", {"nbt": "root.args.option", "storage": "record:data", "interpret": true, "clickEvent": {"action": "run_command", "value": "/function record:setting/input {name: \"$(name)\", text: \"$(text)\"}"}}]