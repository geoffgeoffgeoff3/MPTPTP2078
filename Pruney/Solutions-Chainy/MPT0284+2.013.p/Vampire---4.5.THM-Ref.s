%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:41:40 EST 2020

% Result     : Theorem 1.28s
% Output     : Refutation 1.28s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 276 expanded)
%              Number of leaves         :   16 (  94 expanded)
%              Depth                    :   12
%              Number of atoms          :  115 ( 340 expanded)
%              Number of equality atoms :   22 ( 215 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f399,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f194,f234,f389,f398])).

fof(f398,plain,
    ( ~ spl2_2
    | spl2_3 ),
    inference(avatar_contradiction_clause,[],[f396])).

fof(f396,plain,
    ( $false
    | ~ spl2_2
    | spl2_3 ),
    inference(resolution,[],[f394,f170])).

fof(f170,plain,
    ( r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | ~ spl2_2 ),
    inference(avatar_component_clause,[],[f169])).

fof(f169,plain,
    ( spl2_2
  <=> r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_2])])).

fof(f394,plain,
    ( ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | spl2_3 ),
    inference(resolution,[],[f175,f47])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_xboole_0(X1,X0),X2)
      | ~ r1_tarski(X0,X2) ) ),
    inference(superposition,[],[f35,f25])).

fof(f25,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k3_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k3_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t108_xboole_1)).

fof(f175,plain,
    ( ~ r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | spl2_3 ),
    inference(avatar_component_clause,[],[f173])).

fof(f173,plain,
    ( spl2_3
  <=> r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_3])])).

fof(f389,plain,
    ( ~ spl2_2
    | ~ spl2_1
    | ~ spl2_3 ),
    inference(avatar_split_clause,[],[f388,f173,f165,f169])).

fof(f165,plain,
    ( spl2_1
  <=> r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).

fof(f388,plain,
    ( ~ r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) ),
    inference(forward_demodulation,[],[f373,f25])).

fof(f373,plain,
    ( ~ r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k4_xboole_0(sK0,sK1))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) ),
    inference(resolution,[],[f285,f41])).

fof(f41,plain,(
    ~ r1_tarski(k3_tarski(k2_enumset1(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0)))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) ),
    inference(definition_unfolding,[],[f23,f38,f39])).

fof(f39,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))) ),
    inference(definition_unfolding,[],[f31,f38])).

fof(f31,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_xboole_0)).

fof(f38,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f27,f37])).

fof(f37,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f28,f33])).

fof(f33,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f28,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f27,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f23,plain,(
    ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k5_xboole_0(sK0,sK1))) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k5_xboole_0(sK0,sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f21])).

fof(f21,plain,
    ( ? [X0,X1] : ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1)))
   => ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k5_xboole_0(sK0,sK1))) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ? [X0,X1] : ~ r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1))) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1))) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0,X1] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_zfmisc_1)).

fof(f285,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_tarski(k2_enumset1(X1,X1,X1,X0)),X2)
      | ~ r1_tarski(k3_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X2) ) ),
    inference(superposition,[],[f145,f248])).

fof(f248,plain,(
    ! [X4,X3] : k3_tarski(k2_enumset1(X3,X3,X3,X4)) = k3_tarski(k2_enumset1(X4,X4,X4,X3)) ),
    inference(superposition,[],[f71,f68])).

fof(f68,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X1,X0)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X1,X0)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X1,X0)),k4_xboole_0(k3_xboole_0(X1,X0),k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)))))) ),
    inference(superposition,[],[f44,f25])).

fof(f44,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X0,X1)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X0,X1)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X0,X1)),k4_xboole_0(k3_xboole_0(X0,X1),k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)))))) ),
    inference(definition_unfolding,[],[f30,f38,f39,f39])).

fof(f30,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_xboole_1)).

