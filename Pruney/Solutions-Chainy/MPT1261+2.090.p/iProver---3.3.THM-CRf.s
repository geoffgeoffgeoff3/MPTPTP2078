%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:14:37 EST 2020

% Result     : Theorem 11.67s
% Output     : CNFRefutation 11.67s
% Verified   : 
% Statistics : Number of formulae       :  164 ( 916 expanded)
%              Number of clauses        :  101 ( 302 expanded)
%              Number of leaves         :   18 ( 202 expanded)
%              Depth                    :   24
%              Number of atoms          :  413 (3298 expanded)
%              Number of equality atoms :  186 (1128 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f18,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
          <=> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v4_pre_topc(X1,X0)
            <=> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) ) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v4_pre_topc(X1,X0)
          <~> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f34,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v4_pre_topc(X1,X0)
          <~> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f33])).

fof(f38,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1)
            | ~ v4_pre_topc(X1,X0) )
          & ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
            | v4_pre_topc(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1)
            | ~ v4_pre_topc(X1,X0) )
          & ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
            | v4_pre_topc(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f38])).

fof(f41,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1)
            | ~ v4_pre_topc(X1,X0) )
          & ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
            | v4_pre_topc(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ( k7_subset_1(u1_struct_0(X0),sK1,k1_tops_1(X0,sK1)) != k2_tops_1(X0,sK1)
          | ~ v4_pre_topc(sK1,X0) )
        & ( k7_subset_1(u1_struct_0(X0),sK1,k1_tops_1(X0,sK1)) = k2_tops_1(X0,sK1)
          | v4_pre_topc(sK1,X0) )
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1)
              | ~ v4_pre_topc(X1,X0) )
            & ( k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
              | v4_pre_topc(X1,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( ? [X1] :
          ( ( k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) != k2_tops_1(sK0,X1)
            | ~ v4_pre_topc(X1,sK0) )
          & ( k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) = k2_tops_1(sK0,X1)
            | v4_pre_topc(X1,sK0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
      | ~ v4_pre_topc(sK1,sK0) )
    & ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
      | v4_pre_topc(sK1,sK0) )
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f39,f41,f40])).

fof(f66,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f42])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f51,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f9,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f71,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f51,f53])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f70,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f44,f53,f53])).

fof(f12,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f72,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(definition_unfolding,[],[f56,f53])).

fof(f8,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f58,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f17,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k7_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k1_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k1_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f65,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f42])).

fof(f67,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | v4_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f42])).

fof(f14,axiom,(
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

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f59,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f21])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f24])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f15,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => r1_tarski(k2_tops_1(X0,X1),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_tops_1(X0,X1),X1)
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_tops_1(X0,X1),X1)
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f30])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_tops_1(X0,X1),X1)
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f68,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
    | ~ v4_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f42])).

fof(f60,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(X1,X0)
      | k2_pre_topc(X0,X1) != X1
      | ~ v2_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f64,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1225,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1226,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2524,plain,
    ( r1_tarski(sK1,u1_struct_0(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1225,c_1226])).

cnf(c_8,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1229,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_12,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1234,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0)) ),
    inference(light_normalisation,[status(thm)],[c_2,c_12])).

cnf(c_1236,plain,
    ( k1_setfam_1(k2_tarski(X0,X1)) = X1
    | r1_tarski(X1,X0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1229,c_1234])).

cnf(c_4875,plain,
    ( k1_setfam_1(k2_tarski(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_2524,c_1236])).

cnf(c_1764,plain,
    ( k1_setfam_1(k2_tarski(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) ),
    inference(superposition,[status(thm)],[c_12,c_12])).

cnf(c_4886,plain,
    ( k1_setfam_1(k2_tarski(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1))) = k4_xboole_0(u1_struct_0(sK0),sK1) ),
    inference(superposition,[status(thm)],[c_4875,c_1764])).

cnf(c_3315,plain,
    ( k4_xboole_0(X0,k1_setfam_1(k2_tarski(X0,k4_xboole_0(X0,X1)))) = k1_setfam_1(k2_tarski(X0,k1_setfam_1(k2_tarski(X0,X1)))) ),
    inference(superposition,[status(thm)],[c_1764,c_12])).

cnf(c_5315,plain,
    ( k1_setfam_1(k2_tarski(u1_struct_0(sK0),k1_setfam_1(k2_tarski(u1_struct_0(sK0),sK1)))) = k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)) ),
    inference(superposition,[status(thm)],[c_4886,c_3315])).

cnf(c_5333,plain,
    ( k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_5315,c_4875])).

cnf(c_9,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1228,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k7_subset_1(X1,X0,X2) = k4_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_13,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_170,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_13])).

cnf(c_171,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_170])).

cnf(c_213,plain,
    ( ~ r1_tarski(X0,X1)
    | k7_subset_1(X1,X0,X2) = k4_xboole_0(X0,X2) ),
    inference(bin_hyper_res,[status(thm)],[c_11,c_171])).

cnf(c_1224,plain,
    ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_213])).

cnf(c_24377,plain,
    ( k7_subset_1(X0,k4_xboole_0(X0,X1),X2) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(superposition,[status(thm)],[c_1228,c_1224])).

cnf(c_1227,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k7_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k1_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_23,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_324,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k7_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k1_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_23])).

cnf(c_325,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k1_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_324])).

cnf(c_1223,plain,
    ( k7_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k1_tops_1(sK0,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_325])).

cnf(c_2528,plain,
    ( k7_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k1_tops_1(sK0,X0)
    | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1227,c_1223])).

cnf(c_2762,plain,
    ( k7_subset_1(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),X0),k2_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0)) ),
    inference(superposition,[status(thm)],[c_1228,c_2528])).

cnf(c_28140,plain,
    ( k4_xboole_0(k4_xboole_0(u1_struct_0(sK0),X0),k2_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0)) ),
    inference(superposition,[status(thm)],[c_24377,c_2762])).

cnf(c_47147,plain,
    ( k1_setfam_1(k2_tarski(k4_xboole_0(u1_struct_0(sK0),X0),k2_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0)))) = k4_xboole_0(k4_xboole_0(u1_struct_0(sK0),X0),k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0))) ),
    inference(superposition,[status(thm)],[c_28140,c_12])).

cnf(c_47730,plain,
    ( k4_xboole_0(k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)),k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)))) = k1_setfam_1(k2_tarski(sK1,k2_tops_1(sK0,sK1))) ),
    inference(superposition,[status(thm)],[c_5333,c_47147])).

cnf(c_24378,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,X0) = k4_xboole_0(sK1,X0) ),
    inference(superposition,[status(thm)],[c_2524,c_1224])).

cnf(c_21,negated_conjecture,
    ( v4_pre_topc(sK1,sK0)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_174,plain,
    ( v4_pre_topc(sK1,sK0)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(prop_impl,[status(thm)],[c_21])).

cnf(c_16,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_363,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_pre_topc(X1,X0) = X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_23])).

cnf(c_364,plain,
    ( ~ v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_363])).

cnf(c_408,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,X0) = X0
    | sK1 != X0
    | sK0 != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_174,c_364])).

cnf(c_409,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) = sK1 ),
    inference(unflattening,[status(thm)],[c_408])).

cnf(c_411,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_409,c_22])).

cnf(c_646,plain,
    ( k2_pre_topc(sK0,sK1) = sK1
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(prop_impl,[status(thm)],[c_411])).

cnf(c_647,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) = sK1 ),
    inference(renaming,[status(thm)],[c_646])).

cnf(c_24795,plain,
    ( k2_pre_topc(sK0,sK1) = sK1
    | k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_24378,c_647])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X2)
    | r1_tarski(X0,X2) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1230,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X2) != iProver_top
    | r1_tarski(X0,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4123,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k4_xboole_0(X0,X2),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1228,c_1230])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | k4_subset_1(X1,X2,X0) = k2_xboole_0(X2,X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_212,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X2,X1)
    | k4_subset_1(X1,X0,X2) = k2_xboole_0(X0,X2) ),
    inference(bin_hyper_res,[status(thm)],[c_10,c_171])).

cnf(c_642,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_13])).

cnf(c_643,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_642])).

cnf(c_680,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X1)
    | k4_subset_1(X1,X0,X2) = k2_xboole_0(X0,X2) ),
    inference(bin_hyper_res,[status(thm)],[c_212,c_643])).

cnf(c_1220,plain,
    ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X2,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_680])).

cnf(c_7229,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,X0) = k2_xboole_0(sK1,X0)
    | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2524,c_1220])).

cnf(c_9398,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k4_xboole_0(X0,X1)) = k2_xboole_0(sK1,k4_xboole_0(X0,X1))
    | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4123,c_7229])).

cnf(c_9422,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k4_xboole_0(sK1,X0)) = k2_xboole_0(sK1,k4_xboole_0(sK1,X0)) ),
    inference(superposition,[status(thm)],[c_2524,c_9398])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1231,plain,
    ( k2_xboole_0(X0,X1) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2226,plain,
    ( k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
    inference(superposition,[status(thm)],[c_1228,c_1231])).

cnf(c_1,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_2293,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
    inference(superposition,[status(thm)],[c_2226,c_1])).

cnf(c_9426,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k4_xboole_0(sK1,X0)) = sK1 ),
    inference(demodulation,[status(thm)],[c_9422,c_2293])).

cnf(c_35495,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) = sK1
    | k2_pre_topc(sK0,sK1) = sK1 ),
    inference(superposition,[status(thm)],[c_24795,c_9426])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_351,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_23])).

cnf(c_352,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k2_pre_topc(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_351])).

cnf(c_1222,plain,
    ( k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k2_pre_topc(sK0,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_352])).

cnf(c_1328,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) = k2_pre_topc(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_1225,c_1222])).

