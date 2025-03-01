%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:56:22 EST 2020

% Result     : Theorem 1.87s
% Output     : Refutation 1.87s
% Verified   : 
% Statistics : Number of formulae       :   84 ( 187 expanded)
%              Number of leaves         :   18 (  53 expanded)
%              Depth                    :   15
%              Number of atoms          :  159 ( 319 expanded)
%              Number of equality atoms :   19 (  65 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f587,plain,(
    $false ),
    inference(subsumption_resolution,[],[f586,f331])).

fof(f331,plain,(
    ! [X0] : v4_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,X0))) ),
    inference(resolution,[],[f319,f96])).

fof(f96,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | v4_relat_1(X0,X1) ) ),
    inference(resolution,[],[f55,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v4_relat_1(X2,X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(f319,plain,(
    ! [X6] : r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(k3_tarski(k1_enumset1(sK0,sK0,X6)),sK1))) ),
    inference(superposition,[],[f93,f64])).

fof(f64,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k3_tarski(k1_enumset1(X0,X0,X1)),X2) = k3_tarski(k1_enumset1(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X2))) ),
    inference(definition_unfolding,[],[f53,f58,f58])).

fof(f58,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f42,f41])).

fof(f41,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f42,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f53,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k2_xboole_0(X0,X1),X2) = k2_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X2)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( k2_zfmisc_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X1))
      & k2_zfmisc_1(k2_xboole_0(X0,X1),X2) = k2_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t120_zfmisc_1)).

fof(f93,plain,(
    ! [X0] : r2_hidden(sK2,k1_zfmisc_1(k3_tarski(k1_enumset1(k2_zfmisc_1(sK0,sK1),k2_zfmisc_1(sK0,sK1),X0)))) ),
    inference(resolution,[],[f90,f61])).

fof(f61,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k1_enumset1(X0,X0,X1))) ),
    inference(definition_unfolding,[],[f39,f58])).

fof(f39,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f90,plain,(
    ! [X0] :
      ( ~ r1_tarski(k2_zfmisc_1(sK0,sK1),X0)
      | r2_hidden(sK2,k1_zfmisc_1(X0)) ) ),
    inference(resolution,[],[f88,f49])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_zfmisc_1)).

fof(f88,plain,(
    ! [X0] :
      ( ~ r1_tarski(k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)),X0)
      | r2_hidden(sK2,X0) ) ),
    inference(resolution,[],[f50,f69])).

fof(f69,plain,(
    r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(subsumption_resolution,[],[f67,f35])).

fof(f35,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).

fof(f67,plain,
    ( v1_xboole_0(k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(resolution,[],[f48,f33])).

fof(f33,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k3_relat_1(X2),k2_xboole_0(X0,X1))
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
       => r1_tarski(k3_relat_1(X2),k2_xboole_0(X0,X1)) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f18,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => r1_tarski(k3_relat_1(X2),k2_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t19_relset_1)).

fof(f48,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,X1)
      | v1_xboole_0(X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X2,X0)
      | r2_hidden(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(f586,plain,(
    ~ v4_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(subsumption_resolution,[],[f585,f72])).

fof(f72,plain,(
    v1_relat_1(sK2) ),
    inference(resolution,[],[f66,f33])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | v1_relat_1(X0) ) ),
    inference(resolution,[],[f37,f38])).

fof(f38,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_relat_1)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).

fof(f585,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v4_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(resolution,[],[f584,f46])).

fof(f46,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1)
      | ~ v4_relat_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).

fof(f584,plain,(
    ~ r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(subsumption_resolution,[],[f583,f235])).

fof(f235,plain,(
    ! [X0] : v5_relat_1(sK2,k3_tarski(k1_enumset1(X0,X0,sK1))) ),
    inference(superposition,[],[f229,f62])).

fof(f62,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k1_enumset1(X1,X1,X0) ),
    inference(definition_unfolding,[],[f40,f41,f41])).

fof(f40,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f229,plain,(
    ! [X0] : v5_relat_1(sK2,k3_tarski(k1_enumset1(sK1,sK1,X0))) ),
    inference(resolution,[],[f220,f98])).

