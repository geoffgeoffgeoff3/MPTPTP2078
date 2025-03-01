%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:03 EST 2020

% Result     : Theorem 1.40s
% Output     : Refutation 1.40s
% Verified   : 
% Statistics : Number of formulae       :  107 (1430 expanded)
%              Number of leaves         :   19 ( 422 expanded)
%              Depth                    :   25
%              Number of atoms          :  203 (3544 expanded)
%              Number of equality atoms :   96 (1166 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f431,plain,(
    $false ),
    inference(trivial_inequality_removal,[],[f430])).

fof(f430,plain,(
    sK0 != sK0 ),
    inference(superposition,[],[f252,f384])).

fof(f384,plain,(
    sK0 = k4_subset_1(sK0,sK0,sK1) ),
    inference(forward_demodulation,[],[f383,f349])).

fof(f349,plain,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(backward_demodulation,[],[f345,f348])).

fof(f348,plain,(
    k1_xboole_0 = k4_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f347,f274])).

fof(f274,plain,(
    ! [X1] : k5_xboole_0(X1,k4_xboole_0(X1,X1)) = X1 ),
    inference(backward_demodulation,[],[f239,f272])).

fof(f272,plain,(
    ! [X0] : k4_subset_1(X0,X0,X0) = X0 ),
    inference(resolution,[],[f267,f66])).

fof(f66,plain,(
    ! [X0] : m1_subset_1(X0,k1_zfmisc_1(X0)) ),
    inference(forward_demodulation,[],[f37,f34])).

fof(f34,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(f37,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(f267,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
      | k4_subset_1(X0,X0,X0) = X0 ) ),
    inference(resolution,[],[f265,f33])).

fof(f33,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).

fof(f265,plain,(
    ! [X2,X3] :
      ( v1_xboole_0(k1_zfmisc_1(X3))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
      | k4_subset_1(X2,X2,X2) = X2 ) ),
    inference(resolution,[],[f257,f45])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).

fof(f257,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
      | k4_subset_1(X0,X0,X0) = X0 ) ),
    inference(resolution,[],[f242,f64])).

fof(f64,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f50])).

fof(f50,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK2(X0,X1),X0)
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( r1_tarski(sK2(X0,X1),X0)
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f29])).

fof(f29,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK2(X0,X1),X0)
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( r1_tarski(sK2(X0,X1),X0)
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(f242,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k4_subset_1(X0,X0,X0) = X0 ) ),
    inference(backward_demodulation,[],[f73,f239])).

fof(f73,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k4_xboole_0(X0,X0)) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(superposition,[],[f56,f61])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f49,f44])).

fof(f44,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f49,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f56,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f43,f44])).

fof(f43,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f239,plain,(
    ! [X1] : k5_xboole_0(X1,k4_xboole_0(X1,X1)) = k4_subset_1(X1,X1,X1) ),
    inference(resolution,[],[f181,f66])).

fof(f181,plain,(
    ! [X4,X3] :
      ( ~ m1_subset_1(X4,k1_zfmisc_1(X3))
      | k5_xboole_0(X4,k4_xboole_0(X3,X4)) = k4_subset_1(X3,X4,X3) ) ),
    inference(resolution,[],[f67,f66])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | k4_subset_1(X0,X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(forward_demodulation,[],[f62,f60])).

fof(f60,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k3_tarski(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f42,f55])).

fof(f55,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f40,f41])).

fof(f41,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f40,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f42,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( k4_subset_1(X0,X1,X2) = k3_tarski(k1_enumset1(X1,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f54,f55])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f22])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(f347,plain,(
    k4_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f346,f294])).

fof(f294,plain,(
    ! [X1] : k4_xboole_0(X1,X1) = k5_xboole_0(X1,X1) ),
    inference(resolution,[],[f289,f66])).

fof(f289,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
      | k4_xboole_0(X0,X1) = k5_xboole_0(X0,X0) ) ),
    inference(resolution,[],[f118,f33])).

fof(f118,plain,(
    ! [X2,X3] :
      ( v1_xboole_0(k1_zfmisc_1(X3))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
      | k4_xboole_0(X2,X3) = k5_xboole_0(X2,X2) ) ),
    inference(resolution,[],[f85,f45])).

fof(f85,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
      | k4_xboole_0(X0,X1) = k5_xboole_0(X0,X0) ) ),
    inference(resolution,[],[f74,f64])).

fof(f74,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) = k5_xboole_0(X0,X0) ) ),
    inference(superposition,[],[f56,f61])).

fof(f346,plain,(
    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k1_xboole_0,k5_xboole_0(k1_xboole_0,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f312,f293])).

