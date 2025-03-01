%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:24 EST 2020

% Result     : Theorem 1.38s
% Output     : Refutation 1.38s
% Verified   : 
% Statistics : Number of formulae       :   91 ( 267 expanded)
%              Number of leaves         :   17 (  69 expanded)
%              Depth                    :   14
%              Number of atoms          :  226 ( 763 expanded)
%              Number of equality atoms :   49 ( 175 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f843,plain,(
    $false ),
    inference(subsumption_resolution,[],[f816,f173])).

fof(f173,plain,(
    ~ r1_xboole_0(sK2,sK1) ),
    inference(subsumption_resolution,[],[f171,f81])).

fof(f81,plain,(
    r1_tarski(sK2,sK0) ),
    inference(resolution,[],[f76,f66])).

fof(f66,plain,(
    ! [X0,X3] :
      ( ~ r2_hidden(X3,k1_zfmisc_1(X0))
      | r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f53])).

fof(f53,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK3(X0,X1),X0)
            | ~ r2_hidden(sK3(X0,X1),X1) )
          & ( r1_tarski(sK3(X0,X1),X0)
            | r2_hidden(sK3(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f32,f33])).

fof(f33,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK3(X0,X1),X0)
          | ~ r2_hidden(sK3(X0,X1),X1) )
        & ( r1_tarski(sK3(X0,X1),X0)
          | r2_hidden(sK3(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
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
    inference(rectify,[],[f31])).

fof(f31,plain,(
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
    inference(nnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(f76,plain,(
    r2_hidden(sK2,k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f73,f39])).

fof(f39,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).

fof(f73,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK0))
    | v1_xboole_0(k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f44,f36])).

fof(f36,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,
    ( ~ r1_tarski(sK2,k3_subset_1(sK0,sK1))
    & r1_tarski(sK1,k3_subset_1(sK0,sK2))
    & m1_subset_1(sK2,k1_zfmisc_1(sK0))
    & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f17,f26,f25])).

fof(f25,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ~ r1_tarski(X2,k3_subset_1(X0,X1))
            & r1_tarski(X1,k3_subset_1(X0,X2))
            & m1_subset_1(X2,k1_zfmisc_1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ? [X2] :
          ( ~ r1_tarski(X2,k3_subset_1(sK0,sK1))
          & r1_tarski(sK1,k3_subset_1(sK0,X2))
          & m1_subset_1(X2,k1_zfmisc_1(sK0)) )
      & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X2] :
        ( ~ r1_tarski(X2,k3_subset_1(sK0,sK1))
        & r1_tarski(sK1,k3_subset_1(sK0,X2))
        & m1_subset_1(X2,k1_zfmisc_1(sK0)) )
   => ( ~ r1_tarski(sK2,k3_subset_1(sK0,sK1))
      & r1_tarski(sK1,k3_subset_1(sK0,sK2))
      & m1_subset_1(sK2,k1_zfmisc_1(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(X2,k3_subset_1(X0,X1))
          & r1_tarski(X1,k3_subset_1(X0,X2))
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(X2,k3_subset_1(X0,X1))
          & r1_tarski(X1,k3_subset_1(X0,X2))
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(X0))
           => ( r1_tarski(X1,k3_subset_1(X0,X2))
             => r1_tarski(X2,k3_subset_1(X0,X1)) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_tarski(X1,k3_subset_1(X0,X2))
           => r1_tarski(X2,k3_subset_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t35_subset_1)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,X0)
      | r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
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
    inference(nnf_transformation,[],[f18])).

fof(f18,plain,(
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

fof(f171,plain,
    ( ~ r1_xboole_0(sK2,sK1)
    | ~ r1_tarski(sK2,sK0) ),
    inference(resolution,[],[f60,f149])).

fof(f149,plain,(
    ~ r1_tarski(sK2,k4_xboole_0(sK0,sK1)) ),
    inference(backward_demodulation,[],[f38,f146])).

fof(f146,plain,(
    k3_subset_1(sK0,sK1) = k4_xboole_0(sK0,sK1) ),
    inference(resolution,[],[f49,f35])).

fof(f35,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f27])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).

fof(f38,plain,(
    ~ r1_tarski(sK2,k3_subset_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f27])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_xboole_1)).

fof(f816,plain,(
    r1_xboole_0(sK2,sK1) ),
    inference(superposition,[],[f93,f770])).

fof(f770,plain,(
    sK2 = k4_xboole_0(sK2,sK1) ),
    inference(forward_demodulation,[],[f769,f333])).

fof(f333,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(forward_demodulation,[],[f332,f223])).

fof(f223,plain,(
    ! [X2] : k4_xboole_0(X2,k1_xboole_0) = X2 ),
    inference(subsumption_resolution,[],[f219,f89])).

fof(f89,plain,(
    ! [X2,X1] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(resolution,[],[f57,f63])).

fof(f63,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f51])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_xboole_1)).

