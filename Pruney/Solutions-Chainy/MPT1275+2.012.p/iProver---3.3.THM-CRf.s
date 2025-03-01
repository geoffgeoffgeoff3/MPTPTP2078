%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:15:24 EST 2020

% Result     : Theorem 3.64s
% Output     : CNFRefutation 3.64s
% Verified   : 
% Statistics : Number of formulae       :  191 ( 821 expanded)
%              Number of clauses        :   99 ( 217 expanded)
%              Number of leaves         :   26 ( 182 expanded)
%              Depth                    :   21
%              Number of atoms          :  550 (3990 expanded)
%              Number of equality atoms :  186 (1064 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f70,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f6,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f10,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f73,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f4,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f92,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f67,f68])).

fof(f93,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f73,f92])).

fof(f95,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k1_setfam_1(k2_enumset1(X1,X1,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f72,f93])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f47])).

fof(f49,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f48,f49])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f22,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => ( v3_tops_1(X1,X0)
            <=> k2_tops_1(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v4_pre_topc(X1,X0)
             => ( v3_tops_1(X1,X0)
              <=> k2_tops_1(X0,X1) = X1 ) ) ) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f45,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tops_1(X1,X0)
          <~> k2_tops_1(X0,X1) = X1 )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f46,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tops_1(X1,X0)
          <~> k2_tops_1(X0,X1) = X1 )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f45])).

fof(f55,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != X1
            | ~ v3_tops_1(X1,X0) )
          & ( k2_tops_1(X0,X1) = X1
            | v3_tops_1(X1,X0) )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f46])).

fof(f56,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_tops_1(X0,X1) != X1
            | ~ v3_tops_1(X1,X0) )
          & ( k2_tops_1(X0,X1) = X1
            | v3_tops_1(X1,X0) )
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f55])).

fof(f58,plain,(
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

fof(f57,plain,
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

fof(f59,plain,
    ( ( k2_tops_1(sK1,sK2) != sK2
      | ~ v3_tops_1(sK2,sK1) )
    & ( k2_tops_1(sK1,sK2) = sK2
      | v3_tops_1(sK2,sK1) )
    & v4_pre_topc(sK2,sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    & l1_pre_topc(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f56,f58,f57])).

fof(f88,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f59])).

fof(f15,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f78,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f14,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f77,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f87,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f59])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f31])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f29])).

fof(f74,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f76,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f66,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f94,plain,(
    ! [X0,X1] :
      ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f66,f93])).

fof(f90,plain,
    ( k2_tops_1(sK1,sK2) = sK2
    | v3_tops_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f59])).

fof(f20,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_tops_1(X1,X0)
           => v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0)
          | ~ v3_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0)
          | ~ v3_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f41])).

fof(f85,plain,(
    ! [X0,X1] :
      ( v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0)
      | ~ v3_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f18,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v1_tops_1(X1,X0)
          <=> k2_struct_0(X0) = k2_pre_topc(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tops_1(X1,X0)
          <=> k2_struct_0(X0) = k2_pre_topc(X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f53,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tops_1(X1,X0)
              | k2_struct_0(X0) != k2_pre_topc(X0,X1) )
            & ( k2_struct_0(X0) = k2_pre_topc(X0,X1)
              | ~ v1_tops_1(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f39])).

fof(f81,plain,(
    ! [X0,X1] :
      ( k2_struct_0(X0) = k2_pre_topc(X0,X1)
      | ~ v1_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f53])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f71,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f51])).

fof(f63,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f52])).

fof(f97,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f63])).

fof(f65,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f52])).

fof(f19,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v2_tops_1(X1,X0)
          <=> r1_tarski(X1,k2_tops_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tops_1(X1,X0)
          <=> r1_tarski(X1,k2_tops_1(X0,X1)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f54,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tops_1(X1,X0)
              | ~ r1_tarski(X1,k2_tops_1(X0,X1)) )
            & ( r1_tarski(X1,k2_tops_1(X0,X1))
              | ~ v2_tops_1(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f40])).

fof(f84,plain,(
    ! [X0,X1] :
      ( v2_tops_1(X1,X0)
      | ~ r1_tarski(X1,k2_tops_1(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f54])).

fof(f21,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( v4_pre_topc(X1,X0)
              & v2_tops_1(X1,X0) )
           => v3_tops_1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v3_tops_1(X1,X0)
          | ~ v4_pre_topc(X1,X0)
          | ~ v2_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f44,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v3_tops_1(X1,X0)
          | ~ v4_pre_topc(X1,X0)
          | ~ v2_tops_1(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f43])).

fof(f86,plain,(
    ! [X0,X1] :
      ( v3_tops_1(X1,X0)
      | ~ v4_pre_topc(X1,X0)
      | ~ v2_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f89,plain,(
    v4_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f59])).

fof(f17,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f80,plain,(
    ! [X0,X1] :
      ( k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => k2_pre_topc(X0,X1) = X1 ) ) ) ),
    inference(pure_predicate_removal,[],[f16])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = X1
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = X1
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f36])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f91,plain,
    ( k2_tops_1(sK1,sK2) != sK2
    | ~ v3_tops_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_8,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1046,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_7,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1064,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1046,c_7])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k1_setfam_1(k2_enumset1(X2,X2,X2,X0)) = k9_subset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1044,plain,
    ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = k9_subset_1(X2,X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1993,plain,
    ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = k9_subset_1(X1,X0,X1) ),
    inference(superposition,[status(thm)],[c_1064,c_1044])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1051,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_27,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_1040,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_15,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_14,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_371,plain,
    ( ~ l1_pre_topc(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_15,c_14])).

cnf(c_28,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_448,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_371,c_28])).

cnf(c_449,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_448])).

cnf(c_1061,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_struct_0(sK1))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1040,c_449])).

cnf(c_12,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1042,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_2491,plain,
    ( m1_subset_1(X0,k2_struct_0(sK1)) = iProver_top
    | r2_hidden(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1061,c_1042])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1043,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2692,plain,
    ( r2_hidden(X0,k2_struct_0(sK1)) = iProver_top
    | r2_hidden(X0,sK2) != iProver_top
    | v1_xboole_0(k2_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2491,c_1043])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1041,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1864,plain,
    ( r2_hidden(X0,sK2) != iProver_top
    | v1_xboole_0(k2_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1061,c_1041])).

cnf(c_2817,plain,
    ( r2_hidden(X0,sK2) != iProver_top
    | r2_hidden(X0,k2_struct_0(sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2692,c_1864])).

cnf(c_2818,plain,
    ( r2_hidden(X0,k2_struct_0(sK1)) = iProver_top
    | r2_hidden(X0,sK2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2817])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1052,plain,
    ( r2_hidden(sK0(X0,X1),X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2825,plain,
    ( r2_hidden(sK0(X0,k2_struct_0(sK1)),sK2) != iProver_top
    | r1_tarski(X0,k2_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2818,c_1052])).

cnf(c_2974,plain,
    ( r1_tarski(sK2,k2_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1051,c_2825])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1047,plain,
    ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_3237,plain,
    ( k1_setfam_1(k2_enumset1(sK2,sK2,sK2,k2_struct_0(sK1))) = sK2 ),
    inference(superposition,[status(thm)],[c_2974,c_1047])).

cnf(c_3347,plain,
    ( k9_subset_1(k2_struct_0(sK1),sK2,k2_struct_0(sK1)) = sK2 ),
    inference(superposition,[status(thm)],[c_1993,c_3237])).

cnf(c_25,negated_conjecture,
    ( v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) = sK2 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_218,plain,
    ( v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) = sK2 ),
    inference(prop_impl,[status(thm)],[c_25])).

cnf(c_22,plain,
    ( ~ v3_tops_1(X0,X1)
    | v1_tops_1(k3_subset_1(u1_struct_0(X1),X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_453,plain,
    ( ~ v3_tops_1(X0,X1)
    | v1_tops_1(k3_subset_1(u1_struct_0(X1),X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_28])).

cnf(c_454,plain,
    ( ~ v3_tops_1(X0,sK1)
    | v1_tops_1(k3_subset_1(u1_struct_0(sK1),X0),sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(unflattening,[status(thm)],[c_453])).

cnf(c_19,plain,
    ( ~ v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = k2_struct_0(X1) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_468,plain,
    ( ~ v1_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_pre_topc(X1,X0) = k2_struct_0(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_28])).

cnf(c_469,plain,
    ( ~ v1_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_pre_topc(sK1,X0) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_468])).

cnf(c_527,plain,
    ( ~ v3_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_pre_topc(sK1,X1) = k2_struct_0(sK1)
    | k3_subset_1(u1_struct_0(sK1),X0) != X1
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_454,c_469])).

cnf(c_528,plain,
    ( ~ v3_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k3_subset_1(u1_struct_0(sK1),X0),k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_527])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_540,plain,
    ( ~ v3_tops_1(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_528,c_9])).

cnf(c_575,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_tops_1(sK1,sK2) = sK2
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1)
    | sK2 != X0
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_218,c_540])).

cnf(c_576,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | k2_tops_1(sK1,sK2) = sK2
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_575])).

cnf(c_578,plain,
    ( k2_tops_1(sK1,sK2) = sK2
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_576,c_27])).

cnf(c_1075,plain,
    ( k2_tops_1(sK1,sK2) = sK2
    | k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_578,c_449])).

cnf(c_5,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_87,plain,
    ( r1_tarski(sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_86,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_88,plain,
    ( r1_tarski(sK2,sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_86])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_91,plain,
    ( ~ r1_tarski(sK2,sK2)
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_20,plain,
    ( v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_tops_1(X1,X0))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_23,plain,
    ( v3_tops_1(X0,X1)
    | ~ v2_tops_1(X0,X1)
    | ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_26,negated_conjecture,
    ( v4_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_404,plain,
    ( v3_tops_1(X0,X1)
    | ~ v2_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_26])).

cnf(c_405,plain,
    ( v3_tops_1(sK2,sK1)
    | ~ v2_tops_1(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_404])).

cnf(c_407,plain,
    ( v3_tops_1(sK2,sK1)
    | ~ v2_tops_1(sK2,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_405,c_28,c_27])).

cnf(c_431,plain,
    ( v3_tops_1(sK2,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_tops_1(X1,X0))
    | ~ l1_pre_topc(X1)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_407])).

cnf(c_432,plain,
    ( v3_tops_1(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_431])).

cnf(c_434,plain,
    ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | v3_tops_1(sK2,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_432,c_28,c_27])).

cnf(c_435,plain,
    ( v3_tops_1(sK2,sK1)
    | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2)) ),
    inference(renaming,[status(thm)],[c_434])).