fof(f98,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
      | v5_relat_1(X0,X1) ) ),
    inference(resolution,[],[f56,f47])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v5_relat_1(X2,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f220,plain,(
    ! [X4] : r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,k3_tarski(k1_enumset1(sK1,sK1,X4))))) ),
    inference(superposition,[],[f93,f63])).

fof(f63,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(X2,k3_tarski(k1_enumset1(X0,X0,X1))) = k3_tarski(k1_enumset1(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X1))) ),
    inference(definition_unfolding,[],[f54,f58,f58])).

fof(f54,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f583,plain,
    ( ~ r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1)))
    | ~ v5_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(subsumption_resolution,[],[f582,f72])).

fof(f582,plain,
    ( ~ r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1)))
    | ~ v1_relat_1(sK2)
    | ~ v5_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(resolution,[],[f157,f44])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1)
      | ~ v5_relat_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(f157,plain,
    ( ~ r1_tarski(k2_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1)))
    | ~ r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(resolution,[],[f156,f59])).

fof(f59,plain,(
    ~ r1_tarski(k3_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1))) ),
    inference(definition_unfolding,[],[f34,f58])).

fof(f34,plain,(
    ~ r1_tarski(k3_relat_1(sK2),k2_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f20])).

fof(f156,plain,(
    ! [X0] :
      ( r1_tarski(k3_relat_1(sK2),X0)
      | ~ r1_tarski(k2_relat_1(sK2),X0)
      | ~ r1_tarski(k1_relat_1(sK2),X0) ) ),
    inference(superposition,[],[f65,f111])).

fof(f111,plain,(
    k3_relat_1(sK2) = k3_tarski(k1_enumset1(k1_relat_1(sK2),k1_relat_1(sK2),k2_relat_1(sK2))) ),
    inference(resolution,[],[f60,f72])).

fof(f60,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k3_relat_1(X0) = k3_tarski(k1_enumset1(k1_relat_1(X0),k1_relat_1(X0),k2_relat_1(X0))) ) ),
    inference(definition_unfolding,[],[f36,f58])).

