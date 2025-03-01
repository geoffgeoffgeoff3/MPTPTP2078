%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:50:43 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 215 expanded)
%              Number of leaves         :   17 (  65 expanded)
%              Depth                    :   18
%              Number of atoms          :  116 ( 329 expanded)
%              Number of equality atoms :   44 ( 158 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1847,plain,(
    $false ),
    inference(subsumption_resolution,[],[f1840,f31])).

fof(f31,plain,(
    ~ r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1)) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,
    ( ~ r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1))
    & r1_tarski(sK0,sK1)
    & v1_relat_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f20,f26])).

fof(f26,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
        & r1_tarski(X0,X1)
        & v1_relat_1(X2) )
   => ( ~ r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1))
      & r1_tarski(sK0,sK1)
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f19])).

fof(f19,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f17,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r1_tarski(X0,X1)
         => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) ) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f16,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).

fof(f1840,plain,(
    r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1)) ),
    inference(superposition,[],[f1826,f337])).

fof(f337,plain,(
    ! [X2] : sK0 = k4_xboole_0(sK0,k4_xboole_0(X2,sK1)) ),
    inference(resolution,[],[f333,f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(f333,plain,(
    ! [X17] : r1_xboole_0(sK0,k4_xboole_0(X17,sK1)) ),
    inference(resolution,[],[f242,f30])).

fof(f30,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f27])).

fof(f242,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X2)
      | r1_xboole_0(X0,k4_xboole_0(X1,X2)) ) ),
    inference(resolution,[],[f237,f47])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X1,X2)
      | r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_xboole_1)).

fof(f237,plain,(
    ! [X6,X5] : r1_xboole_0(X5,k4_xboole_0(X6,X5)) ),
    inference(resolution,[],[f232,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | r1_xboole_0(X1,X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(f232,plain,(
    ! [X6,X7] : r1_xboole_0(k4_xboole_0(X6,X7),X7) ),
    inference(trivial_inequality_removal,[],[f229])).

fof(f229,plain,(
    ! [X6,X7] :
      ( k4_xboole_0(X6,X7) != k4_xboole_0(X6,X7)
      | r1_xboole_0(k4_xboole_0(X6,X7),X7) ) ),
    inference(superposition,[],[f43,f75])).

fof(f75,plain,(
    ! [X2,X3] : k4_xboole_0(X3,X2) = k4_xboole_0(k4_xboole_0(X3,X2),X2) ),
    inference(superposition,[],[f55,f51])).

fof(f51,plain,(
    ! [X0] : k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f33,f49])).

fof(f49,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f38,f48])).

fof(f48,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f37,f44])).

fof(f44,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f37,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f38,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f33,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(f55,plain,(
    ! [X2,X0,X1] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k3_tarski(k2_enumset1(X1,X1,X1,X2))) ),
    inference(definition_unfolding,[],[f45,f49])).

fof(f45,plain,(
    ! [X2,X0,X1] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(f43,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) != X0
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f1826,plain,(
    ! [X7] : r1_tarski(k10_relat_1(sK2,k4_xboole_0(sK0,X7)),k10_relat_1(sK2,sK1)) ),
    inference(superposition,[],[f1173,f687])).

fof(f687,plain,(
    ! [X50] : sK1 = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,X50))) ),
    inference(forward_demodulation,[],[f662,f50])).

fof(f50,plain,(
    ! [X0] : k3_tarski(k2_enumset1(X0,X0,X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f32,f49])).

fof(f32,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(f662,plain,(
    ! [X50] : k3_tarski(k2_enumset1(sK1,sK1,sK1,k1_xboole_0)) = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,X50))) ),
    inference(superposition,[],[f54,f561])).

fof(f561,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k4_xboole_0(sK0,X0),sK1) ),
    inference(resolution,[],[f349,f79])).

fof(f79,plain,(
    ! [X6,X8,X7] : r1_tarski(k4_xboole_0(k4_xboole_0(X6,X7),X8),X6) ),
    inference(superposition,[],[f35,f55])).