cnf(c_561,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1)
    | sK2 != X0
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_435,c_540])).

cnf(c_562,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_561])).

cnf(c_564,plain,
    ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_562,c_27])).

cnf(c_1037,plain,
    ( k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1)
    | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_564])).

cnf(c_1104,plain,
    ( k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2)) = k2_struct_0(sK1)
    | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1037,c_449])).

cnf(c_734,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1195,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k2_tops_1(sK1,sK2) != X1
    | sK2 != X0 ),
    inference(instantiation,[status(thm)],[c_734])).

cnf(c_1196,plain,
    ( k2_tops_1(sK1,sK2) != X0
    | sK2 != X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(sK2,k2_tops_1(sK1,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1195])).

cnf(c_1198,plain,
    ( k2_tops_1(sK1,sK2) != sK2
    | sK2 != sK2
    | r1_tarski(sK2,k2_tops_1(sK1,sK2)) = iProver_top
    | r1_tarski(sK2,sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1196])).

cnf(c_1268,plain,
    ( k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1075,c_87,c_91,c_551,c_1197])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_498,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_28])).

cnf(c_499,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k9_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0))) = k2_tops_1(sK1,X0) ),
    inference(unflattening,[status(thm)],[c_498])).

cnf(c_1039,plain,
    ( k9_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0))) = k2_tops_1(sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_499])).

cnf(c_1131,plain,
    ( k9_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,X0),k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),X0))) = k2_tops_1(sK1,X0)
    | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1039,c_449])).

cnf(c_1221,plain,
    ( k9_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,sK2),k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2))) = k2_tops_1(sK1,sK2) ),
    inference(superposition,[status(thm)],[c_1061,c_1131])).

cnf(c_16,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_418,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_26])).

cnf(c_419,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1)
    | k2_pre_topc(sK1,sK2) = sK2 ),
    inference(unflattening,[status(thm)],[c_418])).

cnf(c_421,plain,
    ( k2_pre_topc(sK1,sK2) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_419,c_28,c_27])).

cnf(c_1222,plain,
    ( k9_subset_1(k2_struct_0(sK1),sK2,k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2))) = k2_tops_1(sK1,sK2) ),
    inference(light_normalisation,[status(thm)],[c_1221,c_421])).

cnf(c_1271,plain,
    ( k9_subset_1(k2_struct_0(sK1),sK2,k2_struct_0(sK1)) = k2_tops_1(sK1,sK2) ),
    inference(demodulation,[status(thm)],[c_1268,c_1222])).

cnf(c_6216,plain,
    ( k2_tops_1(sK1,sK2) = sK2 ),
    inference(demodulation,[status(thm)],[c_3347,c_1271])).

cnf(c_24,negated_conjecture,
    ( ~ v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_216,plain,
    ( ~ v3_tops_1(sK2,sK1)
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(prop_impl,[status(thm)],[c_24])).

cnf(c_551,plain,
    ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | k2_tops_1(sK1,sK2) != sK2 ),
    inference(resolution,[status(thm)],[c_435,c_216])).

cnf(c_1038,plain,
    ( k2_tops_1(sK1,sK2) != sK2
    | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_551])).

cnf(c_1197,plain,
    ( r1_tarski(sK2,k2_tops_1(sK1,sK2))
    | ~ r1_tarski(sK2,sK2)
    | k2_tops_1(sK1,sK2) != sK2
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1195])).

cnf(c_1340,plain,
    ( k2_tops_1(sK1,sK2) != sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1038,c_87,c_91,c_551,c_1197])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6216,c_1340])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n015.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 09:43:38 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.64/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.64/1.00  
