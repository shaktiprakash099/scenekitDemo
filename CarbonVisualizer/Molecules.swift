/*
* Copyright (c) 2014 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import Foundation
import SceneKit

class Molecules {
    class func methaneMolecule() -> SCNNode{
        let methaneMolecule =  SCNNode()
        // 1 Carbon
        _ = nodeWithAtom(atom: Atoms.carbonAtom(), molecule: methaneMolecule, position: SCNVector3Make(0, 0, 0))
        
        // 4 Hydrogen
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(-4, 0, 0))
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(+4, 0, 0))
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(0, -4, 0))
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(0, +4, 0))
        
        return methaneMolecule
       
    }
    class func ethaneMolecule()->SCNNode{
        let ethaneMolecule = SCNNode()
        1//1 carbon
        _ = nodeWithAtom(atom: Atoms.carbonAtom(), molecule: ethaneMolecule, position: SCNVector3Make(-2, 0, 0))
        
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(-6, 0, 0))
        
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(-2, -4, 0))
        _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(-2, +4, 0))
        
        
         _ = nodeWithAtom(atom: Atoms.carbonAtom(), molecule: ethaneMolecule, position: SCNVector3Make(+2, 0, 0))
        
        // 6 Hydrogen
      
        
           _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(+2, -4, 0))
           _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(+2, +4, 0))
     
        //1 pxygen
                 _ = nodeWithAtom(atom: Atoms.oxygenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(+6, 0, 0))
        
          _ = nodeWithAtom(atom: Atoms.hydrogenAtom(), molecule: ethaneMolecule, position: SCNVector3Make(+8, +4, 0))
        
        
        return ethaneMolecule
    }
    class func ptfeMolecule()->SCNNode{
        var ptefeMolecule = SCNNode()
        
        let carbonatom = nodeWithAtom(atom: Atoms.carbonAtom(), molecule: ptefeMolecule, position: SCNVector3Make(-2, 0, 0))
        let florineatom = nodeWithAtom(atom: Atoms.fluorineAtom(), molecule: ptefeMolecule, position: SCNVector3Make(-2, -4, 0))
        let florineatomtwo = nodeWithAtom(atom: Atoms.fluorineAtom(), molecule: ptefeMolecule, position: SCNVector3Make(-2, +4, 0))
        
    _ = nodeWithAtom(atom: Atoms.carbonAtom(), molecule: ptefeMolecule, position: SCNVector3Make(+2, 0, 0))
        _ = nodeWithAtom(atom: Atoms.fluorineAtom(), molecule: ptefeMolecule, position: SCNVector3Make(+2, -4, 0))
     _ = nodeWithAtom(atom: Atoms.fluorineAtom(), molecule: ptefeMolecule, position: SCNVector3Make(+2, +4, 0))
        
        
        
        
        
        return ptefeMolecule
    }
    class func nodeWithAtom(atom: SCNGeometry, molecule: SCNNode, position: SCNVector3) -> SCNNode {
        let node = SCNNode(geometry: atom)
        node.position = position
        molecule.addChildNode(node)
        return node
    }
}