fof(f35,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f349,plain,(
    ! [X1] :
      ( ~ r1_tarski(k4_xboole_0(X1,sK1),sK0)
      | k1_xboole_0 = k4_xboole_0(X1,sK1) ) ),
    inference(superposition,[],[f41,f337])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,k4_xboole_0(X1,X0))
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k4_xboole_0(X1,X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k4_xboole_0(X1,X0))
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_xboole_1)).

fof(f54,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X0,X0,X0,k4_xboole_0(X1,X0))) ),
    inference(definition_unfolding,[],[f39,f49,f49])).

fof(f39,plain,(
    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(f1173,plain,(
    ! [X4,X5] : r1_tarski(k10_relat_1(sK2,X5),k10_relat_1(sK2,k3_tarski(k2_enumset1(X4,X4,X4,X5)))) ),
    inference(superposition,[],[f60,f451])).

fof(f451,plain,(
    ! [X0,X1] : k10_relat_1(sK2,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = k3_tarski(k2_enumset1(k10_relat_1(sK2,X0),k10_relat_1(sK2,X0),k10_relat_1(sK2,X0),k10_relat_1(sK2,X1))) ),
    inference(resolution,[],[f56,f29])).

fof(f29,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f27])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | k10_relat_1(X2,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = k3_tarski(k2_enumset1(k10_relat_1(X2,X0),k10_relat_1(X2,X0),k10_relat_1(X2,X0),k10_relat_1(X2,X1))) ) ),
    inference(definition_unfolding,[],[f46,f49,f49])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t175_relat_1)).

fof(f60,plain,(
    ! [X2,X3] : r1_tarski(X2,k3_tarski(k2_enumset1(X3,X3,X3,X2))) ),
    inference(superposition,[],[f52,f53])).

fof(f53,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f36,f48,f48])).

fof(f36,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f52,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f34,f49])).