fof(f219,plain,(
    ! [X2] :
      ( k4_xboole_0(X2,k1_xboole_0) = X2
      | ~ r1_tarski(k4_xboole_0(X2,k1_xboole_0),X2) ) ),
    inference(resolution,[],[f216,f52])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f216,plain,(
    ! [X0] : r1_tarski(X0,k4_xboole_0(X0,k1_xboole_0)) ),
    inference(superposition,[],[f129,f83])).

fof(f83,plain,(
    ! [X0] : k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(resolution,[],[f48,f40])).

fof(f40,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f48,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k2_xboole_0(X0,X1) = X1 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(f129,plain,(
    ! [X2,X3] : r1_tarski(X2,k2_xboole_0(X3,k4_xboole_0(X2,X3))) ),
    inference(resolution,[],[f59,f63])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(k4_xboole_0(X0,X1),X2)
      | r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_xboole_0(X1,X2))
      | ~ r1_tarski(k4_xboole_0(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k4_xboole_0(X0,X1),X2)
     => r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_xboole_1)).

fof(f332,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f324,f140])).

fof(f140,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(resolution,[],[f95,f89])).

fof(f95,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,k1_xboole_0)
      | k1_xboole_0 = X0 ) ),
    inference(resolution,[],[f52,f40])).

fof(f324,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k4_xboole_0(k1_xboole_0,k1_xboole_0)) ),
    inference(superposition,[],[f187,f140])).

fof(f187,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) ),
    inference(superposition,[],[f61,f62])).

fof(f62,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f41,f42,f42])).

fof(f42,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f41,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f61,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f43,f42])).

fof(f43,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f769,plain,(
    k4_xboole_0(sK2,sK1) = k5_xboole_0(sK2,k1_xboole_0) ),
    inference(forward_demodulation,[],[f751,f244])).

fof(f244,plain,(
    ! [X9] : k1_xboole_0 = k4_xboole_0(X9,X9) ),
    inference(forward_demodulation,[],[f238,f140])).

fof(f238,plain,(
    ! [X9] : k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X9)) = k4_xboole_0(X9,X9) ),
    inference(superposition,[],[f62,f223])).

fof(f751,plain,(
    k4_xboole_0(sK2,sK1) = k5_xboole_0(sK2,k4_xboole_0(sK1,sK1)) ),
    inference(superposition,[],[f187,f737])).

fof(f737,plain,(
    sK1 = k4_xboole_0(sK1,sK2) ),
    inference(resolution,[],[f729,f153])).

fof(f153,plain,(
    r1_xboole_0(sK1,sK2) ),
    inference(resolution,[],[f152,f58])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
      | r1_xboole_0(X0,X2) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f152,plain,(
    r1_tarski(sK1,k4_xboole_0(sK0,sK2)) ),
    inference(backward_demodulation,[],[f37,f147])).

fof(f147,plain,(
    k3_subset_1(sK0,sK2) = k4_xboole_0(sK0,sK2) ),
    inference(resolution,[],[f49,f36])).

fof(f37,plain,(
    r1_tarski(sK1,k3_subset_1(sK0,sK2)) ),
    inference(cnf_transformation,[],[f27])).

fof(f729,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) = X0 ) ),
    inference(subsumption_resolution,[],[f707,f63])).

fof(f707,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X0)
      | k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(resolution,[],[f168,f89])).

fof(f168,plain,(
    ! [X6,X8,X7] :
      ( ~ r1_tarski(k4_xboole_0(X8,X7),X6)
      | ~ r1_tarski(X6,X8)
      | k4_xboole_0(X8,X7) = X6
      | ~ r1_xboole_0(X6,X7) ) ),
    inference(resolution,[],[f60,f52])).

