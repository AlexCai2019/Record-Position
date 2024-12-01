#將score變成translate
$function record:setting/translation {name: "$(name)"}
#輸出
$tellraw @s [{"text": "$(text): ", "hoverEvent": {"action": "show_text", "contents": "$(description)"}}, {"nbt": "root.args.option", "storage": "record:data", "interpret": true, "clickEvent": {"action": "run_command", "value": "/function record:setting/input {name: \"$(name)\", text: \"$(text)\"}"}}]