fof(f34,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:15:53 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.42  % (11992)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.20/0.43  % (11993)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.20/0.47  % (11993)Refutation found. Thanks to Tanya!
% 0.20/0.47  % SZS status Theorem for theBenchmark
% 0.20/0.47  % SZS output start Proof for theBenchmark
% 0.20/0.47  fof(f1847,plain,(
% 0.20/0.47    $false),
% 0.20/0.47    inference(subsumption_resolution,[],[f1840,f31])).
% 0.20/0.47  fof(f31,plain,(
% 0.20/0.47    ~r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1))),
% 0.20/0.47    inference(cnf_transformation,[],[f27])).
% 0.20/0.47  fof(f27,plain,(
% 0.20/0.47    ~r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1)) & r1_tarski(sK0,sK1) & v1_relat_1(sK2)),
% 0.20/0.47    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f20,f26])).
% 0.20/0.47  fof(f26,plain,(
% 0.20/0.47    ? [X0,X1,X2] : (~r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) => (~r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1)) & r1_tarski(sK0,sK1) & v1_relat_1(sK2))),
% 0.20/0.47    introduced(choice_axiom,[])).
% 0.20/0.47  fof(f20,plain,(
% 0.20/0.47    ? [X0,X1,X2] : (~r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2))),
% 0.20/0.47    inference(flattening,[],[f19])).
% 0.20/0.47  fof(f19,plain,(
% 0.20/0.47    ? [X0,X1,X2] : ((~r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) & r1_tarski(X0,X1)) & v1_relat_1(X2))),
% 0.20/0.47    inference(ennf_transformation,[],[f17])).
% 0.20/0.47  fof(f17,negated_conjecture,(
% 0.20/0.47    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))))),
% 0.20/0.47    inference(negated_conjecture,[],[f16])).
% 0.20/0.47  fof(f16,conjecture,(
% 0.20/0.47    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).
% 0.20/0.47  fof(f1840,plain,(
% 0.20/0.47    r1_tarski(k10_relat_1(sK2,sK0),k10_relat_1(sK2,sK1))),
% 0.20/0.47    inference(superposition,[],[f1826,f337])).
% 0.20/0.47  fof(f337,plain,(
% 0.20/0.47    ( ! [X2] : (sK0 = k4_xboole_0(sK0,k4_xboole_0(X2,sK1))) )),
% 0.20/0.47    inference(resolution,[],[f333,f42])).
% 0.20/0.47  fof(f42,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0) )),
% 0.20/0.47    inference(cnf_transformation,[],[f28])).
% 0.20/0.47  fof(f28,plain,(
% 0.20/0.47    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 0.20/0.47    inference(nnf_transformation,[],[f10])).
% 0.20/0.47  fof(f10,axiom,(
% 0.20/0.47    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).
% 0.20/0.47  fof(f333,plain,(
% 0.20/0.47    ( ! [X17] : (r1_xboole_0(sK0,k4_xboole_0(X17,sK1))) )),
% 0.20/0.47    inference(resolution,[],[f242,f30])).
% 0.20/0.47  fof(f30,plain,(
% 0.20/0.47    r1_tarski(sK0,sK1)),
% 0.20/0.47    inference(cnf_transformation,[],[f27])).
% 0.20/0.47  fof(f242,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (~r1_tarski(X0,X2) | r1_xboole_0(X0,k4_xboole_0(X1,X2))) )),
% 0.20/0.47    inference(resolution,[],[f237,f47])).
% 0.20/0.47  fof(f47,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (~r1_xboole_0(X1,X2) | r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f25])).
% 0.20/0.47  fof(f25,plain,(
% 0.20/0.47    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | ~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1))),
% 0.20/0.47    inference(flattening,[],[f24])).
% 0.20/0.47  fof(f24,plain,(
% 0.20/0.47    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | (~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1)))),
% 0.20/0.47    inference(ennf_transformation,[],[f8])).
% 0.20/0.47  fof(f8,axiom,(
% 0.20/0.47    ! [X0,X1,X2] : ((r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => r1_xboole_0(X0,X2))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_xboole_1)).
% 0.20/0.47  fof(f237,plain,(
% 0.20/0.47    ( ! [X6,X5] : (r1_xboole_0(X5,k4_xboole_0(X6,X5))) )),
% 0.20/0.47    inference(resolution,[],[f232,f40])).
% 0.20/0.47  fof(f40,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f21])).
% 0.20/0.47  fof(f21,plain,(
% 0.20/0.47    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 0.20/0.47    inference(ennf_transformation,[],[f2])).
% 0.20/0.47  fof(f2,axiom,(
% 0.20/0.47    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).
% 0.20/0.47  fof(f232,plain,(
% 0.20/0.47    ( ! [X6,X7] : (r1_xboole_0(k4_xboole_0(X6,X7),X7)) )),
% 0.20/0.47    inference(trivial_inequality_removal,[],[f229])).
% 0.20/0.47  fof(f229,plain,(
% 0.20/0.47    ( ! [X6,X7] : (k4_xboole_0(X6,X7) != k4_xboole_0(X6,X7) | r1_xboole_0(k4_xboole_0(X6,X7),X7)) )),
% 0.20/0.47    inference(superposition,[],[f43,f75])).
% 0.20/0.47  fof(f75,plain,(
% 0.20/0.47    ( ! [X2,X3] : (k4_xboole_0(X3,X2) = k4_xboole_0(k4_xboole_0(X3,X2),X2)) )),
% 0.20/0.47    inference(superposition,[],[f55,f51])).
% 0.20/0.47  fof(f51,plain,(
% 0.20/0.47    ( ! [X0] : (k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0) )),
% 0.20/0.47    inference(definition_unfolding,[],[f33,f49])).
% 0.20/0.47  fof(f49,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 0.20/0.47    inference(definition_unfolding,[],[f38,f48])).
% 0.20/0.47  fof(f48,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 0.20/0.47    inference(definition_unfolding,[],[f37,f44])).
% 0.20/0.47  fof(f44,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f13])).
% 0.20/0.47  fof(f13,axiom,(
% 0.20/0.47    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 0.20/0.47  fof(f37,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f12,axiom,(
% 0.20/0.47    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.20/0.47  fof(f38,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 0.20/0.47    inference(cnf_transformation,[],[f14])).
% 0.20/0.47  fof(f14,axiom,(
% 0.20/0.47    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 0.20/0.47  fof(f33,plain,(
% 0.20/0.47    ( ! [X0] : (k2_xboole_0(X0,X0) = X0) )),
% 0.20/0.47    inference(cnf_transformation,[],[f18])).
% 0.20/0.47  fof(f18,plain,(
% 0.20/0.47    ! [X0] : k2_xboole_0(X0,X0) = X0),
% 0.20/0.47    inference(rectify,[],[f1])).
% 0.20/0.47  fof(f1,axiom,(
% 0.20/0.47    ! [X0,X1] : k2_xboole_0(X0,X0) = X0),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).
% 0.20/0.47  fof(f55,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) )),
% 0.20/0.47    inference(definition_unfolding,[],[f45,f49])).
% 0.20/0.47  fof(f45,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2))) )),
% 0.20/0.47    inference(cnf_transformation,[],[f7])).
% 0.20/0.47  fof(f7,axiom,(
% 0.20/0.47    ! [X0,X1,X2] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).
% 0.20/0.47  fof(f43,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k4_xboole_0(X0,X1) != X0 | r1_xboole_0(X0,X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f28])).
% 0.20/0.47  fof(f1826,plain,(
% 0.20/0.47    ( ! [X7] : (r1_tarski(k10_relat_1(sK2,k4_xboole_0(sK0,X7)),k10_relat_1(sK2,sK1))) )),
% 0.20/0.47    inference(superposition,[],[f1173,f687])).
% 0.20/0.47  fof(f687,plain,(
% 0.20/0.47    ( ! [X50] : (sK1 = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,X50)))) )),
% 0.20/0.47    inference(forward_demodulation,[],[f662,f50])).
% 0.20/0.47  fof(f50,plain,(
% 0.20/0.47    ( ! [X0] : (k3_tarski(k2_enumset1(X0,X0,X0,k1_xboole_0)) = X0) )),
% 0.20/0.47    inference(definition_unfolding,[],[f32,f49])).
% 0.20/0.47  fof(f32,plain,(
% 0.20/0.47    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.20/0.47    inference(cnf_transformation,[],[f3])).
% 0.20/0.47  fof(f3,axiom,(
% 0.20/0.47    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).
% 0.20/0.47  fof(f662,plain,(
% 0.20/0.47    ( ! [X50] : (k3_tarski(k2_enumset1(sK1,sK1,sK1,k1_xboole_0)) = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,X50)))) )),
% 0.20/0.47    inference(superposition,[],[f54,f561])).
% 0.20/0.47  fof(f561,plain,(
% 0.20/0.47    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k4_xboole_0(sK0,X0),sK1)) )),
% 0.20/0.47    inference(resolution,[],[f349,f79])).
% 0.20/0.47  fof(f79,plain,(
% 0.20/0.47    ( ! [X6,X8,X7] : (r1_tarski(k4_xboole_0(k4_xboole_0(X6,X7),X8),X6)) )),
% 0.20/0.47    inference(superposition,[],[f35,f55])).
% 0.20/0.47  fof(f35,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f4])).
% 0.20/0.47  fof(f4,axiom,(
% 0.20/0.47    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).
% 0.20/0.47  fof(f349,plain,(
% 0.20/0.47    ( ! [X1] : (~r1_tarski(k4_xboole_0(X1,sK1),sK0) | k1_xboole_0 = k4_xboole_0(X1,sK1)) )),
% 0.20/0.47    inference(superposition,[],[f41,f337])).
% 0.20/0.47  fof(f41,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~r1_tarski(X0,k4_xboole_0(X1,X0)) | k1_xboole_0 = X0) )),
% 0.20/0.47    inference(cnf_transformation,[],[f22])).
% 0.20/0.47  fof(f22,plain,(
% 0.20/0.47    ! [X0,X1] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k4_xboole_0(X1,X0)))),
% 0.20/0.47    inference(ennf_transformation,[],[f5])).
% 0.20/0.47  fof(f5,axiom,(
% 0.20/0.47    ! [X0,X1] : (r1_tarski(X0,k4_xboole_0(X1,X0)) => k1_xboole_0 = X0)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_xboole_1)).
% 0.20/0.47  fof(f54,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X0,X0,X0,k4_xboole_0(X1,X0)))) )),
% 0.20/0.47    inference(definition_unfolding,[],[f39,f49,f49])).
% 0.20/0.47  fof(f39,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f6])).
% 0.20/0.47  fof(f6,axiom,(
% 0.20/0.47    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).
% 0.20/0.47  fof(f1173,plain,(
% 0.20/0.47    ( ! [X4,X5] : (r1_tarski(k10_relat_1(sK2,X5),k10_relat_1(sK2,k3_tarski(k2_enumset1(X4,X4,X4,X5))))) )),
% 0.20/0.47    inference(superposition,[],[f60,f451])).
% 0.20/0.47  fof(f451,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k10_relat_1(sK2,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = k3_tarski(k2_enumset1(k10_relat_1(sK2,X0),k10_relat_1(sK2,X0),k10_relat_1(sK2,X0),k10_relat_1(sK2,X1)))) )),
% 0.20/0.47    inference(resolution,[],[f56,f29])).
% 0.20/0.47  fof(f29,plain,(
% 0.20/0.47    v1_relat_1(sK2)),
% 0.20/0.47    inference(cnf_transformation,[],[f27])).
% 0.20/0.47  fof(f56,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | k10_relat_1(X2,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = k3_tarski(k2_enumset1(k10_relat_1(X2,X0),k10_relat_1(X2,X0),k10_relat_1(X2,X0),k10_relat_1(X2,X1)))) )),
% 0.20/0.47    inference(definition_unfolding,[],[f46,f49,f49])).
% 0.20/0.47  fof(f46,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f23])).
% 0.20/0.47  fof(f23,plain,(
% 0.20/0.47    ! [X0,X1,X2] : (k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) | ~v1_relat_1(X2))),
% 0.20/0.47    inference(ennf_transformation,[],[f15])).
% 0.20/0.47  fof(f15,axiom,(
% 0.20/0.47    ! [X0,X1,X2] : (v1_relat_1(X2) => k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t175_relat_1)).
% 0.20/0.47  fof(f60,plain,(
% 0.20/0.47    ( ! [X2,X3] : (r1_tarski(X2,k3_tarski(k2_enumset1(X3,X3,X3,X2)))) )),
% 0.20/0.47    inference(superposition,[],[f52,f53])).
% 0.20/0.47  fof(f53,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0)) )),
% 0.20/0.47    inference(definition_unfolding,[],[f36,f48,f48])).
% 0.20/0.47  fof(f36,plain,(
% 0.20/0.47    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f11])).
% 0.20/0.47  fof(f11,axiom,(
% 0.20/0.47    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 0.20/0.47  fof(f52,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) )),
% 0.20/0.47    inference(definition_unfolding,[],[f34,f49])).
% 0.20/0.47  fof(f34,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 0.20/0.47    inference(cnf_transformation,[],[f9])).
% 0.20/0.47  fof(f9,axiom,(
% 0.20/0.47    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).
% 0.20/0.47  % SZS output end Proof for theBenchmark
% 0.20/0.47  % (11993)------------------------------
% 0.20/0.47  % (11993)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.47  % (11993)Termination reason: Refutation
% 0.20/0.47  
% 0.20/0.47  % (11993)Memory used [KB]: 2558
% 0.20/0.47  % (11993)Time elapsed: 0.043 s
% 0.20/0.47  % (11993)------------------------------
% 0.20/0.47  % (11993)------------------------------
% 0.20/0.47  % (11979)Success in time 0.113 s
%------------------------------------------------------------------------------