fof(f93,plain,(
    ! [X2,X1] : r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    inference(resolution,[],[f58,f63])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:12:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.21/0.51  % (10838)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 1.27/0.52  % (10846)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_23 on theBenchmark
% 1.27/0.53  % (10862)lrs-4_5:1_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:bs=unit_only:bsr=on:irw=on:lcm=reverse:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:updr=off_6 on theBenchmark
% 1.27/0.53  % (10839)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 1.27/0.53  % (10862)Refutation not found, incomplete strategy% (10862)------------------------------
% 1.27/0.53  % (10862)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.27/0.53  % (10862)Termination reason: Refutation not found, incomplete strategy
% 1.27/0.53  
% 1.27/0.53  % (10862)Memory used [KB]: 6140
% 1.27/0.53  % (10862)Time elapsed: 0.131 s
% 1.27/0.53  % (10862)------------------------------
% 1.27/0.53  % (10862)------------------------------
% 1.27/0.53  % (10853)ott-3_3_av=off:cond=fast:fde=none:lcm=reverse:nm=6:nwc=1:sd=5:ss=axioms:st=2.0:sos=on:sp=reverse_arity:updr=off:uhcvi=on_88 on theBenchmark
% 1.38/0.54  % (10853)Refutation not found, incomplete strategy% (10853)------------------------------
% 1.38/0.54  % (10853)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.54  % (10853)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.54  
% 1.38/0.54  % (10853)Memory used [KB]: 1663
% 1.38/0.54  % (10853)Time elapsed: 0.119 s
% 1.38/0.54  % (10853)------------------------------
% 1.38/0.54  % (10853)------------------------------
% 1.38/0.54  % (10835)dis+10_16_awrs=decay:awrsf=256:afr=on:afp=40000:afq=2.0:amm=off:bsr=on:cond=on:er=known:gsp=input_only:irw=on:lma=on:nm=6:newcnf=on:nwc=3:sas=z3:sd=4:ss=axioms:s2a=on:sp=frequency:updr=off_8 on theBenchmark
% 1.38/0.54  % (10854)lrs+1011_3:2_av=off:er=known:lma=on:nm=2:newcnf=on:nwc=2:stl=30:sd=2:ss=axioms:st=3.0:urr=on:updr=off_24 on theBenchmark
% 1.38/0.54  % (10840)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 1.38/0.54  % (10837)dis+1_5:1_aac=none:afr=on:afp=100000:afq=1.4:amm=sco:anc=none:br=off:gsp=input_only:gs=on:gsem=on:lcm=reverse:nm=6:nwc=1:nicw=on:sas=z3:sos=on:urr=on_1 on theBenchmark
% 1.38/0.54  % (10836)dis+11_3_av=off:fsr=off:lcm=predicate:lma=on:nm=4:nwc=1:sd=3:ss=axioms:st=1.2:sos=on:updr=off_4 on theBenchmark
% 1.38/0.54  % (10836)Refutation not found, incomplete strategy% (10836)------------------------------
% 1.38/0.54  % (10836)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.55  % (10852)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_36 on theBenchmark
% 1.38/0.55  % (10856)dis+1010_3:2_acc=on:afr=on:afp=1000:afq=1.2:amm=sco:bs=on:ccuc=first:fde=none:nm=0:nwc=4:sd=3:ss=axioms:st=5.0:urr=ec_only_75 on theBenchmark
% 1.38/0.55  % (10852)Refutation not found, incomplete strategy% (10852)------------------------------
% 1.38/0.55  % (10852)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.55  % (10852)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.55  
% 1.38/0.55  % (10852)Memory used [KB]: 1791
% 1.38/0.55  % (10852)Time elapsed: 0.147 s
% 1.38/0.55  % (10852)------------------------------
% 1.38/0.55  % (10852)------------------------------
% 1.38/0.55  % (10859)dis-11_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:gs=on:irw=on:lcm=reverse:nm=6:nwc=1:sd=4:ss=axioms:st=3.0:sos=on:sac=on_1 on theBenchmark
% 1.38/0.55  % (10847)lrs+1011_1_afp=40000:afq=1.4:bd=off:cond=fast:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sd=2:ss=axioms:sos=all:sp=occurrence_6 on theBenchmark
% 1.38/0.55  % (10845)dis+1002_7_acc=on:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:ccuc=first:fsr=off:gsp=input_only:gs=on:gsem=on:nm=6:nwc=1.1:nicw=on:sos=on:sac=on:sp=occurrence:urr=ec_only_217 on theBenchmark
% 1.38/0.55  % (10841)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 1.38/0.55  % (10851)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_9 on theBenchmark
% 1.38/0.55  % (10847)Refutation not found, incomplete strategy% (10847)------------------------------
% 1.38/0.55  % (10847)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.55  % (10847)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.55  
% 1.38/0.55  % (10847)Memory used [KB]: 10618
% 1.38/0.55  % (10847)Time elapsed: 0.148 s
% 1.38/0.55  % (10847)------------------------------
% 1.38/0.55  % (10847)------------------------------
% 1.38/0.56  % (10845)Refutation not found, incomplete strategy% (10845)------------------------------
% 1.38/0.56  % (10845)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.56  % (10845)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.56  
% 1.38/0.56  % (10845)Memory used [KB]: 10746
% 1.38/0.56  % (10845)Time elapsed: 0.148 s
% 1.38/0.56  % (10845)------------------------------
% 1.38/0.56  % (10845)------------------------------
% 1.38/0.56  % (10836)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.56  
% 1.38/0.56  % (10836)Memory used [KB]: 1663
% 1.38/0.56  % (10836)Time elapsed: 0.133 s
% 1.38/0.56  % (10836)------------------------------
% 1.38/0.56  % (10836)------------------------------
% 1.38/0.56  % (10850)dis+1011_3_afp=4000:afq=1.1:amm=sco:anc=none:gs=on:gsaa=from_current:gsem=off:irw=on:nm=16:nwc=1:sas=z3:ss=axioms:sos=all:sac=on:sp=reverse_arity:updr=off_17 on theBenchmark
% 1.38/0.56  % (10857)lrs+1011_2:3_av=off:gs=on:gsem=off:nwc=1.5:stl=30:sos=theory:sp=occurrence:urr=ec_only:updr=off_223 on theBenchmark
% 1.38/0.56  % (10861)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_11 on theBenchmark
% 1.38/0.56  % (10861)Refutation not found, incomplete strategy% (10861)------------------------------
% 1.38/0.56  % (10861)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.56  % (10861)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.56  
% 1.38/0.56  % (10861)Memory used [KB]: 6268
% 1.38/0.56  % (10861)Time elapsed: 0.156 s
% 1.38/0.56  % (10861)------------------------------
% 1.38/0.56  % (10861)------------------------------
% 1.38/0.56  % (10863)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_73 on theBenchmark
% 1.38/0.56  % (10844)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 1.38/0.56  % (10843)lrs+11_3_afr=on:afp=10000:afq=1.0:cond=fast:fsr=off:fde=none:gs=on:gsem=off:lcm=reverse:nm=2:newcnf=on:nwc=1:sas=z3:stl=30:sd=10:ss=axioms:st=2.0:sos=all:sp=reverse_arity:urr=on:uhcvi=on_23 on theBenchmark
% 1.38/0.56  % (10849)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 1.38/0.56  % (10864)lrs+11_3_av=off:bce=on:cond=fast:ep=R:lcm=reverse:lma=on:newcnf=on:nwc=1.3:stl=30:sd=3:ss=axioms:st=1.2:sos=on:sp=occurrence:uhcvi=on_2 on theBenchmark
% 1.38/0.56  % (10864)Refutation not found, incomplete strategy% (10864)------------------------------
% 1.38/0.56  % (10864)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.56  % (10864)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.56  
% 1.38/0.56  % (10864)Memory used [KB]: 1663
% 1.38/0.56  % (10864)Time elapsed: 0.002 s
% 1.38/0.56  % (10864)------------------------------
% 1.38/0.56  % (10864)------------------------------
% 1.38/0.57  % (10858)dis+1010_4_acc=on:afr=on:afp=1000:afq=2.0:anc=none:bd=off:bs=unit_only:bsr=on:ccuc=small_ones:cond=fast:fsr=off:gs=on:gsem=off:lcm=reverse:lma=on:nm=64:nwc=2.5:nicw=on:sd=3:ss=axioms:st=3.0:sac=on:urr=ec_only:updr=off:uhcvi=on_83 on theBenchmark
% 1.38/0.57  % (10842)lrs+1_8:1_av=off:cond=fast:fde=unused:lcm=predicate:nm=16:nwc=10:stl=60:sp=occurrence:urr=ec_only_3 on theBenchmark
% 1.38/0.57  % (10851)Refutation not found, incomplete strategy% (10851)------------------------------
% 1.38/0.57  % (10851)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.57  % (10851)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.57  
% 1.38/0.57  % (10851)Memory used [KB]: 10618
% 1.38/0.57  % (10851)Time elapsed: 0.162 s
% 1.38/0.57  % (10851)------------------------------
% 1.38/0.57  % (10851)------------------------------
% 1.38/0.57  % (10855)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_13 on theBenchmark
% 1.38/0.57  % (10860)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_91 on theBenchmark
% 1.38/0.57  % (10848)dis+1010_7_afr=on:afp=10000:afq=1.1:amm=sco:anc=none:bd=off:bsr=on:cond=on:fsr=off:lma=on:nm=32:newcnf=on:nwc=1:urr=ec_only:updr=off_83 on theBenchmark
% 1.38/0.57  % (10860)Refutation not found, incomplete strategy% (10860)------------------------------
% 1.38/0.57  % (10860)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.57  % (10860)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.57  
% 1.38/0.57  % (10860)Memory used [KB]: 6268
% 1.38/0.57  % (10860)Time elapsed: 0.162 s
% 1.38/0.57  % (10860)------------------------------
% 1.38/0.57  % (10860)------------------------------
% 1.38/0.58  % (10863)Refutation not found, incomplete strategy% (10863)------------------------------
% 1.38/0.58  % (10863)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.58  % (10863)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.58  
% 1.38/0.58  % (10863)Memory used [KB]: 10746
% 1.38/0.58  % (10863)Time elapsed: 0.158 s
% 1.38/0.58  % (10863)------------------------------
% 1.38/0.58  % (10863)------------------------------
% 1.38/0.61  % (10841)Refutation found. Thanks to Tanya!
% 1.38/0.61  % SZS status Theorem for theBenchmark
% 1.38/0.61  % SZS output start Proof for theBenchmark
% 1.38/0.61  fof(f843,plain,(
% 1.38/0.61    $false),
% 1.38/0.61    inference(subsumption_resolution,[],[f816,f173])).
% 1.38/0.61  fof(f173,plain,(
% 1.38/0.61    ~r1_xboole_0(sK2,sK1)),
% 1.38/0.61    inference(subsumption_resolution,[],[f171,f81])).
% 1.38/0.61  fof(f81,plain,(
% 1.38/0.61    r1_tarski(sK2,sK0)),
% 1.38/0.61    inference(resolution,[],[f76,f66])).
% 1.38/0.61  fof(f66,plain,(
% 1.38/0.61    ( ! [X0,X3] : (~r2_hidden(X3,k1_zfmisc_1(X0)) | r1_tarski(X3,X0)) )),
% 1.38/0.61    inference(equality_resolution,[],[f53])).
% 1.38/0.61  fof(f53,plain,(
% 1.38/0.61    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 1.38/0.61    inference(cnf_transformation,[],[f34])).
% 1.38/0.61  fof(f34,plain,(
% 1.38/0.61    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.38/0.61    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f32,f33])).
% 1.38/0.61  fof(f33,plain,(
% 1.38/0.61    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1))))),
% 1.38/0.61    introduced(choice_axiom,[])).
% 1.38/0.61  fof(f32,plain,(
% 1.38/0.61    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.38/0.61    inference(rectify,[],[f31])).
% 1.38/0.61  fof(f31,plain,(
% 1.38/0.61    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.38/0.61    inference(nnf_transformation,[],[f10])).
% 1.38/0.61  fof(f10,axiom,(
% 1.38/0.61    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).
% 1.38/0.61  fof(f76,plain,(
% 1.38/0.61    r2_hidden(sK2,k1_zfmisc_1(sK0))),
% 1.38/0.61    inference(subsumption_resolution,[],[f73,f39])).
% 1.38/0.61  fof(f39,plain,(
% 1.38/0.61    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 1.38/0.61    inference(cnf_transformation,[],[f13])).
% 1.38/0.61  fof(f13,axiom,(
% 1.38/0.61    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).
% 1.38/0.61  fof(f73,plain,(
% 1.38/0.61    r2_hidden(sK2,k1_zfmisc_1(sK0)) | v1_xboole_0(k1_zfmisc_1(sK0))),
% 1.38/0.61    inference(resolution,[],[f44,f36])).
% 1.38/0.61  fof(f36,plain,(
% 1.38/0.61    m1_subset_1(sK2,k1_zfmisc_1(sK0))),
% 1.38/0.61    inference(cnf_transformation,[],[f27])).
% 1.38/0.61  fof(f27,plain,(
% 1.38/0.61    (~r1_tarski(sK2,k3_subset_1(sK0,sK1)) & r1_tarski(sK1,k3_subset_1(sK0,sK2)) & m1_subset_1(sK2,k1_zfmisc_1(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 1.38/0.61    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f17,f26,f25])).
% 1.38/0.61  fof(f25,plain,(
% 1.38/0.61    ? [X0,X1] : (? [X2] : (~r1_tarski(X2,k3_subset_1(X0,X1)) & r1_tarski(X1,k3_subset_1(X0,X2)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (? [X2] : (~r1_tarski(X2,k3_subset_1(sK0,sK1)) & r1_tarski(sK1,k3_subset_1(sK0,X2)) & m1_subset_1(X2,k1_zfmisc_1(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(sK0)))),
% 1.38/0.61    introduced(choice_axiom,[])).
% 1.38/0.61  fof(f26,plain,(
% 1.38/0.61    ? [X2] : (~r1_tarski(X2,k3_subset_1(sK0,sK1)) & r1_tarski(sK1,k3_subset_1(sK0,X2)) & m1_subset_1(X2,k1_zfmisc_1(sK0))) => (~r1_tarski(sK2,k3_subset_1(sK0,sK1)) & r1_tarski(sK1,k3_subset_1(sK0,sK2)) & m1_subset_1(sK2,k1_zfmisc_1(sK0)))),
% 1.38/0.61    introduced(choice_axiom,[])).
% 1.38/0.61  fof(f17,plain,(
% 1.38/0.61    ? [X0,X1] : (? [X2] : (~r1_tarski(X2,k3_subset_1(X0,X1)) & r1_tarski(X1,k3_subset_1(X0,X2)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.61    inference(flattening,[],[f16])).
% 1.38/0.61  fof(f16,plain,(
% 1.38/0.61    ? [X0,X1] : (? [X2] : ((~r1_tarski(X2,k3_subset_1(X0,X1)) & r1_tarski(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.61    inference(ennf_transformation,[],[f15])).
% 1.38/0.61  fof(f15,negated_conjecture,(
% 1.38/0.61    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_tarski(X1,k3_subset_1(X0,X2)) => r1_tarski(X2,k3_subset_1(X0,X1)))))),
% 1.38/0.61    inference(negated_conjecture,[],[f14])).
% 1.38/0.61  fof(f14,conjecture,(
% 1.38/0.61    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_tarski(X1,k3_subset_1(X0,X2)) => r1_tarski(X2,k3_subset_1(X0,X1)))))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t35_subset_1)).
% 1.38/0.61  fof(f44,plain,(
% 1.38/0.61    ( ! [X0,X1] : (~m1_subset_1(X1,X0) | r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f28])).
% 1.38/0.61  fof(f28,plain,(
% 1.38/0.61    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 1.38/0.61    inference(nnf_transformation,[],[f18])).
% 1.38/0.61  fof(f18,plain,(
% 1.38/0.61    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 1.38/0.61    inference(ennf_transformation,[],[f11])).
% 1.38/0.61  fof(f11,axiom,(
% 1.38/0.61    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).
% 1.38/0.61  fof(f171,plain,(
% 1.38/0.61    ~r1_xboole_0(sK2,sK1) | ~r1_tarski(sK2,sK0)),
% 1.38/0.61    inference(resolution,[],[f60,f149])).
% 1.38/0.61  fof(f149,plain,(
% 1.38/0.61    ~r1_tarski(sK2,k4_xboole_0(sK0,sK1))),
% 1.38/0.61    inference(backward_demodulation,[],[f38,f146])).
% 1.38/0.61  fof(f146,plain,(
% 1.38/0.61    k3_subset_1(sK0,sK1) = k4_xboole_0(sK0,sK1)),
% 1.38/0.61    inference(resolution,[],[f49,f35])).
% 1.38/0.61  fof(f35,plain,(
% 1.38/0.61    m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 1.38/0.61    inference(cnf_transformation,[],[f27])).
% 1.38/0.61  fof(f49,plain,(
% 1.38/0.61    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f20])).
% 1.38/0.61  fof(f20,plain,(
% 1.38/0.61    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.61    inference(ennf_transformation,[],[f12])).
% 1.38/0.61  fof(f12,axiom,(
% 1.38/0.61    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).
% 1.38/0.61  fof(f38,plain,(
% 1.38/0.61    ~r1_tarski(sK2,k3_subset_1(sK0,sK1))),
% 1.38/0.61    inference(cnf_transformation,[],[f27])).
% 1.38/0.61  fof(f60,plain,(
% 1.38/0.61    ( ! [X2,X0,X1] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | ~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f24])).
% 1.38/0.61  fof(f24,plain,(
% 1.38/0.61    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | ~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1))),
% 1.38/0.61    inference(flattening,[],[f23])).
% 1.38/0.61  fof(f23,plain,(
% 1.38/0.61    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | (~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)))),
% 1.38/0.61    inference(ennf_transformation,[],[f9])).
% 1.38/0.61  fof(f9,axiom,(
% 1.38/0.61    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_xboole_1)).
% 1.38/0.61  fof(f816,plain,(
% 1.38/0.61    r1_xboole_0(sK2,sK1)),
% 1.38/0.61    inference(superposition,[],[f93,f770])).
% 1.38/0.61  fof(f770,plain,(
% 1.38/0.61    sK2 = k4_xboole_0(sK2,sK1)),
% 1.38/0.61    inference(forward_demodulation,[],[f769,f333])).
% 1.38/0.61  fof(f333,plain,(
% 1.38/0.61    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.38/0.61    inference(forward_demodulation,[],[f332,f223])).
% 1.38/0.61  fof(f223,plain,(
% 1.38/0.61    ( ! [X2] : (k4_xboole_0(X2,k1_xboole_0) = X2) )),
% 1.38/0.61    inference(subsumption_resolution,[],[f219,f89])).
% 1.38/0.61  fof(f89,plain,(
% 1.38/0.61    ( ! [X2,X1] : (r1_tarski(k4_xboole_0(X1,X2),X1)) )),
% 1.38/0.61    inference(resolution,[],[f57,f63])).
% 1.38/0.61  fof(f63,plain,(
% 1.38/0.61    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 1.38/0.61    inference(equality_resolution,[],[f51])).
% 1.38/0.61  fof(f51,plain,(
% 1.38/0.61    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 1.38/0.61    inference(cnf_transformation,[],[f30])).
% 1.38/0.61  fof(f30,plain,(
% 1.38/0.61    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.38/0.61    inference(flattening,[],[f29])).
% 1.38/0.61  fof(f29,plain,(
% 1.38/0.61    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.38/0.61    inference(nnf_transformation,[],[f2])).
% 1.38/0.61  fof(f2,axiom,(
% 1.38/0.61    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 1.38/0.61  fof(f57,plain,(
% 1.38/0.61    ( ! [X2,X0,X1] : (~r1_tarski(X0,k4_xboole_0(X1,X2)) | r1_tarski(X0,X1)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f21])).
% 1.38/0.61  fof(f21,plain,(
% 1.38/0.61    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) | ~r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.38/0.61    inference(ennf_transformation,[],[f4])).
% 1.38/0.61  fof(f4,axiom,(
% 1.38/0.61    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_xboole_1)).
% 1.38/0.61  fof(f219,plain,(
% 1.38/0.61    ( ! [X2] : (k4_xboole_0(X2,k1_xboole_0) = X2 | ~r1_tarski(k4_xboole_0(X2,k1_xboole_0),X2)) )),
% 1.38/0.61    inference(resolution,[],[f216,f52])).
% 1.38/0.61  fof(f52,plain,(
% 1.38/0.61    ( ! [X0,X1] : (~r1_tarski(X1,X0) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f30])).
% 1.38/0.61  fof(f216,plain,(
% 1.38/0.61    ( ! [X0] : (r1_tarski(X0,k4_xboole_0(X0,k1_xboole_0))) )),
% 1.38/0.61    inference(superposition,[],[f129,f83])).
% 1.38/0.61  fof(f83,plain,(
% 1.38/0.61    ( ! [X0] : (k2_xboole_0(k1_xboole_0,X0) = X0) )),
% 1.38/0.61    inference(resolution,[],[f48,f40])).
% 1.38/0.61  fof(f40,plain,(
% 1.38/0.61    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f6])).
% 1.38/0.61  fof(f6,axiom,(
% 1.38/0.61    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).
% 1.38/0.61  fof(f48,plain,(
% 1.38/0.61    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1) )),
% 1.38/0.61    inference(cnf_transformation,[],[f19])).
% 1.38/0.61  fof(f19,plain,(
% 1.38/0.61    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 1.38/0.61    inference(ennf_transformation,[],[f5])).
% 1.38/0.61  fof(f5,axiom,(
% 1.38/0.61    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).
% 1.38/0.61  fof(f129,plain,(
% 1.38/0.61    ( ! [X2,X3] : (r1_tarski(X2,k2_xboole_0(X3,k4_xboole_0(X2,X3)))) )),
% 1.38/0.61    inference(resolution,[],[f59,f63])).
% 1.38/0.61  fof(f59,plain,(
% 1.38/0.61    ( ! [X2,X0,X1] : (~r1_tarski(k4_xboole_0(X0,X1),X2) | r1_tarski(X0,k2_xboole_0(X1,X2))) )),
% 1.38/0.61    inference(cnf_transformation,[],[f22])).
% 1.38/0.61  fof(f22,plain,(
% 1.38/0.61    ! [X0,X1,X2] : (r1_tarski(X0,k2_xboole_0(X1,X2)) | ~r1_tarski(k4_xboole_0(X0,X1),X2))),
% 1.38/0.61    inference(ennf_transformation,[],[f7])).
% 1.38/0.61  fof(f7,axiom,(
% 1.38/0.61    ! [X0,X1,X2] : (r1_tarski(k4_xboole_0(X0,X1),X2) => r1_tarski(X0,k2_xboole_0(X1,X2)))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_xboole_1)).
% 1.38/0.61  fof(f332,plain,(
% 1.38/0.61    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k1_xboole_0)) )),
% 1.38/0.61    inference(forward_demodulation,[],[f324,f140])).
% 1.38/0.61  fof(f140,plain,(
% 1.38/0.61    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 1.38/0.61    inference(resolution,[],[f95,f89])).
% 1.38/0.61  fof(f95,plain,(
% 1.38/0.61    ( ! [X0] : (~r1_tarski(X0,k1_xboole_0) | k1_xboole_0 = X0) )),
% 1.38/0.61    inference(resolution,[],[f52,f40])).
% 1.38/0.61  fof(f324,plain,(
% 1.38/0.61    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k4_xboole_0(k1_xboole_0,k1_xboole_0))) )),
% 1.38/0.61    inference(superposition,[],[f187,f140])).
% 1.38/0.61  fof(f187,plain,(
% 1.38/0.61    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) )),
% 1.38/0.61    inference(superposition,[],[f61,f62])).
% 1.38/0.61  fof(f62,plain,(
% 1.38/0.61    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 1.38/0.61    inference(definition_unfolding,[],[f41,f42,f42])).
% 1.38/0.61  fof(f42,plain,(
% 1.38/0.61    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.38/0.61    inference(cnf_transformation,[],[f8])).
% 1.38/0.61  fof(f8,axiom,(
% 1.38/0.61    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).
% 1.38/0.61  fof(f41,plain,(
% 1.38/0.61    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f1])).
% 1.38/0.61  fof(f1,axiom,(
% 1.38/0.61    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 1.38/0.61  fof(f61,plain,(
% 1.38/0.61    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 1.38/0.61    inference(definition_unfolding,[],[f43,f42])).
% 1.38/0.61  fof(f43,plain,(
% 1.38/0.61    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.38/0.61    inference(cnf_transformation,[],[f3])).
% 1.38/0.61  fof(f3,axiom,(
% 1.38/0.61    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.38/0.61    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 1.38/0.61  fof(f769,plain,(
% 1.38/0.61    k4_xboole_0(sK2,sK1) = k5_xboole_0(sK2,k1_xboole_0)),
% 1.38/0.61    inference(forward_demodulation,[],[f751,f244])).
% 1.38/0.61  fof(f244,plain,(
% 1.38/0.61    ( ! [X9] : (k1_xboole_0 = k4_xboole_0(X9,X9)) )),
% 1.38/0.61    inference(forward_demodulation,[],[f238,f140])).
% 1.38/0.61  fof(f238,plain,(
% 1.38/0.61    ( ! [X9] : (k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X9)) = k4_xboole_0(X9,X9)) )),
% 1.38/0.61    inference(superposition,[],[f62,f223])).
% 1.38/0.61  fof(f751,plain,(
% 1.38/0.61    k4_xboole_0(sK2,sK1) = k5_xboole_0(sK2,k4_xboole_0(sK1,sK1))),
% 1.38/0.61    inference(superposition,[],[f187,f737])).
% 1.38/0.61  fof(f737,plain,(
% 1.38/0.61    sK1 = k4_xboole_0(sK1,sK2)),
% 1.38/0.61    inference(resolution,[],[f729,f153])).
% 1.38/0.61  fof(f153,plain,(
% 1.38/0.61    r1_xboole_0(sK1,sK2)),
% 1.38/0.61    inference(resolution,[],[f152,f58])).
% 1.38/0.61  fof(f58,plain,(
% 1.38/0.61    ( ! [X2,X0,X1] : (~r1_tarski(X0,k4_xboole_0(X1,X2)) | r1_xboole_0(X0,X2)) )),
% 1.38/0.61    inference(cnf_transformation,[],[f21])).
% 1.38/0.61  fof(f152,plain,(
% 1.38/0.61    r1_tarski(sK1,k4_xboole_0(sK0,sK2))),
% 1.38/0.61    inference(backward_demodulation,[],[f37,f147])).
% 1.38/0.61  fof(f147,plain,(
% 1.38/0.61    k3_subset_1(sK0,sK2) = k4_xboole_0(sK0,sK2)),
% 1.38/0.61    inference(resolution,[],[f49,f36])).
% 1.38/0.61  fof(f37,plain,(
% 1.38/0.61    r1_tarski(sK1,k3_subset_1(sK0,sK2))),
% 1.38/0.61    inference(cnf_transformation,[],[f27])).
% 1.38/0.61  fof(f729,plain,(
% 1.38/0.61    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0) )),
% 1.38/0.61    inference(subsumption_resolution,[],[f707,f63])).
% 1.38/0.61  fof(f707,plain,(
% 1.38/0.61    ( ! [X0,X1] : (~r1_tarski(X0,X0) | k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 1.38/0.61    inference(resolution,[],[f168,f89])).
% 1.38/0.61  fof(f168,plain,(
% 1.38/0.61    ( ! [X6,X8,X7] : (~r1_tarski(k4_xboole_0(X8,X7),X6) | ~r1_tarski(X6,X8) | k4_xboole_0(X8,X7) = X6 | ~r1_xboole_0(X6,X7)) )),
% 1.38/0.61    inference(resolution,[],[f60,f52])).
% 1.38/0.61  fof(f93,plain,(
% 1.38/0.61    ( ! [X2,X1] : (r1_xboole_0(k4_xboole_0(X1,X2),X2)) )),
% 1.38/0.61    inference(resolution,[],[f58,f63])).
% 1.38/0.61  % SZS output end Proof for theBenchmark
% 1.38/0.61  % (10841)------------------------------
% 1.38/0.61  % (10841)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.61  % (10841)Termination reason: Refutation
% 1.38/0.61  
% 1.38/0.61  % (10841)Memory used [KB]: 11129
% 1.38/0.61  % (10841)Time elapsed: 0.205 s
% 1.38/0.61  % (10841)------------------------------
% 1.38/0.61  % (10841)------------------------------
% 1.38/0.61  % (10834)Success in time 0.246 s
%------------------------------------------------------------------------------