fof(f293,plain,(
    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k5_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(resolution,[],[f289,f35])).

fof(f35,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(f312,plain,(
    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,k5_xboole_0(k1_xboole_0,k1_xboole_0))) ),
    inference(superposition,[],[f56,f293])).

fof(f345,plain,(
    ! [X1] : k5_xboole_0(X1,k4_xboole_0(k1_xboole_0,k1_xboole_0)) = X1 ),
    inference(forward_demodulation,[],[f311,f294])).

fof(f311,plain,(
    ! [X1] : k5_xboole_0(X1,k5_xboole_0(k1_xboole_0,k1_xboole_0)) = X1 ),
    inference(superposition,[],[f89,f293])).

fof(f89,plain,(
    ! [X0] : k5_xboole_0(X0,k4_xboole_0(k1_xboole_0,X0)) = X0 ),
    inference(superposition,[],[f60,f57])).

fof(f57,plain,(
    ! [X0] : k3_tarski(k1_enumset1(X0,X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f36,f55])).

fof(f36,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(f383,plain,(
    k4_subset_1(sK0,sK0,sK1) = k5_xboole_0(sK0,k1_xboole_0) ),
    inference(backward_demodulation,[],[f186,f382])).

fof(f382,plain,(
    k1_xboole_0 = k4_xboole_0(sK1,sK0) ),
    inference(backward_demodulation,[],[f292,f373])).

fof(f373,plain,(
    ! [X1] : k1_xboole_0 = k5_xboole_0(X1,X1) ),
    inference(backward_demodulation,[],[f294,f365])).

fof(f365,plain,(
    ! [X1] : k1_xboole_0 = k4_xboole_0(X1,X1) ),
    inference(backward_demodulation,[],[f352,f364])).

fof(f364,plain,(
    ! [X6] : k4_xboole_0(X6,k1_xboole_0) = X6 ),
    inference(forward_demodulation,[],[f363,f349])).

fof(f363,plain,(
    ! [X6] : k4_xboole_0(X6,k1_xboole_0) = k5_xboole_0(X6,k1_xboole_0) ),
    inference(forward_demodulation,[],[f316,f355])).

fof(f355,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(backward_demodulation,[],[f293,f349])).

fof(f316,plain,(
    ! [X6] : k4_xboole_0(X6,k1_xboole_0) = k5_xboole_0(X6,k4_xboole_0(k1_xboole_0,k5_xboole_0(k1_xboole_0,k1_xboole_0))) ),
    inference(superposition,[],[f77,f293])).

fof(f77,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) ),
    inference(superposition,[],[f56,f59])).

fof(f59,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f39,f44,f44])).

fof(f39,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f352,plain,(
    ! [X1] : k1_xboole_0 = k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) ),
    inference(backward_demodulation,[],[f330,f348])).

fof(f330,plain,(
    ! [X1] : k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k4_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f306,f294])).

fof(f306,plain,(
    ! [X1] : k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k5_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(superposition,[],[f293,f59])).

fof(f292,plain,(
    k4_xboole_0(sK1,sK0) = k5_xboole_0(sK1,sK1) ),
    inference(resolution,[],[f289,f31])).

fof(f31,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,
    ( k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0))
    & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f19,f24])).

fof(f24,plain,
    ( ? [X0,X1] :
        ( k2_subset_1(X0) != k4_subset_1(X0,X1,k2_subset_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0))
      & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,(
    ? [X0,X1] :
      ( k2_subset_1(X0) != k4_subset_1(X0,X1,k2_subset_1(X0))
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f17,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_subset_1)).

fof(f186,plain,(
    k4_subset_1(sK0,sK0,sK1) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0)) ),
    inference(resolution,[],[f179,f66])).

fof(f179,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
      | k4_subset_1(sK0,X0,sK1) = k5_xboole_0(X0,k4_xboole_0(sK1,X0)) ) ),
    inference(resolution,[],[f67,f31])).

fof(f252,plain,(
    sK0 != k4_subset_1(sK0,sK0,sK1) ),
    inference(superposition,[],[f65,f247])).

fof(f247,plain,(
    k4_subset_1(sK0,sK1,sK0) = k4_subset_1(sK0,sK0,sK1) ),
    inference(forward_demodulation,[],[f243,f186])).

fof(f243,plain,(
    k4_subset_1(sK0,sK1,sK0) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0)) ),
    inference(superposition,[],[f237,f110])).

fof(f110,plain,(
    ! [X4,X3] : k5_xboole_0(X3,k4_xboole_0(X4,X3)) = k5_xboole_0(X4,k4_xboole_0(X3,X4)) ),
    inference(superposition,[],[f87,f60])).