cnf(c_35513,plain,
    ( k2_pre_topc(sK0,sK1) = sK1 ),
    inference(demodulation,[status(thm)],[c_35495,c_1328])).

cnf(c_18,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(k2_tops_1(X1,X0),X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_336,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(k2_tops_1(X1,X0),X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_23])).

cnf(c_337,plain,
    ( ~ v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(k2_tops_1(sK0,X0),X0) ),
    inference(unflattening,[status(thm)],[c_336])).

cnf(c_419,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(k2_tops_1(sK0,X0),X0)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | sK1 != X0
    | sK0 != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_174,c_337])).

cnf(c_420,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(k2_tops_1(sK0,sK1),sK1)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(unflattening,[status(thm)],[c_419])).

cnf(c_422,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_420,c_22])).

cnf(c_20,negated_conjecture,
    ( ~ v4_pre_topc(sK1,sK0)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_172,plain,
    ( ~ v4_pre_topc(sK1,sK0)
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
    inference(prop_impl,[status(thm)],[c_20])).

cnf(c_15,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | k2_pre_topc(X1,X0) != X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_24,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_299,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_24])).

cnf(c_300,plain,
    ( v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | k2_pre_topc(sK0,X0) != X0 ),
    inference(unflattening,[status(thm)],[c_299])).

cnf(c_304,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v4_pre_topc(X0,sK0)
    | k2_pre_topc(sK0,X0) != X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_300,c_23])).

cnf(c_305,plain,
    ( v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,X0) != X0 ),
    inference(renaming,[status(thm)],[c_304])).

cnf(c_433,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,X0) != X0
    | sK1 != X0
    | sK0 != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_172,c_305])).

cnf(c_434,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) != sK1 ),
    inference(unflattening,[status(thm)],[c_433])).

cnf(c_436,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_434,c_22])).

cnf(c_644,plain,
    ( k2_pre_topc(sK0,sK1) != sK1
    | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
    inference(prop_impl,[status(thm)],[c_436])).

cnf(c_645,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) != sK1 ),
    inference(renaming,[status(thm)],[c_644])).

cnf(c_682,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1)
    | k2_pre_topc(sK0,sK1) != sK1 ),
    inference(bin_hyper_res,[status(thm)],[c_422,c_645])).

cnf(c_1219,plain,
    ( k2_pre_topc(sK0,sK1) != sK1
    | r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_682])).

cnf(c_35515,plain,
    ( sK1 != sK1
    | r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
    inference(demodulation,[status(thm)],[c_35513,c_1219])).

cnf(c_35517,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_35515])).

cnf(c_35874,plain,
    ( k1_setfam_1(k2_tarski(sK1,k2_tops_1(sK0,sK1))) = k2_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_35517,c_1236])).

cnf(c_47816,plain,
    ( k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(light_normalisation,[status(thm)],[c_47730,c_5333,c_35874])).

cnf(c_24726,plain,
    ( k2_pre_topc(sK0,sK1) != sK1
    | k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_24378,c_645])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_47816,c_35513,c_24726])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n006.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 14:42:07 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 11.67/1.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 11.67/1.98  
