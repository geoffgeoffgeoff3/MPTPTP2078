%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:12:13 EST 2020

% Result     : Theorem 1.36s
% Output     : Refutation 1.36s
% Verified   : 
% Statistics : Number of formulae       :   88 ( 409 expanded)
%              Number of leaves         :   15 ( 110 expanded)
%              Depth                    :   23
%              Number of atoms          :  257 (2101 expanded)
%              Number of equality atoms :   85 ( 617 expanded)
%              Maximal formula depth    :    9 (   5 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f322,plain,(
    $false ),
    inference(subsumption_resolution,[],[f321,f35])).

fof(f35,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,
    ( ( k2_tops_1(sK0,sK1) != k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
      | ~ v4_pre_topc(sK1,sK0) )
    & ( k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
      | v4_pre_topc(sK1,sK0) )
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f28,f30,f29])).

fof(f29,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( k2_tops_1(X0,X1) != k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))
              | ~ v4_pre_topc(X1,X0) )
            & ( k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))
              | v4_pre_topc(X1,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( ? [X1] :
          ( ( k2_tops_1(sK0,X1) != k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1))
            | ~ v4_pre_topc(X1,sK0) )
          & ( k2_tops_1(sK0,X1) = k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1))
            | v4_pre_topc(X1,sK0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ? [X1] :
        ( ( k2_tops_1(sK0,X1) != k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1))
          | ~ v4_pre_topc(X1,sK0) )
        & ( k2_tops_1(sK0,X1) = k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1))
          | v4_pre_topc(X1,sK0) )
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
   => ( ( k2_tops_1(sK0,sK1) != k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
        | ~ v4_pre_topc(sK1,sK0) )
      & ( k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
        | v4_pre_topc(sK1,sK0) )
      & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))
            | ~ v4_pre_topc(X1,X0) )
          & ( k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))
            | v4_pre_topc(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f27,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))
            | ~ v4_pre_topc(X1,X0) )
          & ( k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))
            | v4_pre_topc(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v4_pre_topc(X1,X0)
          <~> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v4_pre_topc(X1,X0)
          <~> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v4_pre_topc(X1,X0)
            <=> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
          <=> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t77_tops_1)).

fof(f321,plain,(
    ~ l1_pre_topc(sK0) ),
    inference(subsumption_resolution,[],[f320,f36])).

fof(f36,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f31])).

fof(f320,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0) ),
    inference(subsumption_resolution,[],[f318,f172])).

fof(f172,plain,(
    sK1 != k2_pre_topc(sK0,sK1) ),
    inference(subsumption_resolution,[],[f171,f35])).

fof(f171,plain,
    ( sK1 != k2_pre_topc(sK0,sK1)
    | ~ l1_pre_topc(sK0) ),
    inference(subsumption_resolution,[],[f170,f36])).

fof(f170,plain,
    ( sK1 != k2_pre_topc(sK0,sK1)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0) ),
    inference(subsumption_resolution,[],[f169,f34])).

fof(f34,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f169,plain,
    ( sK1 != k2_pre_topc(sK0,sK1)
    | ~ v2_pre_topc(sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0) ),
    inference(resolution,[],[f166,f44])).

fof(f44,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(X1,X0)
      | k2_pre_topc(X0,X1) != X1
      | ~ v2_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_pre_topc)).

fof(f166,plain,(
    ~ v4_pre_topc(sK1,sK0) ),
    inference(trivial_inequality_removal,[],[f165])).

% (25407)Refutation not found, incomplete strategy% (25407)------------------------------
% (25407)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% (25407)Termination reason: Refutation not found, incomplete strategy

fof(f165,plain,
    ( k2_tops_1(sK0,sK1) != k2_tops_1(sK0,sK1)
    | ~ v4_pre_topc(sK1,sK0) ),
    inference(backward_demodulation,[],[f69,f164])).

% (25407)Memory used [KB]: 1663
% (25407)Time elapsed: 0.139 s
% (25407)------------------------------
% (25407)------------------------------
fof(f164,plain,(
    k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) ),
    inference(global_subsumption,[],[f38,f68,f163])).

fof(f163,plain,
    ( k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
    | k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) ),
    inference(subsumption_resolution,[],[f160,f36])).

