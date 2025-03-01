%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:15:22 EST 2020

% Result     : Theorem 3.24s
% Output     : CNFRefutation 3.24s
% Verified   : 
% Statistics : Number of formulae       :  178 ( 887 expanded)
%              Number of clauses        :   97 ( 235 expanded)
%              Number of leaves         :   23 ( 197 expanded)
%              Depth                    :   23
%              Number of atoms          :  513 (4258 expanded)
%              Number of equality atoms :  186 (1205 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f79,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f8,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f78,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f6,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f76,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f81,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f73,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f13,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f83,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f103,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) ),
    inference(definition_unfolding,[],[f73,f83])).

fof(f112,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f81,f103])).

fof(f25,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => ( v3_tops_1(X1,X0)
            <=> k2_tops_1(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v4_pre_topc(X1,X0)
             => ( v3_tops_1(X1,X0)
              <=> k2_tops_1(X0,X1) = X1 ) ) ) ) ),
    inference(negated_conjecture,[],[f25])).

fof(f47,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tops_1(X1,X0)
          <~> k2_tops_1(X0,X1) = X1 )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f26])).

fof(f48,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tops_1(X1,X0)
          <~> k2_tops_1(X0,X1) = X1 )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f47])).

fof(f59,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != X1
            | ~ v3_tops_1(X1,X0) )
          & ( k2_tops_1(X0,X1) = X1
            | v3_tops_1(X1,X0) )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f48])).

fof(f60,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != X1
            | ~ v3_tops_1(X1,X0) )
          & ( k2_tops_1(X0,X1) = X1
            | v3_tops_1(X1,X0) )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f59])).

fof(f62,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != X1
            | ~ v3_tops_1(X1,X0) )
          & ( k2_tops_1(X0,X1) = X1
            | v3_tops_1(X1,X0) )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ( k2_tops_1(X0,sK2) != sK2
          | ~ v3_tops_1(sK2,X0) )
        & ( k2_tops_1(X0,sK2) = sK2
          | v3_tops_1(sK2,X0) )
        & v4_pre_topc(sK2,X0)
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f61,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( k2_tops_1(X0,X1) != X1
              | ~ v3_tops_1(X1,X0) )
            & ( k2_tops_1(X0,X1) = X1
              | v3_tops_1(X1,X0) )
            & v4_pre_topc(X1,X0)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ( k2_tops_1(sK1,X1) != X1
            | ~ v3_tops_1(X1,sK1) )
          & ( k2_tops_1(sK1,X1) = X1
            | v3_tops_1(X1,sK1) )
          & v4_pre_topc(X1,sK1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) )
      & l1_pre_topc(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f63,plain,
    ( ( k2_tops_1(sK1,sK2) != sK2
      | ~ v3_tops_1(sK2,sK1) )
    & ( k2_tops_1(sK1,sK2) = sK2
      | v3_tops_1(sK2,sK1) )
    & v4_pre_topc(sK2,sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    & l1_pre_topc(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f60,f62,f61])).

fof(f99,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f63])).

fof(f17,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f88,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f15,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f85,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f98,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f63])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f77,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f111,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f77,f103])).

fof(f18,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) = X1
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f89,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f19,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
                & v2_pre_topc(X0) )
             => v3_pre_topc(X1,X0) )
            & ( v3_pre_topc(X1,X0)
             => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_pre_topc(X1,X0)
           => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) ) ) ) ),
    inference(pure_predicate_removal,[],[f19])).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
          | ~ v3_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f27])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
          | ~ v3_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f38])).

fof(f90,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
          <=> v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v4_pre_topc(X1,X0)
          <=> v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f56,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | ~ v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0) )
            & ( v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f86,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f56])).

fof(f100,plain,(
    v4_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f63])).

fof(f22,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v2_tops_1(X1,X0)
          <=> r1_tarski(X1,k2_tops_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tops_1(X1,X0)
          <=> r1_tarski(X1,k2_tops_1(X0,X1)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f58,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tops_1(X1,X0)
              | ~ r1_tarski(X1,k2_tops_1(X0,X1)) )
            & ( r1_tarski(X1,k2_tops_1(X0,X1))
              | ~ v2_tops_1(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f42])).

fof(f95,plain,(
    ! [X0,X1] :
      ( v2_tops_1(X1,X0)
      | ~ r1_tarski(X1,k2_tops_1(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f58])).

fof(f21,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v2_tops_1(X1,X0)
          <=> k1_xboole_0 = k1_tops_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tops_1(X1,X0)
          <=> k1_xboole_0 = k1_tops_1(X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f57,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tops_1(X1,X0)
              | k1_xboole_0 != k1_tops_1(X0,X1) )
            & ( k1_xboole_0 = k1_tops_1(X0,X1)
              | ~ v2_tops_1(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f41])).

fof(f92,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k1_tops_1(X0,X1)
      | ~ v2_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f57])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f55,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f54])).

fof(f70,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f55])).

fof(f117,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f70])).

fof(f72,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f23,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_tops_1(X1,X0)
           => v2_tops_1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tops_1(X1,X0)
          | ~ v3_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f44,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tops_1(X1,X0)
          | ~ v3_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f43])).

fof(f96,plain,(
    ! [X0,X1] :
      ( v2_tops_1(X1,X0)
      | ~ v3_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f101,plain,
    ( k2_tops_1(sK1,sK2) = sK2
    | v3_tops_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f63])).

fof(f20,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f91,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f4,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f74,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f110,plain,(
    ! [X0] : k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,k1_xboole_0))) = X0 ),
    inference(definition_unfolding,[],[f74,f103])).

fof(f24,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( v4_pre_topc(X1,X0)
              & v2_tops_1(X1,X0) )
           => v3_tops_1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v3_tops_1(X1,X0)
          | ~ v4_pre_topc(X1,X0)
          | ~ v2_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f46,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v3_tops_1(X1,X0)
          | ~ v4_pre_topc(X1,X0)
          | ~ v2_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f45])).

fof(f97,plain,(
    ! [X0,X1] :
      ( v3_tops_1(X1,X0)
      | ~ v4_pre_topc(X1,X0)
      | ~ v2_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f102,plain,
    ( k2_tops_1(sK1,sK2) != sK2
    | ~ v3_tops_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f63])).

fof(f93,plain,(
    ! [X0,X1] :
      ( v2_tops_1(X1,X0)
      | k1_xboole_0 != k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1640,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_13,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1641,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_11,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1662,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1641,c_11])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X2))) = k7_subset_1(X1,X0,X2) ),
    inference(cnf_transformation,[],[f112])).

cnf(c_1638,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k7_subset_1(X2,X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3787,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k7_subset_1(X0,X0,X1) ),
    inference(superposition,[status(thm)],[c_1662,c_1638])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_1635,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_22,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_19,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_453,plain,
    ( ~ l1_pre_topc(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_22,c_19])).

cnf(c_36,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_580,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_453,c_36])).

cnf(c_581,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_580])).

cnf(c_1659,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_struct_0(sK1))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1635,c_581])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X0))) = k3_subset_1(X1,X0) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_1642,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k3_subset_1(X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3715,plain,
    ( k5_xboole_0(k2_struct_0(sK1),k1_setfam_1(k2_tarski(k2_struct_0(sK1),sK2))) = k3_subset_1(k2_struct_0(sK1),sK2) ),
    inference(superposition,[status(thm)],[c_1659,c_1642])).

cnf(c_5785,plain,
    ( k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2) = k3_subset_1(k2_struct_0(sK1),sK2) ),
    inference(superposition,[status(thm)],[c_3787,c_3715])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_struct_0(X1)
    | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0 ),
    inference(cnf_transformation,[],[f89])).

cnf(c_464,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X2)
    | X1 != X2
    | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_23])).

cnf(c_465,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_464])).

cnf(c_585,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_465,c_36])).

cnf(c_586,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_585])).

cnf(c_1633,plain,
    ( k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),X0)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_586])).

cnf(c_1728,plain,
    ( k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),X0)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1633,c_581])).

cnf(c_1847,plain,
    ( k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2)) = sK2 ),
    inference(superposition,[status(thm)],[c_1659,c_1728])).

cnf(c_24,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_21,plain,
    ( v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)
    | ~ v4_pre_topc(X1,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_34,negated_conjecture,
    ( v4_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_550,plain,
    ( v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0)
    | sK2 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_34])).

cnf(c_551,plain,
    ( v3_pre_topc(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_550])).

cnf(c_553,plain,
    ( v3_pre_topc(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_551,c_36,c_35])).

cnf(c_563,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2) != X0
    | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_553])).

cnf(c_564,plain,
    ( ~ m1_subset_1(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1)
    | k2_pre_topc(sK1,k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2)) ),
    inference(unflattening,[status(thm)],[c_563])).

cnf(c_566,plain,
    ( ~ m1_subset_1(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_pre_topc(sK1,k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_564,c_36])).

cnf(c_1634,plain,
    ( k2_pre_topc(sK1,k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))
    | m1_subset_1(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_566])).

cnf(c_1773,plain,
    ( k2_pre_topc(sK1,k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2))
    | m1_subset_1(k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1634,c_581])).

cnf(c_2207,plain,
    ( k2_pre_topc(sK1,sK2) = sK2
    | m1_subset_1(k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1847,c_1773])).

cnf(c_5996,plain,
    ( k2_pre_topc(sK1,sK2) = sK2
    | m1_subset_1(k3_subset_1(k2_struct_0(sK1),sK2),k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5785,c_2207])).

cnf(c_6090,plain,
    ( k2_pre_topc(sK1,sK2) = sK2
    | m1_subset_1(sK2,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1640,c_5996])).

cnf(c_6297,plain,
    ( k2_pre_topc(sK1,sK2) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6090,c_1659])).

cnf(c_28,plain,
    ( v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_tops_1(X1,X0))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_612,plain,
    ( v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_tops_1(X1,X0))
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_28,c_36])).

cnf(c_613,plain,
    ( v2_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(X0,k2_tops_1(sK1,X0)) ),
    inference(unflattening,[status(thm)],[c_612])).

cnf(c_27,plain,
    ( ~ v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k1_tops_1(X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f92])).

