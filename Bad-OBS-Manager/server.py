from aiohttp import web
import simpleobsws

routes = web.RouteTableDef()


@routes.get("/")
async def home(request):
    return web.Response(text="Hello, world")


@routes.post("/setscene")
async def setscene(request):
    req = await request.json()
    if "scene" not in req:
        return web.Response(text="Need payload {scene:sceneyouwant}", status=400)
    scene = req["scene"]
    await ws.connect()
    result = await ws.call("SetCurrentScene", scene)
    print(result)
    await ws.disconnect()
    return web.Response(text=f"Set scene to {scene}")


if __name__ == "__main__":
    app = web.Application()
    app.add_routes(routes)
    ws = simpleobsws.obsws(host="127.0.0.1", port=4444)
    web.run_app(app, port=5000)