% 11.67/1.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 11.67/1.98  
% 11.67/1.98  ------  iProver source info
% 11.67/1.98  
% 11.67/1.98  git: date: 2020-06-30 10:37:57 +0100
% 11.67/1.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 11.67/1.98  git: non_committed_changes: false
% 11.67/1.98  git: last_make_outside_of_git: false
% 11.67/1.98  
% 11.67/1.98  ------ 
% 11.67/1.98  
% 11.67/1.98  ------ Input Options
% 11.67/1.98  
% 11.67/1.98  --out_options                           all
% 11.67/1.98  --tptp_safe_out                         true
% 11.67/1.98  --problem_path                          ""
% 11.67/1.98  --include_path                          ""
% 11.67/1.98  --clausifier                            res/vclausify_rel
% 11.67/1.98  --clausifier_options                    ""
% 11.67/1.98  --stdin                                 false
% 11.67/1.98  --stats_out                             all
% 11.67/1.98  
% 11.67/1.98  ------ General Options
% 11.67/1.98  
% 11.67/1.98  --fof                                   false
% 11.67/1.98  --time_out_real                         305.
% 11.67/1.98  --time_out_virtual                      -1.
% 11.67/1.98  --symbol_type_check                     false
% 11.67/1.98  --clausify_out                          false
% 11.67/1.98  --sig_cnt_out                           false
% 11.67/1.98  --trig_cnt_out                          false
% 11.67/1.98  --trig_cnt_out_tolerance                1.
% 11.67/1.98  --trig_cnt_out_sk_spl                   false
% 11.67/1.98  --abstr_cl_out                          false
% 11.67/1.98  
% 11.67/1.98  ------ Global Options
% 11.67/1.98  
% 11.67/1.98  --schedule                              default
% 11.67/1.98  --add_important_lit                     false
% 11.67/1.98  --prop_solver_per_cl                    1000
% 11.67/1.98  --min_unsat_core                        false
% 11.67/1.98  --soft_assumptions                      false
% 11.67/1.98  --soft_lemma_size                       3
% 11.67/1.98  --prop_impl_unit_size                   0
% 11.67/1.98  --prop_impl_unit                        []
% 11.67/1.98  --share_sel_clauses                     true
% 11.67/1.98  --reset_solvers                         false
% 11.67/1.98  --bc_imp_inh                            [conj_cone]
% 11.67/1.98  --conj_cone_tolerance                   3.
% 11.67/1.98  --extra_neg_conj                        none
% 11.67/1.98  --large_theory_mode                     true
% 11.67/1.98  --prolific_symb_bound                   200
% 11.67/1.98  --lt_threshold                          2000
% 11.67/1.98  --clause_weak_htbl                      true
% 11.67/1.98  --gc_record_bc_elim                     false
% 11.67/1.98  
% 11.67/1.98  ------ Preprocessing Options
% 11.67/1.98  
% 11.67/1.98  --preprocessing_flag                    true
% 11.67/1.98  --time_out_prep_mult                    0.1
% 11.67/1.98  --splitting_mode                        input
% 11.67/1.98  --splitting_grd                         true
% 11.67/1.98  --splitting_cvd                         false
% 11.67/1.98  --splitting_cvd_svl                     false
% 11.67/1.98  --splitting_nvd                         32
% 11.67/1.98  --sub_typing                            true
% 11.67/1.98  --prep_gs_sim                           true
% 11.67/1.98  --prep_unflatten                        true
% 11.67/1.98  --prep_res_sim                          true
% 11.67/1.98  --prep_upred                            true
% 11.67/1.98  --prep_sem_filter                       exhaustive
% 11.67/1.98  --prep_sem_filter_out                   false
% 11.67/1.98  --pred_elim                             true
% 11.67/1.98  --res_sim_input                         true
% 11.67/1.98  --eq_ax_congr_red                       true
% 11.67/1.98  --pure_diseq_elim                       true
% 11.67/1.98  --brand_transform                       false
% 11.67/1.98  --non_eq_to_eq                          false
% 11.67/1.98  --prep_def_merge                        true
% 11.67/1.98  --prep_def_merge_prop_impl              false
% 11.67/1.98  --prep_def_merge_mbd                    true
% 11.67/1.98  --prep_def_merge_tr_red                 false
% 11.67/1.98  --prep_def_merge_tr_cl                  false
% 11.67/1.98  --smt_preprocessing                     true
% 11.67/1.98  --smt_ac_axioms                         fast
% 11.67/1.98  --preprocessed_out                      false
% 11.67/1.98  --preprocessed_stats                    false
% 11.67/1.98  
% 11.67/1.98  ------ Abstraction refinement Options
% 11.67/1.98  
% 11.67/1.98  --abstr_ref                             []
% 11.67/1.98  --abstr_ref_prep                        false
% 11.67/1.98  --abstr_ref_until_sat                   false
% 11.67/1.98  --abstr_ref_sig_restrict                funpre
% 11.67/1.98  --abstr_ref_af_restrict_to_split_sk     false
% 11.67/1.98  --abstr_ref_under                       []
% 11.67/1.98  
% 11.67/1.98  ------ SAT Options
% 11.67/1.98  
% 11.67/1.98  --sat_mode                              false
% 11.67/1.98  --sat_fm_restart_options                ""
% 11.67/1.98  --sat_gr_def                            false
% 11.67/1.98  --sat_epr_types                         true
% 11.67/1.98  --sat_non_cyclic_types                  false
% 11.67/1.98  --sat_finite_models                     false
% 11.67/1.98  --sat_fm_lemmas                         false
% 11.67/1.98  --sat_fm_prep                           false
% 11.67/1.98  --sat_fm_uc_incr                        true
% 11.67/1.98  --sat_out_model                         small
% 11.67/1.98  --sat_out_clauses                       false
% 11.67/1.98  
% 11.67/1.98  ------ QBF Options
% 11.67/1.98  
% 11.67/1.98  --qbf_mode                              false
% 11.67/1.98  --qbf_elim_univ                         false
% 11.67/1.98  --qbf_dom_inst                          none
% 11.67/1.98  --qbf_dom_pre_inst                      false
% 11.67/1.98  --qbf_sk_in                             false
% 11.67/1.98  --qbf_pred_elim                         true
% 11.67/1.98  --qbf_split                             512
% 11.67/1.98  
% 11.67/1.98  ------ BMC1 Options
% 11.67/1.98  
% 11.67/1.98  --bmc1_incremental                      false
% 11.67/1.98  --bmc1_axioms                           reachable_all
% 11.67/1.98  --bmc1_min_bound                        0
% 11.67/1.98  --bmc1_max_bound                        -1
% 11.67/1.98  --bmc1_max_bound_default                -1
% 11.67/1.98  --bmc1_symbol_reachability              true
% 11.67/1.98  --bmc1_property_lemmas                  false
% 11.67/1.98  --bmc1_k_induction                      false
% 11.67/1.98  --bmc1_non_equiv_states                 false
% 11.67/1.98  --bmc1_deadlock                         false
% 11.67/1.98  --bmc1_ucm                              false
% 11.67/1.98  --bmc1_add_unsat_core                   none
% 11.67/1.98  --bmc1_unsat_core_children              false
% 11.67/1.98  --bmc1_unsat_core_extrapolate_axioms    false
% 11.67/1.98  --bmc1_out_stat                         full
% 11.67/1.98  --bmc1_ground_init                      false
% 11.67/1.98  --bmc1_pre_inst_next_state              false
% 11.67/1.98  --bmc1_pre_inst_state                   false
% 11.67/1.98  --bmc1_pre_inst_reach_state             false
% 11.67/1.98  --bmc1_out_unsat_core                   false
% 11.67/1.98  --bmc1_aig_witness_out                  false
% 11.67/1.98  --bmc1_verbose                          false
% 11.67/1.98  --bmc1_dump_clauses_tptp                false
% 11.67/1.98  --bmc1_dump_unsat_core_tptp             false
% 11.67/1.98  --bmc1_dump_file                        -
% 11.67/1.98  --bmc1_ucm_expand_uc_limit              128
% 11.67/1.98  --bmc1_ucm_n_expand_iterations          6
% 11.67/1.98  --bmc1_ucm_extend_mode                  1
% 11.67/1.98  --bmc1_ucm_init_mode                    2
% 11.67/1.98  --bmc1_ucm_cone_mode                    none
% 11.67/1.98  --bmc1_ucm_reduced_relation_type        0
% 11.67/1.98  --bmc1_ucm_relax_model                  4
% 11.67/1.98  --bmc1_ucm_full_tr_after_sat            true
% 11.67/1.98  --bmc1_ucm_expand_neg_assumptions       false
% 11.67/1.98  --bmc1_ucm_layered_model                none
% 11.67/1.98  --bmc1_ucm_max_lemma_size               10
% 11.67/1.98  
% 11.67/1.98  ------ AIG Options
% 11.67/1.98  
% 11.67/1.98  --aig_mode                              false
% 11.67/1.98  
% 11.67/1.98  ------ Instantiation Options
% 11.67/1.98  
% 11.67/1.98  --instantiation_flag                    true
% 11.67/1.98  --inst_sos_flag                         true
% 11.67/1.98  --inst_sos_phase                        true
% 11.67/1.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.67/1.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.67/1.98  --inst_lit_sel_side                     num_symb
% 11.67/1.98  --inst_solver_per_active                1400
% 11.67/1.98  --inst_solver_calls_frac                1.
% 11.67/1.98  --inst_passive_queue_type               priority_queues
% 11.67/1.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.67/1.98  --inst_passive_queues_freq              [25;2]
% 11.67/1.98  --inst_dismatching                      true
% 11.67/1.98  --inst_eager_unprocessed_to_passive     true
% 11.67/1.98  --inst_prop_sim_given                   true
% 11.67/1.98  --inst_prop_sim_new                     false
% 11.67/1.98  --inst_subs_new                         false
% 11.67/1.98  --inst_eq_res_simp                      false
% 11.67/1.98  --inst_subs_given                       false
% 11.67/1.98  --inst_orphan_elimination               true
% 11.67/1.98  --inst_learning_loop_flag               true
% 11.67/1.98  --inst_learning_start                   3000
% 11.67/1.98  --inst_learning_factor                  2
% 11.67/1.98  --inst_start_prop_sim_after_learn       3
% 11.67/1.98  --inst_sel_renew                        solver
% 11.67/1.98  --inst_lit_activity_flag                true
% 11.67/1.98  --inst_restr_to_given                   false
% 11.67/1.98  --inst_activity_threshold               500
% 11.67/1.98  --inst_out_proof                        true
% 11.67/1.98  
% 11.67/1.98  ------ Resolution Options
% 11.67/1.98  
% 11.67/1.98  --resolution_flag                       true
% 11.67/1.98  --res_lit_sel                           adaptive
% 11.67/1.98  --res_lit_sel_side                      none
% 11.67/1.98  --res_ordering                          kbo
% 11.67/1.98  --res_to_prop_solver                    active
% 11.67/1.98  --res_prop_simpl_new                    false
% 11.67/1.98  --res_prop_simpl_given                  true
% 11.67/1.98  --res_passive_queue_type                priority_queues
% 11.67/1.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.67/1.98  --res_passive_queues_freq               [15;5]
% 11.67/1.98  --res_forward_subs                      full
% 11.67/1.98  --res_backward_subs                     full
% 11.67/1.98  --res_forward_subs_resolution           true
% 11.67/1.98  --res_backward_subs_resolution          true
% 11.67/1.98  --res_orphan_elimination                true
% 11.67/1.98  --res_time_limit                        2.
% 11.67/1.98  --res_out_proof                         true
% 11.67/1.98  
% 11.67/1.98  ------ Superposition Options
% 11.67/1.98  
% 11.67/1.98  --superposition_flag                    true
% 11.67/1.98  --sup_passive_queue_type                priority_queues
% 11.67/1.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.67/1.98  --sup_passive_queues_freq               [8;1;4]
% 11.67/1.98  --demod_completeness_check              fast
% 11.67/1.98  --demod_use_ground                      true
% 11.67/1.98  --sup_to_prop_solver                    passive
% 11.67/1.98  --sup_prop_simpl_new                    true
% 11.67/1.98  --sup_prop_simpl_given                  true
% 11.67/1.98  --sup_fun_splitting                     true
% 11.67/1.98  --sup_smt_interval                      50000
% 11.67/1.98  
% 11.67/1.98  ------ Superposition Simplification Setup
% 11.67/1.98  
% 11.67/1.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 11.67/1.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 11.67/1.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 11.67/1.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 11.67/1.98  --sup_full_triv                         [TrivRules;PropSubs]
% 11.67/1.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 11.67/1.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 11.67/1.98  --sup_immed_triv                        [TrivRules]
% 11.67/1.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.67/1.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.67/1.98  --sup_immed_bw_main                     []
% 11.67/1.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 11.67/1.98  --sup_input_triv                        [Unflattening;TrivRules]
% 11.67/1.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.67/1.98  --sup_input_bw                          []
% 11.67/1.98  
% 11.67/1.98  ------ Combination Options
% 11.67/1.98  
% 11.67/1.98  --comb_res_mult                         3
% 11.67/1.98  --comb_sup_mult                         2
% 11.67/1.98  --comb_inst_mult                        10
% 11.67/1.98  
% 11.67/1.98  ------ Debug Options
% 11.67/1.98  
% 11.67/1.98  --dbg_backtrace                         false
% 11.67/1.98  --dbg_dump_prop_clauses                 false
% 11.67/1.98  --dbg_dump_prop_clauses_file            -
% 11.67/1.98  --dbg_out_stat                          false
% 11.67/1.98  ------ Parsing...
% 11.67/1.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 11.67/1.98  
% 11.67/1.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 11.67/1.98  
% 11.67/1.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 11.67/1.98  
% 11.67/1.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 11.67/1.98  ------ Proving...
% 11.67/1.98  ------ Problem Properties 
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  clauses                                 21
% 11.67/1.98  conjectures                             1
% 11.67/1.98  EPR                                     3
% 11.67/1.98  Horn                                    20
% 11.67/1.98  unary                                   7
% 11.67/1.98  binary                                  10
% 11.67/1.98  lits                                    39
% 11.67/1.98  lits eq                                 17
% 11.67/1.98  fd_pure                                 0
% 11.67/1.98  fd_pseudo                               0
% 11.67/1.98  fd_cond                                 0
% 11.67/1.98  fd_pseudo_cond                          1
% 11.67/1.98  AC symbols                              0
% 11.67/1.98  
% 11.67/1.98  ------ Schedule dynamic 5 is on 
% 11.67/1.98  
% 11.67/1.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  ------ 
% 11.67/1.98  Current options:
% 11.67/1.98  ------ 
% 11.67/1.98  
% 11.67/1.98  ------ Input Options
% 11.67/1.98  
% 11.67/1.98  --out_options                           all
% 11.67/1.98  --tptp_safe_out                         true
% 11.67/1.98  --problem_path                          ""
% 11.67/1.98  --include_path                          ""
% 11.67/1.98  --clausifier                            res/vclausify_rel
% 11.67/1.98  --clausifier_options                    ""
% 11.67/1.98  --stdin                                 false
% 11.67/1.98  --stats_out                             all
% 11.67/1.98  
% 11.67/1.98  ------ General Options
% 11.67/1.98  
% 11.67/1.98  --fof                                   false
% 11.67/1.98  --time_out_real                         305.
% 11.67/1.98  --time_out_virtual                      -1.
% 11.67/1.98  --symbol_type_check                     false
% 11.67/1.98  --clausify_out                          false
% 11.67/1.98  --sig_cnt_out                           false
% 11.67/1.98  --trig_cnt_out                          false
% 11.67/1.98  --trig_cnt_out_tolerance                1.
% 11.67/1.98  --trig_cnt_out_sk_spl                   false
% 11.67/1.98  --abstr_cl_out                          false
% 11.67/1.98  
% 11.67/1.98  ------ Global Options
% 11.67/1.98  
% 11.67/1.98  --schedule                              default
% 11.67/1.98  --add_important_lit                     false
% 11.67/1.98  --prop_solver_per_cl                    1000
% 11.67/1.98  --min_unsat_core                        false
% 11.67/1.98  --soft_assumptions                      false
% 11.67/1.98  --soft_lemma_size                       3
% 11.67/1.98  --prop_impl_unit_size                   0
% 11.67/1.98  --prop_impl_unit                        []
% 11.67/1.98  --share_sel_clauses                     true
% 11.67/1.98  --reset_solvers                         false
% 11.67/1.98  --bc_imp_inh                            [conj_cone]
% 11.67/1.98  --conj_cone_tolerance                   3.
% 11.67/1.98  --extra_neg_conj                        none
% 11.67/1.98  --large_theory_mode                     true
% 11.67/1.98  --prolific_symb_bound                   200
% 11.67/1.98  --lt_threshold                          2000
% 11.67/1.98  --clause_weak_htbl                      true
% 11.67/1.98  --gc_record_bc_elim                     false
% 11.67/1.98  
% 11.67/1.98  ------ Preprocessing Options
% 11.67/1.98  
% 11.67/1.98  --preprocessing_flag                    true
% 11.67/1.98  --time_out_prep_mult                    0.1
% 11.67/1.98  --splitting_mode                        input
% 11.67/1.98  --splitting_grd                         true
% 11.67/1.98  --splitting_cvd                         false
% 11.67/1.98  --splitting_cvd_svl                     false
% 11.67/1.98  --splitting_nvd                         32
% 11.67/1.98  --sub_typing                            true
% 11.67/1.98  --prep_gs_sim                           true
% 11.67/1.98  --prep_unflatten                        true
% 11.67/1.98  --prep_res_sim                          true
% 11.67/1.98  --prep_upred                            true
% 11.67/1.98  --prep_sem_filter                       exhaustive
% 11.67/1.98  --prep_sem_filter_out                   false
% 11.67/1.98  --pred_elim                             true
% 11.67/1.98  --res_sim_input                         true
% 11.67/1.98  --eq_ax_congr_red                       true
% 11.67/1.98  --pure_diseq_elim                       true
% 11.67/1.98  --brand_transform                       false
% 11.67/1.98  --non_eq_to_eq                          false
% 11.67/1.98  --prep_def_merge                        true
% 11.67/1.98  --prep_def_merge_prop_impl              false
% 11.67/1.98  --prep_def_merge_mbd                    true
% 11.67/1.98  --prep_def_merge_tr_red                 false
% 11.67/1.98  --prep_def_merge_tr_cl                  false
% 11.67/1.98  --smt_preprocessing                     true
% 11.67/1.98  --smt_ac_axioms                         fast
% 11.67/1.98  --preprocessed_out                      false
% 11.67/1.98  --preprocessed_stats                    false
% 11.67/1.98  
% 11.67/1.98  ------ Abstraction refinement Options
% 11.67/1.98  
% 11.67/1.98  --abstr_ref                             []
% 11.67/1.98  --abstr_ref_prep                        false
% 11.67/1.98  --abstr_ref_until_sat                   false
% 11.67/1.98  --abstr_ref_sig_restrict                funpre
% 11.67/1.98  --abstr_ref_af_restrict_to_split_sk     false
% 11.67/1.98  --abstr_ref_under                       []
% 11.67/1.98  
% 11.67/1.98  ------ SAT Options
% 11.67/1.98  
% 11.67/1.98  --sat_mode                              false
% 11.67/1.98  --sat_fm_restart_options                ""
% 11.67/1.98  --sat_gr_def                            false
% 11.67/1.98  --sat_epr_types                         true
% 11.67/1.98  --sat_non_cyclic_types                  false
% 11.67/1.98  --sat_finite_models                     false
% 11.67/1.98  --sat_fm_lemmas                         false
% 11.67/1.98  --sat_fm_prep                           false
% 11.67/1.98  --sat_fm_uc_incr                        true
% 11.67/1.98  --sat_out_model                         small
% 11.67/1.98  --sat_out_clauses                       false
% 11.67/1.98  
% 11.67/1.98  ------ QBF Options
% 11.67/1.98  
% 11.67/1.98  --qbf_mode                              false
% 11.67/1.98  --qbf_elim_univ                         false
% 11.67/1.98  --qbf_dom_inst                          none
% 11.67/1.98  --qbf_dom_pre_inst                      false
% 11.67/1.98  --qbf_sk_in                             false
% 11.67/1.98  --qbf_pred_elim                         true
% 11.67/1.98  --qbf_split                             512
% 11.67/1.98  
% 11.67/1.98  ------ BMC1 Options
% 11.67/1.98  
% 11.67/1.98  --bmc1_incremental                      false
% 11.67/1.98  --bmc1_axioms                           reachable_all
% 11.67/1.98  --bmc1_min_bound                        0
% 11.67/1.98  --bmc1_max_bound                        -1
% 11.67/1.98  --bmc1_max_bound_default                -1
% 11.67/1.98  --bmc1_symbol_reachability              true
% 11.67/1.98  --bmc1_property_lemmas                  false
% 11.67/1.98  --bmc1_k_induction                      false
% 11.67/1.98  --bmc1_non_equiv_states                 false
% 11.67/1.98  --bmc1_deadlock                         false
% 11.67/1.98  --bmc1_ucm                              false
% 11.67/1.98  --bmc1_add_unsat_core                   none
% 11.67/1.98  --bmc1_unsat_core_children              false
% 11.67/1.98  --bmc1_unsat_core_extrapolate_axioms    false
% 11.67/1.98  --bmc1_out_stat                         full
% 11.67/1.98  --bmc1_ground_init                      false
% 11.67/1.98  --bmc1_pre_inst_next_state              false
% 11.67/1.98  --bmc1_pre_inst_state                   false
% 11.67/1.98  --bmc1_pre_inst_reach_state             false
% 11.67/1.98  --bmc1_out_unsat_core                   false
% 11.67/1.98  --bmc1_aig_witness_out                  false
% 11.67/1.98  --bmc1_verbose                          false
% 11.67/1.98  --bmc1_dump_clauses_tptp                false
% 11.67/1.98  --bmc1_dump_unsat_core_tptp             false
% 11.67/1.98  --bmc1_dump_file                        -
% 11.67/1.98  --bmc1_ucm_expand_uc_limit              128
% 11.67/1.98  --bmc1_ucm_n_expand_iterations          6
% 11.67/1.98  --bmc1_ucm_extend_mode                  1
% 11.67/1.98  --bmc1_ucm_init_mode                    2
% 11.67/1.98  --bmc1_ucm_cone_mode                    none
% 11.67/1.98  --bmc1_ucm_reduced_relation_type        0
% 11.67/1.98  --bmc1_ucm_relax_model                  4
% 11.67/1.98  --bmc1_ucm_full_tr_after_sat            true
% 11.67/1.98  --bmc1_ucm_expand_neg_assumptions       false
% 11.67/1.98  --bmc1_ucm_layered_model                none
% 11.67/1.98  --bmc1_ucm_max_lemma_size               10
% 11.67/1.98  
% 11.67/1.98  ------ AIG Options
% 11.67/1.98  
% 11.67/1.98  --aig_mode                              false
% 11.67/1.98  
% 11.67/1.98  ------ Instantiation Options
% 11.67/1.98  
% 11.67/1.98  --instantiation_flag                    true
% 11.67/1.98  --inst_sos_flag                         true
% 11.67/1.98  --inst_sos_phase                        true
% 11.67/1.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.67/1.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.67/1.98  --inst_lit_sel_side                     none
% 11.67/1.98  --inst_solver_per_active                1400
% 11.67/1.98  --inst_solver_calls_frac                1.
% 11.67/1.98  --inst_passive_queue_type               priority_queues
% 11.67/1.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.67/1.98  --inst_passive_queues_freq              [25;2]
% 11.67/1.98  --inst_dismatching                      true
% 11.67/1.98  --inst_eager_unprocessed_to_passive     true
% 11.67/1.98  --inst_prop_sim_given                   true
% 11.67/1.98  --inst_prop_sim_new                     false
% 11.67/1.98  --inst_subs_new                         false
% 11.67/1.98  --inst_eq_res_simp                      false
% 11.67/1.98  --inst_subs_given                       false
% 11.67/1.98  --inst_orphan_elimination               true
% 11.67/1.98  --inst_learning_loop_flag               true
% 11.67/1.98  --inst_learning_start                   3000
% 11.67/1.98  --inst_learning_factor                  2
% 11.67/1.98  --inst_start_prop_sim_after_learn       3
% 11.67/1.98  --inst_sel_renew                        solver
% 11.67/1.98  --inst_lit_activity_flag                true
% 11.67/1.98  --inst_restr_to_given                   false
% 11.67/1.98  --inst_activity_threshold               500
% 11.67/1.98  --inst_out_proof                        true
% 11.67/1.98  
% 11.67/1.98  ------ Resolution Options
% 11.67/1.98  
% 11.67/1.98  --resolution_flag                       false
% 11.67/1.98  --res_lit_sel                           adaptive
% 11.67/1.98  --res_lit_sel_side                      none
% 11.67/1.98  --res_ordering                          kbo
% 11.67/1.98  --res_to_prop_solver                    active
% 11.67/1.98  --res_prop_simpl_new                    false
% 11.67/1.98  --res_prop_simpl_given                  true
% 11.67/1.98  --res_passive_queue_type                priority_queues
% 11.67/1.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.67/1.98  --res_passive_queues_freq               [15;5]
% 11.67/1.98  --res_forward_subs                      full
% 11.67/1.98  --res_backward_subs                     full
% 11.67/1.98  --res_forward_subs_resolution           true
% 11.67/1.98  --res_backward_subs_resolution          true
% 11.67/1.98  --res_orphan_elimination                true
% 11.67/1.98  --res_time_limit                        2.
% 11.67/1.98  --res_out_proof                         true
% 11.67/1.98  
% 11.67/1.98  ------ Superposition Options
% 11.67/1.98  
% 11.67/1.98  --superposition_flag                    true
% 11.67/1.98  --sup_passive_queue_type                priority_queues
% 11.67/1.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.67/1.98  --sup_passive_queues_freq               [8;1;4]
% 11.67/1.98  --demod_completeness_check              fast
% 11.67/1.98  --demod_use_ground                      true
% 11.67/1.98  --sup_to_prop_solver                    passive
% 11.67/1.98  --sup_prop_simpl_new                    true
% 11.67/1.98  --sup_prop_simpl_given                  true
% 11.67/1.98  --sup_fun_splitting                     true
% 11.67/1.98  --sup_smt_interval                      50000
% 11.67/1.98  
% 11.67/1.98  ------ Superposition Simplification Setup
% 11.67/1.98  
% 11.67/1.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 11.67/1.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 11.67/1.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 11.67/1.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 11.67/1.98  --sup_full_triv                         [TrivRules;PropSubs]
% 11.67/1.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 11.67/1.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 11.67/1.98  --sup_immed_triv                        [TrivRules]
% 11.67/1.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.67/1.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.67/1.98  --sup_immed_bw_main                     []
% 11.67/1.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 11.67/1.98  --sup_input_triv                        [Unflattening;TrivRules]
% 11.67/1.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.67/1.98  --sup_input_bw                          []
% 11.67/1.98  
% 11.67/1.98  ------ Combination Options
% 11.67/1.98  
% 11.67/1.98  --comb_res_mult                         3
% 11.67/1.98  --comb_sup_mult                         2
% 11.67/1.98  --comb_inst_mult                        10
% 11.67/1.98  
% 11.67/1.98  ------ Debug Options
% 11.67/1.98  
% 11.67/1.98  --dbg_backtrace                         false
% 11.67/1.98  --dbg_dump_prop_clauses                 false
% 11.67/1.98  --dbg_dump_prop_clauses_file            -
% 11.67/1.98  --dbg_out_stat                          false
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  ------ Proving...
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  % SZS status Theorem for theBenchmark.p
% 11.67/1.98  
% 11.67/1.98  % SZS output start CNFRefutation for theBenchmark.p
% 11.67/1.98  
% 11.67/1.98  fof(f18,conjecture,(
% 11.67/1.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) <=> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1))))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f19,negated_conjecture,(
% 11.67/1.98    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) <=> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1))))),
% 11.67/1.98    inference(negated_conjecture,[],[f18])).
% 11.67/1.98  
% 11.67/1.98  fof(f33,plain,(
% 11.67/1.98    ? [X0] : (? [X1] : ((v4_pre_topc(X1,X0) <~> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 11.67/1.98    inference(ennf_transformation,[],[f19])).
% 11.67/1.98  
% 11.67/1.98  fof(f34,plain,(
% 11.67/1.98    ? [X0] : (? [X1] : ((v4_pre_topc(X1,X0) <~> k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 11.67/1.98    inference(flattening,[],[f33])).
% 11.67/1.98  
% 11.67/1.98  fof(f38,plain,(
% 11.67/1.98    ? [X0] : (? [X1] : (((k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1) | ~v4_pre_topc(X1,X0)) & (k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | v4_pre_topc(X1,X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 11.67/1.98    inference(nnf_transformation,[],[f34])).
% 11.67/1.98  
% 11.67/1.98  fof(f39,plain,(
% 11.67/1.98    ? [X0] : (? [X1] : ((k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1) | ~v4_pre_topc(X1,X0)) & (k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 11.67/1.98    inference(flattening,[],[f38])).
% 11.67/1.98  
% 11.67/1.98  fof(f41,plain,(
% 11.67/1.98    ( ! [X0] : (? [X1] : ((k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1) | ~v4_pre_topc(X1,X0)) & (k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => ((k7_subset_1(u1_struct_0(X0),sK1,k1_tops_1(X0,sK1)) != k2_tops_1(X0,sK1) | ~v4_pre_topc(sK1,X0)) & (k7_subset_1(u1_struct_0(X0),sK1,k1_tops_1(X0,sK1)) = k2_tops_1(X0,sK1) | v4_pre_topc(sK1,X0)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 11.67/1.98    introduced(choice_axiom,[])).
% 11.67/1.98  
% 11.67/1.98  fof(f40,plain,(
% 11.67/1.98    ? [X0] : (? [X1] : ((k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) != k2_tops_1(X0,X1) | ~v4_pre_topc(X1,X0)) & (k7_subset_1(u1_struct_0(X0),X1,k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (? [X1] : ((k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) != k2_tops_1(sK0,X1) | ~v4_pre_topc(X1,sK0)) & (k7_subset_1(u1_struct_0(sK0),X1,k1_tops_1(sK0,X1)) = k2_tops_1(sK0,X1) | v4_pre_topc(X1,sK0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 11.67/1.98    introduced(choice_axiom,[])).
% 11.67/1.98  
% 11.67/1.98  fof(f42,plain,(
% 11.67/1.98    ((k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) | ~v4_pre_topc(sK1,sK0)) & (k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) | v4_pre_topc(sK1,sK0)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 11.67/1.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f39,f41,f40])).
% 11.67/1.98  
% 11.67/1.98  fof(f66,plain,(
% 11.67/1.98    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 11.67/1.98    inference(cnf_transformation,[],[f42])).
% 11.67/1.98  
% 11.67/1.98  fof(f13,axiom,(
% 11.67/1.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f37,plain,(
% 11.67/1.98    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 11.67/1.98    inference(nnf_transformation,[],[f13])).
% 11.67/1.98  
% 11.67/1.98  fof(f57,plain,(
% 11.67/1.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 11.67/1.98    inference(cnf_transformation,[],[f37])).
% 11.67/1.98  
% 11.67/1.98  fof(f7,axiom,(
% 11.67/1.98    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f23,plain,(
% 11.67/1.98    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 11.67/1.98    inference(ennf_transformation,[],[f7])).
% 11.67/1.98  
% 11.67/1.98  fof(f51,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f23])).
% 11.67/1.98  
% 11.67/1.98  fof(f9,axiom,(
% 11.67/1.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f53,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 11.67/1.98    inference(cnf_transformation,[],[f9])).
% 11.67/1.98  
% 11.67/1.98  fof(f71,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 | ~r1_tarski(X0,X1)) )),
% 11.67/1.98    inference(definition_unfolding,[],[f51,f53])).
% 11.67/1.98  
% 11.67/1.98  fof(f2,axiom,(
% 11.67/1.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f44,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f2])).
% 11.67/1.98  
% 11.67/1.98  fof(f70,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 11.67/1.98    inference(definition_unfolding,[],[f44,f53,f53])).
% 11.67/1.98  
% 11.67/1.98  fof(f12,axiom,(
% 11.67/1.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f56,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 11.67/1.98    inference(cnf_transformation,[],[f12])).
% 11.67/1.98  
% 11.67/1.98  fof(f72,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 11.67/1.98    inference(definition_unfolding,[],[f56,f53])).
% 11.67/1.98  
% 11.67/1.98  fof(f8,axiom,(
% 11.67/1.98    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f52,plain,(
% 11.67/1.98    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f8])).
% 11.67/1.98  
% 11.67/1.98  fof(f11,axiom,(
% 11.67/1.98    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f26,plain,(
% 11.67/1.98    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 11.67/1.98    inference(ennf_transformation,[],[f11])).
% 11.67/1.98  
% 11.67/1.98  fof(f55,plain,(
% 11.67/1.98    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 11.67/1.98    inference(cnf_transformation,[],[f26])).
% 11.67/1.98  
% 11.67/1.98  fof(f58,plain,(
% 11.67/1.98    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f37])).
% 11.67/1.98  
% 11.67/1.98  fof(f17,axiom,(
% 11.67/1.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k7_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k1_tops_1(X0,X1)))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f32,plain,(
% 11.67/1.98    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 11.67/1.98    inference(ennf_transformation,[],[f17])).
% 11.67/1.98  
% 11.67/1.98  fof(f63,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f32])).
% 11.67/1.98  
% 11.67/1.98  fof(f65,plain,(
% 11.67/1.98    l1_pre_topc(sK0)),
% 11.67/1.98    inference(cnf_transformation,[],[f42])).
% 11.67/1.98  
% 11.67/1.98  fof(f67,plain,(
% 11.67/1.98    k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) | v4_pre_topc(sK1,sK0)),
% 11.67/1.98    inference(cnf_transformation,[],[f42])).
% 11.67/1.98  
% 11.67/1.98  fof(f14,axiom,(
% 11.67/1.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f27,plain,(
% 11.67/1.98    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | (k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0))) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 11.67/1.98    inference(ennf_transformation,[],[f14])).
% 11.67/1.98  
% 11.67/1.98  fof(f28,plain,(
% 11.67/1.98    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0)) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 11.67/1.98    inference(flattening,[],[f27])).
% 11.67/1.98  
% 11.67/1.98  fof(f59,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f28])).
% 11.67/1.98  
% 11.67/1.98  fof(f6,axiom,(
% 11.67/1.98    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f21,plain,(
% 11.67/1.98    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 11.67/1.98    inference(ennf_transformation,[],[f6])).
% 11.67/1.98  
% 11.67/1.98  fof(f22,plain,(
% 11.67/1.98    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 11.67/1.98    inference(flattening,[],[f21])).
% 11.67/1.98  
% 11.67/1.98  fof(f50,plain,(
% 11.67/1.98    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f22])).
% 11.67/1.98  
% 11.67/1.98  fof(f10,axiom,(
% 11.67/1.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f24,plain,(
% 11.67/1.98    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 11.67/1.98    inference(ennf_transformation,[],[f10])).
% 11.67/1.98  
% 11.67/1.98  fof(f25,plain,(
% 11.67/1.98    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 11.67/1.98    inference(flattening,[],[f24])).
% 11.67/1.98  
% 11.67/1.98  fof(f54,plain,(
% 11.67/1.98    ( ! [X2,X0,X1] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 11.67/1.98    inference(cnf_transformation,[],[f25])).
% 11.67/1.98  
% 11.67/1.98  fof(f5,axiom,(
% 11.67/1.98    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f20,plain,(
% 11.67/1.98    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 11.67/1.98    inference(ennf_transformation,[],[f5])).
% 11.67/1.98  
% 11.67/1.98  fof(f49,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f20])).
% 11.67/1.98  
% 11.67/1.98  fof(f1,axiom,(
% 11.67/1.98    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f43,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f1])).
% 11.67/1.98  
% 11.67/1.98  fof(f15,axiom,(
% 11.67/1.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1)))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f29,plain,(
% 11.67/1.98    ! [X0] : (! [X1] : (k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 11.67/1.98    inference(ennf_transformation,[],[f15])).
% 11.67/1.98  
% 11.67/1.98  fof(f61,plain,(
% 11.67/1.98    ( ! [X0,X1] : (k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f29])).
% 11.67/1.98  
% 11.67/1.98  fof(f16,axiom,(
% 11.67/1.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => r1_tarski(k2_tops_1(X0,X1),X1))))),
% 11.67/1.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.67/1.98  
% 11.67/1.98  fof(f30,plain,(
% 11.67/1.98    ! [X0] : (! [X1] : ((r1_tarski(k2_tops_1(X0,X1),X1) | ~v4_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 11.67/1.98    inference(ennf_transformation,[],[f16])).
% 11.67/1.98  
% 11.67/1.98  fof(f31,plain,(
% 11.67/1.98    ! [X0] : (! [X1] : (r1_tarski(k2_tops_1(X0,X1),X1) | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 11.67/1.98    inference(flattening,[],[f30])).
% 11.67/1.98  
% 11.67/1.98  fof(f62,plain,(
% 11.67/1.98    ( ! [X0,X1] : (r1_tarski(k2_tops_1(X0,X1),X1) | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f31])).
% 11.67/1.98  
% 11.67/1.98  fof(f68,plain,(
% 11.67/1.98    k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) | ~v4_pre_topc(sK1,sK0)),
% 11.67/1.98    inference(cnf_transformation,[],[f42])).
% 11.67/1.98  
% 11.67/1.98  fof(f60,plain,(
% 11.67/1.98    ( ! [X0,X1] : (v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 11.67/1.98    inference(cnf_transformation,[],[f28])).
% 11.67/1.98  
% 11.67/1.98  fof(f64,plain,(
% 11.67/1.98    v2_pre_topc(sK0)),
% 11.67/1.98    inference(cnf_transformation,[],[f42])).
% 11.67/1.98  
% 11.67/1.98  cnf(c_22,negated_conjecture,
% 11.67/1.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 11.67/1.98      inference(cnf_transformation,[],[f66]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1225,plain,
% 11.67/1.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_14,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 11.67/1.98      inference(cnf_transformation,[],[f57]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1226,plain,
% 11.67/1.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 11.67/1.98      | r1_tarski(X0,X1) = iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_2524,plain,
% 11.67/1.98      ( r1_tarski(sK1,u1_struct_0(sK0)) = iProver_top ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1225,c_1226]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_8,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
% 11.67/1.98      inference(cnf_transformation,[],[f71]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1229,plain,
% 11.67/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0
% 11.67/1.98      | r1_tarski(X0,X1) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_2,plain,
% 11.67/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 11.67/1.98      inference(cnf_transformation,[],[f70]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_12,plain,
% 11.67/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k2_tarski(X0,X1)) ),
% 11.67/1.98      inference(cnf_transformation,[],[f72]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1234,plain,
% 11.67/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0)) ),
% 11.67/1.98      inference(light_normalisation,[status(thm)],[c_2,c_12]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1236,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(X0,X1)) = X1
% 11.67/1.98      | r1_tarski(X1,X0) != iProver_top ),
% 11.67/1.98      inference(demodulation,[status(thm)],[c_1229,c_1234]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_4875,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(u1_struct_0(sK0),sK1)) = sK1 ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_2524,c_1236]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1764,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,k1_setfam_1(k2_tarski(X0,X1))) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_12,c_12]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_4886,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1))) = k4_xboole_0(u1_struct_0(sK0),sK1) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_4875,c_1764]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_3315,plain,
% 11.67/1.98      ( k4_xboole_0(X0,k1_setfam_1(k2_tarski(X0,k4_xboole_0(X0,X1)))) = k1_setfam_1(k2_tarski(X0,k1_setfam_1(k2_tarski(X0,X1)))) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1764,c_12]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_5315,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(u1_struct_0(sK0),k1_setfam_1(k2_tarski(u1_struct_0(sK0),sK1)))) = k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_4886,c_3315]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_5333,plain,
% 11.67/1.98      ( k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)) = sK1 ),
% 11.67/1.98      inference(light_normalisation,[status(thm)],[c_5315,c_4875]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_9,plain,
% 11.67/1.98      ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f52]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1228,plain,
% 11.67/1.98      ( r1_tarski(k4_xboole_0(X0,X1),X0) = iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_11,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 11.67/1.98      | k7_subset_1(X1,X0,X2) = k4_xboole_0(X0,X2) ),
% 11.67/1.98      inference(cnf_transformation,[],[f55]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_13,plain,
% 11.67/1.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 11.67/1.98      inference(cnf_transformation,[],[f58]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_170,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 11.67/1.98      inference(prop_impl,[status(thm)],[c_13]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_171,plain,
% 11.67/1.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 11.67/1.98      inference(renaming,[status(thm)],[c_170]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_213,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1) | k7_subset_1(X1,X0,X2) = k4_xboole_0(X0,X2) ),
% 11.67/1.98      inference(bin_hyper_res,[status(thm)],[c_11,c_171]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1224,plain,
% 11.67/1.98      ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
% 11.67/1.98      | r1_tarski(X1,X0) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_213]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_24377,plain,
% 11.67/1.98      ( k7_subset_1(X0,k4_xboole_0(X0,X1),X2) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1228,c_1224]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1227,plain,
% 11.67/1.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 11.67/1.98      | r1_tarski(X0,X1) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_19,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | ~ l1_pre_topc(X1)
% 11.67/1.98      | k7_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k1_tops_1(X1,X0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f63]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_23,negated_conjecture,
% 11.67/1.98      ( l1_pre_topc(sK0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f65]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_324,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | k7_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k1_tops_1(X1,X0)
% 11.67/1.98      | sK0 != X1 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_19,c_23]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_325,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k1_tops_1(sK0,X0) ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_324]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1223,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k1_tops_1(sK0,X0)
% 11.67/1.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_325]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_2528,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k1_tops_1(sK0,X0)
% 11.67/1.98      | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1227,c_1223]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_2762,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),X0),k2_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0)) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1228,c_2528]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_28140,plain,
% 11.67/1.98      ( k4_xboole_0(k4_xboole_0(u1_struct_0(sK0),X0),k2_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0)) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_24377,c_2762]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_47147,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(k4_xboole_0(u1_struct_0(sK0),X0),k2_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0)))) = k4_xboole_0(k4_xboole_0(u1_struct_0(sK0),X0),k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),X0))) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_28140,c_12]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_47730,plain,
% 11.67/1.98      ( k4_xboole_0(k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)),k1_tops_1(sK0,k4_xboole_0(u1_struct_0(sK0),k4_xboole_0(u1_struct_0(sK0),sK1)))) = k1_setfam_1(k2_tarski(sK1,k2_tops_1(sK0,sK1))) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_5333,c_47147]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_24378,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),sK1,X0) = k4_xboole_0(sK1,X0) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_2524,c_1224]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_21,negated_conjecture,
% 11.67/1.98      ( v4_pre_topc(sK1,sK0)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(cnf_transformation,[],[f67]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_174,plain,
% 11.67/1.98      ( v4_pre_topc(sK1,sK0)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(prop_impl,[status(thm)],[c_21]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_16,plain,
% 11.67/1.98      ( ~ v4_pre_topc(X0,X1)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | ~ l1_pre_topc(X1)
% 11.67/1.98      | k2_pre_topc(X1,X0) = X0 ),
% 11.67/1.98      inference(cnf_transformation,[],[f59]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_363,plain,
% 11.67/1.98      ( ~ v4_pre_topc(X0,X1)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | k2_pre_topc(X1,X0) = X0
% 11.67/1.98      | sK0 != X1 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_16,c_23]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_364,plain,
% 11.67/1.98      ( ~ v4_pre_topc(X0,sK0)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k2_pre_topc(sK0,X0) = X0 ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_363]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_408,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,X0) = X0
% 11.67/1.98      | sK1 != X0
% 11.67/1.98      | sK0 != sK0 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_174,c_364]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_409,plain,
% 11.67/1.98      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,sK1) = sK1 ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_408]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_411,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,sK1) = sK1 ),
% 11.67/1.98      inference(global_propositional_subsumption,
% 11.67/1.98                [status(thm)],
% 11.67/1.98                [c_409,c_22]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_646,plain,
% 11.67/1.98      ( k2_pre_topc(sK0,sK1) = sK1
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(prop_impl,[status(thm)],[c_411]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_647,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,sK1) = sK1 ),
% 11.67/1.98      inference(renaming,[status(thm)],[c_646]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_24795,plain,
% 11.67/1.98      ( k2_pre_topc(sK0,sK1) = sK1
% 11.67/1.98      | k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_24378,c_647]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_7,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X2) | r1_tarski(X0,X2) ),
% 11.67/1.98      inference(cnf_transformation,[],[f50]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1230,plain,
% 11.67/1.98      ( r1_tarski(X0,X1) != iProver_top
% 11.67/1.98      | r1_tarski(X1,X2) != iProver_top
% 11.67/1.98      | r1_tarski(X0,X2) = iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_4123,plain,
% 11.67/1.98      ( r1_tarski(X0,X1) != iProver_top
% 11.67/1.98      | r1_tarski(k4_xboole_0(X0,X2),X1) = iProver_top ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1228,c_1230]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_10,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 11.67/1.98      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 11.67/1.98      | k4_subset_1(X1,X2,X0) = k2_xboole_0(X2,X0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f54]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_212,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 11.67/1.98      | ~ r1_tarski(X2,X1)
% 11.67/1.98      | k4_subset_1(X1,X0,X2) = k2_xboole_0(X0,X2) ),
% 11.67/1.98      inference(bin_hyper_res,[status(thm)],[c_10,c_171]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_642,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 11.67/1.98      inference(prop_impl,[status(thm)],[c_13]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_643,plain,
% 11.67/1.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 11.67/1.98      inference(renaming,[status(thm)],[c_642]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_680,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1)
% 11.67/1.98      | ~ r1_tarski(X2,X1)
% 11.67/1.98      | k4_subset_1(X1,X0,X2) = k2_xboole_0(X0,X2) ),
% 11.67/1.98      inference(bin_hyper_res,[status(thm)],[c_212,c_643]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1220,plain,
% 11.67/1.98      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
% 11.67/1.98      | r1_tarski(X1,X0) != iProver_top
% 11.67/1.98      | r1_tarski(X2,X0) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_680]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_7229,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),sK1,X0) = k2_xboole_0(sK1,X0)
% 11.67/1.98      | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_2524,c_1220]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_9398,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),sK1,k4_xboole_0(X0,X1)) = k2_xboole_0(sK1,k4_xboole_0(X0,X1))
% 11.67/1.98      | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_4123,c_7229]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_9422,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),sK1,k4_xboole_0(sK1,X0)) = k2_xboole_0(sK1,k4_xboole_0(sK1,X0)) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_2524,c_9398]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_6,plain,
% 11.67/1.98      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 11.67/1.98      inference(cnf_transformation,[],[f49]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1231,plain,
% 11.67/1.98      ( k2_xboole_0(X0,X1) = X1 | r1_tarski(X0,X1) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_2226,plain,
% 11.67/1.98      ( k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1228,c_1231]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1,plain,
% 11.67/1.98      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f43]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_2293,plain,
% 11.67/1.98      ( k2_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_2226,c_1]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_9426,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),sK1,k4_xboole_0(sK1,X0)) = sK1 ),
% 11.67/1.98      inference(demodulation,[status(thm)],[c_9422,c_2293]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_35495,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) = sK1
% 11.67/1.98      | k2_pre_topc(sK0,sK1) = sK1 ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_24795,c_9426]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_17,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | ~ l1_pre_topc(X1)
% 11.67/1.98      | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f61]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_351,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0)
% 11.67/1.98      | sK0 != X1 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_17,c_23]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_352,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k2_pre_topc(sK0,X0) ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_351]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1222,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k2_pre_topc(sK0,X0)
% 11.67/1.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_352]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1328,plain,
% 11.67/1.98      ( k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) = k2_pre_topc(sK0,sK1) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_1225,c_1222]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_35513,plain,
% 11.67/1.98      ( k2_pre_topc(sK0,sK1) = sK1 ),
% 11.67/1.98      inference(demodulation,[status(thm)],[c_35495,c_1328]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_18,plain,
% 11.67/1.98      ( ~ v4_pre_topc(X0,X1)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | r1_tarski(k2_tops_1(X1,X0),X0)
% 11.67/1.98      | ~ l1_pre_topc(X1) ),
% 11.67/1.98      inference(cnf_transformation,[],[f62]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_336,plain,
% 11.67/1.98      ( ~ v4_pre_topc(X0,X1)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | r1_tarski(k2_tops_1(X1,X0),X0)
% 11.67/1.98      | sK0 != X1 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_18,c_23]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_337,plain,
% 11.67/1.98      ( ~ v4_pre_topc(X0,sK0)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | r1_tarski(k2_tops_1(sK0,X0),X0) ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_336]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_419,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | r1_tarski(k2_tops_1(sK0,X0),X0)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1)
% 11.67/1.98      | sK1 != X0
% 11.67/1.98      | sK0 != sK0 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_174,c_337]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_420,plain,
% 11.67/1.98      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | r1_tarski(k2_tops_1(sK0,sK1),sK1)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_419]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_422,plain,
% 11.67/1.98      ( r1_tarski(k2_tops_1(sK0,sK1),sK1)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(global_propositional_subsumption,
% 11.67/1.98                [status(thm)],
% 11.67/1.98                [c_420,c_22]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_20,negated_conjecture,
% 11.67/1.98      ( ~ v4_pre_topc(sK1,sK0)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(cnf_transformation,[],[f68]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_172,plain,
% 11.67/1.98      ( ~ v4_pre_topc(sK1,sK0)
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(prop_impl,[status(thm)],[c_20]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_15,plain,
% 11.67/1.98      ( v4_pre_topc(X0,X1)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | ~ l1_pre_topc(X1)
% 11.67/1.98      | ~ v2_pre_topc(X1)
% 11.67/1.98      | k2_pre_topc(X1,X0) != X0 ),
% 11.67/1.98      inference(cnf_transformation,[],[f60]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_24,negated_conjecture,
% 11.67/1.98      ( v2_pre_topc(sK0) ),
% 11.67/1.98      inference(cnf_transformation,[],[f64]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_299,plain,
% 11.67/1.98      ( v4_pre_topc(X0,X1)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 11.67/1.98      | ~ l1_pre_topc(X1)
% 11.67/1.98      | k2_pre_topc(X1,X0) != X0
% 11.67/1.98      | sK0 != X1 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_15,c_24]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_300,plain,
% 11.67/1.98      ( v4_pre_topc(X0,sK0)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | ~ l1_pre_topc(sK0)
% 11.67/1.98      | k2_pre_topc(sK0,X0) != X0 ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_299]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_304,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | v4_pre_topc(X0,sK0)
% 11.67/1.98      | k2_pre_topc(sK0,X0) != X0 ),
% 11.67/1.98      inference(global_propositional_subsumption,
% 11.67/1.98                [status(thm)],
% 11.67/1.98                [c_300,c_23]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_305,plain,
% 11.67/1.98      ( v4_pre_topc(X0,sK0)
% 11.67/1.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k2_pre_topc(sK0,X0) != X0 ),
% 11.67/1.98      inference(renaming,[status(thm)],[c_304]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_433,plain,
% 11.67/1.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,X0) != X0
% 11.67/1.98      | sK1 != X0
% 11.67/1.98      | sK0 != sK0 ),
% 11.67/1.98      inference(resolution_lifted,[status(thm)],[c_172,c_305]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_434,plain,
% 11.67/1.98      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,sK1) != sK1 ),
% 11.67/1.98      inference(unflattening,[status(thm)],[c_433]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_436,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,sK1) != sK1 ),
% 11.67/1.98      inference(global_propositional_subsumption,
% 11.67/1.98                [status(thm)],
% 11.67/1.98                [c_434,c_22]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_644,plain,
% 11.67/1.98      ( k2_pre_topc(sK0,sK1) != sK1
% 11.67/1.98      | k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(prop_impl,[status(thm)],[c_436]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_645,plain,
% 11.67/1.98      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1)
% 11.67/1.98      | k2_pre_topc(sK0,sK1) != sK1 ),
% 11.67/1.98      inference(renaming,[status(thm)],[c_644]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_682,plain,
% 11.67/1.98      ( r1_tarski(k2_tops_1(sK0,sK1),sK1) | k2_pre_topc(sK0,sK1) != sK1 ),
% 11.67/1.98      inference(bin_hyper_res,[status(thm)],[c_422,c_645]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_1219,plain,
% 11.67/1.98      ( k2_pre_topc(sK0,sK1) != sK1
% 11.67/1.98      | r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
% 11.67/1.98      inference(predicate_to_equality,[status(thm)],[c_682]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_35515,plain,
% 11.67/1.98      ( sK1 != sK1 | r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
% 11.67/1.98      inference(demodulation,[status(thm)],[c_35513,c_1219]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_35517,plain,
% 11.67/1.98      ( r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
% 11.67/1.98      inference(equality_resolution_simp,[status(thm)],[c_35515]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_35874,plain,
% 11.67/1.98      ( k1_setfam_1(k2_tarski(sK1,k2_tops_1(sK0,sK1))) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(superposition,[status(thm)],[c_35517,c_1236]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_47816,plain,
% 11.67/1.98      ( k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(light_normalisation,
% 11.67/1.98                [status(thm)],
% 11.67/1.98                [c_47730,c_5333,c_35874]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(c_24726,plain,
% 11.67/1.98      ( k2_pre_topc(sK0,sK1) != sK1
% 11.67/1.98      | k4_xboole_0(sK1,k1_tops_1(sK0,sK1)) != k2_tops_1(sK0,sK1) ),
% 11.67/1.98      inference(demodulation,[status(thm)],[c_24378,c_645]) ).
% 11.67/1.98  
% 11.67/1.98  cnf(contradiction,plain,
% 11.67/1.98      ( $false ),
% 11.67/1.98      inference(minisat,[status(thm)],[c_47816,c_35513,c_24726]) ).
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  % SZS output end CNFRefutation for theBenchmark.p
% 11.67/1.98  
% 11.67/1.98  ------                               Statistics
% 11.67/1.98  
% 11.67/1.98  ------ General
% 11.67/1.98  
% 11.67/1.98  abstr_ref_over_cycles:                  0
% 11.67/1.98  abstr_ref_under_cycles:                 0
% 11.67/1.98  gc_basic_clause_elim:                   0
% 11.67/1.98  forced_gc_time:                         0
% 11.67/1.98  parsing_time:                           0.008
% 11.67/1.98  unif_index_cands_time:                  0.
% 11.67/1.98  unif_index_add_time:                    0.
% 11.67/1.98  orderings_time:                         0.
% 11.67/1.98  out_proof_time:                         0.013
% 11.67/1.98  total_time:                             1.289
% 11.67/1.98  num_of_symbols:                         50
% 11.67/1.98  num_of_terms:                           42104
% 11.67/1.98  
% 11.67/1.98  ------ Preprocessing
% 11.67/1.98  
% 11.67/1.98  num_of_splits:                          0
% 11.67/1.98  num_of_split_atoms:                     0
% 11.67/1.98  num_of_reused_defs:                     0
% 11.67/1.98  num_eq_ax_congr_red:                    24
% 11.67/1.98  num_of_sem_filtered_clauses:            1
% 11.67/1.98  num_of_subtypes:                        0
% 11.67/1.98  monotx_restored_types:                  0
% 11.67/1.98  sat_num_of_epr_types:                   0
% 11.67/1.98  sat_num_of_non_cyclic_types:            0
% 11.67/1.98  sat_guarded_non_collapsed_types:        0
% 11.67/1.98  num_pure_diseq_elim:                    0
% 11.67/1.98  simp_replaced_by:                       0
% 11.67/1.98  res_preprocessed:                       116
% 11.67/1.98  prep_upred:                             0
% 11.67/1.98  prep_unflattend:                        23
% 11.67/1.98  smt_new_axioms:                         0
% 11.67/1.98  pred_elim_cands:                        2
% 11.67/1.98  pred_elim:                              3
% 11.67/1.98  pred_elim_cl:                           3
% 11.67/1.98  pred_elim_cycles:                       5
% 11.67/1.98  merged_defs:                            16
% 11.67/1.98  merged_defs_ncl:                        0
% 11.67/1.98  bin_hyper_res:                          20
% 11.67/1.98  prep_cycles:                            4
% 11.67/1.98  pred_elim_time:                         0.006
% 11.67/1.98  splitting_time:                         0.
% 11.67/1.98  sem_filter_time:                        0.
% 11.67/1.98  monotx_time:                            0.
% 11.67/1.98  subtype_inf_time:                       0.
% 11.67/1.98  
% 11.67/1.98  ------ Problem properties
% 11.67/1.98  
% 11.67/1.98  clauses:                                21
% 11.67/1.98  conjectures:                            1
% 11.67/1.98  epr:                                    3
% 11.67/1.98  horn:                                   20
% 11.67/1.98  ground:                                 4
% 11.67/1.98  unary:                                  7
% 11.67/1.98  binary:                                 10
% 11.67/1.98  lits:                                   39
% 11.67/1.98  lits_eq:                                17
% 11.67/1.98  fd_pure:                                0
% 11.67/1.98  fd_pseudo:                              0
% 11.67/1.98  fd_cond:                                0
% 11.67/1.98  fd_pseudo_cond:                         1
% 11.67/1.98  ac_symbols:                             0
% 11.67/1.98  
% 11.67/1.98  ------ Propositional Solver
% 11.67/1.98  
% 11.67/1.98  prop_solver_calls:                      32
% 11.67/1.98  prop_fast_solver_calls:                 1016
% 11.67/1.98  smt_solver_calls:                       0
% 11.67/1.98  smt_fast_solver_calls:                  0
% 11.67/1.98  prop_num_of_clauses:                    17728
% 11.67/1.98  prop_preprocess_simplified:             43367
% 11.67/1.98  prop_fo_subsumed:                       6
% 11.67/1.98  prop_solver_time:                       0.
% 11.67/1.98  smt_solver_time:                        0.
% 11.67/1.98  smt_fast_solver_time:                   0.
% 11.67/1.98  prop_fast_solver_time:                  0.
% 11.67/1.98  prop_unsat_core_time:                   0.002
% 11.67/1.98  
% 11.67/1.98  ------ QBF
% 11.67/1.98  
% 11.67/1.98  qbf_q_res:                              0
% 11.67/1.98  qbf_num_tautologies:                    0
% 11.67/1.98  qbf_prep_cycles:                        0
% 11.67/1.98  
% 11.67/1.98  ------ BMC1
% 11.67/1.98  
% 11.67/1.98  bmc1_current_bound:                     -1
% 11.67/1.98  bmc1_last_solved_bound:                 -1
% 11.67/1.98  bmc1_unsat_core_size:                   -1
% 11.67/1.98  bmc1_unsat_core_parents_size:           -1
% 11.67/1.98  bmc1_merge_next_fun:                    0
% 11.67/1.98  bmc1_unsat_core_clauses_time:           0.
% 11.67/1.98  
% 11.67/1.98  ------ Instantiation
% 11.67/1.98  
% 11.67/1.98  inst_num_of_clauses:                    5700
% 11.67/1.98  inst_num_in_passive:                    3086
% 11.67/1.98  inst_num_in_active:                     1693
% 11.67/1.98  inst_num_in_unprocessed:                923
% 11.67/1.98  inst_num_of_loops:                      1750
% 11.67/1.98  inst_num_of_learning_restarts:          0
% 11.67/1.98  inst_num_moves_active_passive:          52
% 11.67/1.98  inst_lit_activity:                      0
% 11.67/1.98  inst_lit_activity_moves:                0
% 11.67/1.98  inst_num_tautologies:                   0
% 11.67/1.98  inst_num_prop_implied:                  0
% 11.67/1.98  inst_num_existing_simplified:           0
% 11.67/1.98  inst_num_eq_res_simplified:             0
% 11.67/1.98  inst_num_child_elim:                    0
% 11.67/1.98  inst_num_of_dismatching_blockings:      4011
% 11.67/1.98  inst_num_of_non_proper_insts:           7204
% 11.67/1.98  inst_num_of_duplicates:                 0
% 11.67/1.98  inst_inst_num_from_inst_to_res:         0
% 11.67/1.98  inst_dismatching_checking_time:         0.
% 11.67/1.98  
% 11.67/1.98  ------ Resolution
% 11.67/1.98  
% 11.67/1.98  res_num_of_clauses:                     0
% 11.67/1.98  res_num_in_passive:                     0
% 11.67/1.98  res_num_in_active:                      0
% 11.67/1.98  res_num_of_loops:                       120
% 11.67/1.98  res_forward_subset_subsumed:            508
% 11.67/1.98  res_backward_subset_subsumed:           8
% 11.67/1.98  res_forward_subsumed:                   0
% 11.67/1.98  res_backward_subsumed:                  0
% 11.67/1.98  res_forward_subsumption_resolution:     0
% 11.67/1.98  res_backward_subsumption_resolution:    0
% 11.67/1.98  res_clause_to_clause_subsumption:       9617
% 11.67/1.98  res_orphan_elimination:                 0
% 11.67/1.98  res_tautology_del:                      743
% 11.67/1.98  res_num_eq_res_simplified:              0
% 11.67/1.98  res_num_sel_changes:                    0
% 11.67/1.98  res_moves_from_active_to_pass:          0
% 11.67/1.98  
% 11.67/1.98  ------ Superposition
% 11.67/1.98  
% 11.67/1.98  sup_time_total:                         0.
% 11.67/1.98  sup_time_generating:                    0.
% 11.67/1.98  sup_time_sim_full:                      0.
% 11.67/1.98  sup_time_sim_immed:                     0.
% 11.67/1.98  
% 11.67/1.98  sup_num_of_clauses:                     870
% 11.67/1.98  sup_num_in_active:                      315
% 11.67/1.98  sup_num_in_passive:                     555
% 11.67/1.98  sup_num_of_loops:                       349
% 11.67/1.98  sup_fw_superposition:                   3479
% 11.67/1.98  sup_bw_superposition:                   2255
% 11.67/1.98  sup_immediate_simplified:               2608
% 11.67/1.98  sup_given_eliminated:                   4
% 11.67/1.98  comparisons_done:                       0
% 11.67/1.98  comparisons_avoided:                    6
% 11.67/1.98  
% 11.67/1.98  ------ Simplifications
% 11.67/1.98  
% 11.67/1.98  
% 11.67/1.98  sim_fw_subset_subsumed:                 53
% 11.67/1.98  sim_bw_subset_subsumed:                 10
% 11.67/1.98  sim_fw_subsumed:                        668
% 11.67/1.98  sim_bw_subsumed:                        27
% 11.67/1.98  sim_fw_subsumption_res:                 0
% 11.67/1.98  sim_bw_subsumption_res:                 0
% 11.67/1.98  sim_tautology_del:                      5
% 11.67/1.98  sim_eq_tautology_del:                   692
% 11.67/1.98  sim_eq_res_simp:                        2
% 11.67/1.98  sim_fw_demodulated:                     1665
% 11.67/1.98  sim_bw_demodulated:                     38
% 11.67/1.98  sim_light_normalised:                   904
% 11.67/1.98  sim_joinable_taut:                      0
% 11.67/1.98  sim_joinable_simp:                      0
% 11.67/1.98  sim_ac_normalised:                      0
% 11.67/1.98  sim_smt_subsumption:                    0
% 11.67/1.98  
%------------------------------------------------------------------------------