fof(f71,plain,(
    ! [X2,X3] : k3_tarski(k2_enumset1(X2,X2,X2,X3)) = k3_tarski(k2_enumset1(k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))),k3_xboole_0(X2,X3)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))),k3_xboole_0(X2,X3)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))),k3_xboole_0(X2,X3)),k4_xboole_0(k3_xboole_0(X2,X3),k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3)))))) ),
    inference(superposition,[],[f44,f43])).

fof(f43,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))) = k3_tarski(k2_enumset1(k4_xboole_0(X1,X0),k4_xboole_0(X1,X0),k4_xboole_0(X1,X0),k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f26,f39,f39])).

fof(f26,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(f145,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)
      | ~ r1_tarski(k3_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X2) ) ),
    inference(resolution,[],[f79,f46])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_tarski(k2_enumset1(k4_xboole_0(X0,X2),k4_xboole_0(X0,X2),k4_xboole_0(X0,X2),k4_xboole_0(X2,X0))),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f36,f39])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k5_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k5_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k5_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X2,X1)
        & r1_tarski(X0,X1) )
     => r1_tarski(k5_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t110_xboole_1)).

fof(f79,plain,(
    ! [X6,X8,X7] :
      ( ~ r1_tarski(k3_tarski(k2_enumset1(k4_xboole_0(X6,X7),k4_xboole_0(X6,X7),k4_xboole_0(X6,X7),k4_xboole_0(X7,X6))),X8)
      | ~ r1_tarski(k3_xboole_0(X6,X7),X8)
      | r1_tarski(k3_tarski(k2_enumset1(X6,X6,X6,X7)),X8) ) ),
    inference(superposition,[],[f46,f44])).

fof(f234,plain,(
    spl2_2 ),
    inference(avatar_contradiction_clause,[],[f231])).

fof(f231,plain,
    ( $false
    | spl2_2 ),
    inference(resolution,[],[f230,f60])).

fof(f60,plain,(
    ! [X6,X5] : r1_tarski(k4_xboole_0(X5,X6),k3_tarski(k2_enumset1(k4_xboole_0(X6,X5),k4_xboole_0(X6,X5),k4_xboole_0(X6,X5),k4_xboole_0(X5,X6)))) ),
    inference(superposition,[],[f42,f43])).

fof(f42,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f24,f38])).

fof(f24,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f230,plain,
    ( ~ r1_tarski(k4_xboole_0(sK1,sK0),k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))
    | spl2_2 ),
    inference(resolution,[],[f171,f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_zfmisc_1)).

fof(f171,plain,
    ( ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | spl2_2 ),
    inference(avatar_component_clause,[],[f169])).

fof(f194,plain,(
    spl2_1 ),
    inference(avatar_contradiction_clause,[],[f193])).

fof(f193,plain,
    ( $false
    | spl2_1 ),
    inference(resolution,[],[f190,f42])).

fof(f190,plain,
    ( ~ r1_tarski(k4_xboole_0(sK0,sK1),k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))
    | spl2_1 ),
    inference(resolution,[],[f167,f32])).

fof(f167,plain,
    ( ~ r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))
    | spl2_1 ),
    inference(avatar_component_clause,[],[f165])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n005.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:28:33 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.49  % (30226)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.21/0.49  % (30223)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.21/0.49  % (30233)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.21/0.49  % (30224)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.21/0.49  % (30237)lrs+11_64_acc=model:afp=100000:afq=1.2:anc=all_dependent:bd=off:bs=unit_only:cond=fast:fsr=off:gs=on:gsaa=full_model:gsem=off:irw=on:lma=on:nwc=1:stl=150:sac=on:sp=reverse_arity:urr=on:updr=off_893 on theBenchmark