% 3.64/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.64/1.00  
% 3.64/1.00  ------  iProver source info
% 3.64/1.00  
% 3.64/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.64/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.64/1.00  git: non_committed_changes: false
% 3.64/1.00  git: last_make_outside_of_git: false
% 3.64/1.00  
% 3.64/1.00  ------ 
% 3.64/1.00  
% 3.64/1.00  ------ Input Options
% 3.64/1.00  
% 3.64/1.00  --out_options                           all
% 3.64/1.00  --tptp_safe_out                         true
% 3.64/1.00  --problem_path                          ""
% 3.64/1.00  --include_path                          ""
% 3.64/1.00  --clausifier                            res/vclausify_rel
% 3.64/1.00  --clausifier_options                    --mode clausify
% 3.64/1.00  --stdin                                 false
% 3.64/1.00  --stats_out                             all
% 3.64/1.00  
% 3.64/1.00  ------ General Options
% 3.64/1.00  
% 3.64/1.00  --fof                                   false
% 3.64/1.00  --time_out_real                         305.
% 3.64/1.00  --time_out_virtual                      -1.
% 3.64/1.00  --symbol_type_check                     false
% 3.64/1.00  --clausify_out                          false
% 3.64/1.00  --sig_cnt_out                           false
% 3.64/1.00  --trig_cnt_out                          false
% 3.64/1.00  --trig_cnt_out_tolerance                1.
% 3.64/1.00  --trig_cnt_out_sk_spl                   false
% 3.64/1.00  --abstr_cl_out                          false
% 3.64/1.00  
% 3.64/1.00  ------ Global Options
% 3.64/1.00  
% 3.64/1.00  --schedule                              default
% 3.64/1.00  --add_important_lit                     false
% 3.64/1.00  --prop_solver_per_cl                    1000
% 3.64/1.00  --min_unsat_core                        false
% 3.64/1.00  --soft_assumptions                      false
% 3.64/1.00  --soft_lemma_size                       3
% 3.64/1.00  --prop_impl_unit_size                   0
% 3.64/1.00  --prop_impl_unit                        []
% 3.64/1.00  --share_sel_clauses                     true
% 3.64/1.00  --reset_solvers                         false
% 3.64/1.00  --bc_imp_inh                            [conj_cone]
% 3.64/1.00  --conj_cone_tolerance                   3.
% 3.64/1.00  --extra_neg_conj                        none
% 3.64/1.00  --large_theory_mode                     true
% 3.64/1.00  --prolific_symb_bound                   200
% 3.64/1.00  --lt_threshold                          2000
% 3.64/1.00  --clause_weak_htbl                      true
% 3.64/1.00  --gc_record_bc_elim                     false
% 3.64/1.00  
% 3.64/1.00  ------ Preprocessing Options
% 3.64/1.00  
% 3.64/1.00  --preprocessing_flag                    true
% 3.64/1.00  --time_out_prep_mult                    0.1
% 3.64/1.00  --splitting_mode                        input
% 3.64/1.00  --splitting_grd                         true
% 3.64/1.00  --splitting_cvd                         false
% 3.64/1.00  --splitting_cvd_svl                     false
% 3.64/1.00  --splitting_nvd                         32
% 3.64/1.00  --sub_typing                            true
% 3.64/1.00  --prep_gs_sim                           true
% 3.64/1.00  --prep_unflatten                        true
% 3.64/1.00  --prep_res_sim                          true
% 3.64/1.00  --prep_upred                            true
% 3.64/1.00  --prep_sem_filter                       exhaustive
% 3.64/1.00  --prep_sem_filter_out                   false
% 3.64/1.00  --pred_elim                             true
% 3.64/1.00  --res_sim_input                         true
% 3.64/1.00  --eq_ax_congr_red                       true
% 3.64/1.00  --pure_diseq_elim                       true
% 3.64/1.00  --brand_transform                       false
% 3.64/1.00  --non_eq_to_eq                          false
% 3.64/1.00  --prep_def_merge                        true
% 3.64/1.00  --prep_def_merge_prop_impl              false
% 3.64/1.00  --prep_def_merge_mbd                    true
% 3.64/1.00  --prep_def_merge_tr_red                 false
% 3.64/1.00  --prep_def_merge_tr_cl                  false
% 3.64/1.00  --smt_preprocessing                     true
% 3.64/1.00  --smt_ac_axioms                         fast
% 3.64/1.00  --preprocessed_out                      false
% 3.64/1.00  --preprocessed_stats                    false
% 3.64/1.00  
% 3.64/1.00  ------ Abstraction refinement Options
% 3.64/1.00  
% 3.64/1.00  --abstr_ref                             []
% 3.64/1.00  --abstr_ref_prep                        false
% 3.64/1.00  --abstr_ref_until_sat                   false
% 3.64/1.00  --abstr_ref_sig_restrict                funpre
% 3.64/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.64/1.00  --abstr_ref_under                       []
% 3.64/1.00  
% 3.64/1.00  ------ SAT Options
% 3.64/1.00  
% 3.64/1.00  --sat_mode                              false
% 3.64/1.00  --sat_fm_restart_options                ""
% 3.64/1.00  --sat_gr_def                            false
% 3.64/1.00  --sat_epr_types                         true
% 3.64/1.00  --sat_non_cyclic_types                  false
% 3.64/1.00  --sat_finite_models                     false
% 3.64/1.00  --sat_fm_lemmas                         false
% 3.64/1.00  --sat_fm_prep                           false
% 3.64/1.00  --sat_fm_uc_incr                        true
% 3.64/1.00  --sat_out_model                         small
% 3.64/1.00  --sat_out_clauses                       false
% 3.64/1.00  
% 3.64/1.00  ------ QBF Options
% 3.64/1.00  
% 3.64/1.00  --qbf_mode                              false
% 3.64/1.00  --qbf_elim_univ                         false
% 3.64/1.00  --qbf_dom_inst                          none
% 3.64/1.00  --qbf_dom_pre_inst                      false
% 3.64/1.00  --qbf_sk_in                             false
% 3.64/1.00  --qbf_pred_elim                         true
% 3.64/1.00  --qbf_split                             512
% 3.64/1.00  
% 3.64/1.00  ------ BMC1 Options
% 3.64/1.00  
% 3.64/1.00  --bmc1_incremental                      false
% 3.64/1.00  --bmc1_axioms                           reachable_all
% 3.64/1.00  --bmc1_min_bound                        0
% 3.64/1.00  --bmc1_max_bound                        -1
% 3.64/1.00  --bmc1_max_bound_default                -1
% 3.64/1.00  --bmc1_symbol_reachability              true
% 3.64/1.00  --bmc1_property_lemmas                  false
% 3.64/1.00  --bmc1_k_induction                      false
% 3.64/1.00  --bmc1_non_equiv_states                 false
% 3.64/1.00  --bmc1_deadlock                         false
% 3.64/1.00  --bmc1_ucm                              false
% 3.64/1.00  --bmc1_add_unsat_core                   none
% 3.64/1.00  --bmc1_unsat_core_children              false
% 3.64/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.64/1.00  --bmc1_out_stat                         full
% 3.64/1.00  --bmc1_ground_init                      false
% 3.64/1.00  --bmc1_pre_inst_next_state              false
% 3.64/1.00  --bmc1_pre_inst_state                   false
% 3.64/1.00  --bmc1_pre_inst_reach_state             false
% 3.64/1.00  --bmc1_out_unsat_core                   false
% 3.64/1.00  --bmc1_aig_witness_out                  false
% 3.64/1.00  --bmc1_verbose                          false
% 3.64/1.00  --bmc1_dump_clauses_tptp                false
% 3.64/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.64/1.00  --bmc1_dump_file                        -
% 3.64/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.64/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.64/1.00  --bmc1_ucm_extend_mode                  1
% 3.64/1.00  --bmc1_ucm_init_mode                    2
% 3.64/1.00  --bmc1_ucm_cone_mode                    none
% 3.64/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.64/1.00  --bmc1_ucm_relax_model                  4
% 3.64/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.64/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.64/1.00  --bmc1_ucm_layered_model                none
% 3.64/1.00  --bmc1_ucm_max_lemma_size               10
% 3.64/1.00  
% 3.64/1.00  ------ AIG Options
% 3.64/1.00  
% 3.64/1.00  --aig_mode                              false
% 3.64/1.00  
% 3.64/1.00  ------ Instantiation Options
% 3.64/1.00  
% 3.64/1.00  --instantiation_flag                    true
% 3.64/1.00  --inst_sos_flag                         false
% 3.64/1.00  --inst_sos_phase                        true
% 3.64/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.64/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.64/1.00  --inst_lit_sel_side                     num_symb
% 3.64/1.00  --inst_solver_per_active                1400
% 3.64/1.00  --inst_solver_calls_frac                1.
% 3.64/1.00  --inst_passive_queue_type               priority_queues
% 3.64/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.64/1.00  --inst_passive_queues_freq              [25;2]
% 3.64/1.00  --inst_dismatching                      true
% 3.64/1.00  --inst_eager_unprocessed_to_passive     true
% 3.64/1.00  --inst_prop_sim_given                   true
% 3.64/1.00  --inst_prop_sim_new                     false
% 3.64/1.00  --inst_subs_new                         false
% 3.64/1.00  --inst_eq_res_simp                      false
% 3.64/1.00  --inst_subs_given                       false
% 3.64/1.00  --inst_orphan_elimination               true
% 3.64/1.00  --inst_learning_loop_flag               true
% 3.64/1.00  --inst_learning_start                   3000
% 3.64/1.00  --inst_learning_factor                  2
% 3.64/1.00  --inst_start_prop_sim_after_learn       3
% 3.64/1.00  --inst_sel_renew                        solver
% 3.64/1.00  --inst_lit_activity_flag                true
% 3.64/1.00  --inst_restr_to_given                   false
% 3.64/1.00  --inst_activity_threshold               500
% 3.64/1.00  --inst_out_proof                        true
% 3.64/1.00  
% 3.64/1.00  ------ Resolution Options
% 3.64/1.00  
% 3.64/1.00  --resolution_flag                       true
% 3.64/1.00  --res_lit_sel                           adaptive
% 3.64/1.00  --res_lit_sel_side                      none
% 3.64/1.00  --res_ordering                          kbo
% 3.64/1.00  --res_to_prop_solver                    active
% 3.64/1.00  --res_prop_simpl_new                    false
% 3.64/1.00  --res_prop_simpl_given                  true
% 3.64/1.00  --res_passive_queue_type                priority_queues
% 3.64/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.64/1.00  --res_passive_queues_freq               [15;5]
% 3.64/1.00  --res_forward_subs                      full
% 3.64/1.00  --res_backward_subs                     full
% 3.64/1.00  --res_forward_subs_resolution           true
% 3.64/1.00  --res_backward_subs_resolution          true
% 3.64/1.00  --res_orphan_elimination                true
% 3.64/1.00  --res_time_limit                        2.
% 3.64/1.00  --res_out_proof                         true
% 3.64/1.00  
% 3.64/1.00  ------ Superposition Options
% 3.64/1.00  
% 3.64/1.00  --superposition_flag                    true
% 3.64/1.00  --sup_passive_queue_type                priority_queues
% 3.64/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.64/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.64/1.00  --demod_completeness_check              fast
% 3.64/1.00  --demod_use_ground                      true
% 3.64/1.00  --sup_to_prop_solver                    passive
% 3.64/1.00  --sup_prop_simpl_new                    true
% 3.64/1.00  --sup_prop_simpl_given                  true
% 3.64/1.00  --sup_fun_splitting                     false
% 3.64/1.00  --sup_smt_interval                      50000
% 3.64/1.00  
% 3.64/1.00  ------ Superposition Simplification Setup
% 3.64/1.00  
% 3.64/1.00  --sup_indices_passive                   []
% 3.64/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.64/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.64/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.64/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.64/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.64/1.00  --sup_full_bw                           [BwDemod]
% 3.64/1.00  --sup_immed_triv                        [TrivRules]
% 3.64/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.64/1.00  --sup_immed_bw_main                     []
% 3.64/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.64/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.64/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.64/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.64/1.00  
% 3.64/1.00  ------ Combination Options
% 3.64/1.00  
% 3.64/1.00  --comb_res_mult                         3
% 3.64/1.00  --comb_sup_mult                         2
% 3.64/1.00  --comb_inst_mult                        10
% 3.64/1.00  
% 3.64/1.00  ------ Debug Options
% 3.64/1.00  
% 3.64/1.00  --dbg_backtrace                         false
% 3.64/1.00  --dbg_dump_prop_clauses                 false
% 3.64/1.00  --dbg_dump_prop_clauses_file            -
% 3.64/1.00  --dbg_out_stat                          false
% 3.64/1.00  ------ Parsing...
% 3.64/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.64/1.00  
% 3.64/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 3.64/1.00  
% 3.64/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.64/1.00  
% 3.64/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.64/1.00  ------ Proving...
% 3.64/1.00  ------ Problem Properties 
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  clauses                                 20
% 3.64/1.00  conjectures                             1
% 3.64/1.00  EPR                                     4
% 3.64/1.00  Horn                                    17
% 3.64/1.00  unary                                   6
% 3.64/1.00  binary                                  9
% 3.64/1.00  lits                                    39
% 3.64/1.00  lits eq                                 11
% 3.64/1.00  fd_pure                                 0
% 3.64/1.00  fd_pseudo                               0
% 3.64/1.00  fd_cond                                 0
% 3.64/1.00  fd_pseudo_cond                          1
% 3.64/1.00  AC symbols                              0
% 3.64/1.00  
% 3.64/1.00  ------ Schedule dynamic 5 is on 
% 3.64/1.00  
% 3.64/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  ------ 
% 3.64/1.00  Current options:
% 3.64/1.00  ------ 
% 3.64/1.00  
% 3.64/1.00  ------ Input Options
% 3.64/1.00  
% 3.64/1.00  --out_options                           all
% 3.64/1.00  --tptp_safe_out                         true
% 3.64/1.00  --problem_path                          ""
% 3.64/1.00  --include_path                          ""
% 3.64/1.00  --clausifier                            res/vclausify_rel
% 3.64/1.00  --clausifier_options                    --mode clausify
% 3.64/1.00  --stdin                                 false
% 3.64/1.00  --stats_out                             all
% 3.64/1.00  
% 3.64/1.00  ------ General Options
% 3.64/1.00  
% 3.64/1.00  --fof                                   false
% 3.64/1.00  --time_out_real                         305.
% 3.64/1.00  --time_out_virtual                      -1.
% 3.64/1.00  --symbol_type_check                     false
% 3.64/1.00  --clausify_out                          false
% 3.64/1.00  --sig_cnt_out                           false
% 3.64/1.00  --trig_cnt_out                          false
% 3.64/1.00  --trig_cnt_out_tolerance                1.
% 3.64/1.00  --trig_cnt_out_sk_spl                   false
% 3.64/1.00  --abstr_cl_out                          false
% 3.64/1.00  
% 3.64/1.00  ------ Global Options
% 3.64/1.00  
% 3.64/1.00  --schedule                              default
% 3.64/1.00  --add_important_lit                     false
% 3.64/1.00  --prop_solver_per_cl                    1000
% 3.64/1.00  --min_unsat_core                        false
% 3.64/1.00  --soft_assumptions                      false
% 3.64/1.00  --soft_lemma_size                       3
% 3.64/1.00  --prop_impl_unit_size                   0
% 3.64/1.00  --prop_impl_unit                        []
% 3.64/1.00  --share_sel_clauses                     true
% 3.64/1.00  --reset_solvers                         false
% 3.64/1.00  --bc_imp_inh                            [conj_cone]
% 3.64/1.00  --conj_cone_tolerance                   3.
% 3.64/1.00  --extra_neg_conj                        none
% 3.64/1.00  --large_theory_mode                     true
% 3.64/1.00  --prolific_symb_bound                   200
% 3.64/1.00  --lt_threshold                          2000
% 3.64/1.00  --clause_weak_htbl                      true
% 3.64/1.00  --gc_record_bc_elim                     false
% 3.64/1.00  
% 3.64/1.00  ------ Preprocessing Options
% 3.64/1.00  
% 3.64/1.00  --preprocessing_flag                    true
% 3.64/1.00  --time_out_prep_mult                    0.1
% 3.64/1.00  --splitting_mode                        input
% 3.64/1.00  --splitting_grd                         true
% 3.64/1.00  --splitting_cvd                         false
% 3.64/1.00  --splitting_cvd_svl                     false
% 3.64/1.00  --splitting_nvd                         32
% 3.64/1.00  --sub_typing                            true
% 3.64/1.00  --prep_gs_sim                           true
% 3.64/1.00  --prep_unflatten                        true
% 3.64/1.00  --prep_res_sim                          true
% 3.64/1.00  --prep_upred                            true
% 3.64/1.00  --prep_sem_filter                       exhaustive
% 3.64/1.00  --prep_sem_filter_out                   false
% 3.64/1.00  --pred_elim                             true
% 3.64/1.00  --res_sim_input                         true
% 3.64/1.00  --eq_ax_congr_red                       true
% 3.64/1.00  --pure_diseq_elim                       true
% 3.64/1.00  --brand_transform                       false
% 3.64/1.00  --non_eq_to_eq                          false
% 3.64/1.00  --prep_def_merge                        true
% 3.64/1.00  --prep_def_merge_prop_impl              false
% 3.64/1.00  --prep_def_merge_mbd                    true
% 3.64/1.00  --prep_def_merge_tr_red                 false
% 3.64/1.00  --prep_def_merge_tr_cl                  false
% 3.64/1.00  --smt_preprocessing                     true
% 3.64/1.00  --smt_ac_axioms                         fast
% 3.64/1.00  --preprocessed_out                      false
% 3.64/1.00  --preprocessed_stats                    false
% 3.64/1.00  
% 3.64/1.00  ------ Abstraction refinement Options
% 3.64/1.00  
% 3.64/1.00  --abstr_ref                             []
% 3.64/1.00  --abstr_ref_prep                        false
% 3.64/1.00  --abstr_ref_until_sat                   false
% 3.64/1.00  --abstr_ref_sig_restrict                funpre
% 3.64/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.64/1.00  --abstr_ref_under                       []
% 3.64/1.00  
% 3.64/1.00  ------ SAT Options
% 3.64/1.00  
% 3.64/1.00  --sat_mode                              false
% 3.64/1.00  --sat_fm_restart_options                ""
% 3.64/1.00  --sat_gr_def                            false
% 3.64/1.00  --sat_epr_types                         true
% 3.64/1.00  --sat_non_cyclic_types                  false
% 3.64/1.00  --sat_finite_models                     false
% 3.64/1.00  --sat_fm_lemmas                         false
% 3.64/1.00  --sat_fm_prep                           false
% 3.64/1.00  --sat_fm_uc_incr                        true
% 3.64/1.00  --sat_out_model                         small
% 3.64/1.00  --sat_out_clauses                       false
% 3.64/1.00  
% 3.64/1.00  ------ QBF Options
% 3.64/1.00  
% 3.64/1.00  --qbf_mode                              false
% 3.64/1.00  --qbf_elim_univ                         false
% 3.64/1.00  --qbf_dom_inst                          none
% 3.64/1.00  --qbf_dom_pre_inst                      false
% 3.64/1.00  --qbf_sk_in                             false
% 3.64/1.00  --qbf_pred_elim                         true
% 3.64/1.00  --qbf_split                             512
% 3.64/1.00  
% 3.64/1.00  ------ BMC1 Options
% 3.64/1.00  
% 3.64/1.00  --bmc1_incremental                      false
% 3.64/1.00  --bmc1_axioms                           reachable_all
% 3.64/1.00  --bmc1_min_bound                        0
% 3.64/1.00  --bmc1_max_bound                        -1
% 3.64/1.00  --bmc1_max_bound_default                -1
% 3.64/1.00  --bmc1_symbol_reachability              true
% 3.64/1.00  --bmc1_property_lemmas                  false
% 3.64/1.00  --bmc1_k_induction                      false
% 3.64/1.00  --bmc1_non_equiv_states                 false
% 3.64/1.00  --bmc1_deadlock                         false
% 3.64/1.00  --bmc1_ucm                              false
% 3.64/1.00  --bmc1_add_unsat_core                   none
% 3.64/1.00  --bmc1_unsat_core_children              false
% 3.64/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.64/1.00  --bmc1_out_stat                         full
% 3.64/1.00  --bmc1_ground_init                      false
% 3.64/1.00  --bmc1_pre_inst_next_state              false
% 3.64/1.00  --bmc1_pre_inst_state                   false
% 3.64/1.00  --bmc1_pre_inst_reach_state             false
% 3.64/1.00  --bmc1_out_unsat_core                   false
% 3.64/1.00  --bmc1_aig_witness_out                  false
% 3.64/1.00  --bmc1_verbose                          false
% 3.64/1.00  --bmc1_dump_clauses_tptp                false
% 3.64/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.64/1.00  --bmc1_dump_file                        -
% 3.64/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.64/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.64/1.00  --bmc1_ucm_extend_mode                  1
% 3.64/1.00  --bmc1_ucm_init_mode                    2
% 3.64/1.00  --bmc1_ucm_cone_mode                    none
% 3.64/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.64/1.00  --bmc1_ucm_relax_model                  4
% 3.64/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.64/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.64/1.00  --bmc1_ucm_layered_model                none
% 3.64/1.00  --bmc1_ucm_max_lemma_size               10
% 3.64/1.00  
% 3.64/1.00  ------ AIG Options
% 3.64/1.00  
% 3.64/1.00  --aig_mode                              false
% 3.64/1.00  
% 3.64/1.00  ------ Instantiation Options
% 3.64/1.00  
% 3.64/1.00  --instantiation_flag                    true
% 3.64/1.00  --inst_sos_flag                         false
% 3.64/1.00  --inst_sos_phase                        true
% 3.64/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.64/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.64/1.00  --inst_lit_sel_side                     none
% 3.64/1.00  --inst_solver_per_active                1400
% 3.64/1.00  --inst_solver_calls_frac                1.
% 3.64/1.00  --inst_passive_queue_type               priority_queues
% 3.64/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.64/1.00  --inst_passive_queues_freq              [25;2]
% 3.64/1.00  --inst_dismatching                      true
% 3.64/1.00  --inst_eager_unprocessed_to_passive     true
% 3.64/1.00  --inst_prop_sim_given                   true
% 3.64/1.00  --inst_prop_sim_new                     false
% 3.64/1.00  --inst_subs_new                         false
% 3.64/1.00  --inst_eq_res_simp                      false
% 3.64/1.00  --inst_subs_given                       false
% 3.64/1.00  --inst_orphan_elimination               true
% 3.64/1.00  --inst_learning_loop_flag               true
% 3.64/1.00  --inst_learning_start                   3000
% 3.64/1.00  --inst_learning_factor                  2
% 3.64/1.00  --inst_start_prop_sim_after_learn       3
% 3.64/1.00  --inst_sel_renew                        solver
% 3.64/1.00  --inst_lit_activity_flag                true
% 3.64/1.00  --inst_restr_to_given                   false
% 3.64/1.00  --inst_activity_threshold               500
% 3.64/1.00  --inst_out_proof                        true
% 3.64/1.00  
% 3.64/1.00  ------ Resolution Options
% 3.64/1.00  
% 3.64/1.00  --resolution_flag                       false
% 3.64/1.00  --res_lit_sel                           adaptive
% 3.64/1.00  --res_lit_sel_side                      none
% 3.64/1.00  --res_ordering                          kbo
% 3.64/1.00  --res_to_prop_solver                    active
% 3.64/1.00  --res_prop_simpl_new                    false
% 3.64/1.00  --res_prop_simpl_given                  true
% 3.64/1.00  --res_passive_queue_type                priority_queues
% 3.64/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.64/1.00  --res_passive_queues_freq               [15;5]
% 3.64/1.00  --res_forward_subs                      full
% 3.64/1.00  --res_backward_subs                     full
% 3.64/1.00  --res_forward_subs_resolution           true
% 3.64/1.00  --res_backward_subs_resolution          true
% 3.64/1.00  --res_orphan_elimination                true
% 3.64/1.00  --res_time_limit                        2.
% 3.64/1.00  --res_out_proof                         true
% 3.64/1.00  
% 3.64/1.00  ------ Superposition Options
% 3.64/1.00  
% 3.64/1.00  --superposition_flag                    true
% 3.64/1.00  --sup_passive_queue_type                priority_queues
% 3.64/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.64/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.64/1.00  --demod_completeness_check              fast
% 3.64/1.00  --demod_use_ground                      true
% 3.64/1.00  --sup_to_prop_solver                    passive
% 3.64/1.00  --sup_prop_simpl_new                    true
% 3.64/1.00  --sup_prop_simpl_given                  true
% 3.64/1.00  --sup_fun_splitting                     false
% 3.64/1.00  --sup_smt_interval                      50000
% 3.64/1.00  
% 3.64/1.00  ------ Superposition Simplification Setup
% 3.64/1.00  
% 3.64/1.00  --sup_indices_passive                   []
% 3.64/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.64/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.64/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.64/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.64/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.64/1.00  --sup_full_bw                           [BwDemod]
% 3.64/1.00  --sup_immed_triv                        [TrivRules]
% 3.64/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.64/1.00  --sup_immed_bw_main                     []
% 3.64/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.64/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.64/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.64/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.64/1.00  
% 3.64/1.00  ------ Combination Options
% 3.64/1.00  
% 3.64/1.00  --comb_res_mult                         3
% 3.64/1.00  --comb_sup_mult                         2
% 3.64/1.00  --comb_inst_mult                        10
% 3.64/1.00  
% 3.64/1.00  ------ Debug Options
% 3.64/1.00  
% 3.64/1.00  --dbg_backtrace                         false
% 3.64/1.00  --dbg_dump_prop_clauses                 false
% 3.64/1.00  --dbg_dump_prop_clauses_file            -
% 3.64/1.00  --dbg_out_stat                          false
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  ------ Proving...
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  % SZS status Theorem for theBenchmark.p
% 3.64/1.00  
% 3.64/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.64/1.00  
% 3.64/1.00  fof(f7,axiom,(
% 3.64/1.00    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f70,plain,(
% 3.64/1.00    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.64/1.00    inference(cnf_transformation,[],[f7])).
% 3.64/1.00  
% 3.64/1.00  fof(f6,axiom,(
% 3.64/1.00    ! [X0] : k2_subset_1(X0) = X0),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f69,plain,(
% 3.64/1.00    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 3.64/1.00    inference(cnf_transformation,[],[f6])).
% 3.64/1.00  
% 3.64/1.00  fof(f9,axiom,(
% 3.64/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f28,plain,(
% 3.64/1.00    ! [X0,X1,X2] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.64/1.00    inference(ennf_transformation,[],[f9])).
% 3.64/1.00  
% 3.64/1.00  fof(f72,plain,(
% 3.64/1.00    ( ! [X2,X0,X1] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.64/1.00    inference(cnf_transformation,[],[f28])).
% 3.64/1.00  
% 3.64/1.00  fof(f10,axiom,(
% 3.64/1.00    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f73,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.64/1.00    inference(cnf_transformation,[],[f10])).
% 3.64/1.00  
% 3.64/1.00  fof(f4,axiom,(
% 3.64/1.00    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f67,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f4])).
% 3.64/1.00  
% 3.64/1.00  fof(f5,axiom,(
% 3.64/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f68,plain,(
% 3.64/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f5])).
% 3.64/1.00  
% 3.64/1.00  fof(f92,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.64/1.00    inference(definition_unfolding,[],[f67,f68])).
% 3.64/1.00  
% 3.64/1.00  fof(f93,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) )),
% 3.64/1.00    inference(definition_unfolding,[],[f73,f92])).
% 3.64/1.00  
% 3.64/1.00  fof(f95,plain,(
% 3.64/1.00    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k1_setfam_1(k2_enumset1(X1,X1,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.64/1.00    inference(definition_unfolding,[],[f72,f93])).
% 3.64/1.00  
% 3.64/1.00  fof(f1,axiom,(
% 3.64/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f25,plain,(
% 3.64/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.64/1.00    inference(ennf_transformation,[],[f1])).
% 3.64/1.00  
% 3.64/1.00  fof(f47,plain,(
% 3.64/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.64/1.00    inference(nnf_transformation,[],[f25])).
% 3.64/1.00  
% 3.64/1.00  fof(f48,plain,(
% 3.64/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.64/1.00    inference(rectify,[],[f47])).
% 3.64/1.00  
% 3.64/1.00  fof(f49,plain,(
% 3.64/1.00    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 3.64/1.00    introduced(choice_axiom,[])).
% 3.64/1.00  
% 3.64/1.00  fof(f50,plain,(
% 3.64/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.64/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f48,f49])).
% 3.64/1.00  
% 3.64/1.00  fof(f61,plain,(
% 3.64/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f50])).
% 3.64/1.00  
% 3.64/1.00  fof(f22,conjecture,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => (v3_tops_1(X1,X0) <=> k2_tops_1(X0,X1) = X1))))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f23,negated_conjecture,(
% 3.64/1.00    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => (v3_tops_1(X1,X0) <=> k2_tops_1(X0,X1) = X1))))),
% 3.64/1.00    inference(negated_conjecture,[],[f22])).
% 3.64/1.00  
% 3.64/1.00  fof(f45,plain,(
% 3.64/1.00    ? [X0] : (? [X1] : (((v3_tops_1(X1,X0) <~> k2_tops_1(X0,X1) = X1) & v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f23])).
% 3.64/1.00  
% 3.64/1.00  fof(f46,plain,(
% 3.64/1.00    ? [X0] : (? [X1] : ((v3_tops_1(X1,X0) <~> k2_tops_1(X0,X1) = X1) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.64/1.00    inference(flattening,[],[f45])).
% 3.64/1.00  
% 3.64/1.00  fof(f55,plain,(
% 3.64/1.00    ? [X0] : (? [X1] : (((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0))) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.64/1.00    inference(nnf_transformation,[],[f46])).
% 3.64/1.00  
% 3.64/1.00  fof(f56,plain,(
% 3.64/1.00    ? [X0] : (? [X1] : ((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0)) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.64/1.00    inference(flattening,[],[f55])).
% 3.64/1.00  
% 3.64/1.00  fof(f58,plain,(
% 3.64/1.00    ( ! [X0] : (? [X1] : ((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0)) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => ((k2_tops_1(X0,sK2) != sK2 | ~v3_tops_1(sK2,X0)) & (k2_tops_1(X0,sK2) = sK2 | v3_tops_1(sK2,X0)) & v4_pre_topc(sK2,X0) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.64/1.00    introduced(choice_axiom,[])).
% 3.64/1.00  
% 3.64/1.00  fof(f57,plain,(
% 3.64/1.00    ? [X0] : (? [X1] : ((k2_tops_1(X0,X1) != X1 | ~v3_tops_1(X1,X0)) & (k2_tops_1(X0,X1) = X1 | v3_tops_1(X1,X0)) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : ((k2_tops_1(sK1,X1) != X1 | ~v3_tops_1(X1,sK1)) & (k2_tops_1(sK1,X1) = X1 | v3_tops_1(X1,sK1)) & v4_pre_topc(X1,sK1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_pre_topc(sK1))),
% 3.64/1.00    introduced(choice_axiom,[])).
% 3.64/1.00  
% 3.64/1.00  fof(f59,plain,(
% 3.64/1.00    ((k2_tops_1(sK1,sK2) != sK2 | ~v3_tops_1(sK2,sK1)) & (k2_tops_1(sK1,sK2) = sK2 | v3_tops_1(sK2,sK1)) & v4_pre_topc(sK2,sK1) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_pre_topc(sK1)),
% 3.64/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f56,f58,f57])).
% 3.64/1.00  
% 3.64/1.00  fof(f88,plain,(
% 3.64/1.00    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))),
% 3.64/1.00    inference(cnf_transformation,[],[f59])).
% 3.64/1.00  
% 3.64/1.00  fof(f15,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f35,plain,(
% 3.64/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f15])).
% 3.64/1.00  
% 3.64/1.00  fof(f78,plain,(
% 3.64/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f35])).
% 3.64/1.00  
% 3.64/1.00  fof(f14,axiom,(
% 3.64/1.00    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f34,plain,(
% 3.64/1.00    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f14])).
% 3.64/1.00  
% 3.64/1.00  fof(f77,plain,(
% 3.64/1.00    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f34])).
% 3.64/1.00  
% 3.64/1.00  fof(f87,plain,(
% 3.64/1.00    l1_pre_topc(sK1)),
% 3.64/1.00    inference(cnf_transformation,[],[f59])).
% 3.64/1.00  
% 3.64/1.00  fof(f12,axiom,(
% 3.64/1.00    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f31,plain,(
% 3.64/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 3.64/1.00    inference(ennf_transformation,[],[f12])).
% 3.64/1.00  
% 3.64/1.00  fof(f32,plain,(
% 3.64/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.64/1.00    inference(flattening,[],[f31])).
% 3.64/1.00  
% 3.64/1.00  fof(f75,plain,(
% 3.64/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f32])).
% 3.64/1.00  
% 3.64/1.00  fof(f11,axiom,(
% 3.64/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f29,plain,(
% 3.64/1.00    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 3.64/1.00    inference(ennf_transformation,[],[f11])).
% 3.64/1.00  
% 3.64/1.00  fof(f30,plain,(
% 3.64/1.00    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 3.64/1.00    inference(flattening,[],[f29])).
% 3.64/1.00  
% 3.64/1.00  fof(f74,plain,(
% 3.64/1.00    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f30])).
% 3.64/1.00  
% 3.64/1.00  fof(f13,axiom,(
% 3.64/1.00    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f33,plain,(
% 3.64/1.00    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.64/1.00    inference(ennf_transformation,[],[f13])).
% 3.64/1.00  
% 3.64/1.00  fof(f76,plain,(
% 3.64/1.00    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f33])).
% 3.64/1.00  
% 3.64/1.00  fof(f62,plain,(
% 3.64/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f50])).
% 3.64/1.00  
% 3.64/1.00  fof(f3,axiom,(
% 3.64/1.00    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f26,plain,(
% 3.64/1.00    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.64/1.00    inference(ennf_transformation,[],[f3])).
% 3.64/1.00  
% 3.64/1.00  fof(f66,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f26])).
% 3.64/1.00  
% 3.64/1.00  fof(f94,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = X0 | ~r1_tarski(X0,X1)) )),
% 3.64/1.00    inference(definition_unfolding,[],[f66,f93])).
% 3.64/1.00  
% 3.64/1.00  fof(f90,plain,(
% 3.64/1.00    k2_tops_1(sK1,sK2) = sK2 | v3_tops_1(sK2,sK1)),
% 3.64/1.00    inference(cnf_transformation,[],[f59])).
% 3.64/1.00  
% 3.64/1.00  fof(f20,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tops_1(X1,X0) => v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0))))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f41,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : ((v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0) | ~v3_tops_1(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f20])).
% 3.64/1.00  
% 3.64/1.00  fof(f42,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : (v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0) | ~v3_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(flattening,[],[f41])).
% 3.64/1.00  
% 3.64/1.00  fof(f85,plain,(
% 3.64/1.00    ( ! [X0,X1] : (v1_tops_1(k3_subset_1(u1_struct_0(X0),X1),X0) | ~v3_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f42])).
% 3.64/1.00  
% 3.64/1.00  fof(f18,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v1_tops_1(X1,X0) <=> k2_struct_0(X0) = k2_pre_topc(X0,X1))))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f39,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : ((v1_tops_1(X1,X0) <=> k2_struct_0(X0) = k2_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f18])).
% 3.64/1.00  
% 3.64/1.00  fof(f53,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : (((v1_tops_1(X1,X0) | k2_struct_0(X0) != k2_pre_topc(X0,X1)) & (k2_struct_0(X0) = k2_pre_topc(X0,X1) | ~v1_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(nnf_transformation,[],[f39])).
% 3.64/1.00  
% 3.64/1.00  fof(f81,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k2_struct_0(X0) = k2_pre_topc(X0,X1) | ~v1_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f53])).
% 3.64/1.00  
% 3.64/1.00  fof(f8,axiom,(
% 3.64/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f27,plain,(
% 3.64/1.00    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.64/1.00    inference(ennf_transformation,[],[f8])).
% 3.64/1.00  
% 3.64/1.00  fof(f71,plain,(
% 3.64/1.00    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.64/1.00    inference(cnf_transformation,[],[f27])).
% 3.64/1.00  
% 3.64/1.00  fof(f2,axiom,(
% 3.64/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f51,plain,(
% 3.64/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.64/1.00    inference(nnf_transformation,[],[f2])).
% 3.64/1.00  
% 3.64/1.00  fof(f52,plain,(
% 3.64/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.64/1.00    inference(flattening,[],[f51])).
% 3.64/1.00  
% 3.64/1.00  fof(f63,plain,(
% 3.64/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.64/1.00    inference(cnf_transformation,[],[f52])).
% 3.64/1.00  
% 3.64/1.00  fof(f97,plain,(
% 3.64/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.64/1.00    inference(equality_resolution,[],[f63])).
% 3.64/1.00  
% 3.64/1.00  fof(f65,plain,(
% 3.64/1.00    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f52])).
% 3.64/1.00  
% 3.64/1.00  fof(f19,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tops_1(X1,X0) <=> r1_tarski(X1,k2_tops_1(X0,X1)))))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f40,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : ((v2_tops_1(X1,X0) <=> r1_tarski(X1,k2_tops_1(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f19])).
% 3.64/1.00  
% 3.64/1.00  fof(f54,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : (((v2_tops_1(X1,X0) | ~r1_tarski(X1,k2_tops_1(X0,X1))) & (r1_tarski(X1,k2_tops_1(X0,X1)) | ~v2_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(nnf_transformation,[],[f40])).
% 3.64/1.00  
% 3.64/1.00  fof(f84,plain,(
% 3.64/1.00    ( ! [X0,X1] : (v2_tops_1(X1,X0) | ~r1_tarski(X1,k2_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f54])).
% 3.64/1.00  
% 3.64/1.00  fof(f21,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v4_pre_topc(X1,X0) & v2_tops_1(X1,X0)) => v3_tops_1(X1,X0))))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f43,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : ((v3_tops_1(X1,X0) | (~v4_pre_topc(X1,X0) | ~v2_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f21])).
% 3.64/1.00  
% 3.64/1.00  fof(f44,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : (v3_tops_1(X1,X0) | ~v4_pre_topc(X1,X0) | ~v2_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(flattening,[],[f43])).
% 3.64/1.00  
% 3.64/1.00  fof(f86,plain,(
% 3.64/1.00    ( ! [X0,X1] : (v3_tops_1(X1,X0) | ~v4_pre_topc(X1,X0) | ~v2_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f44])).
% 3.64/1.00  
% 3.64/1.00  fof(f89,plain,(
% 3.64/1.00    v4_pre_topc(sK2,sK1)),
% 3.64/1.00    inference(cnf_transformation,[],[f59])).
% 3.64/1.00  
% 3.64/1.00  fof(f17,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f38,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : (k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f17])).
% 3.64/1.00  
% 3.64/1.00  fof(f80,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f38])).
% 3.64/1.00  
% 3.64/1.00  fof(f16,axiom,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 3.64/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/1.00  
% 3.64/1.00  fof(f24,plain,(
% 3.64/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1)))),
% 3.64/1.00    inference(pure_predicate_removal,[],[f16])).
% 3.64/1.00  
% 3.64/1.00  fof(f36,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : ((k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(ennf_transformation,[],[f24])).
% 3.64/1.00  
% 3.64/1.00  fof(f37,plain,(
% 3.64/1.00    ! [X0] : (! [X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.64/1.00    inference(flattening,[],[f36])).
% 3.64/1.00  
% 3.64/1.00  fof(f79,plain,(
% 3.64/1.00    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.64/1.00    inference(cnf_transformation,[],[f37])).
% 3.64/1.00  
% 3.64/1.00  fof(f91,plain,(
% 3.64/1.00    k2_tops_1(sK1,sK2) != sK2 | ~v3_tops_1(sK2,sK1)),
% 3.64/1.00    inference(cnf_transformation,[],[f59])).
% 3.64/1.00  
% 3.64/1.00  cnf(c_8,plain,
% 3.64/1.00      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 3.64/1.00      inference(cnf_transformation,[],[f70]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1046,plain,
% 3.64/1.00      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_7,plain,
% 3.64/1.00      ( k2_subset_1(X0) = X0 ),
% 3.64/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1064,plain,
% 3.64/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.64/1.00      inference(light_normalisation,[status(thm)],[c_1046,c_7]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_10,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.64/1.00      | k1_setfam_1(k2_enumset1(X2,X2,X2,X0)) = k9_subset_1(X1,X2,X0) ),
% 3.64/1.00      inference(cnf_transformation,[],[f95]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1044,plain,
% 3.64/1.00      ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = k9_subset_1(X2,X0,X1)
% 3.64/1.00      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1993,plain,
% 3.64/1.00      ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = k9_subset_1(X1,X0,X1) ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_1064,c_1044]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1,plain,
% 3.64/1.00      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f61]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1051,plain,
% 3.64/1.00      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 3.64/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_27,negated_conjecture,
% 3.64/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.64/1.00      inference(cnf_transformation,[],[f88]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1040,plain,
% 3.64/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_15,plain,
% 3.64/1.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 3.64/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_14,plain,
% 3.64/1.00      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.64/1.00      inference(cnf_transformation,[],[f77]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_371,plain,
% 3.64/1.00      ( ~ l1_pre_topc(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.64/1.00      inference(resolution,[status(thm)],[c_15,c_14]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_28,negated_conjecture,
% 3.64/1.00      ( l1_pre_topc(sK1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_448,plain,
% 3.64/1.00      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_371,c_28]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_449,plain,
% 3.64/1.00      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_448]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1061,plain,
% 3.64/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_struct_0(sK1))) = iProver_top ),
% 3.64/1.00      inference(light_normalisation,[status(thm)],[c_1040,c_449]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_12,plain,
% 3.64/1.00      ( m1_subset_1(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.64/1.00      | ~ r2_hidden(X0,X2) ),
% 3.64/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1042,plain,
% 3.64/1.00      ( m1_subset_1(X0,X1) = iProver_top
% 3.64/1.00      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 3.64/1.00      | r2_hidden(X0,X2) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_2491,plain,
% 3.64/1.00      ( m1_subset_1(X0,k2_struct_0(sK1)) = iProver_top
% 3.64/1.00      | r2_hidden(X0,sK2) != iProver_top ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_1061,c_1042]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_11,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f74]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1043,plain,
% 3.64/1.00      ( m1_subset_1(X0,X1) != iProver_top
% 3.64/1.00      | r2_hidden(X0,X1) = iProver_top
% 3.64/1.00      | v1_xboole_0(X1) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_2692,plain,
% 3.64/1.00      ( r2_hidden(X0,k2_struct_0(sK1)) = iProver_top
% 3.64/1.00      | r2_hidden(X0,sK2) != iProver_top
% 3.64/1.00      | v1_xboole_0(k2_struct_0(sK1)) = iProver_top ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_2491,c_1043]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_13,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.64/1.00      | ~ r2_hidden(X2,X0)
% 3.64/1.00      | ~ v1_xboole_0(X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f76]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1041,plain,
% 3.64/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.64/1.00      | r2_hidden(X2,X0) != iProver_top
% 3.64/1.00      | v1_xboole_0(X1) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1864,plain,
% 3.64/1.00      ( r2_hidden(X0,sK2) != iProver_top
% 3.64/1.00      | v1_xboole_0(k2_struct_0(sK1)) != iProver_top ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_1061,c_1041]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_2817,plain,
% 3.64/1.00      ( r2_hidden(X0,sK2) != iProver_top
% 3.64/1.00      | r2_hidden(X0,k2_struct_0(sK1)) = iProver_top ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_2692,c_1864]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_2818,plain,
% 3.64/1.00      ( r2_hidden(X0,k2_struct_0(sK1)) = iProver_top
% 3.64/1.00      | r2_hidden(X0,sK2) != iProver_top ),
% 3.64/1.00      inference(renaming,[status(thm)],[c_2817]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_0,plain,
% 3.64/1.00      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f62]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1052,plain,
% 3.64/1.00      ( r2_hidden(sK0(X0,X1),X1) != iProver_top
% 3.64/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_2825,plain,
% 3.64/1.00      ( r2_hidden(sK0(X0,k2_struct_0(sK1)),sK2) != iProver_top
% 3.64/1.00      | r1_tarski(X0,k2_struct_0(sK1)) = iProver_top ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_2818,c_1052]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_2974,plain,
% 3.64/1.00      ( r1_tarski(sK2,k2_struct_0(sK1)) = iProver_top ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_1051,c_2825]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_6,plain,
% 3.64/1.00      ( ~ r1_tarski(X0,X1) | k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = X0 ),
% 3.64/1.00      inference(cnf_transformation,[],[f94]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1047,plain,
% 3.64/1.00      ( k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) = X0
% 3.64/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_3237,plain,
% 3.64/1.00      ( k1_setfam_1(k2_enumset1(sK2,sK2,sK2,k2_struct_0(sK1))) = sK2 ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_2974,c_1047]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_3347,plain,
% 3.64/1.00      ( k9_subset_1(k2_struct_0(sK1),sK2,k2_struct_0(sK1)) = sK2 ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_1993,c_3237]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_25,negated_conjecture,
% 3.64/1.00      ( v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) = sK2 ),
% 3.64/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_218,plain,
% 3.64/1.00      ( v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) = sK2 ),
% 3.64/1.00      inference(prop_impl,[status(thm)],[c_25]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_22,plain,
% 3.64/1.00      ( ~ v3_tops_1(X0,X1)
% 3.64/1.00      | v1_tops_1(k3_subset_1(u1_struct_0(X1),X0),X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_453,plain,
% 3.64/1.00      ( ~ v3_tops_1(X0,X1)
% 3.64/1.00      | v1_tops_1(k3_subset_1(u1_struct_0(X1),X0),X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | sK1 != X1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_22,c_28]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_454,plain,
% 3.64/1.00      ( ~ v3_tops_1(X0,sK1)
% 3.64/1.00      | v1_tops_1(k3_subset_1(u1_struct_0(sK1),X0),sK1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_453]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_19,plain,
% 3.64/1.00      ( ~ v1_tops_1(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1)
% 3.64/1.00      | k2_pre_topc(X1,X0) = k2_struct_0(X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_468,plain,
% 3.64/1.00      ( ~ v1_tops_1(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | k2_pre_topc(X1,X0) = k2_struct_0(X1)
% 3.64/1.00      | sK1 != X1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_19,c_28]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_469,plain,
% 3.64/1.00      ( ~ v1_tops_1(X0,sK1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k2_pre_topc(sK1,X0) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_468]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_527,plain,
% 3.64/1.00      ( ~ v3_tops_1(X0,sK1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k2_pre_topc(sK1,X1) = k2_struct_0(sK1)
% 3.64/1.00      | k3_subset_1(u1_struct_0(sK1),X0) != X1
% 3.64/1.00      | sK1 != sK1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_454,c_469]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_528,plain,
% 3.64/1.00      ( ~ v3_tops_1(X0,sK1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ m1_subset_1(k3_subset_1(u1_struct_0(sK1),X0),k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_527]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_9,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.64/1.00      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 3.64/1.00      inference(cnf_transformation,[],[f71]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_540,plain,
% 3.64/1.00      ( ~ v3_tops_1(X0,sK1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_528,c_9]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_575,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k2_tops_1(sK1,sK2) = sK2
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1)
% 3.64/1.00      | sK2 != X0
% 3.64/1.00      | sK1 != sK1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_218,c_540]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_576,plain,
% 3.64/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k2_tops_1(sK1,sK2) = sK2
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_575]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_578,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) = sK2
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_576,c_27]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1075,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) = sK2
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(light_normalisation,[status(thm)],[c_578,c_449]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_5,plain,
% 3.64/1.00      ( r1_tarski(X0,X0) ),
% 3.64/1.00      inference(cnf_transformation,[],[f97]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_87,plain,
% 3.64/1.00      ( r1_tarski(sK2,sK2) ),
% 3.64/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_86,plain,
% 3.64/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_88,plain,
% 3.64/1.00      ( r1_tarski(sK2,sK2) = iProver_top ),
% 3.64/1.00      inference(instantiation,[status(thm)],[c_86]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_3,plain,
% 3.64/1.00      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 3.64/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_91,plain,
% 3.64/1.00      ( ~ r1_tarski(sK2,sK2) | sK2 = sK2 ),
% 3.64/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_20,plain,
% 3.64/1.00      ( v2_tops_1(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ r1_tarski(X0,k2_tops_1(X1,X0))
% 3.64/1.00      | ~ l1_pre_topc(X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_23,plain,
% 3.64/1.00      ( v3_tops_1(X0,X1)
% 3.64/1.00      | ~ v2_tops_1(X0,X1)
% 3.64/1.00      | ~ v4_pre_topc(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_26,negated_conjecture,
% 3.64/1.00      ( v4_pre_topc(sK2,sK1) ),
% 3.64/1.00      inference(cnf_transformation,[],[f89]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_404,plain,
% 3.64/1.00      ( v3_tops_1(X0,X1)
% 3.64/1.00      | ~ v2_tops_1(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1)
% 3.64/1.00      | sK2 != X0
% 3.64/1.00      | sK1 != X1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_23,c_26]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_405,plain,
% 3.64/1.00      ( v3_tops_1(sK2,sK1)
% 3.64/1.00      | ~ v2_tops_1(sK2,sK1)
% 3.64/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ l1_pre_topc(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_404]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_407,plain,
% 3.64/1.00      ( v3_tops_1(sK2,sK1) | ~ v2_tops_1(sK2,sK1) ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_405,c_28,c_27]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_431,plain,
% 3.64/1.00      ( v3_tops_1(sK2,sK1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ r1_tarski(X0,k2_tops_1(X1,X0))
% 3.64/1.00      | ~ l1_pre_topc(X1)
% 3.64/1.00      | sK2 != X0
% 3.64/1.00      | sK1 != X1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_20,c_407]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_432,plain,
% 3.64/1.00      ( v3_tops_1(sK2,sK1)
% 3.64/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.64/1.00      | ~ l1_pre_topc(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_431]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_434,plain,
% 3.64/1.00      ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2)) | v3_tops_1(sK2,sK1) ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_432,c_28,c_27]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_435,plain,
% 3.64/1.00      ( v3_tops_1(sK2,sK1) | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2)) ),
% 3.64/1.00      inference(renaming,[status(thm)],[c_434]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_561,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0)) = k2_struct_0(sK1)
% 3.64/1.00      | sK2 != X0
% 3.64/1.00      | sK1 != sK1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_435,c_540]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_562,plain,
% 3.64/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_561]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_564,plain,
% 3.64/1.00      ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.64/1.00      | k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_562,c_27]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1037,plain,
% 3.64/1.00      ( k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),sK2)) = k2_struct_0(sK1)
% 3.64/1.00      | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_564]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1104,plain,
% 3.64/1.00      ( k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2)) = k2_struct_0(sK1)
% 3.64/1.00      | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
% 3.64/1.00      inference(light_normalisation,[status(thm)],[c_1037,c_449]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_734,plain,
% 3.64/1.00      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.64/1.00      theory(equality) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1195,plain,
% 3.64/1.00      ( ~ r1_tarski(X0,X1)
% 3.64/1.00      | r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.64/1.00      | k2_tops_1(sK1,sK2) != X1
% 3.64/1.00      | sK2 != X0 ),
% 3.64/1.00      inference(instantiation,[status(thm)],[c_734]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1196,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) != X0
% 3.64/1.00      | sK2 != X1
% 3.64/1.00      | r1_tarski(X1,X0) != iProver_top
% 3.64/1.00      | r1_tarski(sK2,k2_tops_1(sK1,sK2)) = iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_1195]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1198,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) != sK2
% 3.64/1.00      | sK2 != sK2
% 3.64/1.00      | r1_tarski(sK2,k2_tops_1(sK1,sK2)) = iProver_top
% 3.64/1.00      | r1_tarski(sK2,sK2) != iProver_top ),
% 3.64/1.00      inference(instantiation,[status(thm)],[c_1196]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1268,plain,
% 3.64/1.00      ( k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_1075,c_87,c_91,c_551,c_1197]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_17,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1)
% 3.64/1.00      | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0) ),
% 3.64/1.00      inference(cnf_transformation,[],[f80]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_498,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0)
% 3.64/1.00      | sK1 != X1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_28]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_499,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | k9_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0))) = k2_tops_1(sK1,X0) ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_498]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1039,plain,
% 3.64/1.00      ( k9_subset_1(u1_struct_0(sK1),k2_pre_topc(sK1,X0),k2_pre_topc(sK1,k3_subset_1(u1_struct_0(sK1),X0))) = k2_tops_1(sK1,X0)
% 3.64/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_499]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1131,plain,
% 3.64/1.00      ( k9_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,X0),k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),X0))) = k2_tops_1(sK1,X0)
% 3.64/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK1))) != iProver_top ),
% 3.64/1.00      inference(light_normalisation,[status(thm)],[c_1039,c_449]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1221,plain,
% 3.64/1.00      ( k9_subset_1(k2_struct_0(sK1),k2_pre_topc(sK1,sK2),k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2))) = k2_tops_1(sK1,sK2) ),
% 3.64/1.00      inference(superposition,[status(thm)],[c_1061,c_1131]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_16,plain,
% 3.64/1.00      ( ~ v4_pre_topc(X0,X1)
% 3.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1)
% 3.64/1.00      | k2_pre_topc(X1,X0) = X0 ),
% 3.64/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_418,plain,
% 3.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.64/1.00      | ~ l1_pre_topc(X1)
% 3.64/1.00      | k2_pre_topc(X1,X0) = X0
% 3.64/1.00      | sK2 != X0
% 3.64/1.00      | sK1 != X1 ),
% 3.64/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_26]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_419,plain,
% 3.64/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.64/1.00      | ~ l1_pre_topc(sK1)
% 3.64/1.00      | k2_pre_topc(sK1,sK2) = sK2 ),
% 3.64/1.00      inference(unflattening,[status(thm)],[c_418]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_421,plain,
% 3.64/1.00      ( k2_pre_topc(sK1,sK2) = sK2 ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_419,c_28,c_27]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1222,plain,
% 3.64/1.00      ( k9_subset_1(k2_struct_0(sK1),sK2,k2_pre_topc(sK1,k3_subset_1(k2_struct_0(sK1),sK2))) = k2_tops_1(sK1,sK2) ),
% 3.64/1.00      inference(light_normalisation,[status(thm)],[c_1221,c_421]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1271,plain,
% 3.64/1.00      ( k9_subset_1(k2_struct_0(sK1),sK2,k2_struct_0(sK1)) = k2_tops_1(sK1,sK2) ),
% 3.64/1.00      inference(demodulation,[status(thm)],[c_1268,c_1222]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_6216,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) = sK2 ),
% 3.64/1.00      inference(demodulation,[status(thm)],[c_3347,c_1271]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_24,negated_conjecture,
% 3.64/1.00      ( ~ v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) != sK2 ),
% 3.64/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_216,plain,
% 3.64/1.00      ( ~ v3_tops_1(sK2,sK1) | k2_tops_1(sK1,sK2) != sK2 ),
% 3.64/1.00      inference(prop_impl,[status(thm)],[c_24]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_551,plain,
% 3.64/1.00      ( ~ r1_tarski(sK2,k2_tops_1(sK1,sK2)) | k2_tops_1(sK1,sK2) != sK2 ),
% 3.64/1.00      inference(resolution,[status(thm)],[c_435,c_216]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1038,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) != sK2
% 3.64/1.00      | r1_tarski(sK2,k2_tops_1(sK1,sK2)) != iProver_top ),
% 3.64/1.00      inference(predicate_to_equality,[status(thm)],[c_551]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1197,plain,
% 3.64/1.00      ( r1_tarski(sK2,k2_tops_1(sK1,sK2))
% 3.64/1.00      | ~ r1_tarski(sK2,sK2)
% 3.64/1.00      | k2_tops_1(sK1,sK2) != sK2
% 3.64/1.00      | sK2 != sK2 ),
% 3.64/1.00      inference(instantiation,[status(thm)],[c_1195]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(c_1340,plain,
% 3.64/1.00      ( k2_tops_1(sK1,sK2) != sK2 ),
% 3.64/1.00      inference(global_propositional_subsumption,
% 3.64/1.00                [status(thm)],
% 3.64/1.00                [c_1038,c_87,c_91,c_551,c_1197]) ).
% 3.64/1.00  
% 3.64/1.00  cnf(contradiction,plain,
% 3.64/1.00      ( $false ),
% 3.64/1.00      inference(minisat,[status(thm)],[c_6216,c_1340]) ).
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.64/1.00  
% 3.64/1.00  ------                               Statistics
% 3.64/1.00  
% 3.64/1.00  ------ General
% 3.64/1.00  
% 3.64/1.00  abstr_ref_over_cycles:                  0
% 3.64/1.00  abstr_ref_under_cycles:                 0
% 3.64/1.00  gc_basic_clause_elim:                   0
% 3.64/1.00  forced_gc_time:                         0
% 3.64/1.00  parsing_time:                           0.01
% 3.64/1.00  unif_index_cands_time:                  0.
% 3.64/1.00  unif_index_add_time:                    0.
% 3.64/1.00  orderings_time:                         0.
% 3.64/1.00  out_proof_time:                         0.012
% 3.64/1.00  total_time:                             0.205
% 3.64/1.00  num_of_symbols:                         54
% 3.64/1.00  num_of_terms:                           5272
% 3.64/1.00  
% 3.64/1.00  ------ Preprocessing
% 3.64/1.00  
% 3.64/1.00  num_of_splits:                          0
% 3.64/1.00  num_of_split_atoms:                     0
% 3.64/1.00  num_of_reused_defs:                     0
% 3.64/1.00  num_eq_ax_congr_red:                    35
% 3.64/1.00  num_of_sem_filtered_clauses:            1
% 3.64/1.00  num_of_subtypes:                        0
% 3.64/1.00  monotx_restored_types:                  0
% 3.64/1.00  sat_num_of_epr_types:                   0
% 3.64/1.00  sat_num_of_non_cyclic_types:            0
% 3.64/1.00  sat_guarded_non_collapsed_types:        0
% 3.64/1.00  num_pure_diseq_elim:                    0
% 3.64/1.00  simp_replaced_by:                       0
% 3.64/1.00  res_preprocessed:                       115
% 3.64/1.00  prep_upred:                             0
% 3.64/1.00  prep_unflattend:                        14
% 3.64/1.00  smt_new_axioms:                         0
% 3.64/1.00  pred_elim_cands:                        4
% 3.64/1.00  pred_elim:                              6
% 3.64/1.00  pred_elim_cl:                           8
% 3.64/1.00  pred_elim_cycles:                       9
% 3.64/1.00  merged_defs:                            2
% 3.64/1.00  merged_defs_ncl:                        0
% 3.64/1.00  bin_hyper_res:                          2
% 3.64/1.00  prep_cycles:                            4
% 3.64/1.00  pred_elim_time:                         0.005
% 3.64/1.00  splitting_time:                         0.
% 3.64/1.00  sem_filter_time:                        0.
% 3.64/1.00  monotx_time:                            0.
% 3.64/1.00  subtype_inf_time:                       0.
% 3.64/1.00  
% 3.64/1.00  ------ Problem properties
% 3.64/1.00  
% 3.64/1.00  clauses:                                20
% 3.64/1.00  conjectures:                            1
% 3.64/1.00  epr:                                    4
% 3.64/1.00  horn:                                   17
% 3.64/1.00  ground:                                 6
% 3.64/1.00  unary:                                  6
% 3.64/1.00  binary:                                 9
% 3.64/1.00  lits:                                   39
% 3.64/1.00  lits_eq:                                11
% 3.64/1.00  fd_pure:                                0
% 3.64/1.00  fd_pseudo:                              0
% 3.64/1.00  fd_cond:                                0
% 3.64/1.00  fd_pseudo_cond:                         1
% 3.64/1.00  ac_symbols:                             0
% 3.64/1.00  
% 3.64/1.00  ------ Propositional Solver
% 3.64/1.00  
% 3.64/1.00  prop_solver_calls:                      29
% 3.64/1.00  prop_fast_solver_calls:                 748
% 3.64/1.00  smt_solver_calls:                       0
% 3.64/1.00  smt_fast_solver_calls:                  0
% 3.64/1.00  prop_num_of_clauses:                    2309
% 3.64/1.00  prop_preprocess_simplified:             5483
% 3.64/1.00  prop_fo_subsumed:                       11
% 3.64/1.00  prop_solver_time:                       0.
% 3.64/1.00  smt_solver_time:                        0.
% 3.64/1.00  smt_fast_solver_time:                   0.
% 3.64/1.00  prop_fast_solver_time:                  0.
% 3.64/1.00  prop_unsat_core_time:                   0.
% 3.64/1.00  
% 3.64/1.00  ------ QBF
% 3.64/1.00  
% 3.64/1.00  qbf_q_res:                              0
% 3.64/1.00  qbf_num_tautologies:                    0
% 3.64/1.00  qbf_prep_cycles:                        0
% 3.64/1.00  
% 3.64/1.00  ------ BMC1
% 3.64/1.00  
% 3.64/1.00  bmc1_current_bound:                     -1
% 3.64/1.00  bmc1_last_solved_bound:                 -1
% 3.64/1.00  bmc1_unsat_core_size:                   -1
% 3.64/1.00  bmc1_unsat_core_parents_size:           -1
% 3.64/1.00  bmc1_merge_next_fun:                    0
% 3.64/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.64/1.00  
% 3.64/1.00  ------ Instantiation
% 3.64/1.00  
% 3.64/1.00  inst_num_of_clauses:                    688
% 3.64/1.00  inst_num_in_passive:                    274
% 3.64/1.00  inst_num_in_active:                     314
% 3.64/1.00  inst_num_in_unprocessed:                100
% 3.64/1.00  inst_num_of_loops:                      430
% 3.64/1.00  inst_num_of_learning_restarts:          0
% 3.64/1.00  inst_num_moves_active_passive:          110
% 3.64/1.00  inst_lit_activity:                      0
% 3.64/1.00  inst_lit_activity_moves:                0
% 3.64/1.00  inst_num_tautologies:                   0
% 3.64/1.00  inst_num_prop_implied:                  0
% 3.64/1.00  inst_num_existing_simplified:           0
% 3.64/1.00  inst_num_eq_res_simplified:             0
% 3.64/1.00  inst_num_child_elim:                    0
% 3.64/1.00  inst_num_of_dismatching_blockings:      254
% 3.64/1.00  inst_num_of_non_proper_insts:           819
% 3.64/1.00  inst_num_of_duplicates:                 0
% 3.64/1.00  inst_inst_num_from_inst_to_res:         0
% 3.64/1.00  inst_dismatching_checking_time:         0.
% 3.64/1.00  
% 3.64/1.00  ------ Resolution
% 3.64/1.00  
% 3.64/1.00  res_num_of_clauses:                     0
% 3.64/1.00  res_num_in_passive:                     0
% 3.64/1.00  res_num_in_active:                      0
% 3.64/1.00  res_num_of_loops:                       119
% 3.64/1.00  res_forward_subset_subsumed:            73
% 3.64/1.00  res_backward_subset_subsumed:           4
% 3.64/1.00  res_forward_subsumed:                   0
% 3.64/1.00  res_backward_subsumed:                  0
% 3.64/1.00  res_forward_subsumption_resolution:     1
% 3.64/1.00  res_backward_subsumption_resolution:    0
% 3.64/1.00  res_clause_to_clause_subsumption:       501
% 3.64/1.00  res_orphan_elimination:                 0
% 3.64/1.00  res_tautology_del:                      55
% 3.64/1.00  res_num_eq_res_simplified:              0
% 3.64/1.00  res_num_sel_changes:                    0
% 3.64/1.00  res_moves_from_active_to_pass:          0
% 3.64/1.00  
% 3.64/1.00  ------ Superposition
% 3.64/1.00  
% 3.64/1.00  sup_time_total:                         0.
% 3.64/1.00  sup_time_generating:                    0.
% 3.64/1.00  sup_time_sim_full:                      0.
% 3.64/1.00  sup_time_sim_immed:                     0.
% 3.64/1.00  
% 3.64/1.00  sup_num_of_clauses:                     135
% 3.64/1.00  sup_num_in_active:                      81
% 3.64/1.00  sup_num_in_passive:                     54
% 3.64/1.00  sup_num_of_loops:                       85
% 3.64/1.00  sup_fw_superposition:                   79
% 3.64/1.00  sup_bw_superposition:                   96
% 3.64/1.00  sup_immediate_simplified:               25
% 3.64/1.00  sup_given_eliminated:                   0
% 3.64/1.00  comparisons_done:                       0
% 3.64/1.00  comparisons_avoided:                    7
% 3.64/1.00  
% 3.64/1.00  ------ Simplifications
% 3.64/1.00  
% 3.64/1.00  
% 3.64/1.00  sim_fw_subset_subsumed:                 16
% 3.64/1.00  sim_bw_subset_subsumed:                 1
% 3.64/1.00  sim_fw_subsumed:                        5
% 3.64/1.00  sim_bw_subsumed:                        0
% 3.64/1.00  sim_fw_subsumption_res:                 0
% 3.64/1.00  sim_bw_subsumption_res:                 0
% 3.64/1.00  sim_tautology_del:                      6
% 3.64/1.00  sim_eq_tautology_del:                   9
% 3.64/1.00  sim_eq_res_simp:                        0
% 3.64/1.00  sim_fw_demodulated:                     0
% 3.64/1.00  sim_bw_demodulated:                     3
% 3.64/1.00  sim_light_normalised:                   9
% 3.64/1.00  sim_joinable_taut:                      0
% 3.64/1.00  sim_joinable_simp:                      0
% 3.64/1.00  sim_ac_normalised:                      0
% 3.64/1.00  sim_smt_subsumption:                    0
% 3.64/1.00  
%------------------------------------------------------------------------------