fof(f160,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
    | k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) ),
    inference(resolution,[],[f149,f68])).

fof(f149,plain,(
    ! [X0] :
      ( ~ v4_pre_topc(X0,sK0)
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),X0,k1_tops_1(sK0,X0)) ) ),
    inference(subsumption_resolution,[],[f148,f35])).

fof(f148,plain,(
    ! [X0] :
      ( k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),X0,k1_tops_1(sK0,X0))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v4_pre_topc(X0,sK0)
      | ~ l1_pre_topc(sK0) ) ),
    inference(duplicate_literal_removal,[],[f147])).

fof(f147,plain,(
    ! [X0] :
      ( k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),X0,k1_tops_1(sK0,X0))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v4_pre_topc(X0,sK0)
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ l1_pre_topc(sK0) ) ),
    inference(superposition,[],[f146,f43])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f146,plain,(
    ! [X0] :
      ( k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k1_tops_1(sK0,X0))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(resolution,[],[f42,f35])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l78_tops_1)).

fof(f68,plain,
    ( v4_pre_topc(sK1,sK0)
    | k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) ),
    inference(backward_demodulation,[],[f37,f67])).

fof(f67,plain,(
    ! [X0] : k7_subset_1(u1_struct_0(sK0),sK1,X0) = k4_xboole_0(sK1,X0) ),
    inference(resolution,[],[f51,f36])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(f37,plain,
    ( v4_pre_topc(sK1,sK0)
    | k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f31])).

fof(f38,plain,
    ( k2_tops_1(sK0,sK1) != k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))
    | ~ v4_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f69,plain,
    ( k2_tops_1(sK0,sK1) != k4_xboole_0(sK1,k1_tops_1(sK0,sK1))
    | ~ v4_pre_topc(sK1,sK0) ),
    inference(backward_demodulation,[],[f38,f67])).

fof(f318,plain,
    ( sK1 = k2_pre_topc(sK0,sK1)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0) ),
    inference(superposition,[],[f316,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_pre_topc(X0,X1) = k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tops_1)).

fof(f316,plain,(
    sK1 = k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) ),
    inference(forward_demodulation,[],[f315,f65])).

fof(f65,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(backward_demodulation,[],[f54,f64])).

fof(f64,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(resolution,[],[f59,f45])).

fof(f45,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f59,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,k1_xboole_0)
      | k1_xboole_0 = X0 ) ),
    inference(resolution,[],[f50,f39])).

fof(f39,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f50,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f54,plain,(
    ! [X0] : k5_xboole_0(X0,k4_xboole_0(k1_xboole_0,X0)) = X0 ),
    inference(definition_unfolding,[],[f40,f46])).

fof(f46,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(f40,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(f315,plain,(
    k5_xboole_0(sK1,k1_xboole_0) = k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) ),
    inference(forward_demodulation,[],[f313,f179])).

fof(f179,plain,(
    k1_xboole_0 = k4_xboole_0(k2_tops_1(sK0,sK1),sK1) ),
    inference(superposition,[],[f80,f164])).

fof(f80,plain,(
    ! [X2,X3] : k1_xboole_0 = k4_xboole_0(k4_xboole_0(X2,X3),X2) ),
    inference(resolution,[],[f77,f45])).

fof(f77,plain,(
    ! [X4,X3] :
      ( ~ r1_tarski(X3,X4)
      | k1_xboole_0 = k4_xboole_0(X3,X4) ) ),
    inference(forward_demodulation,[],[f76,f65])).

fof(f76,plain,(
    ! [X4,X3] :
      ( ~ r1_tarski(X3,k5_xboole_0(X4,k1_xboole_0))
      | k1_xboole_0 = k4_xboole_0(X3,X4) ) ),
    inference(forward_demodulation,[],[f73,f64])).

fof(f73,plain,(
    ! [X4,X3] :
      ( ~ r1_tarski(X3,k5_xboole_0(X4,k4_xboole_0(k1_xboole_0,X4)))
      | k1_xboole_0 = k4_xboole_0(X3,X4) ) ),
    inference(resolution,[],[f55,f59])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k4_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X0,k5_xboole_0(X1,k4_xboole_0(X2,X1))) ) ),
    inference(definition_unfolding,[],[f52,f46])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k4_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k4_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_xboole_0(X1,X2))
     => r1_tarski(k4_xboole_0(X0,X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_xboole_1)).