% 0.21/0.50  % (30225)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.21/0.50  % (30229)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.21/0.50  % (30236)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.21/0.51  % (30231)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.21/0.51  % (30232)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 1.17/0.51  % (30230)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 1.17/0.51  % (30220)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 1.17/0.51  % (30222)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 1.17/0.51  % (30228)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 1.17/0.52  % (30231)Refutation not found, incomplete strategy% (30231)------------------------------
% 1.17/0.52  % (30231)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.17/0.52  % (30231)Termination reason: Refutation not found, incomplete strategy
% 1.17/0.52  
% 1.17/0.52  % (30231)Memory used [KB]: 10618
% 1.17/0.52  % (30231)Time elapsed: 0.078 s
% 1.17/0.52  % (30231)------------------------------
% 1.17/0.52  % (30231)------------------------------
% 1.17/0.52  % (30234)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 1.17/0.52  % (30227)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 1.17/0.52  % (30235)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 1.28/0.54  % (30221)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 1.28/0.55  % (30224)Refutation found. Thanks to Tanya!
% 1.28/0.55  % SZS status Theorem for theBenchmark
% 1.28/0.55  % SZS output start Proof for theBenchmark
% 1.28/0.55  fof(f399,plain,(
% 1.28/0.55    $false),
% 1.28/0.55    inference(avatar_sat_refutation,[],[f194,f234,f389,f398])).
% 1.28/0.55  fof(f398,plain,(
% 1.28/0.55    ~spl2_2 | spl2_3),
% 1.28/0.55    inference(avatar_contradiction_clause,[],[f396])).
% 1.28/0.55  fof(f396,plain,(
% 1.28/0.55    $false | (~spl2_2 | spl2_3)),
% 1.28/0.55    inference(resolution,[],[f394,f170])).
% 1.28/0.55  fof(f170,plain,(
% 1.28/0.55    r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | ~spl2_2),
% 1.28/0.55    inference(avatar_component_clause,[],[f169])).
% 1.28/0.55  fof(f169,plain,(
% 1.28/0.55    spl2_2 <=> r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))),
% 1.28/0.55    introduced(avatar_definition,[new_symbols(naming,[spl2_2])])).
% 1.28/0.55  fof(f394,plain,(
% 1.28/0.55    ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | spl2_3),
% 1.28/0.55    inference(resolution,[],[f175,f47])).
% 1.28/0.55  fof(f47,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (r1_tarski(k3_xboole_0(X1,X0),X2) | ~r1_tarski(X0,X2)) )),
% 1.28/0.55    inference(superposition,[],[f35,f25])).
% 1.28/0.55  fof(f25,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f1])).
% 1.28/0.55  fof(f1,axiom,(
% 1.28/0.55    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 1.28/0.55  fof(f35,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (r1_tarski(k3_xboole_0(X0,X2),X1) | ~r1_tarski(X0,X1)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f18])).
% 1.28/0.55  fof(f18,plain,(
% 1.28/0.55    ! [X0,X1,X2] : (r1_tarski(k3_xboole_0(X0,X2),X1) | ~r1_tarski(X0,X1))),
% 1.28/0.55    inference(ennf_transformation,[],[f5])).
% 1.28/0.55  fof(f5,axiom,(
% 1.28/0.55    ! [X0,X1,X2] : (r1_tarski(X0,X1) => r1_tarski(k3_xboole_0(X0,X2),X1))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t108_xboole_1)).
% 1.28/0.55  fof(f175,plain,(
% 1.28/0.55    ~r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | spl2_3),
% 1.28/0.55    inference(avatar_component_clause,[],[f173])).
% 1.28/0.55  fof(f173,plain,(
% 1.28/0.55    spl2_3 <=> r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))),
% 1.28/0.55    introduced(avatar_definition,[new_symbols(naming,[spl2_3])])).
% 1.28/0.55  fof(f389,plain,(
% 1.28/0.55    ~spl2_2 | ~spl2_1 | ~spl2_3),
% 1.28/0.55    inference(avatar_split_clause,[],[f388,f173,f165,f169])).
% 1.28/0.55  fof(f165,plain,(
% 1.28/0.55    spl2_1 <=> r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))),
% 1.28/0.55    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).
% 1.28/0.55  fof(f388,plain,(
% 1.28/0.55    ~r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))),
% 1.28/0.55    inference(forward_demodulation,[],[f373,f25])).
% 1.28/0.55  fof(f373,plain,(
% 1.28/0.55    ~r1_tarski(k3_xboole_0(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k4_xboole_0(sK0,sK1))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))),
% 1.28/0.55    inference(resolution,[],[f285,f41])).
% 1.28/0.55  fof(f41,plain,(
% 1.28/0.55    ~r1_tarski(k3_tarski(k2_enumset1(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0)))),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))))),
% 1.28/0.55    inference(definition_unfolding,[],[f23,f38,f39])).
% 1.28/0.55  fof(f39,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)))) )),
% 1.28/0.55    inference(definition_unfolding,[],[f31,f38])).
% 1.28/0.55  fof(f31,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))) )),
% 1.28/0.55    inference(cnf_transformation,[],[f3])).
% 1.28/0.55  fof(f3,axiom,(
% 1.28/0.55    ! [X0,X1] : k5_xboole_0(X0,X1) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_xboole_0)).
% 1.28/0.55  fof(f38,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 1.28/0.55    inference(definition_unfolding,[],[f27,f37])).
% 1.28/0.55  fof(f37,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.28/0.55    inference(definition_unfolding,[],[f28,f33])).
% 1.28/0.55  fof(f33,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f11])).
% 1.28/0.55  fof(f11,axiom,(
% 1.28/0.55    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 1.28/0.55  fof(f28,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f10])).
% 1.28/0.55  fof(f10,axiom,(
% 1.28/0.55    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 1.28/0.55  fof(f27,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.28/0.55    inference(cnf_transformation,[],[f12])).
% 1.28/0.55  fof(f12,axiom,(
% 1.28/0.55    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 1.28/0.55  fof(f23,plain,(
% 1.28/0.55    ~r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k5_xboole_0(sK0,sK1)))),
% 1.28/0.55    inference(cnf_transformation,[],[f22])).
% 1.28/0.55  fof(f22,plain,(
% 1.28/0.55    ~r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k5_xboole_0(sK0,sK1)))),
% 1.28/0.55    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f21])).
% 1.28/0.55  fof(f21,plain,(
% 1.28/0.55    ? [X0,X1] : ~r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1))) => ~r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k4_xboole_0(sK1,sK0))),k1_zfmisc_1(k5_xboole_0(sK0,sK1)))),
% 1.28/0.55    introduced(choice_axiom,[])).
% 1.28/0.55  fof(f16,plain,(
% 1.28/0.55    ? [X0,X1] : ~r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1)))),
% 1.28/0.55    inference(ennf_transformation,[],[f15])).
% 1.28/0.55  fof(f15,negated_conjecture,(
% 1.28/0.55    ~! [X0,X1] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1)))),
% 1.28/0.55    inference(negated_conjecture,[],[f14])).
% 1.28/0.55  fof(f14,conjecture,(
% 1.28/0.55    ! [X0,X1] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(X0,X1)),k1_zfmisc_1(k4_xboole_0(X1,X0))),k1_zfmisc_1(k5_xboole_0(X0,X1)))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_zfmisc_1)).
% 1.28/0.55  fof(f285,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (r1_tarski(k3_tarski(k2_enumset1(X1,X1,X1,X0)),X2) | ~r1_tarski(k3_xboole_0(X0,X1),X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X2)) )),
% 1.28/0.55    inference(superposition,[],[f145,f248])).
% 1.28/0.55  fof(f248,plain,(
% 1.28/0.55    ( ! [X4,X3] : (k3_tarski(k2_enumset1(X3,X3,X3,X4)) = k3_tarski(k2_enumset1(X4,X4,X4,X3))) )),
% 1.28/0.55    inference(superposition,[],[f71,f68])).
% 1.28/0.55  fof(f68,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X1,X0)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X1,X0)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X1,X0)),k4_xboole_0(k3_xboole_0(X1,X0),k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))))))) )),
% 1.28/0.55    inference(superposition,[],[f44,f25])).
% 1.28/0.55  fof(f44,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X0,X1)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X0,X1)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))),k3_xboole_0(X0,X1)),k4_xboole_0(k3_xboole_0(X0,X1),k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))))))) )),
% 1.28/0.55    inference(definition_unfolding,[],[f30,f38,f39,f39])).
% 1.28/0.55  fof(f30,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))) )),
% 1.28/0.55    inference(cnf_transformation,[],[f9])).
% 1.28/0.55  fof(f9,axiom,(
% 1.28/0.55    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_xboole_1)).
% 1.28/0.55  fof(f71,plain,(
% 1.28/0.55    ( ! [X2,X3] : (k3_tarski(k2_enumset1(X2,X2,X2,X3)) = k3_tarski(k2_enumset1(k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))),k3_xboole_0(X2,X3)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))),k3_xboole_0(X2,X3)),k4_xboole_0(k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))),k3_xboole_0(X2,X3)),k4_xboole_0(k3_xboole_0(X2,X3),k3_tarski(k2_enumset1(k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X3,X2),k4_xboole_0(X2,X3))))))) )),
% 1.28/0.55    inference(superposition,[],[f44,f43])).
% 1.28/0.55  fof(f43,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k3_tarski(k2_enumset1(k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X0,X1),k4_xboole_0(X1,X0))) = k3_tarski(k2_enumset1(k4_xboole_0(X1,X0),k4_xboole_0(X1,X0),k4_xboole_0(X1,X0),k4_xboole_0(X0,X1)))) )),
% 1.28/0.55    inference(definition_unfolding,[],[f26,f39,f39])).
% 1.28/0.55  fof(f26,plain,(
% 1.28/0.55    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f2])).
% 1.28/0.55  fof(f2,axiom,(
% 1.28/0.55    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).
% 1.28/0.55  fof(f145,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2) | ~r1_tarski(k3_xboole_0(X0,X1),X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X2)) )),
% 1.28/0.55    inference(resolution,[],[f79,f46])).
% 1.28/0.55  fof(f46,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (r1_tarski(k3_tarski(k2_enumset1(k4_xboole_0(X0,X2),k4_xboole_0(X0,X2),k4_xboole_0(X0,X2),k4_xboole_0(X2,X0))),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)) )),
% 1.28/0.55    inference(definition_unfolding,[],[f36,f39])).
% 1.28/0.55  fof(f36,plain,(
% 1.28/0.55    ( ! [X2,X0,X1] : (r1_tarski(k5_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f20])).
% 1.28/0.55  fof(f20,plain,(
% 1.28/0.55    ! [X0,X1,X2] : (r1_tarski(k5_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1))),
% 1.28/0.55    inference(flattening,[],[f19])).
% 1.28/0.55  fof(f19,plain,(
% 1.28/0.55    ! [X0,X1,X2] : (r1_tarski(k5_xboole_0(X0,X2),X1) | (~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)))),
% 1.28/0.55    inference(ennf_transformation,[],[f6])).
% 1.28/0.55  fof(f6,axiom,(
% 1.28/0.55    ! [X0,X1,X2] : ((r1_tarski(X2,X1) & r1_tarski(X0,X1)) => r1_tarski(k5_xboole_0(X0,X2),X1))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t110_xboole_1)).
% 1.28/0.55  fof(f79,plain,(
% 1.28/0.55    ( ! [X6,X8,X7] : (~r1_tarski(k3_tarski(k2_enumset1(k4_xboole_0(X6,X7),k4_xboole_0(X6,X7),k4_xboole_0(X6,X7),k4_xboole_0(X7,X6))),X8) | ~r1_tarski(k3_xboole_0(X6,X7),X8) | r1_tarski(k3_tarski(k2_enumset1(X6,X6,X6,X7)),X8)) )),
% 1.28/0.55    inference(superposition,[],[f46,f44])).
% 1.28/0.55  fof(f234,plain,(
% 1.28/0.55    spl2_2),
% 1.28/0.55    inference(avatar_contradiction_clause,[],[f231])).
% 1.28/0.55  fof(f231,plain,(
% 1.28/0.55    $false | spl2_2),
% 1.28/0.55    inference(resolution,[],[f230,f60])).
% 1.28/0.55  fof(f60,plain,(
% 1.28/0.55    ( ! [X6,X5] : (r1_tarski(k4_xboole_0(X5,X6),k3_tarski(k2_enumset1(k4_xboole_0(X6,X5),k4_xboole_0(X6,X5),k4_xboole_0(X6,X5),k4_xboole_0(X5,X6))))) )),
% 1.28/0.55    inference(superposition,[],[f42,f43])).
% 1.28/0.55  fof(f42,plain,(
% 1.28/0.55    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) )),
% 1.28/0.55    inference(definition_unfolding,[],[f24,f38])).
% 1.28/0.55  fof(f24,plain,(
% 1.28/0.55    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.28/0.55    inference(cnf_transformation,[],[f7])).
% 1.28/0.55  fof(f7,axiom,(
% 1.28/0.55    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).
% 1.28/0.55  fof(f230,plain,(
% 1.28/0.55    ~r1_tarski(k4_xboole_0(sK1,sK0),k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) | spl2_2),
% 1.28/0.55    inference(resolution,[],[f171,f32])).
% 1.28/0.55  fof(f32,plain,(
% 1.28/0.55    ( ! [X0,X1] : (r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 1.28/0.55    inference(cnf_transformation,[],[f17])).
% 1.28/0.55  fof(f17,plain,(
% 1.28/0.55    ! [X0,X1] : (r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1))),
% 1.28/0.55    inference(ennf_transformation,[],[f13])).
% 1.28/0.55  fof(f13,axiom,(
% 1.28/0.55    ! [X0,X1] : (r1_tarski(X0,X1) => r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)))),
% 1.28/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_zfmisc_1)).
% 1.28/0.55  fof(f171,plain,(
% 1.28/0.55    ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK1,sK0)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | spl2_2),
% 1.28/0.55    inference(avatar_component_clause,[],[f169])).
% 1.28/0.55  fof(f194,plain,(
% 1.28/0.55    spl2_1),
% 1.28/0.55    inference(avatar_contradiction_clause,[],[f193])).
% 1.28/0.55  fof(f193,plain,(
% 1.28/0.55    $false | spl2_1),
% 1.28/0.55    inference(resolution,[],[f190,f42])).
% 1.28/0.55  fof(f190,plain,(
% 1.28/0.55    ~r1_tarski(k4_xboole_0(sK0,sK1),k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) | spl2_1),
% 1.28/0.55    inference(resolution,[],[f167,f32])).
% 1.28/0.55  fof(f167,plain,(
% 1.28/0.55    ~r1_tarski(k1_zfmisc_1(k4_xboole_0(sK0,sK1)),k1_zfmisc_1(k3_tarski(k2_enumset1(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))))) | spl2_1),
% 1.28/0.55    inference(avatar_component_clause,[],[f165])).
% 1.28/0.55  % SZS output end Proof for theBenchmark
% 1.28/0.55  % (30224)------------------------------
% 1.28/0.55  % (30224)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.28/0.55  % (30224)Termination reason: Refutation
% 1.28/0.55  
% 1.28/0.55  % (30224)Memory used [KB]: 6652
% 1.28/0.55  % (30224)Time elapsed: 0.100 s
% 1.28/0.55  % (30224)------------------------------
% 1.28/0.55  % (30224)------------------------------
% 1.28/0.56  % (30219)Success in time 0.193 s
%------------------------------------------------------------------------------
