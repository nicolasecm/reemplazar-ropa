texturaRopa = dxCreateTexture('ropa.png')

function reemplazarYColocar()
    local shader = dxCreateShader('shader.fx', 0 ,0, true, "ped")
    addPedClothes(localPlayer, 'tshirtwhite', 'tshirt', 0)
    engineApplyShaderToWorldTexture(shader, 'cj_ped_torso', localPlayer)
    dxSetShaderValue(shader, 'gTexture', texturaRopa)
end
addCommandHandler("poner", reemplazarYColocar)