cnf(c_627,plain,
    ( ~ v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k1_tops_1(X1,X0) = k1_xboole_0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_36])).

cnf(c_628,plain,
    ( ~ v2_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_tops_1(sK1,X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_627])).

cnf(c_708,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(X0,k2_tops_1(sK1,X0))
    | k1_tops_1(sK1,X0) = k1_xboole_0 ),
    inference(resolution,[status(thm)],[c_613,c_628])).

cnf(c_710,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_708])).

cnf(c_876,plain,
    ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_35,c_710])).

cnf(c_1626,plain,
    ( k1_tops_1(sK1,sK2) = k1_xboole_0
    | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_876])).

cnf(c_8,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f117])).

cnf(c_104,plain,
    ( r1_tarski(sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_108,plain,
    ( ~ r1_tarski(sK2,sK2)
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_30,plain,
    ( ~ v3_tops_1(X0,X1)
    | v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_33,negated_conjecture,
    ( v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) = sK2 ),
    inference(cnf_transformation,[],[f101])).

cnf(c_270,plain,
    ( v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) = sK2 ),
    inference(prop_impl,[status(thm)],[c_33])).

cnf(c_529,plain,
    ( v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_tops_1(sK1,sK2) = sK2
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_30,c_270])).

cnf(c_530,plain,
    ( v2_tops_1(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1)
    | k2_tops_1(sK1,sK2) = sK2 ),
    inference(unflattening,[status(thm)],[c_529])).

cnf(c_532,plain,
    ( v2_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_530,c_36,c_35])).

cnf(c_723,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_tops_1(sK1,sK2) = sK2
    | k1_tops_1(sK1,X0) = k1_xboole_0
    | sK2 != X0
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_532,c_628])).

cnf(c_724,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_tops_1(sK1,sK2) = sK2
    | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_723])).

cnf(c_726,plain,
    ( k2_tops_1(sK1,sK2) = sK2
    | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_724,c_35])).

cnf(c_1026,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1865,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,k2_tops_1(sK1,X2))
    | X2 != X0
    | k2_tops_1(sK1,X2) != X1 ),
    inference(instantiation,[status(thm)],[c_1026])).

cnf(c_1867,plain,
    ( r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | ~ r1_tarski(sK2,sK2)
    | k2_tops_1(sK1,sK2) != sK2
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1865])).

cnf(c_1950,plain,
    ( k1_tops_1(sK1,sK2) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1626,c_104,c_108,c_726,c_876,c_1867])).

cnf(c_25,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_657,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_36])).

cnf(c_658,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k7_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k1_tops_1(sK1,X0)) = k2_tops_1(sK1,X0) ),
    inference(unflattening,[status(thm)],[c_657])).

cnf(c_1632,plain,
    ( k7_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k1_tops_1(sK1,X0)) = k2_tops_1(sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_658])).

cnf(c_1723,plain,
    ( k7_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,X0),k1_tops_1(sK1,X0)) = k2_tops_1(sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1632,c_581])).

cnf(c_1843,plain,
    ( k7_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,sK2),k1_tops_1(sK1,sK2)) = k2_tops_1(sK1,sK2) ),
    inference(superposition,[status(thm)],[c_1659,c_1723])).

cnf(c_1953,plain,
    ( k7_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,sK2),k1_xboole_0) = k2_tops_1(sK1,sK2) ),
    inference(demodulation,[status(thm)],[c_1950,c_1843])).

cnf(c_6300,plain,
    ( k7_subset_1(k2_struct_0(sK1),sK2,k1_xboole_0) = k2_tops_1(sK1,sK2) ),
    inference(demodulation,[status(thm)],[c_6297,c_1953])).

cnf(c_3786,plain,
    ( k5_xboole_0(sK2,k1_setfam_1(k2_tarski(sK2,X0))) = k7_subset_1(k2_struct_0(sK1),sK2,X0) ),
    inference(superposition,[status(thm)],[c_1659,c_1638])).

cnf(c_9,plain,
    ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,k1_xboole_0))) = X0 ),
    inference(cnf_transformation,[],[f110])).

cnf(c_3879,plain,
    ( k7_subset_1(k2_struct_0(sK1),sK2,k1_xboole_0) = sK2 ),
    inference(superposition,[status(thm)],[c_3786,c_9])).

cnf(c_6301,plain,
    ( k2_tops_1(sK1,sK2) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_6300,c_3879])).

cnf(c_31,plain,
    ( v3_tops_1(X0,X1)
    | ~ v2_tops_1(X0,X1)
    | ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_32,negated_conjecture,
    ( ~ v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(cnf_transformation,[],[f102])).

cnf(c_268,plain,
    ( ~ v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(prop_impl,[status(thm)],[c_32])).

cnf(c_515,plain,
    ( ~ v2_tops_1(X0,X1)
    | ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_tops_1(sK1,sK2) != sK2
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_31,c_268])).

cnf(c_516,plain,
    ( ~ v2_tops_1(sK2,sK1)
    | ~ v4_pre_topc(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1)
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(unflattening,[status(thm)],[c_515])).

cnf(c_518,plain,
    ( ~ v2_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_516,c_36,c_35,c_34])).

cnf(c_26,plain,
    ( v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k1_tops_1(X1,X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_642,plain,
    ( v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k1_tops_1(X1,X0) != k1_xboole_0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_36])).

cnf(c_643,plain,
    ( v2_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_tops_1(sK1,X0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_642])).

cnf(c_748,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_tops_1(sK1,sK2) != sK2
    | k1_tops_1(sK1,X0) != k1_xboole_0
    | sK2 != X0
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_518,c_643])).

cnf(c_749,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_tops_1(sK1,sK2) != sK2
    | k1_tops_1(sK1,sK2) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_748])).

cnf(c_751,plain,
    ( k2_tops_1(sK1,sK2) != sK2
    | k1_tops_1(sK1,sK2) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_749,c_35])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6301,c_1950,c_751])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n023.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 18:13:05 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.24/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.24/1.00  