fof(f36,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0] :
      ( k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d6_relat_1)).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_tarski(k1_enumset1(X0,X0,X2)),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f57,f58])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_tarski(X2,X1)
      | r1_tarski(k2_xboole_0(X0,X2),X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f31])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X2,X1)
        & r1_tarski(X0,X1) )
     => r1_tarski(k2_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n012.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 16:15:52 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.51  % (4241)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.52  % (4233)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.22/0.52  % (4226)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.53  % (4219)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.53  % (4216)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.54  % (4215)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.54  % (4218)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.54  % (4216)Refutation not found, incomplete strategy% (4216)------------------------------
% 0.22/0.54  % (4216)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (4216)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (4216)Memory used [KB]: 10746
% 0.22/0.54  % (4216)Time elapsed: 0.123 s
% 0.22/0.54  % (4216)------------------------------
% 0.22/0.54  % (4216)------------------------------
% 0.22/0.54  % (4217)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.54  % (4223)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.22/0.55  % (4238)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.55  % (4243)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.22/0.55  % (4242)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.22/0.55  % (4239)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.22/0.55  % (4235)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.55  % (4234)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.55  % (4230)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.22/0.55  % (4232)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 0.22/0.56  % (4231)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.22/0.56  % (4214)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.22/0.56  % (4231)Refutation not found, incomplete strategy% (4231)------------------------------
% 0.22/0.56  % (4231)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (4231)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.56  
% 0.22/0.56  % (4231)Memory used [KB]: 10618
% 0.22/0.56  % (4231)Time elapsed: 0.146 s
% 0.22/0.56  % (4231)------------------------------
% 0.22/0.56  % (4231)------------------------------
% 0.22/0.56  % (4227)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.22/0.56  % (4222)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.56  % (4224)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.22/0.56  % (4225)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.22/0.56  % (4228)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.57  % (4237)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.22/0.57  % (4220)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.57  % (4240)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.22/0.57  % (4229)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.22/0.58  % (4221)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.22/0.59  % (4236)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.22/0.59  % (4236)Refutation not found, incomplete strategy% (4236)------------------------------
% 0.22/0.59  % (4236)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.59  % (4236)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.59  
% 0.22/0.59  % (4236)Memory used [KB]: 10746
% 0.22/0.59  % (4236)Time elapsed: 0.115 s
% 0.22/0.59  % (4236)------------------------------
% 0.22/0.59  % (4236)------------------------------
% 1.87/0.62  % (4220)Refutation found. Thanks to Tanya!
% 1.87/0.62  % SZS status Theorem for theBenchmark
% 1.87/0.62  % SZS output start Proof for theBenchmark
% 1.87/0.62  fof(f587,plain,(
% 1.87/0.62    $false),
% 1.87/0.62    inference(subsumption_resolution,[],[f586,f331])).
% 1.87/0.62  fof(f331,plain,(
% 1.87/0.62    ( ! [X0] : (v4_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,X0)))) )),
% 1.87/0.62    inference(resolution,[],[f319,f96])).
% 1.87/0.62  fof(f96,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~r2_hidden(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v4_relat_1(X0,X1)) )),
% 1.87/0.62    inference(resolution,[],[f55,f47])).
% 1.87/0.62  fof(f47,plain,(
% 1.87/0.62    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f25])).
% 1.87/0.62  fof(f25,plain,(
% 1.87/0.62    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 1.87/0.62    inference(ennf_transformation,[],[f10])).
% 1.87/0.62  fof(f10,axiom,(
% 1.87/0.62    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).
% 1.87/0.62  fof(f55,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v4_relat_1(X2,X0)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f30])).
% 1.87/0.62  fof(f30,plain,(
% 1.87/0.62    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/0.62    inference(ennf_transformation,[],[f17])).
% 1.87/0.62  fof(f17,axiom,(
% 1.87/0.62    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).
% 1.87/0.62  fof(f319,plain,(
% 1.87/0.62    ( ! [X6] : (r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(k3_tarski(k1_enumset1(sK0,sK0,X6)),sK1)))) )),
% 1.87/0.62    inference(superposition,[],[f93,f64])).
% 1.87/0.62  fof(f64,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (k2_zfmisc_1(k3_tarski(k1_enumset1(X0,X0,X1)),X2) = k3_tarski(k1_enumset1(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X2)))) )),
% 1.87/0.62    inference(definition_unfolding,[],[f53,f58,f58])).
% 1.87/0.62  fof(f58,plain,(
% 1.87/0.62    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k1_enumset1(X0,X0,X1))) )),
% 1.87/0.62    inference(definition_unfolding,[],[f42,f41])).
% 1.87/0.62  fof(f41,plain,(
% 1.87/0.62    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f5])).
% 1.87/0.62  fof(f5,axiom,(
% 1.87/0.62    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.87/0.62  fof(f42,plain,(
% 1.87/0.62    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f6])).
% 1.87/0.62  fof(f6,axiom,(
% 1.87/0.62    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 1.87/0.62  fof(f53,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (k2_zfmisc_1(k2_xboole_0(X0,X1),X2) = k2_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X2))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f7])).
% 1.87/0.62  fof(f7,axiom,(
% 1.87/0.62    ! [X0,X1,X2] : (k2_zfmisc_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X1)) & k2_zfmisc_1(k2_xboole_0(X0,X1),X2) = k2_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X2)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t120_zfmisc_1)).
% 1.87/0.62  fof(f93,plain,(
% 1.87/0.62    ( ! [X0] : (r2_hidden(sK2,k1_zfmisc_1(k3_tarski(k1_enumset1(k2_zfmisc_1(sK0,sK1),k2_zfmisc_1(sK0,sK1),X0))))) )),
% 1.87/0.62    inference(resolution,[],[f90,f61])).
% 1.87/0.62  fof(f61,plain,(
% 1.87/0.62    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k1_enumset1(X0,X0,X1)))) )),
% 1.87/0.62    inference(definition_unfolding,[],[f39,f58])).
% 1.87/0.62  fof(f39,plain,(
% 1.87/0.62    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f2])).
% 1.87/0.62  fof(f2,axiom,(
% 1.87/0.62    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).
% 1.87/0.62  fof(f90,plain,(
% 1.87/0.62    ( ! [X0] : (~r1_tarski(k2_zfmisc_1(sK0,sK1),X0) | r2_hidden(sK2,k1_zfmisc_1(X0))) )),
% 1.87/0.62    inference(resolution,[],[f88,f49])).
% 1.87/0.62  fof(f49,plain,(
% 1.87/0.62    ( ! [X0,X1] : (r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f28])).
% 1.87/0.62  fof(f28,plain,(
% 1.87/0.62    ! [X0,X1] : (r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1))),
% 1.87/0.62    inference(ennf_transformation,[],[f8])).
% 1.87/0.62  fof(f8,axiom,(
% 1.87/0.62    ! [X0,X1] : (r1_tarski(X0,X1) => r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_zfmisc_1)).
% 1.87/0.62  fof(f88,plain,(
% 1.87/0.62    ( ! [X0] : (~r1_tarski(k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)),X0) | r2_hidden(sK2,X0)) )),
% 1.87/0.62    inference(resolution,[],[f50,f69])).
% 1.87/0.62  fof(f69,plain,(
% 1.87/0.62    r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.87/0.62    inference(subsumption_resolution,[],[f67,f35])).
% 1.87/0.62  fof(f35,plain,(
% 1.87/0.62    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f9])).
% 1.87/0.62  fof(f9,axiom,(
% 1.87/0.62    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).
% 1.87/0.62  fof(f67,plain,(
% 1.87/0.62    v1_xboole_0(k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) | r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.87/0.62    inference(resolution,[],[f48,f33])).
% 1.87/0.62  fof(f33,plain,(
% 1.87/0.62    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.87/0.62    inference(cnf_transformation,[],[f20])).
% 1.87/0.62  fof(f20,plain,(
% 1.87/0.62    ? [X0,X1,X2] : (~r1_tarski(k3_relat_1(X2),k2_xboole_0(X0,X1)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/0.62    inference(ennf_transformation,[],[f19])).
% 1.87/0.62  fof(f19,negated_conjecture,(
% 1.87/0.62    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => r1_tarski(k3_relat_1(X2),k2_xboole_0(X0,X1)))),
% 1.87/0.62    inference(negated_conjecture,[],[f18])).
% 1.87/0.62  fof(f18,conjecture,(
% 1.87/0.62    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => r1_tarski(k3_relat_1(X2),k2_xboole_0(X0,X1)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t19_relset_1)).
% 1.87/0.62  fof(f48,plain,(
% 1.87/0.62    ( ! [X0,X1] : (~m1_subset_1(X0,X1) | v1_xboole_0(X1) | r2_hidden(X0,X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f27])).
% 1.87/0.62  fof(f27,plain,(
% 1.87/0.62    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.87/0.62    inference(flattening,[],[f26])).
% 1.87/0.62  fof(f26,plain,(
% 1.87/0.62    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.87/0.62    inference(ennf_transformation,[],[f11])).
% 1.87/0.62  fof(f11,axiom,(
% 1.87/0.62    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).
% 1.87/0.62  fof(f50,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~r2_hidden(X2,X0) | r2_hidden(X2,X1) | ~r1_tarski(X0,X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f29])).
% 1.87/0.62  fof(f29,plain,(
% 1.87/0.62    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.87/0.62    inference(ennf_transformation,[],[f1])).
% 1.87/0.62  fof(f1,axiom,(
% 1.87/0.62    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).
% 1.87/0.62  fof(f586,plain,(
% 1.87/0.62    ~v4_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(subsumption_resolution,[],[f585,f72])).
% 1.87/0.62  fof(f72,plain,(
% 1.87/0.62    v1_relat_1(sK2)),
% 1.87/0.62    inference(resolution,[],[f66,f33])).
% 1.87/0.62  fof(f66,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0)) )),
% 1.87/0.62    inference(resolution,[],[f37,f38])).
% 1.87/0.62  fof(f38,plain,(
% 1.87/0.62    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f16])).
% 1.87/0.62  fof(f16,axiom,(
% 1.87/0.62    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_relat_1)).
% 1.87/0.62  fof(f37,plain,(
% 1.87/0.62    ( ! [X0,X1] : (~v1_relat_1(X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | v1_relat_1(X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f22])).
% 1.87/0.62  fof(f22,plain,(
% 1.87/0.62    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.87/0.62    inference(ennf_transformation,[],[f12])).
% 1.87/0.62  fof(f12,axiom,(
% 1.87/0.62    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).
% 1.87/0.62  fof(f585,plain,(
% 1.87/0.62    ~v1_relat_1(sK2) | ~v4_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(resolution,[],[f584,f46])).
% 1.87/0.62  fof(f46,plain,(
% 1.87/0.62    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1) | ~v4_relat_1(X1,X0)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f24])).
% 1.87/0.62  fof(f24,plain,(
% 1.87/0.62    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.87/0.62    inference(ennf_transformation,[],[f13])).
% 1.87/0.62  fof(f13,axiom,(
% 1.87/0.62    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d18_relat_1)).
% 1.87/0.62  fof(f584,plain,(
% 1.87/0.62    ~r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(subsumption_resolution,[],[f583,f235])).
% 1.87/0.62  fof(f235,plain,(
% 1.87/0.62    ( ! [X0] : (v5_relat_1(sK2,k3_tarski(k1_enumset1(X0,X0,sK1)))) )),
% 1.87/0.62    inference(superposition,[],[f229,f62])).
% 1.87/0.62  fof(f62,plain,(
% 1.87/0.62    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k1_enumset1(X1,X1,X0)) )),
% 1.87/0.62    inference(definition_unfolding,[],[f40,f41,f41])).
% 1.87/0.62  fof(f40,plain,(
% 1.87/0.62    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f4])).
% 1.87/0.62  fof(f4,axiom,(
% 1.87/0.62    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 1.87/0.62  fof(f229,plain,(
% 1.87/0.62    ( ! [X0] : (v5_relat_1(sK2,k3_tarski(k1_enumset1(sK1,sK1,X0)))) )),
% 1.87/0.62    inference(resolution,[],[f220,f98])).
% 1.87/0.62  fof(f98,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~r2_hidden(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) | v5_relat_1(X0,X1)) )),
% 1.87/0.62    inference(resolution,[],[f56,f47])).
% 1.87/0.62  fof(f56,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v5_relat_1(X2,X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f30])).
% 1.87/0.62  fof(f220,plain,(
% 1.87/0.62    ( ! [X4] : (r2_hidden(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,k3_tarski(k1_enumset1(sK1,sK1,X4)))))) )),
% 1.87/0.62    inference(superposition,[],[f93,f63])).
% 1.87/0.62  fof(f63,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (k2_zfmisc_1(X2,k3_tarski(k1_enumset1(X0,X0,X1))) = k3_tarski(k1_enumset1(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X1)))) )),
% 1.87/0.62    inference(definition_unfolding,[],[f54,f58,f58])).
% 1.87/0.62  fof(f54,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (k2_zfmisc_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X2,X1))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f7])).
% 1.87/0.62  fof(f583,plain,(
% 1.87/0.62    ~r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1))) | ~v5_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(subsumption_resolution,[],[f582,f72])).
% 1.87/0.62  fof(f582,plain,(
% 1.87/0.62    ~r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1))) | ~v1_relat_1(sK2) | ~v5_relat_1(sK2,k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(resolution,[],[f157,f44])).
% 1.87/0.62  fof(f44,plain,(
% 1.87/0.62    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1) | ~v5_relat_1(X1,X0)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f23])).
% 1.87/0.62  fof(f23,plain,(
% 1.87/0.62    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.87/0.62    inference(ennf_transformation,[],[f14])).
% 1.87/0.62  fof(f14,axiom,(
% 1.87/0.62    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).
% 1.87/0.62  fof(f157,plain,(
% 1.87/0.62    ~r1_tarski(k2_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1))) | ~r1_tarski(k1_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(resolution,[],[f156,f59])).
% 1.87/0.62  fof(f59,plain,(
% 1.87/0.62    ~r1_tarski(k3_relat_1(sK2),k3_tarski(k1_enumset1(sK0,sK0,sK1)))),
% 1.87/0.62    inference(definition_unfolding,[],[f34,f58])).
% 1.87/0.62  fof(f34,plain,(
% 1.87/0.62    ~r1_tarski(k3_relat_1(sK2),k2_xboole_0(sK0,sK1))),
% 1.87/0.62    inference(cnf_transformation,[],[f20])).
% 1.87/0.62  fof(f156,plain,(
% 1.87/0.62    ( ! [X0] : (r1_tarski(k3_relat_1(sK2),X0) | ~r1_tarski(k2_relat_1(sK2),X0) | ~r1_tarski(k1_relat_1(sK2),X0)) )),
% 1.87/0.62    inference(superposition,[],[f65,f111])).
% 1.87/0.62  fof(f111,plain,(
% 1.87/0.62    k3_relat_1(sK2) = k3_tarski(k1_enumset1(k1_relat_1(sK2),k1_relat_1(sK2),k2_relat_1(sK2)))),
% 1.87/0.62    inference(resolution,[],[f60,f72])).
% 1.87/0.62  fof(f60,plain,(
% 1.87/0.62    ( ! [X0] : (~v1_relat_1(X0) | k3_relat_1(X0) = k3_tarski(k1_enumset1(k1_relat_1(X0),k1_relat_1(X0),k2_relat_1(X0)))) )),
% 1.87/0.62    inference(definition_unfolding,[],[f36,f58])).
% 1.87/0.62  fof(f36,plain,(
% 1.87/0.62    ( ! [X0] : (~v1_relat_1(X0) | k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0))) )),
% 1.87/0.62    inference(cnf_transformation,[],[f21])).
% 1.87/0.62  fof(f21,plain,(
% 1.87/0.62    ! [X0] : (k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 1.87/0.62    inference(ennf_transformation,[],[f15])).
% 1.87/0.62  fof(f15,axiom,(
% 1.87/0.62    ! [X0] : (v1_relat_1(X0) => k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d6_relat_1)).
% 1.87/0.62  fof(f65,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (r1_tarski(k3_tarski(k1_enumset1(X0,X0,X2)),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)) )),
% 1.87/0.62    inference(definition_unfolding,[],[f57,f58])).
% 1.87/0.62  fof(f57,plain,(
% 1.87/0.62    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | ~r1_tarski(X2,X1) | r1_tarski(k2_xboole_0(X0,X2),X1)) )),
% 1.87/0.62    inference(cnf_transformation,[],[f32])).
% 1.87/0.62  fof(f32,plain,(
% 1.87/0.62    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1))),
% 1.87/0.62    inference(flattening,[],[f31])).
% 1.87/0.62  fof(f31,plain,(
% 1.87/0.62    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X2),X1) | (~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)))),
% 1.87/0.62    inference(ennf_transformation,[],[f3])).
% 1.87/0.62  fof(f3,axiom,(
% 1.87/0.62    ! [X0,X1,X2] : ((r1_tarski(X2,X1) & r1_tarski(X0,X1)) => r1_tarski(k2_xboole_0(X0,X2),X1))),
% 1.87/0.62    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_xboole_1)).
% 1.87/0.62  % SZS output end Proof for theBenchmark
% 1.87/0.62  % (4220)------------------------------
% 1.87/0.62  % (4220)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.87/0.62  % (4220)Termination reason: Refutation
% 1.87/0.62  
% 1.87/0.62  % (4220)Memory used [KB]: 7036
% 1.87/0.62  % (4220)Time elapsed: 0.113 s
% 1.87/0.62  % (4220)------------------------------
% 1.87/0.62  % (4220)------------------------------
% 1.87/0.63  % (4211)Success in time 0.264 s
%------------------------------------------------------------------------------