fof(f87,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k3_tarski(k1_enumset1(X1,X1,X0)) ),
    inference(superposition,[],[f60,f58])).

fof(f58,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k1_enumset1(X1,X1,X0) ),
    inference(definition_unfolding,[],[f38,f41,f41])).

fof(f38,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f237,plain,(
    k4_subset_1(sK0,sK1,sK0) = k5_xboole_0(sK1,k4_xboole_0(sK0,sK1)) ),
    inference(resolution,[],[f181,f31])).

fof(f65,plain,(
    sK0 != k4_subset_1(sK0,sK1,sK0) ),
    inference(backward_demodulation,[],[f32,f34])).

fof(f32,plain,(
    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0)) ),
    inference(cnf_transformation,[],[f25])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n017.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 12:30:16 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.52  % (1974)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.21/0.52  % (1993)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.21/0.52  % (1985)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.21/0.52  % (1985)Refutation not found, incomplete strategy% (1985)------------------------------
% 0.21/0.52  % (1985)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.52  % (1985)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.52  
% 0.21/0.52  % (1985)Memory used [KB]: 6140
% 0.21/0.52  % (1985)Time elapsed: 0.005 s
% 0.21/0.52  % (1985)------------------------------
% 0.21/0.52  % (1985)------------------------------
% 1.28/0.53  % (1977)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 1.28/0.53  % (1992)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 1.28/0.53  % (1992)Refutation not found, incomplete strategy% (1992)------------------------------
% 1.28/0.53  % (1992)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.28/0.53  % (1992)Termination reason: Refutation not found, incomplete strategy
% 1.28/0.53  
% 1.28/0.53  % (1992)Memory used [KB]: 10746
% 1.28/0.53  % (1992)Time elapsed: 0.112 s
% 1.28/0.53  % (1992)------------------------------
% 1.28/0.53  % (1992)------------------------------
% 1.28/0.54  % (1974)Refutation not found, incomplete strategy% (1974)------------------------------
% 1.28/0.54  % (1974)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.28/0.54  % (1974)Termination reason: Refutation not found, incomplete strategy
% 1.28/0.54  
% 1.28/0.54  % (1974)Memory used [KB]: 6140
% 1.28/0.54  % (1974)Time elapsed: 0.107 s
% 1.28/0.54  % (1974)------------------------------
% 1.28/0.54  % (1974)------------------------------
% 1.28/0.54  % (1970)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 1.28/0.54  % (1982)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 1.28/0.54  % (1971)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 1.40/0.54  % (1997)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 1.40/0.54  % (1972)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 1.40/0.55  % (1975)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 1.40/0.55  % (1980)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 1.40/0.55  % (1980)Refutation not found, incomplete strategy% (1980)------------------------------
% 1.40/0.55  % (1980)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.55  % (1980)Termination reason: Refutation not found, incomplete strategy
% 1.40/0.55  
% 1.40/0.55  % (1980)Memory used [KB]: 10618
% 1.40/0.55  % (1980)Time elapsed: 0.133 s
% 1.40/0.55  % (1980)------------------------------
% 1.40/0.55  % (1980)------------------------------
% 1.40/0.55  % (1995)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 1.40/0.55  % (1996)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 1.40/0.55  % (1987)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 1.40/0.55  % (1999)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 1.40/0.55  % (1989)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 1.40/0.55  % (1973)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 1.40/0.56  % (1988)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 1.40/0.56  % (1979)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 1.40/0.56  % (1979)Refutation not found, incomplete strategy% (1979)------------------------------
% 1.40/0.56  % (1979)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.56  % (1979)Termination reason: Refutation not found, incomplete strategy
% 1.40/0.56  
% 1.40/0.56  % (1979)Memory used [KB]: 10618
% 1.40/0.56  % (1979)Time elapsed: 0.149 s
% 1.40/0.56  % (1979)------------------------------
% 1.40/0.56  % (1979)------------------------------
% 1.40/0.56  % (1981)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 1.40/0.56  % (1987)Refutation not found, incomplete strategy% (1987)------------------------------
% 1.40/0.56  % (1987)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.56  % (1987)Termination reason: Refutation not found, incomplete strategy
% 1.40/0.56  
% 1.40/0.56  % (1987)Memory used [KB]: 10618
% 1.40/0.56  % (1987)Time elapsed: 0.147 s
% 1.40/0.56  % (1987)------------------------------
% 1.40/0.56  % (1987)------------------------------
% 1.40/0.56  % (1981)Refutation not found, incomplete strategy% (1981)------------------------------
% 1.40/0.56  % (1981)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.56  % (1981)Termination reason: Refutation not found, incomplete strategy
% 1.40/0.56  
% 1.40/0.56  % (1981)Memory used [KB]: 10746
% 1.40/0.56  % (1981)Time elapsed: 0.145 s
% 1.40/0.56  % (1981)------------------------------
% 1.40/0.56  % (1981)------------------------------
% 1.40/0.56  % (1983)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 1.40/0.56  % (1978)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 1.40/0.56  % (1982)Refutation found. Thanks to Tanya!
% 1.40/0.56  % SZS status Theorem for theBenchmark
% 1.40/0.56  % (1972)Refutation not found, incomplete strategy% (1972)------------------------------
% 1.40/0.56  % (1972)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.56  % (1972)Termination reason: Refutation not found, incomplete strategy
% 1.40/0.56  
% 1.40/0.56  % (1972)Memory used [KB]: 10746
% 1.40/0.56  % (1972)Time elapsed: 0.128 s
% 1.40/0.56  % (1972)------------------------------
% 1.40/0.56  % (1972)------------------------------
% 1.40/0.56  % (1970)Refutation not found, incomplete strategy% (1970)------------------------------
% 1.40/0.56  % (1970)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.56  % (1970)Termination reason: Refutation not found, incomplete strategy
% 1.40/0.56  
% 1.40/0.56  % (1970)Memory used [KB]: 1663
% 1.40/0.56  % (1970)Time elapsed: 0.144 s
% 1.40/0.56  % (1970)------------------------------
% 1.40/0.56  % (1970)------------------------------
% 1.40/0.56  % (1998)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.40/0.56  % (1994)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 1.40/0.57  % (1991)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 1.40/0.57  % (1996)Refutation not found, incomplete strategy% (1996)------------------------------
% 1.40/0.57  % (1996)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.57  % (1986)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 1.40/0.57  % (1978)Refutation not found, incomplete strategy% (1978)------------------------------
% 1.40/0.57  % (1978)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.57  % (1990)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 1.40/0.58  % SZS output start Proof for theBenchmark
% 1.40/0.58  fof(f431,plain,(
% 1.40/0.58    $false),
% 1.40/0.58    inference(trivial_inequality_removal,[],[f430])).
% 1.40/0.58  fof(f430,plain,(
% 1.40/0.58    sK0 != sK0),
% 1.40/0.58    inference(superposition,[],[f252,f384])).
% 1.40/0.58  fof(f384,plain,(
% 1.40/0.58    sK0 = k4_subset_1(sK0,sK0,sK1)),
% 1.40/0.58    inference(forward_demodulation,[],[f383,f349])).
% 1.40/0.58  fof(f349,plain,(
% 1.40/0.58    ( ! [X1] : (k5_xboole_0(X1,k1_xboole_0) = X1) )),
% 1.40/0.58    inference(backward_demodulation,[],[f345,f348])).
% 1.40/0.58  fof(f348,plain,(
% 1.40/0.58    k1_xboole_0 = k4_xboole_0(k1_xboole_0,k1_xboole_0)),
% 1.40/0.58    inference(forward_demodulation,[],[f347,f274])).
% 1.40/0.58  fof(f274,plain,(
% 1.40/0.58    ( ! [X1] : (k5_xboole_0(X1,k4_xboole_0(X1,X1)) = X1) )),
% 1.40/0.58    inference(backward_demodulation,[],[f239,f272])).
% 1.40/0.58  fof(f272,plain,(
% 1.40/0.58    ( ! [X0] : (k4_subset_1(X0,X0,X0) = X0) )),
% 1.40/0.58    inference(resolution,[],[f267,f66])).
% 1.40/0.58  fof(f66,plain,(
% 1.40/0.58    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(forward_demodulation,[],[f37,f34])).
% 1.40/0.58  fof(f34,plain,(
% 1.40/0.58    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 1.40/0.58    inference(cnf_transformation,[],[f12])).
% 1.40/0.58  fof(f12,axiom,(
% 1.40/0.58    ! [X0] : k2_subset_1(X0) = X0),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).
% 1.40/0.58  fof(f37,plain,(
% 1.40/0.58    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f13])).
% 1.40/0.58  fof(f13,axiom,(
% 1.40/0.58    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).
% 1.40/0.58  fof(f267,plain,(
% 1.40/0.58    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(X1)) | k4_subset_1(X0,X0,X0) = X0) )),
% 1.40/0.58    inference(resolution,[],[f265,f33])).
% 1.40/0.58  fof(f33,plain,(
% 1.40/0.58    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f14])).
% 1.40/0.58  fof(f14,axiom,(
% 1.40/0.58    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).
% 1.40/0.58  fof(f265,plain,(
% 1.40/0.58    ( ! [X2,X3] : (v1_xboole_0(k1_zfmisc_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(X3)) | k4_subset_1(X2,X2,X2) = X2) )),
% 1.40/0.58    inference(resolution,[],[f257,f45])).
% 1.40/0.58  fof(f45,plain,(
% 1.40/0.58    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.40/0.58    inference(cnf_transformation,[],[f26])).
% 1.40/0.58  fof(f26,plain,(
% 1.40/0.58    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 1.40/0.58    inference(nnf_transformation,[],[f20])).
% 1.40/0.58  fof(f20,plain,(
% 1.40/0.58    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 1.40/0.58    inference(ennf_transformation,[],[f11])).
% 1.40/0.58  fof(f11,axiom,(
% 1.40/0.58    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).
% 1.40/0.58  fof(f257,plain,(
% 1.40/0.58    ( ! [X0,X1] : (~r2_hidden(X0,k1_zfmisc_1(X1)) | k4_subset_1(X0,X0,X0) = X0) )),
% 1.40/0.58    inference(resolution,[],[f242,f64])).
% 1.40/0.58  fof(f64,plain,(
% 1.40/0.58    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(equality_resolution,[],[f50])).
% 1.40/0.58  fof(f50,plain,(
% 1.40/0.58    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 1.40/0.58    inference(cnf_transformation,[],[f30])).
% 1.40/0.58  fof(f30,plain,(
% 1.40/0.58    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK2(X0,X1),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r1_tarski(sK2(X0,X1),X0) | r2_hidden(sK2(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.40/0.58    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f29])).
% 1.40/0.58  fof(f29,plain,(
% 1.40/0.58    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK2(X0,X1),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r1_tarski(sK2(X0,X1),X0) | r2_hidden(sK2(X0,X1),X1))))),
% 1.40/0.58    introduced(choice_axiom,[])).
% 1.40/0.58  fof(f28,plain,(
% 1.40/0.58    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.40/0.58    inference(rectify,[],[f27])).
% 1.40/0.58  fof(f27,plain,(
% 1.40/0.58    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.40/0.58    inference(nnf_transformation,[],[f9])).
% 1.40/0.58  fof(f9,axiom,(
% 1.40/0.58    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).
% 1.40/0.58  fof(f242,plain,(
% 1.40/0.58    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k4_subset_1(X0,X0,X0) = X0) )),
% 1.40/0.58    inference(backward_demodulation,[],[f73,f239])).
% 1.40/0.58  fof(f73,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 | ~r1_tarski(X0,X1)) )),
% 1.40/0.58    inference(superposition,[],[f56,f61])).
% 1.40/0.58  fof(f61,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 | ~r1_tarski(X0,X1)) )),
% 1.40/0.58    inference(definition_unfolding,[],[f49,f44])).
% 1.40/0.58  fof(f44,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f5])).
% 1.40/0.58  fof(f5,axiom,(
% 1.40/0.58    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).
% 1.40/0.58  fof(f49,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 1.40/0.58    inference(cnf_transformation,[],[f21])).
% 1.40/0.58  fof(f21,plain,(
% 1.40/0.58    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 1.40/0.58    inference(ennf_transformation,[],[f4])).
% 1.40/0.58  fof(f4,axiom,(
% 1.40/0.58    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).
% 1.40/0.58  fof(f56,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 1.40/0.58    inference(definition_unfolding,[],[f43,f44])).
% 1.40/0.58  fof(f43,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f2])).
% 1.40/0.58  fof(f2,axiom,(
% 1.40/0.58    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 1.40/0.58  fof(f239,plain,(
% 1.40/0.58    ( ! [X1] : (k5_xboole_0(X1,k4_xboole_0(X1,X1)) = k4_subset_1(X1,X1,X1)) )),
% 1.40/0.58    inference(resolution,[],[f181,f66])).
% 1.40/0.58  fof(f181,plain,(
% 1.40/0.58    ( ! [X4,X3] : (~m1_subset_1(X4,k1_zfmisc_1(X3)) | k5_xboole_0(X4,k4_xboole_0(X3,X4)) = k4_subset_1(X3,X4,X3)) )),
% 1.40/0.58    inference(resolution,[],[f67,f66])).
% 1.40/0.58  fof(f67,plain,(
% 1.40/0.58    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(X0)) | k4_subset_1(X0,X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(forward_demodulation,[],[f62,f60])).
% 1.40/0.58  fof(f60,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k3_tarski(k1_enumset1(X0,X0,X1))) )),
% 1.40/0.58    inference(definition_unfolding,[],[f42,f55])).
% 1.40/0.58  fof(f55,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k1_enumset1(X0,X0,X1))) )),
% 1.40/0.58    inference(definition_unfolding,[],[f40,f41])).
% 1.40/0.58  fof(f41,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.40/0.58    inference(cnf_transformation,[],[f8])).
% 1.40/0.58  fof(f8,axiom,(
% 1.40/0.58    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.40/0.58  fof(f40,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f10])).
% 1.40/0.58  fof(f10,axiom,(
% 1.40/0.58    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 1.40/0.58  fof(f42,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f6])).
% 1.40/0.58  fof(f6,axiom,(
% 1.40/0.58    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).
% 1.40/0.58  fof(f62,plain,(
% 1.40/0.58    ( ! [X2,X0,X1] : (k4_subset_1(X0,X1,X2) = k3_tarski(k1_enumset1(X1,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(definition_unfolding,[],[f54,f55])).
% 1.40/0.58  fof(f54,plain,(
% 1.40/0.58    ( ! [X2,X0,X1] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f23])).
% 1.40/0.58  fof(f23,plain,(
% 1.40/0.58    ! [X0,X1,X2] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.40/0.58    inference(flattening,[],[f22])).
% 1.40/0.58  fof(f22,plain,(
% 1.40/0.58    ! [X0,X1,X2] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 1.40/0.58    inference(ennf_transformation,[],[f15])).
% 1.40/0.58  fof(f15,axiom,(
% 1.40/0.58    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
% 1.40/0.58  fof(f347,plain,(
% 1.40/0.58    k4_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,k1_xboole_0))),
% 1.40/0.58    inference(forward_demodulation,[],[f346,f294])).
% 1.40/0.58  fof(f294,plain,(
% 1.40/0.58    ( ! [X1] : (k4_xboole_0(X1,X1) = k5_xboole_0(X1,X1)) )),
% 1.40/0.58    inference(resolution,[],[f289,f66])).
% 1.40/0.58  fof(f289,plain,(
% 1.40/0.58    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(X1)) | k4_xboole_0(X0,X1) = k5_xboole_0(X0,X0)) )),
% 1.40/0.58    inference(resolution,[],[f118,f33])).
% 1.40/0.58  fof(f118,plain,(
% 1.40/0.58    ( ! [X2,X3] : (v1_xboole_0(k1_zfmisc_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(X3)) | k4_xboole_0(X2,X3) = k5_xboole_0(X2,X2)) )),
% 1.40/0.58    inference(resolution,[],[f85,f45])).
% 1.40/0.58  fof(f85,plain,(
% 1.40/0.58    ( ! [X0,X1] : (~r2_hidden(X0,k1_zfmisc_1(X1)) | k4_xboole_0(X0,X1) = k5_xboole_0(X0,X0)) )),
% 1.40/0.58    inference(resolution,[],[f74,f64])).
% 1.40/0.58  fof(f74,plain,(
% 1.40/0.58    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k5_xboole_0(X0,X0)) )),
% 1.40/0.58    inference(superposition,[],[f56,f61])).
% 1.40/0.58  fof(f346,plain,(
% 1.40/0.58    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k1_xboole_0,k5_xboole_0(k1_xboole_0,k1_xboole_0))),
% 1.40/0.58    inference(forward_demodulation,[],[f312,f293])).
% 1.40/0.58  fof(f293,plain,(
% 1.40/0.58    ( ! [X0] : (k4_xboole_0(k1_xboole_0,X0) = k5_xboole_0(k1_xboole_0,k1_xboole_0)) )),
% 1.40/0.58    inference(resolution,[],[f289,f35])).
% 1.40/0.58  fof(f35,plain,(
% 1.40/0.58    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.40/0.58    inference(cnf_transformation,[],[f16])).
% 1.40/0.58  fof(f16,axiom,(
% 1.40/0.58    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).
% 1.40/0.58  fof(f312,plain,(
% 1.40/0.58    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,k5_xboole_0(k1_xboole_0,k1_xboole_0)))),
% 1.40/0.58    inference(superposition,[],[f56,f293])).
% 1.40/0.58  fof(f345,plain,(
% 1.40/0.58    ( ! [X1] : (k5_xboole_0(X1,k4_xboole_0(k1_xboole_0,k1_xboole_0)) = X1) )),
% 1.40/0.58    inference(forward_demodulation,[],[f311,f294])).
% 1.40/0.58  fof(f311,plain,(
% 1.40/0.58    ( ! [X1] : (k5_xboole_0(X1,k5_xboole_0(k1_xboole_0,k1_xboole_0)) = X1) )),
% 1.40/0.58    inference(superposition,[],[f89,f293])).
% 1.40/0.58  fof(f89,plain,(
% 1.40/0.58    ( ! [X0] : (k5_xboole_0(X0,k4_xboole_0(k1_xboole_0,X0)) = X0) )),
% 1.40/0.58    inference(superposition,[],[f60,f57])).
% 1.40/0.58  fof(f57,plain,(
% 1.40/0.58    ( ! [X0] : (k3_tarski(k1_enumset1(X0,X0,k1_xboole_0)) = X0) )),
% 1.40/0.58    inference(definition_unfolding,[],[f36,f55])).
% 1.40/0.58  fof(f36,plain,(
% 1.40/0.58    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.40/0.58    inference(cnf_transformation,[],[f3])).
% 1.40/0.58  fof(f3,axiom,(
% 1.40/0.58    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).
% 1.40/0.58  fof(f383,plain,(
% 1.40/0.58    k4_subset_1(sK0,sK0,sK1) = k5_xboole_0(sK0,k1_xboole_0)),
% 1.40/0.58    inference(backward_demodulation,[],[f186,f382])).
% 1.40/0.58  fof(f382,plain,(
% 1.40/0.58    k1_xboole_0 = k4_xboole_0(sK1,sK0)),
% 1.40/0.58    inference(backward_demodulation,[],[f292,f373])).
% 1.40/0.58  fof(f373,plain,(
% 1.40/0.58    ( ! [X1] : (k1_xboole_0 = k5_xboole_0(X1,X1)) )),
% 1.40/0.58    inference(backward_demodulation,[],[f294,f365])).
% 1.40/0.58  fof(f365,plain,(
% 1.40/0.58    ( ! [X1] : (k1_xboole_0 = k4_xboole_0(X1,X1)) )),
% 1.40/0.58    inference(backward_demodulation,[],[f352,f364])).
% 1.40/0.58  fof(f364,plain,(
% 1.40/0.58    ( ! [X6] : (k4_xboole_0(X6,k1_xboole_0) = X6) )),
% 1.40/0.58    inference(forward_demodulation,[],[f363,f349])).
% 1.40/0.58  fof(f363,plain,(
% 1.40/0.58    ( ! [X6] : (k4_xboole_0(X6,k1_xboole_0) = k5_xboole_0(X6,k1_xboole_0)) )),
% 1.40/0.58    inference(forward_demodulation,[],[f316,f355])).
% 1.40/0.58  fof(f355,plain,(
% 1.40/0.58    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 1.40/0.58    inference(backward_demodulation,[],[f293,f349])).
% 1.40/0.58  fof(f316,plain,(
% 1.40/0.58    ( ! [X6] : (k4_xboole_0(X6,k1_xboole_0) = k5_xboole_0(X6,k4_xboole_0(k1_xboole_0,k5_xboole_0(k1_xboole_0,k1_xboole_0)))) )),
% 1.40/0.58    inference(superposition,[],[f77,f293])).
% 1.40/0.58  fof(f77,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) )),
% 1.40/0.58    inference(superposition,[],[f56,f59])).
% 1.40/0.58  fof(f59,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 1.40/0.58    inference(definition_unfolding,[],[f39,f44,f44])).
% 1.40/0.58  fof(f39,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 1.40/0.58    inference(cnf_transformation,[],[f1])).
% 1.40/0.58  fof(f1,axiom,(
% 1.40/0.58    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 1.40/0.58  fof(f352,plain,(
% 1.40/0.58    ( ! [X1] : (k1_xboole_0 = k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0))) )),
% 1.40/0.58    inference(backward_demodulation,[],[f330,f348])).
% 1.40/0.58  fof(f330,plain,(
% 1.40/0.58    ( ! [X1] : (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k4_xboole_0(k1_xboole_0,k1_xboole_0)) )),
% 1.40/0.58    inference(forward_demodulation,[],[f306,f294])).
% 1.40/0.58  fof(f306,plain,(
% 1.40/0.58    ( ! [X1] : (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k5_xboole_0(k1_xboole_0,k1_xboole_0)) )),
% 1.40/0.58    inference(superposition,[],[f293,f59])).
% 1.40/0.58  fof(f292,plain,(
% 1.40/0.58    k4_xboole_0(sK1,sK0) = k5_xboole_0(sK1,sK1)),
% 1.40/0.58    inference(resolution,[],[f289,f31])).
% 1.40/0.58  fof(f31,plain,(
% 1.40/0.58    m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 1.40/0.58    inference(cnf_transformation,[],[f25])).
% 1.40/0.58  fof(f25,plain,(
% 1.40/0.58    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0)) & m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 1.40/0.58    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f19,f24])).
% 1.40/0.58  fof(f24,plain,(
% 1.40/0.58    ? [X0,X1] : (k2_subset_1(X0) != k4_subset_1(X0,X1,k2_subset_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0)) & m1_subset_1(sK1,k1_zfmisc_1(sK0)))),
% 1.40/0.58    introduced(choice_axiom,[])).
% 1.40/0.58  fof(f19,plain,(
% 1.40/0.58    ? [X0,X1] : (k2_subset_1(X0) != k4_subset_1(X0,X1,k2_subset_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.40/0.58    inference(ennf_transformation,[],[f18])).
% 1.40/0.58  fof(f18,negated_conjecture,(
% 1.40/0.58    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)))),
% 1.40/0.58    inference(negated_conjecture,[],[f17])).
% 1.40/0.58  fof(f17,conjecture,(
% 1.40/0.58    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)))),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_subset_1)).
% 1.40/0.58  fof(f186,plain,(
% 1.40/0.58    k4_subset_1(sK0,sK0,sK1) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0))),
% 1.40/0.58    inference(resolution,[],[f179,f66])).
% 1.40/0.58  fof(f179,plain,(
% 1.40/0.58    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(sK0)) | k4_subset_1(sK0,X0,sK1) = k5_xboole_0(X0,k4_xboole_0(sK1,X0))) )),
% 1.40/0.58    inference(resolution,[],[f67,f31])).
% 1.40/0.58  fof(f252,plain,(
% 1.40/0.58    sK0 != k4_subset_1(sK0,sK0,sK1)),
% 1.40/0.58    inference(superposition,[],[f65,f247])).
% 1.40/0.58  fof(f247,plain,(
% 1.40/0.58    k4_subset_1(sK0,sK1,sK0) = k4_subset_1(sK0,sK0,sK1)),
% 1.40/0.58    inference(forward_demodulation,[],[f243,f186])).
% 1.40/0.58  fof(f243,plain,(
% 1.40/0.58    k4_subset_1(sK0,sK1,sK0) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0))),
% 1.40/0.58    inference(superposition,[],[f237,f110])).
% 1.40/0.58  fof(f110,plain,(
% 1.40/0.58    ( ! [X4,X3] : (k5_xboole_0(X3,k4_xboole_0(X4,X3)) = k5_xboole_0(X4,k4_xboole_0(X3,X4))) )),
% 1.40/0.58    inference(superposition,[],[f87,f60])).
% 1.40/0.58  fof(f87,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k3_tarski(k1_enumset1(X1,X1,X0))) )),
% 1.40/0.58    inference(superposition,[],[f60,f58])).
% 1.40/0.58  fof(f58,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k1_enumset1(X1,X1,X0)) )),
% 1.40/0.58    inference(definition_unfolding,[],[f38,f41,f41])).
% 1.40/0.58  fof(f38,plain,(
% 1.40/0.58    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 1.40/0.58    inference(cnf_transformation,[],[f7])).
% 1.40/0.58  fof(f7,axiom,(
% 1.40/0.58    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 1.40/0.58    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 1.40/0.58  fof(f237,plain,(
% 1.40/0.58    k4_subset_1(sK0,sK1,sK0) = k5_xboole_0(sK1,k4_xboole_0(sK0,sK1))),
% 1.40/0.58    inference(resolution,[],[f181,f31])).
% 1.40/0.58  fof(f65,plain,(
% 1.40/0.58    sK0 != k4_subset_1(sK0,sK1,sK0)),
% 1.40/0.58    inference(backward_demodulation,[],[f32,f34])).
% 1.40/0.58  fof(f32,plain,(
% 1.40/0.58    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0))),
% 1.40/0.58    inference(cnf_transformation,[],[f25])).
% 1.40/0.58  % SZS output end Proof for theBenchmark
% 1.40/0.58  % (1982)------------------------------
% 1.40/0.58  % (1982)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.40/0.58  % (1982)Termination reason: Refutation
% 1.40/0.58  
% 1.40/0.58  % (1982)Memory used [KB]: 6396
% 1.40/0.58  % (1982)Time elapsed: 0.144 s
% 1.40/0.58  % (1982)------------------------------
% 1.40/0.58  % (1982)------------------------------
% 1.40/0.58  % (1969)Success in time 0.21 s
%------------------------------------------------------------------------------
