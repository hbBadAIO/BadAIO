from aiohttp import web
import simpleobsws

routes = web.RouteTableDef()


@routes.get("/")
async def home(request):
    print("home started!")
    return web.Response(text="Hello, world")


@routes.post("/setscene")
async def setscene(request):
    print("post started!")
    req = await request.json()
    if "scene" not in req:
        return web.Response(text="Need payload {scene:sceneyouwant}", status=400)
    scene = req["scene"]
    result = await ws.call("SetCurrentScene", {"scene-name": scene})
    print(result)
    scene = "test"
    return web.Response(text=f"Set scene to {scene}")


async def on_startup(app):
    await ws.connect()


async def on_cleanup(app):
    await ws.disconnect()


if __name__ == "__main__":
    app = web.Application()
    app.add_routes(routes)
    app.on_startup.append(on_startup)
    ws = simpleobsws.obsws(host="127.0.0.1", port=4444)
    web.run_app(app, port=5000)