% 3.24/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.24/1.00  
% 3.24/1.00  ------  iProver source info
% 3.24/1.00  
% 3.24/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.24/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.24/1.00  git: non_committed_changes: false
% 3.24/1.00  git: last_make_outside_of_git: false
% 3.24/1.00  
% 3.24/1.00  ------ 
% 3.24/1.00  
% 3.24/1.00  ------ Input Options
% 3.24/1.00  
% 3.24/1.00  --out_options                           all
% 3.24/1.00  --tptp_safe_out                         true
% 3.24/1.00  --problem_path                          ""
% 3.24/1.00  --include_path                          ""
% 3.24/1.00  --clausifier                            res/vclausify_rel
% 3.24/1.00  --clausifier_options                    --mode clausify
% 3.24/1.00  --stdin                                 false
% 3.24/1.00  --stats_out                             all
% 3.24/1.00  
% 3.24/1.00  ------ General Options
% 3.24/1.00  
% 3.24/1.00  --fof                                   false
% 3.24/1.00  --time_out_real                         305.
% 3.24/1.00  --time_out_virtual                      -1.
% 3.24/1.00  --symbol_type_check                     false
% 3.24/1.00  --clausify_out                          false
% 3.24/1.00  --sig_cnt_out                           false
% 3.24/1.01  --trig_cnt_out                          false
% 3.24/1.01  --trig_cnt_out_tolerance                1.
% 3.24/1.01  --trig_cnt_out_sk_spl                   false
% 3.24/1.01  --abstr_cl_out                          false
% 3.24/1.01  
% 3.24/1.01  ------ Global Options
% 3.24/1.01  
% 3.24/1.01  --schedule                              default
% 3.24/1.01  --add_important_lit                     false
% 3.24/1.01  --prop_solver_per_cl                    1000
% 3.24/1.01  --min_unsat_core                        false
% 3.24/1.01  --soft_assumptions                      false
% 3.24/1.01  --soft_lemma_size                       3
% 3.24/1.01  --prop_impl_unit_size                   0
% 3.24/1.01  --prop_impl_unit                        []
% 3.24/1.01  --share_sel_clauses                     true
% 3.24/1.01  --reset_solvers                         false
% 3.24/1.01  --bc_imp_inh                            [conj_cone]
% 3.24/1.01  --conj_cone_tolerance                   3.
% 3.24/1.01  --extra_neg_conj                        none
% 3.24/1.01  --large_theory_mode                     true
% 3.24/1.01  --prolific_symb_bound                   200
% 3.24/1.01  --lt_threshold                          2000
% 3.24/1.01  --clause_weak_htbl                      true
% 3.24/1.01  --gc_record_bc_elim                     false
% 3.24/1.01  
% 3.24/1.01  ------ Preprocessing Options
% 3.24/1.01  
% 3.24/1.01  --preprocessing_flag                    true
% 3.24/1.01  --time_out_prep_mult                    0.1
% 3.24/1.01  --splitting_mode                        input
% 3.24/1.01  --splitting_grd                         true
% 3.24/1.01  --splitting_cvd                         false
% 3.24/1.01  --splitting_cvd_svl                     false
% 3.24/1.01  --splitting_nvd                         32
% 3.24/1.01  --sub_typing                            true
% 3.24/1.01  --prep_gs_sim                           true
% 3.24/1.01  --prep_unflatten                        true
% 3.24/1.01  --prep_res_sim                          true
% 3.24/1.01  --prep_upred                            true
% 3.24/1.01  --prep_sem_filter                       exhaustive
% 3.24/1.01  --prep_sem_filter_out                   false
% 3.24/1.01  --pred_elim                             true
% 3.24/1.01  --res_sim_input                         true
% 3.24/1.01  --eq_ax_congr_red                       true
% 3.24/1.01  --pure_diseq_elim                       true
% 3.24/1.01  --brand_transform                       false
% 3.24/1.01  --non_eq_to_eq                          false
% 3.24/1.01  --prep_def_merge                        true
% 3.24/1.01  --prep_def_merge_prop_impl              false
% 3.24/1.01  --prep_def_merge_mbd                    true
% 3.24/1.01  --prep_def_merge_tr_red                 false
% 3.24/1.01  --prep_def_merge_tr_cl                  false
% 3.24/1.01  --smt_preprocessing                     true
% 3.24/1.01  --smt_ac_axioms                         fast
% 3.24/1.01  --preprocessed_out                      false
% 3.24/1.01  --preprocessed_stats                    false
% 3.24/1.01  
% 3.24/1.01  ------ Abstraction refinement Options
% 3.24/1.01  
% 3.24/1.01  --abstr_ref                             []
% 3.24/1.01  --abstr_ref_prep                        false
% 3.24/1.01  --abstr_ref_until_sat                   false
% 3.24/1.01  --abstr_ref_sig_restrict                funpre
% 3.24/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.24/1.01  --abstr_ref_under                       []
% 3.24/1.01  
% 3.24/1.01  ------ SAT Options
% 3.24/1.01  
% 3.24/1.01  --sat_mode                              false
% 3.24/1.01  --sat_fm_restart_options                ""
% 3.24/1.01  --sat_gr_def                            false
% 3.24/1.01  --sat_epr_types                         true
% 3.24/1.01  --sat_non_cyclic_types                  false
% 3.24/1.01  --sat_finite_models                     false
% 3.24/1.01  --sat_fm_lemmas                         false
% 3.24/1.01  --sat_fm_prep                           false
% 3.24/1.01  --sat_fm_uc_incr                        true
% 3.24/1.01  --sat_out_model                         small
% 3.24/1.01  --sat_out_clauses                       false
% 3.24/1.01  
% 3.24/1.01  ------ QBF Options
% 3.24/1.01  
% 3.24/1.01  --qbf_mode                              false
% 3.24/1.01  --qbf_elim_univ                         false
% 3.24/1.01  --qbf_dom_inst                          none
% 3.24/1.01  --qbf_dom_pre_inst                      false
% 3.24/1.01  --qbf_sk_in                             false
% 3.24/1.01  --qbf_pred_elim                         true
% 3.24/1.01  --qbf_split                             512
% 3.24/1.01  
% 3.24/1.01  ------ BMC1 Options
% 3.24/1.01  
% 3.24/1.01  --bmc1_incremental                      false
% 3.24/1.01  --bmc1_axioms                           reachable_all
% 3.24/1.01  --bmc1_min_bound                        0
% 3.24/1.01  --bmc1_max_bound                        -1
% 3.24/1.01  --bmc1_max_bound_default                -1
% 3.24/1.01  --bmc1_symbol_reachability              true
% 3.24/1.01  --bmc1_property_lemmas                  false
% 3.24/1.01  --bmc1_k_induction                      false
% 3.24/1.01  --bmc1_non_equiv_states                 false
% 3.24/1.01  --bmc1_deadlock                         false
% 3.24/1.01  --bmc1_ucm                              false
% 3.24/1.01  --bmc1_add_unsat_core                   none
% 3.24/1.01  --bmc1_unsat_core_children              false
% 3.24/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.24/1.01  --bmc1_out_stat                         full
% 3.24/1.01  --bmc1_ground_init                      false
% 3.24/1.01  --bmc1_pre_inst_next_state              false
% 3.24/1.01  --bmc1_pre_inst_state                   false
% 3.24/1.01  --bmc1_pre_inst_reach_state             false
% 3.24/1.01  --bmc1_out_unsat_core                   false
% 3.24/1.01  --bmc1_aig_witness_out                  false
% 3.24/1.01  --bmc1_verbose                          false
% 3.24/1.01  --bmc1_dump_clauses_tptp                false
% 3.24/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.24/1.01  --bmc1_dump_file                        -
% 3.24/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.24/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.24/1.01  --bmc1_ucm_extend_mode                  1
% 3.24/1.01  --bmc1_ucm_init_mode                    2
% 3.24/1.01  --bmc1_ucm_cone_mode                    none
% 3.24/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.24/1.01  --bmc1_ucm_relax_model                  4
% 3.24/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.24/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.24/1.01  --bmc1_ucm_layered_model                none
% 3.24/1.01  --bmc1_ucm_max_lemma_size               10
% 3.24/1.01  
% 3.24/1.01  ------ AIG Options
% 3.24/1.01  
% 3.24/1.01  --aig_mode                              false
% 3.24/1.01  
% 3.24/1.01  ------ Instantiation Options
% 3.24/1.01  
% 3.24/1.01  --instantiation_flag                    true
% 3.24/1.01  --inst_sos_flag                         false
% 3.24/1.01  --inst_sos_phase                        true
% 3.24/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.24/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.24/1.01  --inst_lit_sel_side                     num_symb
% 3.24/1.01  --inst_solver_per_active                1400
% 3.24/1.01  --inst_solver_calls_frac                1.
% 3.24/1.01  --inst_passive_queue_type               priority_queues
% 3.24/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.24/1.01  --inst_passive_queues_freq              [25;2]
% 3.24/1.01  --inst_dismatching                      true
% 3.24/1.01  --inst_eager_unprocessed_to_passive     true
% 3.24/1.01  --inst_prop_sim_given                   true
% 3.24/1.01  --inst_prop_sim_new                     false
% 3.24/1.01  --inst_subs_new                         false
% 3.24/1.01  --inst_eq_res_simp                      false
% 3.24/1.01  --inst_subs_given                       false
% 3.24/1.01  --inst_orphan_elimination               true
% 3.24/1.01  --inst_learning_loop_flag               true
% 3.24/1.01  --inst_learning_start                   3000
% 3.24/1.01  --inst_learning_factor                  2
% 3.24/1.01  --inst_start_prop_sim_after_learn       3
% 3.24/1.01  --inst_sel_renew                        solver
% 3.24/1.01  --inst_lit_activity_flag                true
% 3.24/1.01  --inst_restr_to_given                   false
% 3.24/1.01  --inst_activity_threshold               500
% 3.24/1.01  --inst_out_proof                        true
% 3.24/1.01  
% 3.24/1.01  ------ Resolution Options
% 3.24/1.01  
% 3.24/1.01  --resolution_flag                       true
% 3.24/1.01  --res_lit_sel                           adaptive
% 3.24/1.01  --res_lit_sel_side                      none
% 3.24/1.01  --res_ordering                          kbo
% 3.24/1.01  --res_to_prop_solver                    active
% 3.24/1.01  --res_prop_simpl_new                    false
% 3.24/1.01  --res_prop_simpl_given                  true
% 3.24/1.01  --res_passive_queue_type                priority_queues
% 3.24/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.24/1.01  --res_passive_queues_freq               [15;5]
% 3.24/1.01  --res_forward_subs                      full
% 3.24/1.01  --res_backward_subs                     full
% 3.24/1.01  --res_forward_subs_resolution           true
% 3.24/1.01  --res_backward_subs_resolution          true
% 3.24/1.01  --res_orphan_elimination                true
% 3.24/1.01  --res_time_limit                        2.
% 3.24/1.01  --res_out_proof                         true
% 3.24/1.01  
% 3.24/1.01  ------ Superposition Options
% 3.24/1.01  
% 3.24/1.01  --superposition_flag                    true
% 3.24/1.01  --sup_passive_queue_type                priority_queues
% 3.24/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.24/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.24/1.01  --demod_completeness_check              fast
% 3.24/1.01  --demod_use_ground                      true
% 3.24/1.01  --sup_to_prop_solver                    passive
% 3.24/1.01  --sup_prop_simpl_new                    true
% 3.24/1.01  --sup_prop_simpl_given                  true
% 3.24/1.01  --sup_fun_splitting                     false
% 3.24/1.01  --sup_smt_interval                      50000
% 3.24/1.01  
% 3.24/1.01  ------ Superposition Simplification Setup
% 3.24/1.01  
% 3.24/1.01  --sup_indices_passive                   []
% 3.24/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.24/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/1.01  --sup_full_bw                           [BwDemod]
% 3.24/1.01  --sup_immed_triv                        [TrivRules]
% 3.24/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.24/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/1.01  --sup_immed_bw_main                     []
% 3.24/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.24/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/1.01  
% 3.24/1.01  ------ Combination Options
% 3.24/1.01  
% 3.24/1.01  --comb_res_mult                         3
% 3.24/1.01  --comb_sup_mult                         2
% 3.24/1.01  --comb_inst_mult                        10
% 3.24/1.01  
% 3.24/1.01  ------ Debug Options
% 3.24/1.01  
% 3.24/1.01  --dbg_backtrace                         false
% 3.24/1.01  --dbg_dump_prop_clauses                 false
% 3.24/1.01  --dbg_dump_prop_clauses_file            -
% 3.24/1.01  --dbg_out_stat                          false
% 3.24/1.01  ------ Parsing...
% 3.24/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.24/1.01  
% 3.24/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 3.24/1.01  
% 3.24/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.24/1.01  
% 3.24/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.24/1.01  ------ Proving...
% 3.24/1.01  ------ Problem Properties 
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  clauses                                 29
% 3.24/1.01  conjectures                             1
% 3.24/1.01  EPR                                     2
% 3.24/1.01  Horn                                    26
% 3.24/1.01  unary                                   8
% 3.24/1.01  binary                                  12
% 3.24/1.01  lits                                    60
% 3.24/1.01  lits eq                                 19
% 3.24/1.01  fd_pure                                 0
% 3.24/1.01  fd_pseudo                               0
% 3.24/1.01  fd_cond                                 0
% 3.24/1.01  fd_pseudo_cond                          4
% 3.24/1.01  AC symbols                              0
% 3.24/1.01  
% 3.24/1.01  ------ Schedule dynamic 5 is on 
% 3.24/1.01  
% 3.24/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  ------ 
% 3.24/1.01  Current options:
% 3.24/1.01  ------ 
% 3.24/1.01  
% 3.24/1.01  ------ Input Options
% 3.24/1.01  
% 3.24/1.01  --out_options                           all
% 3.24/1.01  --tptp_safe_out                         true
% 3.24/1.01  --problem_path                          ""
% 3.24/1.01  --include_path                          ""
% 3.24/1.01  --clausifier                            res/vclausify_rel
% 3.24/1.01  --clausifier_options                    --mode clausify
% 3.24/1.01  --stdin                                 false
% 3.24/1.01  --stats_out                             all
% 3.24/1.01  
% 3.24/1.01  ------ General Options
% 3.24/1.01  
% 3.24/1.01  --fof                                   false
% 3.24/1.01  --time_out_real                         305.
% 3.24/1.01  --time_out_virtual                      -1.
% 3.24/1.01  --symbol_type_check                     false
% 3.24/1.01  --clausify_out                          false
% 3.24/1.01  --sig_cnt_out                           false
% 3.24/1.01  --trig_cnt_out                          false
% 3.24/1.01  --trig_cnt_out_tolerance                1.
% 3.24/1.01  --trig_cnt_out_sk_spl                   false
% 3.24/1.01  --abstr_cl_out                          false
% 3.24/1.01  
% 3.24/1.01  ------ Global Options
% 3.24/1.01  
% 3.24/1.01  --schedule                              default
% 3.24/1.01  --add_important_lit                     false
% 3.24/1.01  --prop_solver_per_cl                    1000
% 3.24/1.01  --min_unsat_core                        false
% 3.24/1.01  --soft_assumptions                      false
% 3.24/1.01  --soft_lemma_size                       3
% 3.24/1.01  --prop_impl_unit_size                   0
% 3.24/1.01  --prop_impl_unit                        []
% 3.24/1.01  --share_sel_clauses                     true
% 3.24/1.01  --reset_solvers                         false
% 3.24/1.01  --bc_imp_inh                            [conj_cone]
% 3.24/1.01  --conj_cone_tolerance                   3.
% 3.24/1.01  --extra_neg_conj                        none
% 3.24/1.01  --large_theory_mode                     true
% 3.24/1.01  --prolific_symb_bound                   200
% 3.24/1.01  --lt_threshold                          2000
% 3.24/1.01  --clause_weak_htbl                      true
% 3.24/1.01  --gc_record_bc_elim                     false
% 3.24/1.01  
% 3.24/1.01  ------ Preprocessing Options
% 3.24/1.01  
% 3.24/1.01  --preprocessing_flag                    true
% 3.24/1.01  --time_out_prep_mult                    0.1
% 3.24/1.01  --splitting_mode                        input
% 3.24/1.01  --splitting_grd                         true
% 3.24/1.01  --splitting_cvd                         false
% 3.24/1.01  --splitting_cvd_svl                     false
% 3.24/1.01  --splitting_nvd                         32
% 3.24/1.01  --sub_typing                            true
% 3.24/1.01  --prep_gs_sim                           true
% 3.24/1.01  --prep_unflatten                        true
% 3.24/1.01  --prep_res_sim                          true
% 3.24/1.01  --prep_upred                            true
% 3.24/1.01  --prep_sem_filter                       exhaustive
% 3.24/1.01  --prep_sem_filter_out                   false
% 3.24/1.01  --pred_elim                             true
% 3.24/1.01  --res_sim_input                         true
% 3.24/1.01  --eq_ax_congr_red                       true
% 3.24/1.01  --pure_diseq_elim                       true
% 3.24/1.01  --brand_transform                       false
% 3.24/1.01  --non_eq_to_eq                          false
% 3.24/1.01  --prep_def_merge                        true
% 3.24/1.01  --prep_def_merge_prop_impl              false
% 3.24/1.01  --prep_def_merge_mbd                    true
% 3.24/1.01  --prep_def_merge_tr_red                 false
% 3.24/1.01  --prep_def_merge_tr_cl                  false
% 3.24/1.01  --smt_preprocessing                     true
% 3.24/1.01  --smt_ac_axioms                         fast
% 3.24/1.01  --preprocessed_out                      false
% 3.24/1.01  --preprocessed_stats                    false
% 3.24/1.01  
% 3.24/1.01  ------ Abstraction refinement Options
% 3.24/1.01  
% 3.24/1.01  --abstr_ref                             []
% 3.24/1.01  --abstr_ref_prep                        false
% 3.24/1.01  --abstr_ref_until_sat                   false
% 3.24/1.01  --abstr_ref_sig_restrict                funpre
% 3.24/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.24/1.01  --abstr_ref_under                       []
% 3.24/1.01  
% 3.24/1.01  ------ SAT Options
% 3.24/1.01  
% 3.24/1.01  --sat_mode                              false
% 3.24/1.01  --sat_fm_restart_options                ""
% 3.24/1.01  --sat_gr_def                            false
% 3.24/1.01  --sat_epr_types                         true
% 3.24/1.01  --sat_non_cyclic_types                  false
% 3.24/1.01  --sat_finite_models                     false
% 3.24/1.01  --sat_fm_lemmas                         false
% 3.24/1.01  --sat_fm_prep                           false
% 3.24/1.01  --sat_fm_uc_incr                        true
% 3.24/1.01  --sat_out_model                         small
% 3.24/1.01  --sat_out_clauses                       false
% 3.24/1.01  
% 3.24/1.01  ------ QBF Options
% 3.24/1.01  
% 3.24/1.01  --qbf_mode                              false
% 3.24/1.01  --qbf_elim_univ                         false
% 3.24/1.01  --qbf_dom_inst                          none
% 3.24/1.01  --qbf_dom_pre_inst                      false
% 3.24/1.01  --qbf_sk_in                             false
% 3.24/1.01  --qbf_pred_elim                         true
% 3.24/1.01  --qbf_split                             512
% 3.24/1.01  
% 3.24/1.01  ------ BMC1 Options
% 3.24/1.01  
% 3.24/1.01  --bmc1_incremental                      false
% 3.24/1.01  --bmc1_axioms                           reachable_all
% 3.24/1.01  --bmc1_min_bound                        0
% 3.24/1.01  --bmc1_max_bound                        -1
% 3.24/1.01  --bmc1_max_bound_default                -1
% 3.24/1.01  --bmc1_symbol_reachability              true
% 3.24/1.01  --bmc1_property_lemmas                  false
% 3.24/1.01  --bmc1_k_induction                      false
% 3.24/1.01  --bmc1_non_equiv_states                 false
% 3.24/1.01  --bmc1_deadlock                         false
% 3.24/1.01  --bmc1_ucm                              false
% 3.24/1.01  --bmc1_add_unsat_core                   none
% 3.24/1.01  --bmc1_unsat_core_children              false
% 3.24/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.24/1.01  --bmc1_out_stat                         full
% 3.24/1.01  --bmc1_ground_init                      false
% 3.24/1.01  --bmc1_pre_inst_next_state              false
% 3.24/1.01  --bmc1_pre_inst_state                   false
% 3.24/1.01  --bmc1_pre_inst_reach_state             false
% 3.24/1.01  --bmc1_out_unsat_core                   false
% 3.24/1.01  --bmc1_aig_witness_out                  false
% 3.24/1.01  --bmc1_verbose                          false
% 3.24/1.01  --bmc1_dump_clauses_tptp                false
% 3.24/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.24/1.01  --bmc1_dump_file                        -
% 3.24/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.24/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.24/1.01  --bmc1_ucm_extend_mode                  1
% 3.24/1.01  --bmc1_ucm_init_mode                    2
% 3.24/1.01  --bmc1_ucm_cone_mode                    none
% 3.24/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.24/1.01  --bmc1_ucm_relax_model                  4
% 3.24/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.24/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.24/1.01  --bmc1_ucm_layered_model                none
% 3.24/1.01  --bmc1_ucm_max_lemma_size               10
% 3.24/1.01  
% 3.24/1.01  ------ AIG Options
% 3.24/1.01  
% 3.24/1.01  --aig_mode                              false
% 3.24/1.01  
% 3.24/1.01  ------ Instantiation Options
% 3.24/1.01  
% 3.24/1.01  --instantiation_flag                    true
% 3.24/1.01  --inst_sos_flag                         false
% 3.24/1.01  --inst_sos_phase                        true
% 3.24/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.24/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.24/1.01  --inst_lit_sel_side                     none
% 3.24/1.01  --inst_solver_per_active                1400
% 3.24/1.01  --inst_solver_calls_frac                1.
% 3.24/1.01  --inst_passive_queue_type               priority_queues
% 3.24/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.24/1.01  --inst_passive_queues_freq              [25;2]
% 3.24/1.01  --inst_dismatching                      true
% 3.24/1.01  --inst_eager_unprocessed_to_passive     true
% 3.24/1.01  --inst_prop_sim_given                   true
% 3.24/1.01  --inst_prop_sim_new                     false
% 3.24/1.01  --inst_subs_new                         false
% 3.24/1.01  --inst_eq_res_simp                      false
% 3.24/1.01  --inst_subs_given                       false
% 3.24/1.01  --inst_orphan_elimination               true
% 3.24/1.01  --inst_learning_loop_flag               true
% 3.24/1.01  --inst_learning_start                   3000
% 3.24/1.01  --inst_learning_factor                  2
% 3.24/1.01  --inst_start_prop_sim_after_learn       3
% 3.24/1.01  --inst_sel_renew                        solver
% 3.24/1.01  --inst_lit_activity_flag                true
% 3.24/1.01  --inst_restr_to_given                   false
% 3.24/1.01  --inst_activity_threshold               500
% 3.24/1.01  --inst_out_proof                        true
% 3.24/1.01  
% 3.24/1.01  ------ Resolution Options
% 3.24/1.01  
% 3.24/1.01  --resolution_flag                       false
% 3.24/1.01  --res_lit_sel                           adaptive
% 3.24/1.01  --res_lit_sel_side                      none
% 3.24/1.01  --res_ordering                          kbo
% 3.24/1.01  --res_to_prop_solver                    active
% 3.24/1.01  --res_prop_simpl_new                    false
% 3.24/1.01  --res_prop_simpl_given                  true
% 3.24/1.01  --res_passive_queue_type                priority_queues
% 3.24/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.24/1.01  --res_passive_queues_freq               [15;5]
% 3.24/1.01  --res_forward_subs                      full
% 3.24/1.01  --res_backward_subs                     full
% 3.24/1.01  --res_forward_subs_resolution           true
% 3.24/1.01  --res_backward_subs_resolution          true
% 3.24/1.01  --res_orphan_elimination                true
% 3.24/1.01  --res_time_limit                        2.
% 3.24/1.01  --res_out_proof                         true
% 3.24/1.01  
% 3.24/1.01  ------ Superposition Options
% 3.24/1.01  
% 3.24/1.01  --superposition_flag                    true
% 3.24/1.01  --sup_passive_queue_type                priority_queues
% 3.24/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.24/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.24/1.01  --demod_completeness_check              fast
% 3.24/1.01  --demod_use_ground                      true
% 3.24/1.01  --sup_to_prop_solver                    passive
% 3.24/1.01  --sup_prop_simpl_new                    true
% 3.24/1.01  --sup_prop_simpl_given                  true
% 3.24/1.01  --sup_fun_splitting                     false
% 3.24/1.01  --sup_smt_interval                      50000
% 3.24/1.01  
% 3.24/1.01  ------ Superposition Simplification Setup
% 3.24/1.01  
% 3.24/1.01  --sup_indices_passive                   []
% 3.24/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.24/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/1.01  --sup_full_bw                           [BwDemod]
% 3.24/1.01  --sup_immed_triv                        [TrivRules]
% 3.24/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.24/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/1.01  --sup_immed_bw_main                     []
% 3.24/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.24/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/1.01  
% 3.24/1.01  ------ Combination Options
% 3.24/1.01  
% 3.24/1.01  --comb_res_mult                         3
% 3.24/1.01  --comb_sup_mult                         2
% 3.24/1.01  --comb_inst_mult                        10
% 3.24/1.01  
% 3.24/1.01  ------ Debug Options
% 3.24/1.01  
% 3.24/1.01  --dbg_backtrace                         false
% 3.24/1.01  --dbg_dump_prop_clauses                 false
% 3.24/1.01  --dbg_dump_prop_clauses_file            -
% 3.24/1.01  --dbg_out_stat                          false
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  ------ Proving...
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  % SZS status Theorem for theBenchmark.p
% 3.24/1.01  
% 3.24/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 3.24/1.01  
% 3.24/1.01  fof(f9,axiom,(
% 3.24/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f29,plain,(
% 3.24/1.01    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.24/1.01    inference(ennf_transformation,[],[f9])).
% 3.24/1.01  
% 3.24/1.01  fof(f79,plain,(
% 3.24/1.01    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.24/1.01    inference(cnf_transformation,[],[f29])).
% 3.24/1.01  
% 3.24/1.01  fof(f8,axiom,(
% 3.24/1.01    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f78,plain,(
% 3.24/1.01    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.24/1.01    inference(cnf_transformation,[],[f8])).
% 3.24/1.01  
% 3.24/1.01  fof(f6,axiom,(
% 3.24/1.01    ! [X0] : k2_subset_1(X0) = X0),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f76,plain,(
% 3.24/1.01    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 3.24/1.01    inference(cnf_transformation,[],[f6])).
% 3.24/1.01  
% 3.24/1.01  fof(f11,axiom,(
% 3.24/1.01    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f31,plain,(
% 3.24/1.01    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.24/1.01    inference(ennf_transformation,[],[f11])).
% 3.24/1.01  
% 3.24/1.01  fof(f81,plain,(
% 3.24/1.01    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.24/1.01    inference(cnf_transformation,[],[f31])).
% 3.24/1.01  
% 3.24/1.01  fof(f3,axiom,(
% 3.24/1.01    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f73,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.24/1.01    inference(cnf_transformation,[],[f3])).
% 3.24/1.01  
% 3.24/1.01  fof(f13,axiom,(
% 3.24/1.01    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f83,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.24/1.01    inference(cnf_transformation,[],[f13])).
% 3.24/1.01  
% 3.24/1.01  fof(f103,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1)))) )),
% 3.24/1.01    inference(definition_unfolding,[],[f73,f83])).
% 3.24/1.01  
% 3.24/1.01  fof(f112,plain,(
% 3.24/1.01    ( ! [X2,X0,X1] : (k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X2))) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.24/1.01    inference(definition_unfolding,[],[f81,f103])).
% 3.24/1.01  
% 3.24/1.01  fof(f25,conjecture,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => (v3_tops_1(X1,X0) <=> k2_tops_1(X0,X1) = X1))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f26,negated_conjecture,(
% 3.24/1.01    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => (v3_tops_1(X1,X0) <=> k2_tops_1(X0,X1) = X1))))),
% 3.24/1.01    inference(negated_conjecture,[],[f25])).
% 3.24/1.01  
% 3.24/1.01  fof(f47,plain,(
% 3.24/1.01    ? [X0] : (? [X1] : (((v3_tops_1(X1,X0) <~> k2_tops_1(X0,X1) = X1) & v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f26])).
% 3.24/1.01  
% 3.24/1.01  fof(f48,plain,(
% 3.24/1.01    ? [X0] : (? [X1] : ((v3_tops_1(X1,X0) <~> k2_tops_1(X0,X1) = X1) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.24/1.01    inference(flattening,[],[f47])).
% 3.24/1.01  
% 3.24/1.01  fof(f59,plain,(
% 3.24/1.01    ? [X0] : (? [X1] : (((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0))) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.24/1.01    inference(nnf_transformation,[],[f48])).
% 3.24/1.01  
% 3.24/1.01  fof(f60,plain,(
% 3.24/1.01    ? [X0] : (? [X1] : ((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0)) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.24/1.01    inference(flattening,[],[f59])).
% 3.24/1.01  
% 3.24/1.01  fof(f62,plain,(
% 3.24/1.01    ( ! [X0] : (? [X1] : ((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0)) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => ((k2_tops_1(X0,sK2) != sK2 | ~v3_tops_1(sK2,X0)) & (k2_tops_1(X0,sK2) = sK2 | v3_tops_1(sK2,X0)) & v4_pre_topc(sK2,X0) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.24/1.01    introduced(choice_axiom,[])).
% 3.24/1.01  
% 3.24/1.01  fof(f61,plain,(
% 3.24/1.01    ? [X0] : (? [X1] : ((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0)) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : ((k2_tops_1(sK1,X1) != X1 | ~v3_tops_1(X1,sK1)) & (k2_tops_1(sK1,X1) = X1 | v3_tops_1(X1,sK1)) & v4_pre_topc(X1,sK1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_pre_topc(sK1))),
% 3.24/1.01    introduced(choice_axiom,[])).
% 3.24/1.01  
% 3.24/1.01  fof(f63,plain,(
% 3.24/1.01    ((k2_tops_1(sK1,sK2) != sK2 | ~v3_tops_1(sK2,sK1)) & (k2_tops_1(sK1,sK2) = sK2 | v3_tops_1(sK2,sK1)) & v4_pre_topc(sK2,sK1) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_pre_topc(sK1)),
% 3.24/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f60,f62,f61])).
% 3.24/1.01  
% 3.24/1.01  fof(f99,plain,(
% 3.24/1.01    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))),
% 3.24/1.01    inference(cnf_transformation,[],[f63])).
% 3.24/1.01  
% 3.24/1.01  fof(f17,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f36,plain,(
% 3.24/1.01    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f17])).
% 3.24/1.01  
% 3.24/1.01  fof(f88,plain,(
% 3.24/1.01    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f36])).
% 3.24/1.01  
% 3.24/1.01  fof(f15,axiom,(
% 3.24/1.01    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f34,plain,(
% 3.24/1.01    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f15])).
% 3.24/1.01  
% 3.24/1.01  fof(f85,plain,(
% 3.24/1.01    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f34])).
% 3.24/1.01  
% 3.24/1.01  fof(f98,plain,(
% 3.24/1.01    l1_pre_topc(sK1)),
% 3.24/1.01    inference(cnf_transformation,[],[f63])).
% 3.24/1.01  
% 3.24/1.01  fof(f7,axiom,(
% 3.24/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f28,plain,(
% 3.24/1.01    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.24/1.01    inference(ennf_transformation,[],[f7])).
% 3.24/1.01  
% 3.24/1.01  fof(f77,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.24/1.01    inference(cnf_transformation,[],[f28])).
% 3.24/1.01  
% 3.24/1.01  fof(f111,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.24/1.01    inference(definition_unfolding,[],[f77,f103])).
% 3.24/1.01  
% 3.24/1.01  fof(f18,axiom,(
% 3.24/1.01    ! [X0] : (l1_struct_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) = X1))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f37,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_struct_0(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f18])).
% 3.24/1.01  
% 3.24/1.01  fof(f89,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_struct_0(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f37])).
% 3.24/1.01  
% 3.24/1.01  fof(f19,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) & v2_pre_topc(X0)) => v3_pre_topc(X1,X0)) & (v3_pre_topc(X1,X0) => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f27,plain,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_pre_topc(X1,X0) => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)))))),
% 3.24/1.01    inference(pure_predicate_removal,[],[f19])).
% 3.24/1.01  
% 3.24/1.01  fof(f38,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : ((k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | ~v3_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f27])).
% 3.24/1.01  
% 3.24/1.01  fof(f39,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(flattening,[],[f38])).
% 3.24/1.01  
% 3.24/1.01  fof(f90,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f39])).
% 3.24/1.01  
% 3.24/1.01  fof(f16,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) <=> v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f35,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : ((v4_pre_topc(X1,X0) <=> v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f16])).
% 3.24/1.01  
% 3.24/1.01  fof(f56,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | ~v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)) & (v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0) | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(nnf_transformation,[],[f35])).
% 3.24/1.01  
% 3.24/1.01  fof(f86,plain,(
% 3.24/1.01    ( ! [X0,X1] : (v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0) | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f56])).
% 3.24/1.01  
% 3.24/1.01  fof(f100,plain,(
% 3.24/1.01    v4_pre_topc(sK2,sK1)),
% 3.24/1.01    inference(cnf_transformation,[],[f63])).
% 3.24/1.01  
% 3.24/1.01  fof(f22,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tops_1(X1,X0) <=> r1_tarski(X1,k2_tops_1(X0,X1)))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f42,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : ((v2_tops_1(X1,X0) <=> r1_tarski(X1,k2_tops_1(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f22])).
% 3.24/1.01  
% 3.24/1.01  fof(f58,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (((v2_tops_1(X1,X0) | ~r1_tarski(X1,k2_tops_1(X0,X1))) & (r1_tarski(X1,k2_tops_1(X0,X1)) | ~v2_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(nnf_transformation,[],[f42])).
% 3.24/1.01  
% 3.24/1.01  fof(f95,plain,(
% 3.24/1.01    ( ! [X0,X1] : (v2_tops_1(X1,X0) | ~r1_tarski(X1,k2_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f58])).
% 3.24/1.01  
% 3.24/1.01  fof(f21,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tops_1(X1,X0) <=> k1_xboole_0 = k1_tops_1(X0,X1))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f41,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : ((v2_tops_1(X1,X0) <=> k1_xboole_0 = k1_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f21])).
% 3.24/1.01  
% 3.24/1.01  fof(f57,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (((v2_tops_1(X1,X0) | k1_xboole_0 != k1_tops_1(X0,X1)) & (k1_xboole_0 = k1_tops_1(X0,X1) | ~v2_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(nnf_transformation,[],[f41])).
% 3.24/1.01  
% 3.24/1.01  fof(f92,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k1_xboole_0 = k1_tops_1(X0,X1) | ~v2_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f57])).
% 3.24/1.01  
% 3.24/1.01  fof(f2,axiom,(
% 3.24/1.01    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f54,plain,(
% 3.24/1.01    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.24/1.01    inference(nnf_transformation,[],[f2])).
% 3.24/1.01  
% 3.24/1.01  fof(f55,plain,(
% 3.24/1.01    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.24/1.01    inference(flattening,[],[f54])).
% 3.24/1.01  
% 3.24/1.01  fof(f70,plain,(
% 3.24/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.24/1.01    inference(cnf_transformation,[],[f55])).
% 3.24/1.01  
% 3.24/1.01  fof(f117,plain,(
% 3.24/1.01    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.24/1.01    inference(equality_resolution,[],[f70])).
% 3.24/1.01  
% 3.24/1.01  fof(f72,plain,(
% 3.24/1.01    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f55])).
% 3.24/1.01  
% 3.24/1.01  fof(f23,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tops_1(X1,X0) => v2_tops_1(X1,X0))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f43,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : ((v2_tops_1(X1,X0) | ~v3_tops_1(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f23])).
% 3.24/1.01  
% 3.24/1.01  fof(f44,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (v2_tops_1(X1,X0) | ~v3_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(flattening,[],[f43])).
% 3.24/1.01  
% 3.24/1.01  fof(f96,plain,(
% 3.24/1.01    ( ! [X0,X1] : (v2_tops_1(X1,X0) | ~v3_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f44])).
% 3.24/1.01  
% 3.24/1.01  fof(f101,plain,(
% 3.24/1.01    k2_tops_1(sK1,sK2) = sK2 | v3_tops_1(sK2,sK1)),
% 3.24/1.01    inference(cnf_transformation,[],[f63])).
% 3.24/1.01  
% 3.24/1.01  fof(f20,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f40,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f20])).
% 3.24/1.01  
% 3.24/1.01  fof(f91,plain,(
% 3.24/1.01    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f40])).
% 3.24/1.01  
% 3.24/1.01  fof(f4,axiom,(
% 3.24/1.01    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f74,plain,(
% 3.24/1.01    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.24/1.01    inference(cnf_transformation,[],[f4])).
% 3.24/1.01  
% 3.24/1.01  fof(f110,plain,(
% 3.24/1.01    ( ! [X0] : (k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,k1_xboole_0))) = X0) )),
% 3.24/1.01    inference(definition_unfolding,[],[f74,f103])).
% 3.24/1.01  
% 3.24/1.01  fof(f24,axiom,(
% 3.24/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v4_pre_topc(X1,X0) & v2_tops_1(X1,X0)) => v3_tops_1(X1,X0))))),
% 3.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/1.01  
% 3.24/1.01  fof(f45,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : ((v3_tops_1(X1,X0) | (~v4_pre_topc(X1,X0) | ~v2_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(ennf_transformation,[],[f24])).
% 3.24/1.01  
% 3.24/1.01  fof(f46,plain,(
% 3.24/1.01    ! [X0] : (! [X1] : (v3_tops_1(X1,X0) | ~v4_pre_topc(X1,X0) | ~v2_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.24/1.01    inference(flattening,[],[f45])).
% 3.24/1.01  
% 3.24/1.01  fof(f97,plain,(
% 3.24/1.01    ( ! [X0,X1] : (v3_tops_1(X1,X0) | ~v4_pre_topc(X1,X0) | ~v2_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f46])).
% 3.24/1.01  
% 3.24/1.01  fof(f102,plain,(
% 3.24/1.01    k2_tops_1(sK1,sK2) != sK2 | ~v3_tops_1(sK2,sK1)),
% 3.24/1.01    inference(cnf_transformation,[],[f63])).
% 3.24/1.01  
% 3.24/1.01  fof(f93,plain,(
% 3.24/1.01    ( ! [X0,X1] : (v2_tops_1(X1,X0) | k1_xboole_0 != k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.24/1.01    inference(cnf_transformation,[],[f57])).
% 3.24/1.01  
% 3.24/1.01  cnf(c_14,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.24/1.01      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 3.24/1.01      inference(cnf_transformation,[],[f79]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1640,plain,
% 3.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.24/1.01      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_13,plain,
% 3.24/1.01      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 3.24/1.01      inference(cnf_transformation,[],[f78]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1641,plain,
% 3.24/1.01      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_11,plain,
% 3.24/1.01      ( k2_subset_1(X0) = X0 ),
% 3.24/1.01      inference(cnf_transformation,[],[f76]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1662,plain,
% 3.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.24/1.01      inference(light_normalisation,[status(thm)],[c_1641,c_11]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_16,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.24/1.01      | k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X2))) = k7_subset_1(X1,X0,X2) ),
% 3.24/1.01      inference(cnf_transformation,[],[f112]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1638,plain,
% 3.24/1.01      ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k7_subset_1(X2,X0,X1)
% 3.24/1.01      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_3787,plain,
% 3.24/1.01      ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k7_subset_1(X0,X0,X1) ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_1662,c_1638]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_35,negated_conjecture,
% 3.24/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.24/1.01      inference(cnf_transformation,[],[f99]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1635,plain,
% 3.24/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_22,plain,
% 3.24/1.01      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f88]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_19,plain,
% 3.24/1.01      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f85]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_453,plain,
% 3.24/1.01      ( ~ l1_pre_topc(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.24/1.01      inference(resolution,[status(thm)],[c_22,c_19]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_36,negated_conjecture,
% 3.24/1.01      ( l1_pre_topc(sK1) ),
% 3.24/1.01      inference(cnf_transformation,[],[f98]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_580,plain,
% 3.24/1.01      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_453,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_581,plain,
% 3.24/1.01      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_580]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1659,plain,
% 3.24/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(k2_struct_0(sK1))) = iProver_top ),
% 3.24/1.01      inference(light_normalisation,[status(thm)],[c_1635,c_581]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_12,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.24/1.01      | k5_xboole_0(X1,k1_setfam_1(k2_tarski(X1,X0))) = k3_subset_1(X1,X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f111]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1642,plain,
% 3.24/1.01      ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) = k3_subset_1(X0,X1)
% 3.24/1.01      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_3715,plain,
% 3.24/1.01      ( k5_xboole_0(k2_struct_0(sK1),k1_setfam_1(k2_tarski(k2_struct_0(sK1),sK2))) = k3_subset_1(k2_struct_0(sK1),sK2) ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_1659,c_1642]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_5785,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2) = k3_subset_1(k2_struct_0(sK1),sK2) ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_3787,c_3715]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_23,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_struct_0(X1)
% 3.24/1.01      | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0 ),
% 3.24/1.01      inference(cnf_transformation,[],[f89]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_464,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X2)
% 3.24/1.01      | X1 != X2
% 3.24/1.01      | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_22,c_23]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_465,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_464]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_585,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = X0
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_465,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_586,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),X0)) = X0 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_585]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1633,plain,
% 3.24/1.01      ( k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),X0)) = X0
% 3.24/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_586]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1728,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),X0)) = X0
% 3.24/1.01      | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(light_normalisation,[status(thm)],[c_1633,c_581]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1847,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2)) = sK2 ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_1659,c_1728]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_24,plain,
% 3.24/1.01      ( ~ v3_pre_topc(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f90]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_21,plain,
% 3.24/1.01      ( v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)
% 3.24/1.01      | ~ v4_pre_topc(X1,X0)
% 3.24/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 3.24/1.01      | ~ l1_pre_topc(X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f86]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_34,negated_conjecture,
% 3.24/1.01      ( v4_pre_topc(sK2,sK1) ),
% 3.24/1.01      inference(cnf_transformation,[],[f100]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_550,plain,
% 3.24/1.01      ( v3_pre_topc(k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1),X0)
% 3.24/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 3.24/1.01      | ~ l1_pre_topc(X0)
% 3.24/1.01      | sK2 != X1
% 3.24/1.01      | sK1 != X0 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_21,c_34]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_551,plain,
% 3.24/1.01      ( v3_pre_topc(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),sK1)
% 3.24/1.01      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ l1_pre_topc(sK1) ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_550]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_553,plain,
% 3.24/1.01      ( v3_pre_topc(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),sK1) ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_551,c_36,c_35]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_563,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2) != X0
% 3.24/1.01      | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_24,c_553]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_564,plain,
% 3.24/1.01      ( ~ m1_subset_1(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ l1_pre_topc(sK1)
% 3.24/1.01      | k2_pre_topc(sK1,k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2)) ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_563]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_566,plain,
% 3.24/1.01      ( ~ m1_subset_1(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k2_pre_topc(sK1,k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2)) ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_564,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1634,plain,
% 3.24/1.01      ( k2_pre_topc(sK1,k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2))
% 3.24/1.01      | m1_subset_1(k7_subset_1(u1_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_566]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1773,plain,
% 3.24/1.01      ( k2_pre_topc(sK1,k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2))) = k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2))
% 3.24/1.01      | m1_subset_1(k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(light_normalisation,[status(thm)],[c_1634,c_581]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_2207,plain,
% 3.24/1.01      ( k2_pre_topc(sK1,sK2) = sK2
% 3.24/1.01      | m1_subset_1(k7_subset_1(k2_struct_0(sK1),k2_struct_0(sK1),sK2),k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(demodulation,[status(thm)],[c_1847,c_1773]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_5996,plain,
% 3.24/1.01      ( k2_pre_topc(sK1,sK2) = sK2
% 3.24/1.01      | m1_subset_1(k3_subset_1(k2_struct_0(sK1),sK2),k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(demodulation,[status(thm)],[c_5785,c_2207]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_6090,plain,
% 3.24/1.01      ( k2_pre_topc(sK1,sK2) = sK2
% 3.24/1.01      | m1_subset_1(sK2,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_1640,c_5996]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_6297,plain,
% 3.24/1.01      ( k2_pre_topc(sK1,sK2) = sK2 ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_6090,c_1659]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_28,plain,
% 3.24/1.01      ( v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ r1_tarski(X0,k2_tops_1(X1,X0))
% 3.24/1.01      | ~ l1_pre_topc(X1) ),
% 3.24/1.01      inference(cnf_transformation,[],[f95]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_612,plain,
% 3.24/1.01      ( v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ r1_tarski(X0,k2_tops_1(X1,X0))
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_28,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_613,plain,
% 3.24/1.01      ( v2_tops_1(X0,sK1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ r1_tarski(X0,k2_tops_1(sK1,X0)) ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_612]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_27,plain,
% 3.24/1.01      ( ~ v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k1_tops_1(X1,X0) = k1_xboole_0 ),
% 3.24/1.01      inference(cnf_transformation,[],[f92]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_627,plain,
% 3.24/1.01      ( ~ v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | k1_tops_1(X1,X0) = k1_xboole_0
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_27,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_628,plain,
% 3.24/1.01      ( ~ v2_tops_1(X0,sK1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k1_tops_1(sK1,X0) = k1_xboole_0 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_627]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_708,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ r1_tarski(X0,k2_tops_1(sK1,X0))
% 3.24/1.01      | k1_tops_1(sK1,X0) = k1_xboole_0 ),
% 3.24/1.01      inference(resolution,[status(thm)],[c_613,c_628]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_710,plain,
% 3.24/1.01      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.24/1.01      | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
% 3.24/1.01      inference(instantiation,[status(thm)],[c_708]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_876,plain,
% 3.24/1.01      ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.24/1.01      | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
% 3.24/1.01      inference(prop_impl,[status(thm)],[c_35,c_710]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1626,plain,
% 3.24/1.01      ( k1_tops_1(sK1,sK2) = k1_xboole_0
% 3.24/1.01      | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_876]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_8,plain,
% 3.24/1.01      ( r1_tarski(X0,X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f117]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_104,plain,
% 3.24/1.01      ( r1_tarski(sK2,sK2) ),
% 3.24/1.01      inference(instantiation,[status(thm)],[c_8]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_6,plain,
% 3.24/1.01      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.24/1.01      inference(cnf_transformation,[],[f72]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_108,plain,
% 3.24/1.01      ( ~ r1_tarski(sK2,sK2) | sK2 = sK2 ),
% 3.24/1.01      inference(instantiation,[status(thm)],[c_6]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_30,plain,
% 3.24/1.01      ( ~ v3_tops_1(X0,X1)
% 3.24/1.01      | v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1) ),
% 3.24/1.01      inference(cnf_transformation,[],[f96]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_33,negated_conjecture,
% 3.24/1.01      ( v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) = sK2 ),
% 3.24/1.01      inference(cnf_transformation,[],[f101]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_270,plain,
% 3.24/1.01      ( v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) = sK2 ),
% 3.24/1.01      inference(prop_impl,[status(thm)],[c_33]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_529,plain,
% 3.24/1.01      ( v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k2_tops_1(sK1,sK2) = sK2
% 3.24/1.01      | sK2 != X0
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_30,c_270]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_530,plain,
% 3.24/1.01      ( v2_tops_1(sK2,sK1)
% 3.24/1.01      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ l1_pre_topc(sK1)
% 3.24/1.01      | k2_tops_1(sK1,sK2) = sK2 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_529]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_532,plain,
% 3.24/1.01      ( v2_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) = sK2 ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_530,c_36,c_35]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_723,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k2_tops_1(sK1,sK2) = sK2
% 3.24/1.01      | k1_tops_1(sK1,X0) = k1_xboole_0
% 3.24/1.01      | sK2 != X0
% 3.24/1.01      | sK1 != sK1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_532,c_628]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_724,plain,
% 3.24/1.01      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k2_tops_1(sK1,sK2) = sK2
% 3.24/1.01      | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_723]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_726,plain,
% 3.24/1.01      ( k2_tops_1(sK1,sK2) = sK2 | k1_tops_1(sK1,sK2) = k1_xboole_0 ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_724,c_35]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1026,plain,
% 3.24/1.01      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.24/1.01      theory(equality) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1865,plain,
% 3.24/1.01      ( ~ r1_tarski(X0,X1)
% 3.24/1.01      | r1_tarski(X2,k2_tops_1(sK1,X2))
% 3.24/1.01      | X2 != X0
% 3.24/1.01      | k2_tops_1(sK1,X2) != X1 ),
% 3.24/1.01      inference(instantiation,[status(thm)],[c_1026]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1867,plain,
% 3.24/1.01      ( r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.24/1.01      | ~ r1_tarski(sK2,sK2)
% 3.24/1.01      | k2_tops_1(sK1,sK2) != sK2
% 3.24/1.01      | sK2 != sK2 ),
% 3.24/1.01      inference(instantiation,[status(thm)],[c_1865]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1950,plain,
% 3.24/1.01      ( k1_tops_1(sK1,sK2) = k1_xboole_0 ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_1626,c_104,c_108,c_726,c_876,c_1867]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_25,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0) ),
% 3.24/1.01      inference(cnf_transformation,[],[f91]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_657,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0)
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_25,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_658,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k7_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k1_tops_1(sK1,X0)) = k2_tops_1(sK1,X0) ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_657]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1632,plain,
% 3.24/1.01      ( k7_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k1_tops_1(sK1,X0)) = k2_tops_1(sK1,X0)
% 3.24/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(predicate_to_equality,[status(thm)],[c_658]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1723,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,X0),k1_tops_1(sK1,X0)) = k2_tops_1(sK1,X0)
% 3.24/1.01      | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.24/1.01      inference(light_normalisation,[status(thm)],[c_1632,c_581]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1843,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,sK2),k1_tops_1(sK1,sK2)) = k2_tops_1(sK1,sK2) ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_1659,c_1723]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_1953,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,sK2),k1_xboole_0) = k2_tops_1(sK1,sK2) ),
% 3.24/1.01      inference(demodulation,[status(thm)],[c_1950,c_1843]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_6300,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),sK2,k1_xboole_0) = k2_tops_1(sK1,sK2) ),
% 3.24/1.01      inference(demodulation,[status(thm)],[c_6297,c_1953]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_3786,plain,
% 3.24/1.01      ( k5_xboole_0(sK2,k1_setfam_1(k2_tarski(sK2,X0))) = k7_subset_1(k2_struct_0(sK1),sK2,X0) ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_1659,c_1638]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_9,plain,
% 3.24/1.01      ( k5_xboole_0(X0,k1_setfam_1(k2_tarski(X0,k1_xboole_0))) = X0 ),
% 3.24/1.01      inference(cnf_transformation,[],[f110]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_3879,plain,
% 3.24/1.01      ( k7_subset_1(k2_struct_0(sK1),sK2,k1_xboole_0) = sK2 ),
% 3.24/1.01      inference(superposition,[status(thm)],[c_3786,c_9]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_6301,plain,
% 3.24/1.01      ( k2_tops_1(sK1,sK2) = sK2 ),
% 3.24/1.01      inference(light_normalisation,[status(thm)],[c_6300,c_3879]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_31,plain,
% 3.24/1.01      ( v3_tops_1(X0,X1)
% 3.24/1.01      | ~ v2_tops_1(X0,X1)
% 3.24/1.01      | ~ v4_pre_topc(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1) ),
% 3.24/1.01      inference(cnf_transformation,[],[f97]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_32,negated_conjecture,
% 3.24/1.01      ( ~ v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) != sK2 ),
% 3.24/1.01      inference(cnf_transformation,[],[f102]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_268,plain,
% 3.24/1.01      ( ~ v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) != sK2 ),
% 3.24/1.01      inference(prop_impl,[status(thm)],[c_32]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_515,plain,
% 3.24/1.01      ( ~ v2_tops_1(X0,X1)
% 3.24/1.01      | ~ v4_pre_topc(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k2_tops_1(sK1,sK2) != sK2
% 3.24/1.01      | sK2 != X0
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_31,c_268]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_516,plain,
% 3.24/1.01      ( ~ v2_tops_1(sK2,sK1)
% 3.24/1.01      | ~ v4_pre_topc(sK2,sK1)
% 3.24/1.01      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | ~ l1_pre_topc(sK1)
% 3.24/1.01      | k2_tops_1(sK1,sK2) != sK2 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_515]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_518,plain,
% 3.24/1.01      ( ~ v2_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) != sK2 ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_516,c_36,c_35,c_34]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_26,plain,
% 3.24/1.01      ( v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | ~ l1_pre_topc(X1)
% 3.24/1.01      | k1_tops_1(X1,X0) != k1_xboole_0 ),
% 3.24/1.01      inference(cnf_transformation,[],[f93]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_642,plain,
% 3.24/1.01      ( v2_tops_1(X0,X1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/1.01      | k1_tops_1(X1,X0) != k1_xboole_0
% 3.24/1.01      | sK1 != X1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_26,c_36]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_643,plain,
% 3.24/1.01      ( v2_tops_1(X0,sK1)
% 3.24/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k1_tops_1(sK1,X0) != k1_xboole_0 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_642]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_748,plain,
% 3.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k2_tops_1(sK1,sK2) != sK2
% 3.24/1.01      | k1_tops_1(sK1,X0) != k1_xboole_0
% 3.24/1.01      | sK2 != X0
% 3.24/1.01      | sK1 != sK1 ),
% 3.24/1.01      inference(resolution_lifted,[status(thm)],[c_518,c_643]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_749,plain,
% 3.24/1.01      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/1.01      | k2_tops_1(sK1,sK2) != sK2
% 3.24/1.01      | k1_tops_1(sK1,sK2) != k1_xboole_0 ),
% 3.24/1.01      inference(unflattening,[status(thm)],[c_748]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(c_751,plain,
% 3.24/1.01      ( k2_tops_1(sK1,sK2) != sK2 | k1_tops_1(sK1,sK2) != k1_xboole_0 ),
% 3.24/1.01      inference(global_propositional_subsumption,
% 3.24/1.01                [status(thm)],
% 3.24/1.01                [c_749,c_35]) ).
% 3.24/1.01  
% 3.24/1.01  cnf(contradiction,plain,
% 3.24/1.01      ( $false ),
% 3.24/1.01      inference(minisat,[status(thm)],[c_6301,c_1950,c_751]) ).
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 3.24/1.01  
% 3.24/1.01  ------                               Statistics
% 3.24/1.01  
% 3.24/1.01  ------ General
% 3.24/1.01  
% 3.24/1.01  abstr_ref_over_cycles:                  0
% 3.24/1.01  abstr_ref_under_cycles:                 0
% 3.24/1.01  gc_basic_clause_elim:                   0
% 3.24/1.01  forced_gc_time:                         0
% 3.24/1.01  parsing_time:                           0.012
% 3.24/1.01  unif_index_cands_time:                  0.
% 3.24/1.01  unif_index_add_time:                    0.
% 3.24/1.01  orderings_time:                         0.
% 3.24/1.01  out_proof_time:                         0.013
% 3.24/1.01  total_time:                             0.213
% 3.24/1.01  num_of_symbols:                         56
% 3.24/1.01  num_of_terms:                           6049
% 3.24/1.01  
% 3.24/1.01  ------ Preprocessing
% 3.24/1.01  
% 3.24/1.01  num_of_splits:                          0
% 3.24/1.01  num_of_split_atoms:                     0
% 3.24/1.01  num_of_reused_defs:                     0
% 3.24/1.01  num_eq_ax_congr_red:                    33
% 3.24/1.01  num_of_sem_filtered_clauses:            1
% 3.24/1.01  num_of_subtypes:                        0
% 3.24/1.01  monotx_restored_types:                  0
% 3.24/1.01  sat_num_of_epr_types:                   0
% 3.24/1.01  sat_num_of_non_cyclic_types:            0
% 3.24/1.01  sat_guarded_non_collapsed_types:        0
% 3.24/1.01  num_pure_diseq_elim:                    0
% 3.24/1.01  simp_replaced_by:                       0
% 3.24/1.01  res_preprocessed:                       154
% 3.24/1.01  prep_upred:                             0
% 3.24/1.01  prep_unflattend:                        22
% 3.24/1.01  smt_new_axioms:                         0
% 3.24/1.01  pred_elim_cands:                        3
% 3.24/1.01  pred_elim:                              6
% 3.24/1.01  pred_elim_cl:                           7
% 3.24/1.01  pred_elim_cycles:                       9
% 3.24/1.01  merged_defs:                            14
% 3.24/1.01  merged_defs_ncl:                        0
% 3.24/1.01  bin_hyper_res:                          14
% 3.24/1.01  prep_cycles:                            4
% 3.24/1.01  pred_elim_time:                         0.007
% 3.24/1.01  splitting_time:                         0.
% 3.24/1.01  sem_filter_time:                        0.
% 3.24/1.01  monotx_time:                            0.
% 3.24/1.01  subtype_inf_time:                       0.
% 3.24/1.01  
% 3.24/1.01  ------ Problem properties
% 3.24/1.01  
% 3.24/1.01  clauses:                                29
% 3.24/1.01  conjectures:                            1
% 3.24/1.01  epr:                                    2
% 3.24/1.01  horn:                                   26
% 3.24/1.01  ground:                                 7
% 3.24/1.01  unary:                                  8
% 3.24/1.01  binary:                                 12
% 3.24/1.01  lits:                                   60
% 3.24/1.01  lits_eq:                                19
% 3.24/1.01  fd_pure:                                0
% 3.24/1.01  fd_pseudo:                              0
% 3.24/1.01  fd_cond:                                0
% 3.24/1.01  fd_pseudo_cond:                         4
% 3.24/1.01  ac_symbols:                             0
% 3.24/1.01  
% 3.24/1.01  ------ Propositional Solver
% 3.24/1.01  
% 3.24/1.01  prop_solver_calls:                      27
% 3.24/1.01  prop_fast_solver_calls:                 927
% 3.24/1.01  smt_solver_calls:                       0
% 3.24/1.01  smt_fast_solver_calls:                  0
% 3.24/1.01  prop_num_of_clauses:                    2363
% 3.24/1.01  prop_preprocess_simplified:             6771
% 3.24/1.01  prop_fo_subsumed:                       19
% 3.24/1.01  prop_solver_time:                       0.
% 3.24/1.01  smt_solver_time:                        0.
% 3.24/1.01  smt_fast_solver_time:                   0.
% 3.24/1.01  prop_fast_solver_time:                  0.
% 3.24/1.01  prop_unsat_core_time:                   0.
% 3.24/1.01  
% 3.24/1.01  ------ QBF
% 3.24/1.01  
% 3.24/1.01  qbf_q_res:                              0
% 3.24/1.01  qbf_num_tautologies:                    0
% 3.24/1.01  qbf_prep_cycles:                        0
% 3.24/1.01  
% 3.24/1.01  ------ BMC1
% 3.24/1.01  
% 3.24/1.01  bmc1_current_bound:                     -1
% 3.24/1.01  bmc1_last_solved_bound:                 -1
% 3.24/1.01  bmc1_unsat_core_size:                   -1
% 3.24/1.01  bmc1_unsat_core_parents_size:           -1
% 3.24/1.01  bmc1_merge_next_fun:                    0
% 3.24/1.01  bmc1_unsat_core_clauses_time:           0.
% 3.24/1.01  
% 3.24/1.01  ------ Instantiation
% 3.24/1.01  
% 3.24/1.01  inst_num_of_clauses:                    711
% 3.24/1.01  inst_num_in_passive:                    61
% 3.24/1.01  inst_num_in_active:                     360
% 3.24/1.01  inst_num_in_unprocessed:                291
% 3.24/1.01  inst_num_of_loops:                      400
% 3.24/1.01  inst_num_of_learning_restarts:          0
% 3.24/1.01  inst_num_moves_active_passive:          36
% 3.24/1.01  inst_lit_activity:                      0
% 3.24/1.01  inst_lit_activity_moves:                0
% 3.24/1.01  inst_num_tautologies:                   0
% 3.24/1.01  inst_num_prop_implied:                  0
% 3.24/1.01  inst_num_existing_simplified:           0
% 3.24/1.01  inst_num_eq_res_simplified:             0
% 3.24/1.01  inst_num_child_elim:                    0
% 3.24/1.01  inst_num_of_dismatching_blockings:      298
% 3.24/1.01  inst_num_of_non_proper_insts:           807
% 3.24/1.01  inst_num_of_duplicates:                 0
% 3.24/1.01  inst_inst_num_from_inst_to_res:         0
% 3.24/1.01  inst_dismatching_checking_time:         0.
% 3.24/1.01  
% 3.24/1.01  ------ Resolution
% 3.24/1.01  
% 3.24/1.01  res_num_of_clauses:                     0
% 3.24/1.01  res_num_in_passive:                     0
% 3.24/1.01  res_num_in_active:                      0
% 3.24/1.01  res_num_of_loops:                       158
% 3.24/1.01  res_forward_subset_subsumed:            83
% 3.24/1.01  res_backward_subset_subsumed:           6
% 3.24/1.01  res_forward_subsumed:                   0
% 3.24/1.01  res_backward_subsumed:                  0
% 3.24/1.01  res_forward_subsumption_resolution:     0
% 3.24/1.01  res_backward_subsumption_resolution:    0
% 3.24/1.01  res_clause_to_clause_subsumption:       349
% 3.24/1.01  res_orphan_elimination:                 0
% 3.24/1.01  res_tautology_del:                      61
% 3.24/1.01  res_num_eq_res_simplified:              0
% 3.24/1.01  res_num_sel_changes:                    0
% 3.24/1.01  res_moves_from_active_to_pass:          0
% 3.24/1.01  
% 3.24/1.01  ------ Superposition
% 3.24/1.01  
% 3.24/1.01  sup_time_total:                         0.
% 3.24/1.01  sup_time_generating:                    0.
% 3.24/1.01  sup_time_sim_full:                      0.
% 3.24/1.01  sup_time_sim_immed:                     0.
% 3.24/1.01  
% 3.24/1.01  sup_num_of_clauses:                     105
% 3.24/1.01  sup_num_in_active:                      65
% 3.24/1.01  sup_num_in_passive:                     40
% 3.24/1.01  sup_num_of_loops:                       78
% 3.24/1.01  sup_fw_superposition:                   119
% 3.24/1.01  sup_bw_superposition:                   53
% 3.24/1.01  sup_immediate_simplified:               19
% 3.24/1.01  sup_given_eliminated:                   1
% 3.24/1.01  comparisons_done:                       0
% 3.24/1.01  comparisons_avoided:                    0
% 3.24/1.01  
% 3.24/1.01  ------ Simplifications
% 3.24/1.01  
% 3.24/1.01  
% 3.24/1.01  sim_fw_subset_subsumed:                 2
% 3.24/1.01  sim_bw_subset_subsumed:                 1
% 3.24/1.01  sim_fw_subsumed:                        8
% 3.24/1.01  sim_bw_subsumed:                        1
% 3.24/1.01  sim_fw_subsumption_res:                 0
% 3.24/1.01  sim_bw_subsumption_res:                 0
% 3.24/1.01  sim_tautology_del:                      9
% 3.24/1.01  sim_eq_tautology_del:                   7
% 3.24/1.01  sim_eq_res_simp:                        2
% 3.24/1.01  sim_fw_demodulated:                     7
% 3.24/1.01  sim_bw_demodulated:                     12
% 3.24/1.01  sim_light_normalised:                   12
% 3.24/1.01  sim_joinable_taut:                      0
% 3.24/1.01  sim_joinable_simp:                      0
% 3.24/1.01  sim_ac_normalised:                      0
% 3.24/1.01  sim_smt_subsumption:                    0
% 3.24/1.01  
%------------------------------------------------------------------------------