fof(f313,plain,(
    k5_xboole_0(sK1,k4_xboole_0(k2_tops_1(sK0,sK1),sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) ),
    inference(resolution,[],[f212,f36])).

fof(f212,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,X0)) = k5_xboole_0(sK1,k4_xboole_0(k2_tops_1(sK0,X0),sK1)) ) ),
    inference(resolution,[],[f190,f36])).

fof(f190,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
      | k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X1)) = k5_xboole_0(X0,k4_xboole_0(k2_tops_1(sK0,X1),X0)) ) ),
    inference(resolution,[],[f140,f35])).

fof(f140,plain,(
    ! [X2,X3,X1] :
      ( ~ l1_pre_topc(X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
      | k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X3)) = k5_xboole_0(X2,k4_xboole_0(k2_tops_1(X1,X3),X2)) ) ),
    inference(resolution,[],[f56,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_tops_1)).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | k4_subset_1(X0,X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f53,f46])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:23:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.50  % (25400)lrs+1011_2:3_av=off:gs=on:gsem=off:nwc=1.5:stl=30:sos=theory:sp=occurrence:urr=ec_only:updr=off_223 on theBenchmark
% 0.20/0.50  % (25392)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 0.20/0.50  % (25395)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_36 on theBenchmark
% 0.20/0.51  % (25384)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.20/0.51  % (25382)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 0.20/0.51  % (25378)dis+10_16_awrs=decay:awrsf=256:afr=on:afp=40000:afq=2.0:amm=off:bsr=on:cond=on:er=known:gsp=input_only:irw=on:lma=on:nm=6:newcnf=on:nwc=3:sas=z3:sd=4:ss=axioms:s2a=on:sp=frequency:updr=off_8 on theBenchmark
% 0.20/0.51  % (25390)lrs+1011_1_afp=40000:afq=1.4:bd=off:cond=fast:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sd=2:ss=axioms:sos=all:sp=occurrence_6 on theBenchmark
% 0.20/0.51  % (25387)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 0.20/0.51  % (25383)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 0.20/0.52  % (25399)dis+1010_3:2_acc=on:afr=on:afp=1000:afq=1.2:amm=sco:bs=on:ccuc=first:fde=none:nm=0:nwc=4:sd=3:ss=axioms:st=5.0:urr=ec_only_75 on theBenchmark
% 0.20/0.53  % (25403)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_91 on theBenchmark
% 0.20/0.53  % (25394)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_9 on theBenchmark
% 0.20/0.53  % (25389)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_23 on theBenchmark
% 1.36/0.53  % (25380)dis+1_5:1_aac=none:afr=on:afp=100000:afq=1.4:amm=sco:anc=none:br=off:gsp=input_only:gs=on:gsem=on:lcm=reverse:nm=6:nwc=1:nicw=on:sas=z3:sos=on:urr=on_1 on theBenchmark
% 1.36/0.53  % (25400)Refutation found. Thanks to Tanya!
% 1.36/0.53  % SZS status Theorem for theBenchmark
% 1.36/0.53  % (25379)dis+11_3_av=off:fsr=off:lcm=predicate:lma=on:nm=4:nwc=1:sd=3:ss=axioms:st=1.2:sos=on:updr=off_4 on theBenchmark
% 1.36/0.53  % (25407)lrs+11_3_av=off:bce=on:cond=fast:ep=R:lcm=reverse:lma=on:newcnf=on:nwc=1.3:stl=30:sd=3:ss=axioms:st=1.2:sos=on:sp=occurrence:uhcvi=on_2 on theBenchmark
% 1.36/0.53  % SZS output start Proof for theBenchmark
% 1.36/0.53  fof(f322,plain,(
% 1.36/0.53    $false),
% 1.36/0.53    inference(subsumption_resolution,[],[f321,f35])).
% 1.36/0.53  fof(f35,plain,(
% 1.36/0.53    l1_pre_topc(sK0)),
% 1.36/0.53    inference(cnf_transformation,[],[f31])).
% 1.36/0.53  fof(f31,plain,(
% 1.36/0.53    ((k2_tops_1(sK0,sK1) != k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | ~v4_pre_topc(sK1,sK0)) & (k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | v4_pre_topc(sK1,sK0)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 1.36/0.53    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f28,f30,f29])).
% 1.36/0.53  fof(f29,plain,(
% 1.36/0.53    ? [X0] : (? [X1] : ((k2_tops_1(X0,X1) != k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) | ~v4_pre_topc(X1,X0)) & (k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) | v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (? [X1] : ((k2_tops_1(sK0,X1) != k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) | ~v4_pre_topc(X1,sK0)) & (k2_tops_1(sK0,X1) = k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) | v4_pre_topc(X1,sK0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 1.36/0.53    introduced(choice_axiom,[])).
% 1.36/0.53  fof(f30,plain,(
% 1.36/0.53    ? [X1] : ((k2_tops_1(sK0,X1) != k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) | ~v4_pre_topc(X1,sK0)) & (k2_tops_1(sK0,X1) = k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) | v4_pre_topc(X1,sK0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) => ((k2_tops_1(sK0,sK1) != k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | ~v4_pre_topc(sK1,sK0)) & (k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | v4_pre_topc(sK1,sK0)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))))),
% 1.36/0.53    introduced(choice_axiom,[])).
% 1.36/0.53  fof(f28,plain,(
% 1.36/0.53    ? [X0] : (? [X1] : ((k2_tops_1(X0,X1) != k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) | ~v4_pre_topc(X1,X0)) & (k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) | v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 1.36/0.53    inference(flattening,[],[f27])).
% 1.36/0.53  fof(f27,plain,(
% 1.36/0.53    ? [X0] : (? [X1] : (((k2_tops_1(X0,X1) != k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) | ~v4_pre_topc(X1,X0)) & (k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) | v4_pre_topc(X1,X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 1.36/0.53    inference(nnf_transformation,[],[f16])).
% 1.36/0.53  fof(f16,plain,(
% 1.36/0.53    ? [X0] : (? [X1] : ((v4_pre_topc(X1,X0) <~> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 1.36/0.53    inference(flattening,[],[f15])).
% 1.36/0.53  fof(f15,plain,(
% 1.36/0.53    ? [X0] : (? [X1] : ((v4_pre_topc(X1,X0) <~> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 1.36/0.53    inference(ennf_transformation,[],[f14])).
% 1.36/0.53  fof(f14,negated_conjecture,(
% 1.36/0.53    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) <=> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)))))),
% 1.36/0.53    inference(negated_conjecture,[],[f13])).
% 1.36/0.53  fof(f13,conjecture,(
% 1.36/0.53    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) <=> k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)))))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t77_tops_1)).
% 1.36/0.53  fof(f321,plain,(
% 1.36/0.53    ~l1_pre_topc(sK0)),
% 1.36/0.53    inference(subsumption_resolution,[],[f320,f36])).
% 1.36/0.53  fof(f36,plain,(
% 1.36/0.53    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.36/0.53    inference(cnf_transformation,[],[f31])).
% 1.36/0.53  fof(f320,plain,(
% 1.36/0.53    ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)),
% 1.36/0.53    inference(subsumption_resolution,[],[f318,f172])).
% 1.36/0.53  fof(f172,plain,(
% 1.36/0.53    sK1 != k2_pre_topc(sK0,sK1)),
% 1.36/0.53    inference(subsumption_resolution,[],[f171,f35])).
% 1.36/0.53  fof(f171,plain,(
% 1.36/0.53    sK1 != k2_pre_topc(sK0,sK1) | ~l1_pre_topc(sK0)),
% 1.36/0.53    inference(subsumption_resolution,[],[f170,f36])).
% 1.36/0.53  fof(f170,plain,(
% 1.36/0.53    sK1 != k2_pre_topc(sK0,sK1) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)),
% 1.36/0.53    inference(subsumption_resolution,[],[f169,f34])).
% 1.36/0.53  fof(f34,plain,(
% 1.36/0.53    v2_pre_topc(sK0)),
% 1.36/0.53    inference(cnf_transformation,[],[f31])).
% 1.36/0.53  fof(f169,plain,(
% 1.36/0.53    sK1 != k2_pre_topc(sK0,sK1) | ~v2_pre_topc(sK0) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)),
% 1.36/0.53    inference(resolution,[],[f166,f44])).
% 1.36/0.53  fof(f44,plain,(
% 1.36/0.53    ( ! [X0,X1] : (v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f20])).
% 1.36/0.53  fof(f20,plain,(
% 1.36/0.53    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0)) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.36/0.53    inference(flattening,[],[f19])).
% 1.36/0.53  fof(f19,plain,(
% 1.36/0.53    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | (k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0))) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.36/0.53    inference(ennf_transformation,[],[f9])).
% 1.36/0.53  fof(f9,axiom,(
% 1.36/0.53    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_pre_topc)).
% 1.36/0.53  fof(f166,plain,(
% 1.36/0.53    ~v4_pre_topc(sK1,sK0)),
% 1.36/0.53    inference(trivial_inequality_removal,[],[f165])).
% 1.36/0.53  % (25407)Refutation not found, incomplete strategy% (25407)------------------------------
% 1.36/0.53  % (25407)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.36/0.53  % (25407)Termination reason: Refutation not found, incomplete strategy
% 1.36/0.53  
% 1.36/0.53  fof(f165,plain,(
% 1.36/0.53    k2_tops_1(sK0,sK1) != k2_tops_1(sK0,sK1) | ~v4_pre_topc(sK1,sK0)),
% 1.36/0.53    inference(backward_demodulation,[],[f69,f164])).
% 1.36/0.53  % (25407)Memory used [KB]: 1663
% 1.36/0.53  % (25407)Time elapsed: 0.139 s
% 1.36/0.53  % (25407)------------------------------
% 1.36/0.53  % (25407)------------------------------
% 1.36/0.53  fof(f164,plain,(
% 1.36/0.53    k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1))),
% 1.36/0.53    inference(global_subsumption,[],[f38,f68,f163])).
% 1.36/0.53  fof(f163,plain,(
% 1.36/0.53    k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1))),
% 1.36/0.53    inference(subsumption_resolution,[],[f160,f36])).
% 1.36/0.53  fof(f160,plain,(
% 1.36/0.53    ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1))),
% 1.36/0.53    inference(resolution,[],[f149,f68])).
% 1.36/0.53  fof(f149,plain,(
% 1.36/0.53    ( ! [X0] : (~v4_pre_topc(X0,sK0) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),X0,k1_tops_1(sK0,X0))) )),
% 1.36/0.53    inference(subsumption_resolution,[],[f148,f35])).
% 1.36/0.53  fof(f148,plain,(
% 1.36/0.53    ( ! [X0] : (k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),X0,k1_tops_1(sK0,X0)) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~v4_pre_topc(X0,sK0) | ~l1_pre_topc(sK0)) )),
% 1.36/0.53    inference(duplicate_literal_removal,[],[f147])).
% 1.36/0.53  fof(f147,plain,(
% 1.36/0.53    ( ! [X0] : (k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),X0,k1_tops_1(sK0,X0)) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~v4_pre_topc(X0,sK0) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)) )),
% 1.36/0.53    inference(superposition,[],[f146,f43])).
% 1.36/0.53  fof(f43,plain,(
% 1.36/0.53    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f20])).
% 1.36/0.53  fof(f146,plain,(
% 1.36/0.53    ( ! [X0] : (k2_tops_1(sK0,X0) = k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k1_tops_1(sK0,X0)) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 1.36/0.53    inference(resolution,[],[f42,f35])).
% 1.36/0.53  fof(f42,plain,(
% 1.36/0.53    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1))) )),
% 1.36/0.53    inference(cnf_transformation,[],[f18])).
% 1.36/0.53  fof(f18,plain,(
% 1.36/0.53    ! [X0] : (! [X1] : (k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.36/0.53    inference(ennf_transformation,[],[f11])).
% 1.36/0.53  fof(f11,axiom,(
% 1.36/0.53    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k2_tops_1(X0,X1) = k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1))))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l78_tops_1)).
% 1.36/0.53  fof(f68,plain,(
% 1.36/0.53    v4_pre_topc(sK1,sK0) | k2_tops_1(sK0,sK1) = k4_xboole_0(sK1,k1_tops_1(sK0,sK1))),
% 1.36/0.53    inference(backward_demodulation,[],[f37,f67])).
% 1.36/0.53  fof(f67,plain,(
% 1.36/0.53    ( ! [X0] : (k7_subset_1(u1_struct_0(sK0),sK1,X0) = k4_xboole_0(sK1,X0)) )),
% 1.36/0.53    inference(resolution,[],[f51,f36])).
% 1.36/0.53  fof(f51,plain,(
% 1.36/0.53    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f23])).
% 1.36/0.53  fof(f23,plain,(
% 1.36/0.53    ! [X0,X1,X2] : (k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.36/0.53    inference(ennf_transformation,[],[f8])).
% 1.36/0.53  fof(f8,axiom,(
% 1.36/0.53    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_subset_1)).
% 1.36/0.53  fof(f37,plain,(
% 1.36/0.53    v4_pre_topc(sK1,sK0) | k2_tops_1(sK0,sK1) = k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1))),
% 1.36/0.53    inference(cnf_transformation,[],[f31])).
% 1.36/0.53  fof(f38,plain,(
% 1.36/0.53    k2_tops_1(sK0,sK1) != k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) | ~v4_pre_topc(sK1,sK0)),
% 1.36/0.53    inference(cnf_transformation,[],[f31])).
% 1.36/0.53  fof(f69,plain,(
% 1.36/0.53    k2_tops_1(sK0,sK1) != k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) | ~v4_pre_topc(sK1,sK0)),
% 1.36/0.53    inference(backward_demodulation,[],[f38,f67])).
% 1.36/0.53  fof(f318,plain,(
% 1.36/0.53    sK1 = k2_pre_topc(sK0,sK1) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)),
% 1.36/0.53    inference(superposition,[],[f316,f41])).
% 1.36/0.53  fof(f41,plain,(
% 1.36/0.53    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f17])).
% 1.36/0.53  fof(f17,plain,(
% 1.36/0.53    ! [X0] : (! [X1] : (k2_pre_topc(X0,X1) = k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.36/0.53    inference(ennf_transformation,[],[f12])).
% 1.36/0.53  fof(f12,axiom,(
% 1.36/0.53    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k2_pre_topc(X0,X1) = k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1))))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tops_1)).
% 1.36/0.53  fof(f316,plain,(
% 1.36/0.53    sK1 = k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1))),
% 1.36/0.53    inference(forward_demodulation,[],[f315,f65])).
% 1.36/0.53  fof(f65,plain,(
% 1.36/0.53    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.36/0.53    inference(backward_demodulation,[],[f54,f64])).
% 1.36/0.53  fof(f64,plain,(
% 1.36/0.53    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 1.36/0.53    inference(resolution,[],[f59,f45])).
% 1.36/0.53  fof(f45,plain,(
% 1.36/0.53    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f4])).
% 1.36/0.53  fof(f4,axiom,(
% 1.36/0.53    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).
% 1.36/0.53  fof(f59,plain,(
% 1.36/0.53    ( ! [X0] : (~r1_tarski(X0,k1_xboole_0) | k1_xboole_0 = X0) )),
% 1.36/0.53    inference(resolution,[],[f50,f39])).
% 1.36/0.53  fof(f39,plain,(
% 1.36/0.53    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f3])).
% 1.36/0.53  fof(f3,axiom,(
% 1.36/0.53    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).
% 1.36/0.53  fof(f50,plain,(
% 1.36/0.53    ( ! [X0,X1] : (~r1_tarski(X1,X0) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f33])).
% 1.36/0.53  fof(f33,plain,(
% 1.36/0.53    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.36/0.53    inference(flattening,[],[f32])).
% 1.36/0.53  fof(f32,plain,(
% 1.36/0.53    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.36/0.53    inference(nnf_transformation,[],[f1])).
% 1.36/0.53  fof(f1,axiom,(
% 1.36/0.53    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 1.36/0.53  fof(f54,plain,(
% 1.36/0.53    ( ! [X0] : (k5_xboole_0(X0,k4_xboole_0(k1_xboole_0,X0)) = X0) )),
% 1.36/0.53    inference(definition_unfolding,[],[f40,f46])).
% 1.36/0.53  fof(f46,plain,(
% 1.36/0.53    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 1.36/0.53    inference(cnf_transformation,[],[f6])).
% 1.36/0.53  fof(f6,axiom,(
% 1.36/0.53    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).
% 1.36/0.53  fof(f40,plain,(
% 1.36/0.53    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.36/0.53    inference(cnf_transformation,[],[f2])).
% 1.36/0.53  fof(f2,axiom,(
% 1.36/0.53    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).
% 1.36/0.53  fof(f315,plain,(
% 1.36/0.53    k5_xboole_0(sK1,k1_xboole_0) = k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1))),
% 1.36/0.53    inference(forward_demodulation,[],[f313,f179])).
% 1.36/0.53  fof(f179,plain,(
% 1.36/0.53    k1_xboole_0 = k4_xboole_0(k2_tops_1(sK0,sK1),sK1)),
% 1.36/0.53    inference(superposition,[],[f80,f164])).
% 1.36/0.53  fof(f80,plain,(
% 1.36/0.53    ( ! [X2,X3] : (k1_xboole_0 = k4_xboole_0(k4_xboole_0(X2,X3),X2)) )),
% 1.36/0.53    inference(resolution,[],[f77,f45])).
% 1.36/0.53  fof(f77,plain,(
% 1.36/0.53    ( ! [X4,X3] : (~r1_tarski(X3,X4) | k1_xboole_0 = k4_xboole_0(X3,X4)) )),
% 1.36/0.53    inference(forward_demodulation,[],[f76,f65])).
% 1.36/0.53  fof(f76,plain,(
% 1.36/0.53    ( ! [X4,X3] : (~r1_tarski(X3,k5_xboole_0(X4,k1_xboole_0)) | k1_xboole_0 = k4_xboole_0(X3,X4)) )),
% 1.36/0.53    inference(forward_demodulation,[],[f73,f64])).
% 1.36/0.53  fof(f73,plain,(
% 1.36/0.53    ( ! [X4,X3] : (~r1_tarski(X3,k5_xboole_0(X4,k4_xboole_0(k1_xboole_0,X4))) | k1_xboole_0 = k4_xboole_0(X3,X4)) )),
% 1.36/0.53    inference(resolution,[],[f55,f59])).
% 1.36/0.53  fof(f55,plain,(
% 1.36/0.53    ( ! [X2,X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X2) | ~r1_tarski(X0,k5_xboole_0(X1,k4_xboole_0(X2,X1)))) )),
% 1.36/0.53    inference(definition_unfolding,[],[f52,f46])).
% 1.36/0.53  fof(f52,plain,(
% 1.36/0.53    ( ! [X2,X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X2) | ~r1_tarski(X0,k2_xboole_0(X1,X2))) )),
% 1.36/0.53    inference(cnf_transformation,[],[f24])).
% 1.36/0.53  fof(f24,plain,(
% 1.36/0.53    ! [X0,X1,X2] : (r1_tarski(k4_xboole_0(X0,X1),X2) | ~r1_tarski(X0,k2_xboole_0(X1,X2)))),
% 1.36/0.53    inference(ennf_transformation,[],[f5])).
% 1.36/0.53  fof(f5,axiom,(
% 1.36/0.53    ! [X0,X1,X2] : (r1_tarski(X0,k2_xboole_0(X1,X2)) => r1_tarski(k4_xboole_0(X0,X1),X2))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_xboole_1)).
% 1.36/0.53  fof(f313,plain,(
% 1.36/0.53    k5_xboole_0(sK1,k4_xboole_0(k2_tops_1(sK0,sK1),sK1)) = k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1))),
% 1.36/0.53    inference(resolution,[],[f212,f36])).
% 1.36/0.53  fof(f212,plain,(
% 1.36/0.53    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,X0)) = k5_xboole_0(sK1,k4_xboole_0(k2_tops_1(sK0,X0),sK1))) )),
% 1.36/0.53    inference(resolution,[],[f190,f36])).
% 1.36/0.53  fof(f190,plain,(
% 1.36/0.53    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) | k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X1)) = k5_xboole_0(X0,k4_xboole_0(k2_tops_1(sK0,X1),X0))) )),
% 1.36/0.53    inference(resolution,[],[f140,f35])).
% 1.36/0.53  fof(f140,plain,(
% 1.36/0.53    ( ! [X2,X3,X1] : (~l1_pre_topc(X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) | k4_subset_1(u1_struct_0(X1),X2,k2_tops_1(X1,X3)) = k5_xboole_0(X2,k4_xboole_0(k2_tops_1(X1,X3),X2))) )),
% 1.36/0.53    inference(resolution,[],[f56,f47])).
% 1.36/0.53  fof(f47,plain,(
% 1.36/0.53    ( ! [X0,X1] : (m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.36/0.53    inference(cnf_transformation,[],[f22])).
% 1.36/0.53  fof(f22,plain,(
% 1.36/0.53    ! [X0,X1] : (m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 1.36/0.53    inference(flattening,[],[f21])).
% 1.36/0.53  fof(f21,plain,(
% 1.36/0.53    ! [X0,X1] : (m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 1.36/0.53    inference(ennf_transformation,[],[f10])).
% 1.36/0.53  fof(f10,axiom,(
% 1.36/0.53    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_tops_1)).
% 1.36/0.53  fof(f56,plain,(
% 1.36/0.53    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(X0)) | k4_subset_1(X0,X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.36/0.53    inference(definition_unfolding,[],[f53,f46])).
% 1.36/0.53  fof(f53,plain,(
% 1.36/0.53    ( ! [X2,X0,X1] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.36/0.53    inference(cnf_transformation,[],[f26])).
% 1.36/0.53  fof(f26,plain,(
% 1.36/0.53    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.36/0.53    inference(flattening,[],[f25])).
% 1.36/0.53  fof(f25,plain,(
% 1.36/0.53    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 1.36/0.53    inference(ennf_transformation,[],[f7])).
% 1.36/0.53  fof(f7,axiom,(
% 1.36/0.53    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2))),
% 1.36/0.53    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
% 1.36/0.53  % SZS output end Proof for theBenchmark
% 1.36/0.53  % (25400)------------------------------
% 1.36/0.53  % (25400)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.36/0.53  % (25400)Termination reason: Refutation
% 1.36/0.53  
% 1.36/0.53  % (25400)Memory used [KB]: 6524
% 1.36/0.53  % (25400)Time elapsed: 0.080 s
% 1.36/0.53  % (25400)------------------------------
% 1.36/0.53  % (25400)------------------------------
% 1.36/0.53  % (25381)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 1.36/0.53  % (25404)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_11 on theBenchmark
% 1.36/0.53  % (25388)dis+1002_7_acc=on:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:ccuc=first:fsr=off:gsp=input_only:gs=on:gsem=on:nm=6:nwc=1.1:nicw=on:sos=on:sac=on:sp=occurrence:urr=ec_only_217 on theBenchmark
% 1.36/0.54  % (25388)Refutation not found, incomplete strategy% (25388)------------------------------
% 1.36/0.54  % (25388)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.36/0.54  % (25388)Termination reason: Refutation not found, incomplete strategy
% 1.36/0.54  
% 1.36/0.54  % (25388)Memory used [KB]: 10874
% 1.36/0.54  % (25388)Time elapsed: 0.137 s
% 1.36/0.54  % (25388)------------------------------
% 1.36/0.54  % (25388)------------------------------
% 1.36/0.54  % (25405)lrs-4_5:1_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:bs=unit_only:bsr=on:irw=on:lcm=reverse:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:updr=off_6 on theBenchmark
% 1.36/0.54  % (25386)lrs+11_3_afr=on:afp=10000:afq=1.0:cond=fast:fsr=off:fde=none:gs=on:gsem=off:lcm=reverse:nm=2:newcnf=on:nwc=1:sas=z3:stl=30:sd=10:ss=axioms:st=2.0:sos=all:sp=reverse_arity:urr=on:uhcvi=on_23 on theBenchmark
% 1.36/0.54  % (25391)dis+1010_7_afr=on:afp=10000:afq=1.1:amm=sco:anc=none:bd=off:bsr=on:cond=on:fsr=off:lma=on:nm=32:newcnf=on:nwc=1:urr=ec_only:updr=off_83 on theBenchmark
% 1.36/0.54  % (25394)Refutation not found, incomplete strategy% (25394)------------------------------
% 1.36/0.54  % (25394)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.36/0.54  % (25377)Success in time 0.189 s
%------------------------------------------------------------------------------
