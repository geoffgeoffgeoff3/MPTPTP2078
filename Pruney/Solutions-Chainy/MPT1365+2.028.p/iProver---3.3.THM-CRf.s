%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:18:02 EST 2020

% Result     : Theorem 7.85s
% Output     : CNFRefutation 7.85s
% Verified   : 
% Statistics : Number of formulae       :  140 ( 354 expanded)
%              Number of clauses        :   83 ( 108 expanded)
%              Number of leaves         :   20 ( 106 expanded)
%              Depth                    :   15
%              Number of atoms          :  490 (2030 expanded)
%              Number of equality atoms :   83 ( 105 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( v2_compts_1(X2,X0)
                  & v2_compts_1(X1,X0)
                  & v8_pre_topc(X0) )
               => v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( ( v2_compts_1(X2,X0)
                    & v2_compts_1(X1,X0)
                    & v8_pre_topc(X0) )
                 => v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) ) ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f27,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & v2_compts_1(X2,X0)
              & v2_compts_1(X1,X0)
              & v8_pre_topc(X0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & v2_compts_1(X2,X0)
              & v2_compts_1(X1,X0)
              & v8_pre_topc(X0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
          & v2_compts_1(X2,X0)
          & v2_compts_1(X1,X0)
          & v8_pre_topc(X0)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,sK2),X0)
        & v2_compts_1(sK2,X0)
        & v2_compts_1(X1,X0)
        & v8_pre_topc(X0)
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & v2_compts_1(X2,X0)
              & v2_compts_1(X1,X0)
              & v8_pre_topc(X0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ? [X2] :
            ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),sK1,X2),X0)
            & v2_compts_1(X2,X0)
            & v2_compts_1(sK1,X0)
            & v8_pre_topc(X0)
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
                & v2_compts_1(X2,X0)
                & v2_compts_1(X1,X0)
                & v8_pre_topc(X0)
                & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_compts_1(k9_subset_1(u1_struct_0(sK0),X1,X2),sK0)
              & v2_compts_1(X2,sK0)
              & v2_compts_1(X1,sK0)
              & v8_pre_topc(sK0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ~ v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
    & v2_compts_1(sK2,sK0)
    & v2_compts_1(sK1,sK0)
    & v8_pre_topc(sK0)
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f28,f32,f31,f30])).

fof(f49,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f33])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => u1_struct_0(k1_pre_topc(X0,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f42,plain,(
    ! [X0,X1] :
      ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f48,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f50,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f33])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f37,f35])).

fof(f40,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f3,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f56,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f38,f35,f36])).

fof(f1,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
        & v1_pre_topc(k1_pre_topc(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_pre_topc(k1_pre_topc(X0,X1),X0) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f17,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f18,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f17])).

fof(f41,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
             => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( v4_pre_topc(X2,X0)
                  & r1_tarski(X2,X1)
                  & v2_compts_1(X1,X0) )
               => v2_compts_1(X2,X0) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_compts_1(X2,X0)
              | ~ v4_pre_topc(X2,X0)
              | ~ r1_tarski(X2,X1)
              | ~ v2_compts_1(X1,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_compts_1(X2,X0)
              | ~ v4_pre_topc(X2,X0)
              | ~ r1_tarski(X2,X1)
              | ~ v2_compts_1(X1,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f25])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( v2_compts_1(X2,X0)
      | ~ v4_pre_topc(X2,X0)
      | ~ r1_tarski(X2,X1)
      | ~ v2_compts_1(X1,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f47,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
        & v4_pre_topc(X2,X0)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & v4_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v4_pre_topc(k3_xboole_0(X1,X2),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v4_pre_topc(k3_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v4_pre_topc(k3_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f21])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( v4_pre_topc(k3_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v4_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f44,f35])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( v2_compts_1(X1,X0)
              & v8_pre_topc(X0) )
           => v4_pre_topc(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v2_compts_1(X1,X0)
          | ~ v8_pre_topc(X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v2_compts_1(X1,X0)
          | ~ v8_pre_topc(X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f23])).

fof(f45,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(X1,X0)
      | ~ v2_compts_1(X1,X0)
      | ~ v8_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f51,plain,(
    v8_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f54,plain,(
    ~ v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f53,plain,(
    v2_compts_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f52,plain,(
    v2_compts_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_682,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_4217,plain,
    ( ~ r1_tarski(X0,sK1)
    | r1_tarski(X1,sK1)
    | X1 != X0 ),
    inference(instantiation,[status(thm)],[c_682])).

cnf(c_11007,plain,
    ( r1_tarski(X0,sK1)
    | ~ r1_tarski(k4_xboole_0(sK1,X1),sK1)
    | X0 != k4_xboole_0(sK1,X1) ),
    inference(instantiation,[status(thm)],[c_4217])).

cnf(c_16299,plain,
    ( r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK1)
    | ~ r1_tarski(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK1)
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_11007])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1060,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | u1_struct_0(k1_pre_topc(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_17,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_367,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | u1_struct_0(k1_pre_topc(X1,X0)) = X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_17])).

cnf(c_368,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | u1_struct_0(k1_pre_topc(sK0,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_367])).

cnf(c_1054,plain,
    ( u1_struct_0(k1_pre_topc(sK0,X0)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_368])).

cnf(c_1327,plain,
    ( u1_struct_0(k1_pre_topc(sK0,sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_1060,c_1054])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1061,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1065,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1657,plain,
    ( r1_tarski(sK2,u1_struct_0(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1061,c_1065])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k4_xboole_0(X2,k4_xboole_0(X2,X0)) = k9_subset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_3,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_131,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_3])).

cnf(c_132,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_131])).

cnf(c_167,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X2,k4_xboole_0(X2,X0)) = k9_subset_1(X1,X2,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_1,c_132])).

cnf(c_1059,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k9_subset_1(X2,X0,X1)
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_167])).

cnf(c_2,plain,
    ( k1_setfam_1(k1_enumset1(X0,X0,X1)) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1068,plain,
    ( k1_setfam_1(k1_enumset1(X0,X0,X1)) = k9_subset_1(X2,X0,X1)
    | r1_tarski(X1,X2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1059,c_2])).

cnf(c_2077,plain,
    ( k1_setfam_1(k1_enumset1(X0,X0,sK2)) = k9_subset_1(u1_struct_0(sK0),X0,sK2) ),
    inference(superposition,[status(thm)],[c_1657,c_1068])).

cnf(c_0,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_1067,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1558,plain,
    ( r1_tarski(k1_setfam_1(k1_enumset1(X0,X0,X1)),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2,c_1067])).

cnf(c_2283,plain,
    ( r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,sK2),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2077,c_1558])).

cnf(c_1066,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_5,plain,
    ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_7,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_242,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X4)))
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X4)
    | X4 != X1
    | k1_pre_topc(X1,X0) != X3 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_7])).

cnf(c_243,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k1_pre_topc(X1,X0))))
    | ~ l1_pre_topc(X1) ),
    inference(unflattening,[status(thm)],[c_242])).

cnf(c_354,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k1_pre_topc(X1,X0))))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_243,c_17])).

cnf(c_355,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X1))))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unflattening,[status(thm)],[c_354])).

cnf(c_1055,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X1)))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_355])).

cnf(c_1929,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | r1_tarski(X1,u1_struct_0(k1_pre_topc(sK0,X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1066,c_1055])).

cnf(c_2861,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k9_subset_1(u1_struct_0(sK0),u1_struct_0(k1_pre_topc(sK0,X0)),sK2),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2283,c_1929])).

cnf(c_13559,plain,
    ( m1_subset_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1327,c_2861])).

cnf(c_13591,plain,
    ( m1_subset_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_13559])).

cnf(c_10,plain,
    ( ~ v2_compts_1(X0,X1)
    | v2_compts_1(X2,X1)
    | ~ v4_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_18,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_288,plain,
    ( ~ v2_compts_1(X0,X1)
    | v2_compts_1(X2,X1)
    | ~ v4_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | ~ l1_pre_topc(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_18])).

cnf(c_289,plain,
    ( ~ v2_compts_1(X0,sK0)
    | v2_compts_1(X1,sK0)
    | ~ v4_pre_topc(X1,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ r1_tarski(X1,X0)
    | ~ l1_pre_topc(sK0) ),
    inference(unflattening,[status(thm)],[c_288])).

cnf(c_291,plain,
    ( ~ r1_tarski(X1,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ v4_pre_topc(X1,sK0)
    | v2_compts_1(X1,sK0)
    | ~ v2_compts_1(X0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_289,c_17])).

cnf(c_292,plain,
    ( ~ v2_compts_1(X0,sK0)
    | v2_compts_1(X1,sK0)
    | ~ v4_pre_topc(X1,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ r1_tarski(X1,X0) ),
    inference(renaming,[status(thm)],[c_291])).

cnf(c_1145,plain,
    ( v2_compts_1(X0,sK0)
    | ~ v2_compts_1(sK1,sK0)
    | ~ v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ r1_tarski(X0,sK1) ),
    inference(instantiation,[status(thm)],[c_292])).

cnf(c_10168,plain,
    ( v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
    | ~ v2_compts_1(sK1,sK0)
    | ~ v4_pre_topc(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
    | ~ m1_subset_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK1) ),
    inference(instantiation,[status(thm)],[c_1145])).

cnf(c_689,plain,
    ( ~ v4_pre_topc(X0,X1)
    | v4_pre_topc(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1196,plain,
    ( ~ v4_pre_topc(X0,X1)
    | v4_pre_topc(X2,sK0)
    | X2 != X0
    | sK0 != X1 ),
    inference(instantiation,[status(thm)],[c_689])).

cnf(c_1533,plain,
    ( v4_pre_topc(X0,sK0)
    | ~ v4_pre_topc(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)
    | X0 != k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_1196])).

cnf(c_5250,plain,
    ( v4_pre_topc(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
    | ~ v4_pre_topc(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_1533])).

cnf(c_2580,plain,
    ( ~ r1_tarski(sK2,u1_struct_0(sK0))
    | k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) = k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_167])).

cnf(c_2313,plain,
    ( r1_tarski(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK1) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_680,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1188,plain,
    ( X0 != X1
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != X1
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) = X0 ),
    inference(instantiation,[status(thm)],[c_680])).

cnf(c_1344,plain,
    ( X0 != k9_subset_1(u1_struct_0(sK0),sK1,sK2)
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) = X0
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_1188])).

cnf(c_1707,plain,
    ( k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k9_subset_1(u1_struct_0(sK0),sK1,sK2)
    | k9_subset_1(u1_struct_0(sK0),sK1,sK2) = k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))
    | k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) != k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_1344])).

cnf(c_1218,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(X0,u1_struct_0(sK0)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1401,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(sK2,u1_struct_0(sK0)) ),
    inference(instantiation,[status(thm)],[c_1218])).

cnf(c_8,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ v4_pre_topc(X2,X1)
    | v4_pre_topc(k4_xboole_0(X2,k4_xboole_0(X2,X0)),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_314,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ v4_pre_topc(X2,X1)
    | v4_pre_topc(k4_xboole_0(X2,k4_xboole_0(X2,X0)),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_18])).

cnf(c_315,plain,
    ( ~ v4_pre_topc(X0,sK0)
    | ~ v4_pre_topc(X1,sK0)
    | v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X0)),sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0) ),
    inference(unflattening,[status(thm)],[c_314])).

cnf(c_319,plain,
    ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X0)),sK0)
    | ~ v4_pre_topc(X1,sK0)
    | ~ v4_pre_topc(X0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_315,c_17])).

cnf(c_320,plain,
    ( ~ v4_pre_topc(X0,sK0)
    | ~ v4_pre_topc(X1,sK0)
    | v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X0)),sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(renaming,[status(thm)],[c_319])).

cnf(c_1202,plain,
    ( ~ v4_pre_topc(X0,sK0)
    | v4_pre_topc(k4_xboole_0(X0,k4_xboole_0(X0,sK2)),sK0)
    | ~ v4_pre_topc(sK2,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_320])).

cnf(c_1352,plain,
    ( v4_pre_topc(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)
    | ~ v4_pre_topc(sK2,sK0)
    | ~ v4_pre_topc(sK1,sK0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_1202])).

cnf(c_679,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1341,plain,
    ( k9_subset_1(u1_struct_0(sK0),sK1,sK2) = k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_679])).

cnf(c_9,plain,
    ( ~ v2_compts_1(X0,X1)
    | v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v8_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_14,negated_conjecture,
    ( v8_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_263,plain,
    ( ~ v2_compts_1(X0,X1)
    | v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_14])).

cnf(c_264,plain,
    ( ~ v2_compts_1(X0,sK0)
    | v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ v2_pre_topc(sK0)
    | ~ l1_pre_topc(sK0) ),
    inference(unflattening,[status(thm)],[c_263])).

cnf(c_268,plain,
    ( ~ v2_compts_1(X0,sK0)
    | v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_264,c_18,c_17])).

cnf(c_1106,plain,
    ( ~ v2_compts_1(sK1,sK0)
    | v4_pre_topc(sK1,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_268])).

cnf(c_1103,plain,
    ( ~ v2_compts_1(sK2,sK0)
    | v4_pre_topc(sK2,sK0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_268])).

cnf(c_702,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_679])).

cnf(c_11,negated_conjecture,
    ( ~ v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_12,negated_conjecture,
    ( v2_compts_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_13,negated_conjecture,
    ( v2_compts_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f52])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_16299,c_13591,c_10168,c_5250,c_2580,c_2313,c_1707,c_1401,c_1352,c_1341,c_1106,c_1103,c_702,c_11,c_12,c_13,c_15,c_16])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.33  % Computer   : n021.cluster.edu
% 0.14/0.33  % Model      : x86_64 x86_64
% 0.14/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.33  % Memory     : 8042.1875MB
% 0.14/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.33  % CPULimit   : 60
% 0.14/0.33  % WCLimit    : 600
% 0.14/0.33  % DateTime   : Tue Dec  1 15:37:34 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 7.85/1.49  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.85/1.49  
% 7.85/1.49  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.85/1.49  
% 7.85/1.49  ------  iProver source info
% 7.85/1.49  
% 7.85/1.49  git: date: 2020-06-30 10:37:57 +0100
% 7.85/1.49  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.85/1.49  git: non_committed_changes: false
% 7.85/1.49  git: last_make_outside_of_git: false
% 7.85/1.49  
% 7.85/1.49  ------ 
% 7.85/1.49  
% 7.85/1.49  ------ Input Options
% 7.85/1.49  
% 7.85/1.49  --out_options                           all
% 7.85/1.49  --tptp_safe_out                         true
% 7.85/1.49  --problem_path                          ""
% 7.85/1.49  --include_path                          ""
% 7.85/1.49  --clausifier                            res/vclausify_rel
% 7.85/1.49  --clausifier_options                    ""
% 7.85/1.49  --stdin                                 false
% 7.85/1.49  --stats_out                             all
% 7.85/1.49  
% 7.85/1.49  ------ General Options
% 7.85/1.49  
% 7.85/1.49  --fof                                   false
% 7.85/1.49  --time_out_real                         305.
% 7.85/1.49  --time_out_virtual                      -1.
% 7.85/1.49  --symbol_type_check                     false
% 7.85/1.49  --clausify_out                          false
% 7.85/1.49  --sig_cnt_out                           false
% 7.85/1.49  --trig_cnt_out                          false
% 7.85/1.49  --trig_cnt_out_tolerance                1.
% 7.85/1.49  --trig_cnt_out_sk_spl                   false
% 7.85/1.49  --abstr_cl_out                          false
% 7.85/1.49  
% 7.85/1.49  ------ Global Options
% 7.85/1.49  
% 7.85/1.49  --schedule                              default
% 7.85/1.49  --add_important_lit                     false
% 7.85/1.49  --prop_solver_per_cl                    1000
% 7.85/1.49  --min_unsat_core                        false
% 7.85/1.49  --soft_assumptions                      false
% 7.85/1.49  --soft_lemma_size                       3
% 7.85/1.49  --prop_impl_unit_size                   0
% 7.85/1.49  --prop_impl_unit                        []
% 7.85/1.49  --share_sel_clauses                     true
% 7.85/1.49  --reset_solvers                         false
% 7.85/1.49  --bc_imp_inh                            [conj_cone]
% 7.85/1.49  --conj_cone_tolerance                   3.
% 7.85/1.49  --extra_neg_conj                        none
% 7.85/1.49  --large_theory_mode                     true
% 7.85/1.49  --prolific_symb_bound                   200
% 7.85/1.49  --lt_threshold                          2000
% 7.85/1.49  --clause_weak_htbl                      true
% 7.85/1.49  --gc_record_bc_elim                     false
% 7.85/1.49  
% 7.85/1.49  ------ Preprocessing Options
% 7.85/1.49  
% 7.85/1.49  --preprocessing_flag                    true
% 7.85/1.49  --time_out_prep_mult                    0.1
% 7.85/1.49  --splitting_mode                        input
% 7.85/1.49  --splitting_grd                         true
% 7.85/1.49  --splitting_cvd                         false
% 7.85/1.49  --splitting_cvd_svl                     false
% 7.85/1.49  --splitting_nvd                         32
% 7.85/1.49  --sub_typing                            true
% 7.85/1.49  --prep_gs_sim                           true
% 7.85/1.49  --prep_unflatten                        true
% 7.85/1.49  --prep_res_sim                          true
% 7.85/1.49  --prep_upred                            true
% 7.85/1.49  --prep_sem_filter                       exhaustive
% 7.85/1.49  --prep_sem_filter_out                   false
% 7.85/1.49  --pred_elim                             true
% 7.85/1.49  --res_sim_input                         true
% 7.85/1.49  --eq_ax_congr_red                       true
% 7.85/1.49  --pure_diseq_elim                       true
% 7.85/1.49  --brand_transform                       false
% 7.85/1.49  --non_eq_to_eq                          false
% 7.85/1.49  --prep_def_merge                        true
% 7.85/1.49  --prep_def_merge_prop_impl              false
% 7.85/1.49  --prep_def_merge_mbd                    true
% 7.85/1.49  --prep_def_merge_tr_red                 false
% 7.85/1.49  --prep_def_merge_tr_cl                  false
% 7.85/1.49  --smt_preprocessing                     true
% 7.85/1.49  --smt_ac_axioms                         fast
% 7.85/1.49  --preprocessed_out                      false
% 7.85/1.49  --preprocessed_stats                    false
% 7.85/1.49  
% 7.85/1.49  ------ Abstraction refinement Options
% 7.85/1.49  
% 7.85/1.49  --abstr_ref                             []
% 7.85/1.49  --abstr_ref_prep                        false
% 7.85/1.49  --abstr_ref_until_sat                   false
% 7.85/1.49  --abstr_ref_sig_restrict                funpre
% 7.85/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.85/1.49  --abstr_ref_under                       []
% 7.85/1.49  
% 7.85/1.49  ------ SAT Options
% 7.85/1.49  
% 7.85/1.49  --sat_mode                              false
% 7.85/1.49  --sat_fm_restart_options                ""
% 7.85/1.49  --sat_gr_def                            false
% 7.85/1.49  --sat_epr_types                         true
% 7.85/1.49  --sat_non_cyclic_types                  false
% 7.85/1.49  --sat_finite_models                     false
% 7.85/1.49  --sat_fm_lemmas                         false
% 7.85/1.49  --sat_fm_prep                           false
% 7.85/1.49  --sat_fm_uc_incr                        true
% 7.85/1.49  --sat_out_model                         small
% 7.85/1.49  --sat_out_clauses                       false
% 7.85/1.49  
% 7.85/1.49  ------ QBF Options
% 7.85/1.49  
% 7.85/1.49  --qbf_mode                              false
% 7.85/1.49  --qbf_elim_univ                         false
% 7.85/1.49  --qbf_dom_inst                          none
% 7.85/1.49  --qbf_dom_pre_inst                      false
% 7.85/1.49  --qbf_sk_in                             false
% 7.85/1.49  --qbf_pred_elim                         true
% 7.85/1.49  --qbf_split                             512
% 7.85/1.49  
% 7.85/1.49  ------ BMC1 Options
% 7.85/1.49  
% 7.85/1.49  --bmc1_incremental                      false
% 7.85/1.49  --bmc1_axioms                           reachable_all
% 7.85/1.49  --bmc1_min_bound                        0
% 7.85/1.49  --bmc1_max_bound                        -1
% 7.85/1.49  --bmc1_max_bound_default                -1
% 7.85/1.49  --bmc1_symbol_reachability              true
% 7.85/1.49  --bmc1_property_lemmas                  false
% 7.85/1.49  --bmc1_k_induction                      false
% 7.85/1.49  --bmc1_non_equiv_states                 false
% 7.85/1.49  --bmc1_deadlock                         false
% 7.85/1.49  --bmc1_ucm                              false
% 7.85/1.49  --bmc1_add_unsat_core                   none
% 7.85/1.49  --bmc1_unsat_core_children              false
% 7.85/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.85/1.49  --bmc1_out_stat                         full
% 7.85/1.49  --bmc1_ground_init                      false
% 7.85/1.49  --bmc1_pre_inst_next_state              false
% 7.85/1.49  --bmc1_pre_inst_state                   false
% 7.85/1.49  --bmc1_pre_inst_reach_state             false
% 7.85/1.49  --bmc1_out_unsat_core                   false
% 7.85/1.49  --bmc1_aig_witness_out                  false
% 7.85/1.49  --bmc1_verbose                          false
% 7.85/1.49  --bmc1_dump_clauses_tptp                false
% 7.85/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.85/1.49  --bmc1_dump_file                        -
% 7.85/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.85/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.85/1.49  --bmc1_ucm_extend_mode                  1
% 7.85/1.49  --bmc1_ucm_init_mode                    2
% 7.85/1.49  --bmc1_ucm_cone_mode                    none
% 7.85/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.85/1.49  --bmc1_ucm_relax_model                  4
% 7.85/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.85/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.85/1.49  --bmc1_ucm_layered_model                none
% 7.85/1.49  --bmc1_ucm_max_lemma_size               10
% 7.85/1.49  
% 7.85/1.49  ------ AIG Options
% 7.85/1.49  
% 7.85/1.49  --aig_mode                              false
% 7.85/1.49  
% 7.85/1.49  ------ Instantiation Options
% 7.85/1.49  
% 7.85/1.49  --instantiation_flag                    true
% 7.85/1.49  --inst_sos_flag                         true
% 7.85/1.49  --inst_sos_phase                        true
% 7.85/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.85/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.85/1.49  --inst_lit_sel_side                     num_symb
% 7.85/1.49  --inst_solver_per_active                1400
% 7.85/1.49  --inst_solver_calls_frac                1.
% 7.85/1.49  --inst_passive_queue_type               priority_queues
% 7.85/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.85/1.49  --inst_passive_queues_freq              [25;2]
% 7.85/1.49  --inst_dismatching                      true
% 7.85/1.49  --inst_eager_unprocessed_to_passive     true
% 7.85/1.49  --inst_prop_sim_given                   true
% 7.85/1.49  --inst_prop_sim_new                     false
% 7.85/1.49  --inst_subs_new                         false
% 7.85/1.49  --inst_eq_res_simp                      false
% 7.85/1.49  --inst_subs_given                       false
% 7.85/1.49  --inst_orphan_elimination               true
% 7.85/1.49  --inst_learning_loop_flag               true
% 7.85/1.49  --inst_learning_start                   3000
% 7.85/1.49  --inst_learning_factor                  2
% 7.85/1.49  --inst_start_prop_sim_after_learn       3
% 7.85/1.49  --inst_sel_renew                        solver
% 7.85/1.49  --inst_lit_activity_flag                true
% 7.85/1.49  --inst_restr_to_given                   false
% 7.85/1.49  --inst_activity_threshold               500
% 7.85/1.49  --inst_out_proof                        true
% 7.85/1.49  
% 7.85/1.49  ------ Resolution Options
% 7.85/1.49  
% 7.85/1.49  --resolution_flag                       true
% 7.85/1.49  --res_lit_sel                           adaptive
% 7.85/1.49  --res_lit_sel_side                      none
% 7.85/1.49  --res_ordering                          kbo
% 7.85/1.49  --res_to_prop_solver                    active
% 7.85/1.49  --res_prop_simpl_new                    false
% 7.85/1.49  --res_prop_simpl_given                  true
% 7.85/1.49  --res_passive_queue_type                priority_queues
% 7.85/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.85/1.49  --res_passive_queues_freq               [15;5]
% 7.85/1.49  --res_forward_subs                      full
% 7.85/1.49  --res_backward_subs                     full
% 7.85/1.49  --res_forward_subs_resolution           true
% 7.85/1.49  --res_backward_subs_resolution          true
% 7.85/1.49  --res_orphan_elimination                true
% 7.85/1.49  --res_time_limit                        2.
% 7.85/1.49  --res_out_proof                         true
% 7.85/1.49  
% 7.85/1.49  ------ Superposition Options
% 7.85/1.49  
% 7.85/1.49  --superposition_flag                    true
% 7.85/1.49  --sup_passive_queue_type                priority_queues
% 7.85/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.85/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.85/1.49  --demod_completeness_check              fast
% 7.85/1.49  --demod_use_ground                      true
% 7.85/1.49  --sup_to_prop_solver                    passive
% 7.85/1.49  --sup_prop_simpl_new                    true
% 7.85/1.49  --sup_prop_simpl_given                  true
% 7.85/1.49  --sup_fun_splitting                     true
% 7.85/1.49  --sup_smt_interval                      50000
% 7.85/1.49  
% 7.85/1.49  ------ Superposition Simplification Setup
% 7.85/1.49  
% 7.85/1.49  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.85/1.49  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.85/1.49  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.85/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.85/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.85/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.85/1.49  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.85/1.49  --sup_immed_triv                        [TrivRules]
% 7.85/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.85/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.85/1.49  --sup_immed_bw_main                     []
% 7.85/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.85/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.85/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.85/1.49  --sup_input_bw                          []
% 7.85/1.49  
% 7.85/1.49  ------ Combination Options
% 7.85/1.49  
% 7.85/1.49  --comb_res_mult                         3
% 7.85/1.49  --comb_sup_mult                         2
% 7.85/1.49  --comb_inst_mult                        10
% 7.85/1.49  
% 7.85/1.49  ------ Debug Options
% 7.85/1.49  
% 7.85/1.49  --dbg_backtrace                         false
% 7.85/1.49  --dbg_dump_prop_clauses                 false
% 7.85/1.49  --dbg_dump_prop_clauses_file            -
% 7.85/1.49  --dbg_out_stat                          false
% 7.85/1.49  ------ Parsing...
% 7.85/1.49  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.85/1.49  
% 7.85/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 7.85/1.49  
% 7.85/1.49  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.85/1.49  
% 7.85/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.85/1.49  ------ Proving...
% 7.85/1.49  ------ Problem Properties 
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  clauses                                 15
% 7.85/1.49  conjectures                             5
% 7.85/1.49  EPR                                     2
% 7.85/1.49  Horn                                    15
% 7.85/1.49  unary                                   7
% 7.85/1.49  binary                                  4
% 7.85/1.49  lits                                    32
% 7.85/1.49  lits eq                                 3
% 7.85/1.49  fd_pure                                 0
% 7.85/1.49  fd_pseudo                               0
% 7.85/1.49  fd_cond                                 0
% 7.85/1.49  fd_pseudo_cond                          0
% 7.85/1.49  AC symbols                              0
% 7.85/1.49  
% 7.85/1.49  ------ Schedule dynamic 5 is on 
% 7.85/1.49  
% 7.85/1.49  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  ------ 
% 7.85/1.49  Current options:
% 7.85/1.49  ------ 
% 7.85/1.49  
% 7.85/1.49  ------ Input Options
% 7.85/1.49  
% 7.85/1.49  --out_options                           all
% 7.85/1.49  --tptp_safe_out                         true
% 7.85/1.49  --problem_path                          ""
% 7.85/1.49  --include_path                          ""
% 7.85/1.49  --clausifier                            res/vclausify_rel
% 7.85/1.49  --clausifier_options                    ""
% 7.85/1.49  --stdin                                 false
% 7.85/1.49  --stats_out                             all
% 7.85/1.49  
% 7.85/1.49  ------ General Options
% 7.85/1.49  
% 7.85/1.49  --fof                                   false
% 7.85/1.49  --time_out_real                         305.
% 7.85/1.49  --time_out_virtual                      -1.
% 7.85/1.49  --symbol_type_check                     false
% 7.85/1.49  --clausify_out                          false
% 7.85/1.49  --sig_cnt_out                           false
% 7.85/1.49  --trig_cnt_out                          false
% 7.85/1.49  --trig_cnt_out_tolerance                1.
% 7.85/1.49  --trig_cnt_out_sk_spl                   false
% 7.85/1.49  --abstr_cl_out                          false
% 7.85/1.49  
% 7.85/1.49  ------ Global Options
% 7.85/1.49  
% 7.85/1.49  --schedule                              default
% 7.85/1.49  --add_important_lit                     false
% 7.85/1.49  --prop_solver_per_cl                    1000
% 7.85/1.49  --min_unsat_core                        false
% 7.85/1.49  --soft_assumptions                      false
% 7.85/1.49  --soft_lemma_size                       3
% 7.85/1.49  --prop_impl_unit_size                   0
% 7.85/1.49  --prop_impl_unit                        []
% 7.85/1.49  --share_sel_clauses                     true
% 7.85/1.49  --reset_solvers                         false
% 7.85/1.49  --bc_imp_inh                            [conj_cone]
% 7.85/1.49  --conj_cone_tolerance                   3.
% 7.85/1.49  --extra_neg_conj                        none
% 7.85/1.49  --large_theory_mode                     true
% 7.85/1.49  --prolific_symb_bound                   200
% 7.85/1.49  --lt_threshold                          2000
% 7.85/1.49  --clause_weak_htbl                      true
% 7.85/1.49  --gc_record_bc_elim                     false
% 7.85/1.49  
% 7.85/1.49  ------ Preprocessing Options
% 7.85/1.49  
% 7.85/1.49  --preprocessing_flag                    true
% 7.85/1.49  --time_out_prep_mult                    0.1
% 7.85/1.49  --splitting_mode                        input
% 7.85/1.49  --splitting_grd                         true
% 7.85/1.49  --splitting_cvd                         false
% 7.85/1.49  --splitting_cvd_svl                     false
% 7.85/1.49  --splitting_nvd                         32
% 7.85/1.49  --sub_typing                            true
% 7.85/1.49  --prep_gs_sim                           true
% 7.85/1.49  --prep_unflatten                        true
% 7.85/1.49  --prep_res_sim                          true
% 7.85/1.49  --prep_upred                            true
% 7.85/1.49  --prep_sem_filter                       exhaustive
% 7.85/1.49  --prep_sem_filter_out                   false
% 7.85/1.49  --pred_elim                             true
% 7.85/1.49  --res_sim_input                         true
% 7.85/1.49  --eq_ax_congr_red                       true
% 7.85/1.49  --pure_diseq_elim                       true
% 7.85/1.49  --brand_transform                       false
% 7.85/1.49  --non_eq_to_eq                          false
% 7.85/1.49  --prep_def_merge                        true
% 7.85/1.49  --prep_def_merge_prop_impl              false
% 7.85/1.49  --prep_def_merge_mbd                    true
% 7.85/1.49  --prep_def_merge_tr_red                 false
% 7.85/1.49  --prep_def_merge_tr_cl                  false
% 7.85/1.49  --smt_preprocessing                     true
% 7.85/1.49  --smt_ac_axioms                         fast
% 7.85/1.49  --preprocessed_out                      false
% 7.85/1.49  --preprocessed_stats                    false
% 7.85/1.49  
% 7.85/1.49  ------ Abstraction refinement Options
% 7.85/1.49  
% 7.85/1.49  --abstr_ref                             []
% 7.85/1.49  --abstr_ref_prep                        false
% 7.85/1.49  --abstr_ref_until_sat                   false
% 7.85/1.49  --abstr_ref_sig_restrict                funpre
% 7.85/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.85/1.49  --abstr_ref_under                       []
% 7.85/1.49  
% 7.85/1.49  ------ SAT Options
% 7.85/1.49  
% 7.85/1.49  --sat_mode                              false
% 7.85/1.49  --sat_fm_restart_options                ""
% 7.85/1.49  --sat_gr_def                            false
% 7.85/1.49  --sat_epr_types                         true
% 7.85/1.49  --sat_non_cyclic_types                  false
% 7.85/1.49  --sat_finite_models                     false
% 7.85/1.49  --sat_fm_lemmas                         false
% 7.85/1.49  --sat_fm_prep                           false
% 7.85/1.49  --sat_fm_uc_incr                        true
% 7.85/1.49  --sat_out_model                         small
% 7.85/1.49  --sat_out_clauses                       false
% 7.85/1.49  
% 7.85/1.49  ------ QBF Options
% 7.85/1.49  
% 7.85/1.49  --qbf_mode                              false
% 7.85/1.49  --qbf_elim_univ                         false
% 7.85/1.49  --qbf_dom_inst                          none
% 7.85/1.49  --qbf_dom_pre_inst                      false
% 7.85/1.49  --qbf_sk_in                             false
% 7.85/1.49  --qbf_pred_elim                         true
% 7.85/1.49  --qbf_split                             512
% 7.85/1.49  
% 7.85/1.49  ------ BMC1 Options
% 7.85/1.49  
% 7.85/1.49  --bmc1_incremental                      false
% 7.85/1.49  --bmc1_axioms                           reachable_all
% 7.85/1.49  --bmc1_min_bound                        0
% 7.85/1.49  --bmc1_max_bound                        -1
% 7.85/1.49  --bmc1_max_bound_default                -1
% 7.85/1.49  --bmc1_symbol_reachability              true
% 7.85/1.49  --bmc1_property_lemmas                  false
% 7.85/1.49  --bmc1_k_induction                      false
% 7.85/1.49  --bmc1_non_equiv_states                 false
% 7.85/1.49  --bmc1_deadlock                         false
% 7.85/1.49  --bmc1_ucm                              false
% 7.85/1.49  --bmc1_add_unsat_core                   none
% 7.85/1.49  --bmc1_unsat_core_children              false
% 7.85/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.85/1.49  --bmc1_out_stat                         full
% 7.85/1.49  --bmc1_ground_init                      false
% 7.85/1.49  --bmc1_pre_inst_next_state              false
% 7.85/1.49  --bmc1_pre_inst_state                   false
% 7.85/1.49  --bmc1_pre_inst_reach_state             false
% 7.85/1.49  --bmc1_out_unsat_core                   false
% 7.85/1.49  --bmc1_aig_witness_out                  false
% 7.85/1.49  --bmc1_verbose                          false
% 7.85/1.49  --bmc1_dump_clauses_tptp                false
% 7.85/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.85/1.49  --bmc1_dump_file                        -
% 7.85/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.85/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.85/1.49  --bmc1_ucm_extend_mode                  1
% 7.85/1.49  --bmc1_ucm_init_mode                    2
% 7.85/1.49  --bmc1_ucm_cone_mode                    none
% 7.85/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.85/1.49  --bmc1_ucm_relax_model                  4
% 7.85/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.85/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.85/1.49  --bmc1_ucm_layered_model                none
% 7.85/1.49  --bmc1_ucm_max_lemma_size               10
% 7.85/1.49  
% 7.85/1.49  ------ AIG Options
% 7.85/1.49  
% 7.85/1.49  --aig_mode                              false
% 7.85/1.49  
% 7.85/1.49  ------ Instantiation Options
% 7.85/1.49  
% 7.85/1.49  --instantiation_flag                    true
% 7.85/1.49  --inst_sos_flag                         true
% 7.85/1.49  --inst_sos_phase                        true
% 7.85/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.85/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.85/1.49  --inst_lit_sel_side                     none
% 7.85/1.49  --inst_solver_per_active                1400
% 7.85/1.49  --inst_solver_calls_frac                1.
% 7.85/1.49  --inst_passive_queue_type               priority_queues
% 7.85/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.85/1.49  --inst_passive_queues_freq              [25;2]
% 7.85/1.49  --inst_dismatching                      true
% 7.85/1.49  --inst_eager_unprocessed_to_passive     true
% 7.85/1.49  --inst_prop_sim_given                   true
% 7.85/1.49  --inst_prop_sim_new                     false
% 7.85/1.49  --inst_subs_new                         false
% 7.85/1.49  --inst_eq_res_simp                      false
% 7.85/1.49  --inst_subs_given                       false
% 7.85/1.49  --inst_orphan_elimination               true
% 7.85/1.49  --inst_learning_loop_flag               true
% 7.85/1.49  --inst_learning_start                   3000
% 7.85/1.49  --inst_learning_factor                  2
% 7.85/1.49  --inst_start_prop_sim_after_learn       3
% 7.85/1.49  --inst_sel_renew                        solver
% 7.85/1.49  --inst_lit_activity_flag                true
% 7.85/1.49  --inst_restr_to_given                   false
% 7.85/1.49  --inst_activity_threshold               500
% 7.85/1.49  --inst_out_proof                        true
% 7.85/1.49  
% 7.85/1.49  ------ Resolution Options
% 7.85/1.49  
% 7.85/1.49  --resolution_flag                       false
% 7.85/1.49  --res_lit_sel                           adaptive
% 7.85/1.49  --res_lit_sel_side                      none
% 7.85/1.49  --res_ordering                          kbo
% 7.85/1.49  --res_to_prop_solver                    active
% 7.85/1.49  --res_prop_simpl_new                    false
% 7.85/1.49  --res_prop_simpl_given                  true
% 7.85/1.49  --res_passive_queue_type                priority_queues
% 7.85/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.85/1.49  --res_passive_queues_freq               [15;5]
% 7.85/1.49  --res_forward_subs                      full
% 7.85/1.49  --res_backward_subs                     full
% 7.85/1.49  --res_forward_subs_resolution           true
% 7.85/1.49  --res_backward_subs_resolution          true
% 7.85/1.49  --res_orphan_elimination                true
% 7.85/1.49  --res_time_limit                        2.
% 7.85/1.49  --res_out_proof                         true
% 7.85/1.49  
% 7.85/1.49  ------ Superposition Options
% 7.85/1.49  
% 7.85/1.49  --superposition_flag                    true
% 7.85/1.49  --sup_passive_queue_type                priority_queues
% 7.85/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.85/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.85/1.49  --demod_completeness_check              fast
% 7.85/1.49  --demod_use_ground                      true
% 7.85/1.49  --sup_to_prop_solver                    passive
% 7.85/1.49  --sup_prop_simpl_new                    true
% 7.85/1.49  --sup_prop_simpl_given                  true
% 7.85/1.49  --sup_fun_splitting                     true
% 7.85/1.49  --sup_smt_interval                      50000
% 7.85/1.49  
% 7.85/1.49  ------ Superposition Simplification Setup
% 7.85/1.49  
% 7.85/1.49  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.85/1.49  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.85/1.49  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.85/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.85/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.85/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.85/1.49  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.85/1.49  --sup_immed_triv                        [TrivRules]
% 7.85/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.85/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.85/1.49  --sup_immed_bw_main                     []
% 7.85/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.85/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.85/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.85/1.49  --sup_input_bw                          []
% 7.85/1.49  
% 7.85/1.49  ------ Combination Options
% 7.85/1.49  
% 7.85/1.49  --comb_res_mult                         3
% 7.85/1.49  --comb_sup_mult                         2
% 7.85/1.49  --comb_inst_mult                        10
% 7.85/1.49  
% 7.85/1.49  ------ Debug Options
% 7.85/1.49  
% 7.85/1.49  --dbg_backtrace                         false
% 7.85/1.49  --dbg_dump_prop_clauses                 false
% 7.85/1.49  --dbg_dump_prop_clauses_file            -
% 7.85/1.49  --dbg_out_stat                          false
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  ------ Proving...
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  % SZS status Theorem for theBenchmark.p
% 7.85/1.49  
% 7.85/1.49  % SZS output start CNFRefutation for theBenchmark.p
% 7.85/1.49  
% 7.85/1.49  fof(f13,conjecture,(
% 7.85/1.49    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0)) => v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)))))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f14,negated_conjecture,(
% 7.85/1.49    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0)) => v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0)))))),
% 7.85/1.49    inference(negated_conjecture,[],[f13])).
% 7.85/1.49  
% 7.85/1.49  fof(f27,plain,(
% 7.85/1.49    ? [X0] : (? [X1] : (? [X2] : ((~v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0))) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 7.85/1.49    inference(ennf_transformation,[],[f14])).
% 7.85/1.49  
% 7.85/1.49  fof(f28,plain,(
% 7.85/1.49    ? [X0] : (? [X1] : (? [X2] : (~v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 7.85/1.49    inference(flattening,[],[f27])).
% 7.85/1.49  
% 7.85/1.49  fof(f32,plain,(
% 7.85/1.49    ( ! [X0,X1] : (? [X2] : (~v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,sK2),X0) & v2_compts_1(sK2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 7.85/1.49    introduced(choice_axiom,[])).
% 7.85/1.49  
% 7.85/1.49  fof(f31,plain,(
% 7.85/1.49    ( ! [X0] : (? [X1] : (? [X2] : (~v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (? [X2] : (~v2_compts_1(k9_subset_1(u1_struct_0(X0),sK1,X2),X0) & v2_compts_1(X2,X0) & v2_compts_1(sK1,X0) & v8_pre_topc(X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 7.85/1.49    introduced(choice_axiom,[])).
% 7.85/1.49  
% 7.85/1.49  fof(f30,plain,(
% 7.85/1.49    ? [X0] : (? [X1] : (? [X2] : (~v2_compts_1(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & v2_compts_1(X2,X0) & v2_compts_1(X1,X0) & v8_pre_topc(X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (? [X1] : (? [X2] : (~v2_compts_1(k9_subset_1(u1_struct_0(sK0),X1,X2),sK0) & v2_compts_1(X2,sK0) & v2_compts_1(X1,sK0) & v8_pre_topc(sK0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 7.85/1.49    introduced(choice_axiom,[])).
% 7.85/1.49  
% 7.85/1.49  fof(f33,plain,(
% 7.85/1.49    ((~v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) & v2_compts_1(sK2,sK0) & v2_compts_1(sK1,sK0) & v8_pre_topc(sK0) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 7.85/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f28,f32,f31,f30])).
% 7.85/1.49  
% 7.85/1.49  fof(f49,plain,(
% 7.85/1.49    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f8,axiom,(
% 7.85/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => u1_struct_0(k1_pre_topc(X0,X1)) = X1))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f19,plain,(
% 7.85/1.49    ! [X0] : (! [X1] : (u1_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 7.85/1.49    inference(ennf_transformation,[],[f8])).
% 7.85/1.49  
% 7.85/1.49  fof(f42,plain,(
% 7.85/1.49    ( ! [X0,X1] : (u1_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f19])).
% 7.85/1.49  
% 7.85/1.49  fof(f48,plain,(
% 7.85/1.49    l1_pre_topc(sK0)),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f50,plain,(
% 7.85/1.49    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f6,axiom,(
% 7.85/1.49    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f29,plain,(
% 7.85/1.49    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 7.85/1.49    inference(nnf_transformation,[],[f6])).
% 7.85/1.49  
% 7.85/1.49  fof(f39,plain,(
% 7.85/1.49    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 7.85/1.49    inference(cnf_transformation,[],[f29])).
% 7.85/1.49  
% 7.85/1.49  fof(f4,axiom,(
% 7.85/1.49    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f16,plain,(
% 7.85/1.49    ! [X0,X1,X2] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 7.85/1.49    inference(ennf_transformation,[],[f4])).
% 7.85/1.49  
% 7.85/1.49  fof(f37,plain,(
% 7.85/1.49    ( ! [X2,X0,X1] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 7.85/1.49    inference(cnf_transformation,[],[f16])).
% 7.85/1.49  
% 7.85/1.49  fof(f2,axiom,(
% 7.85/1.49    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f35,plain,(
% 7.85/1.49    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f2])).
% 7.85/1.49  
% 7.85/1.49  fof(f55,plain,(
% 7.85/1.49    ( ! [X2,X0,X1] : (k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 7.85/1.49    inference(definition_unfolding,[],[f37,f35])).
% 7.85/1.49  
% 7.85/1.49  fof(f40,plain,(
% 7.85/1.49    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f29])).
% 7.85/1.49  
% 7.85/1.49  fof(f5,axiom,(
% 7.85/1.49    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f38,plain,(
% 7.85/1.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 7.85/1.49    inference(cnf_transformation,[],[f5])).
% 7.85/1.49  
% 7.85/1.49  fof(f3,axiom,(
% 7.85/1.49    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f36,plain,(
% 7.85/1.49    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f3])).
% 7.85/1.49  
% 7.85/1.49  fof(f56,plain,(
% 7.85/1.49    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_setfam_1(k1_enumset1(X0,X0,X1))) )),
% 7.85/1.49    inference(definition_unfolding,[],[f38,f35,f36])).
% 7.85/1.49  
% 7.85/1.49  fof(f1,axiom,(
% 7.85/1.49    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f34,plain,(
% 7.85/1.49    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f1])).
% 7.85/1.49  
% 7.85/1.49  fof(f7,axiom,(
% 7.85/1.49    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => (m1_pre_topc(k1_pre_topc(X0,X1),X0) & v1_pre_topc(k1_pre_topc(X0,X1))))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f15,plain,(
% 7.85/1.49    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_pre_topc(k1_pre_topc(X0,X1),X0))),
% 7.85/1.49    inference(pure_predicate_removal,[],[f7])).
% 7.85/1.49  
% 7.85/1.49  fof(f17,plain,(
% 7.85/1.49    ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 7.85/1.49    inference(ennf_transformation,[],[f15])).
% 7.85/1.49  
% 7.85/1.49  fof(f18,plain,(
% 7.85/1.49    ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 7.85/1.49    inference(flattening,[],[f17])).
% 7.85/1.49  
% 7.85/1.49  fof(f41,plain,(
% 7.85/1.49    ( ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f18])).
% 7.85/1.49  
% 7.85/1.49  fof(f9,axiom,(
% 7.85/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f20,plain,(
% 7.85/1.49    ! [X0] : (! [X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 7.85/1.49    inference(ennf_transformation,[],[f9])).
% 7.85/1.49  
% 7.85/1.49  fof(f43,plain,(
% 7.85/1.49    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f20])).
% 7.85/1.49  
% 7.85/1.49  fof(f12,axiom,(
% 7.85/1.49    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v4_pre_topc(X2,X0) & r1_tarski(X2,X1) & v2_compts_1(X1,X0)) => v2_compts_1(X2,X0)))))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f25,plain,(
% 7.85/1.49    ! [X0] : (! [X1] : (! [X2] : ((v2_compts_1(X2,X0) | (~v4_pre_topc(X2,X0) | ~r1_tarski(X2,X1) | ~v2_compts_1(X1,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 7.85/1.49    inference(ennf_transformation,[],[f12])).
% 7.85/1.49  
% 7.85/1.49  fof(f26,plain,(
% 7.85/1.49    ! [X0] : (! [X1] : (! [X2] : (v2_compts_1(X2,X0) | ~v4_pre_topc(X2,X0) | ~r1_tarski(X2,X1) | ~v2_compts_1(X1,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 7.85/1.49    inference(flattening,[],[f25])).
% 7.85/1.49  
% 7.85/1.49  fof(f46,plain,(
% 7.85/1.49    ( ! [X2,X0,X1] : (v2_compts_1(X2,X0) | ~v4_pre_topc(X2,X0) | ~r1_tarski(X2,X1) | ~v2_compts_1(X1,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f26])).
% 7.85/1.49  
% 7.85/1.49  fof(f47,plain,(
% 7.85/1.49    v2_pre_topc(sK0)),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f10,axiom,(
% 7.85/1.49    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v4_pre_topc(X2,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v4_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0)) => v4_pre_topc(k3_xboole_0(X1,X2),X0))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f21,plain,(
% 7.85/1.49    ! [X0,X1,X2] : (v4_pre_topc(k3_xboole_0(X1,X2),X0) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 7.85/1.49    inference(ennf_transformation,[],[f10])).
% 7.85/1.49  
% 7.85/1.49  fof(f22,plain,(
% 7.85/1.49    ! [X0,X1,X2] : (v4_pre_topc(k3_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 7.85/1.49    inference(flattening,[],[f21])).
% 7.85/1.49  
% 7.85/1.49  fof(f44,plain,(
% 7.85/1.49    ( ! [X2,X0,X1] : (v4_pre_topc(k3_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f22])).
% 7.85/1.49  
% 7.85/1.49  fof(f57,plain,(
% 7.85/1.49    ( ! [X2,X0,X1] : (v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v4_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 7.85/1.49    inference(definition_unfolding,[],[f44,f35])).
% 7.85/1.49  
% 7.85/1.49  fof(f11,axiom,(
% 7.85/1.49    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_compts_1(X1,X0) & v8_pre_topc(X0)) => v4_pre_topc(X1,X0))))),
% 7.85/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.85/1.49  
% 7.85/1.49  fof(f23,plain,(
% 7.85/1.49    ! [X0] : (! [X1] : ((v4_pre_topc(X1,X0) | (~v2_compts_1(X1,X0) | ~v8_pre_topc(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 7.85/1.49    inference(ennf_transformation,[],[f11])).
% 7.85/1.49  
% 7.85/1.49  fof(f24,plain,(
% 7.85/1.49    ! [X0] : (! [X1] : (v4_pre_topc(X1,X0) | ~v2_compts_1(X1,X0) | ~v8_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 7.85/1.49    inference(flattening,[],[f23])).
% 7.85/1.49  
% 7.85/1.49  fof(f45,plain,(
% 7.85/1.49    ( ! [X0,X1] : (v4_pre_topc(X1,X0) | ~v2_compts_1(X1,X0) | ~v8_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 7.85/1.49    inference(cnf_transformation,[],[f24])).
% 7.85/1.49  
% 7.85/1.49  fof(f51,plain,(
% 7.85/1.49    v8_pre_topc(sK0)),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f54,plain,(
% 7.85/1.49    ~v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f53,plain,(
% 7.85/1.49    v2_compts_1(sK2,sK0)),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  fof(f52,plain,(
% 7.85/1.49    v2_compts_1(sK1,sK0)),
% 7.85/1.49    inference(cnf_transformation,[],[f33])).
% 7.85/1.49  
% 7.85/1.49  cnf(c_682,plain,
% 7.85/1.49      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 7.85/1.49      theory(equality) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_4217,plain,
% 7.85/1.49      ( ~ r1_tarski(X0,sK1) | r1_tarski(X1,sK1) | X1 != X0 ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_682]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_11007,plain,
% 7.85/1.49      ( r1_tarski(X0,sK1)
% 7.85/1.49      | ~ r1_tarski(k4_xboole_0(sK1,X1),sK1)
% 7.85/1.49      | X0 != k4_xboole_0(sK1,X1) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_4217]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_16299,plain,
% 7.85/1.49      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK1)
% 7.85/1.49      | ~ r1_tarski(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK1)
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_11007]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_16,negated_conjecture,
% 7.85/1.49      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(cnf_transformation,[],[f49]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1060,plain,
% 7.85/1.49      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_6,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ l1_pre_topc(X1)
% 7.85/1.49      | u1_struct_0(k1_pre_topc(X1,X0)) = X0 ),
% 7.85/1.49      inference(cnf_transformation,[],[f42]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_17,negated_conjecture,
% 7.85/1.49      ( l1_pre_topc(sK0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f48]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_367,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | u1_struct_0(k1_pre_topc(X1,X0)) = X0
% 7.85/1.49      | sK0 != X1 ),
% 7.85/1.49      inference(resolution_lifted,[status(thm)],[c_6,c_17]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_368,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | u1_struct_0(k1_pre_topc(sK0,X0)) = X0 ),
% 7.85/1.49      inference(unflattening,[status(thm)],[c_367]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1054,plain,
% 7.85/1.49      ( u1_struct_0(k1_pre_topc(sK0,X0)) = X0
% 7.85/1.49      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_368]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1327,plain,
% 7.85/1.49      ( u1_struct_0(k1_pre_topc(sK0,sK1)) = sK1 ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_1060,c_1054]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_15,negated_conjecture,
% 7.85/1.49      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(cnf_transformation,[],[f50]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1061,plain,
% 7.85/1.49      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_4,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 7.85/1.49      inference(cnf_transformation,[],[f39]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1065,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 7.85/1.49      | r1_tarski(X0,X1) = iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1657,plain,
% 7.85/1.49      ( r1_tarski(sK2,u1_struct_0(sK0)) = iProver_top ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_1061,c_1065]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 7.85/1.49      | k4_xboole_0(X2,k4_xboole_0(X2,X0)) = k9_subset_1(X1,X2,X0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f55]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_3,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 7.85/1.49      inference(cnf_transformation,[],[f40]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_131,plain,
% 7.85/1.49      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 7.85/1.49      inference(prop_impl,[status(thm)],[c_3]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_132,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 7.85/1.49      inference(renaming,[status(thm)],[c_131]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_167,plain,
% 7.85/1.49      ( ~ r1_tarski(X0,X1)
% 7.85/1.49      | k4_xboole_0(X2,k4_xboole_0(X2,X0)) = k9_subset_1(X1,X2,X0) ),
% 7.85/1.49      inference(bin_hyper_res,[status(thm)],[c_1,c_132]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1059,plain,
% 7.85/1.49      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k9_subset_1(X2,X0,X1)
% 7.85/1.49      | r1_tarski(X1,X2) != iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_167]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_2,plain,
% 7.85/1.49      ( k1_setfam_1(k1_enumset1(X0,X0,X1)) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
% 7.85/1.49      inference(cnf_transformation,[],[f56]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1068,plain,
% 7.85/1.49      ( k1_setfam_1(k1_enumset1(X0,X0,X1)) = k9_subset_1(X2,X0,X1)
% 7.85/1.49      | r1_tarski(X1,X2) != iProver_top ),
% 7.85/1.49      inference(demodulation,[status(thm)],[c_1059,c_2]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_2077,plain,
% 7.85/1.49      ( k1_setfam_1(k1_enumset1(X0,X0,sK2)) = k9_subset_1(u1_struct_0(sK0),X0,sK2) ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_1657,c_1068]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_0,plain,
% 7.85/1.49      ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f34]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1067,plain,
% 7.85/1.49      ( r1_tarski(k4_xboole_0(X0,X1),X0) = iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1558,plain,
% 7.85/1.49      ( r1_tarski(k1_setfam_1(k1_enumset1(X0,X0,X1)),X0) = iProver_top ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_2,c_1067]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_2283,plain,
% 7.85/1.49      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,sK2),X0) = iProver_top ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_2077,c_1558]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1066,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 7.85/1.49      | r1_tarski(X0,X1) != iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_5,plain,
% 7.85/1.49      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 7.85/1.49      | ~ l1_pre_topc(X0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f41]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_7,plain,
% 7.85/1.49      ( ~ m1_pre_topc(X0,X1)
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
% 7.85/1.49      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ l1_pre_topc(X1) ),
% 7.85/1.49      inference(cnf_transformation,[],[f43]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_242,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))
% 7.85/1.49      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X4)))
% 7.85/1.49      | ~ l1_pre_topc(X1)
% 7.85/1.49      | ~ l1_pre_topc(X4)
% 7.85/1.49      | X4 != X1
% 7.85/1.49      | k1_pre_topc(X1,X0) != X3 ),
% 7.85/1.49      inference(resolution_lifted,[status(thm)],[c_5,c_7]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_243,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k1_pre_topc(X1,X0))))
% 7.85/1.49      | ~ l1_pre_topc(X1) ),
% 7.85/1.49      inference(unflattening,[status(thm)],[c_242]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_354,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(k1_pre_topc(X1,X0))))
% 7.85/1.49      | sK0 != X1 ),
% 7.85/1.49      inference(resolution_lifted,[status(thm)],[c_243,c_17]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_355,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X1))))
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(unflattening,[status(thm)],[c_354]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1055,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X1)))) != iProver_top
% 7.85/1.49      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.85/1.49      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.85/1.49      inference(predicate_to_equality,[status(thm)],[c_355]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1929,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.85/1.49      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 7.85/1.49      | r1_tarski(X1,u1_struct_0(k1_pre_topc(sK0,X0))) != iProver_top ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_1066,c_1055]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_2861,plain,
% 7.85/1.49      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.85/1.49      | m1_subset_1(k9_subset_1(u1_struct_0(sK0),u1_struct_0(k1_pre_topc(sK0,X0)),sK2),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_2283,c_1929]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_13559,plain,
% 7.85/1.49      ( m1_subset_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 7.85/1.49      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.85/1.49      inference(superposition,[status(thm)],[c_1327,c_2861]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_13591,plain,
% 7.85/1.49      ( m1_subset_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(predicate_to_equality_rev,[status(thm)],[c_13559]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_10,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,X1)
% 7.85/1.49      | v2_compts_1(X2,X1)
% 7.85/1.49      | ~ v4_pre_topc(X2,X1)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ r1_tarski(X2,X0)
% 7.85/1.49      | ~ v2_pre_topc(X1)
% 7.85/1.49      | ~ l1_pre_topc(X1) ),
% 7.85/1.49      inference(cnf_transformation,[],[f46]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_18,negated_conjecture,
% 7.85/1.49      ( v2_pre_topc(sK0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f47]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_288,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,X1)
% 7.85/1.49      | v2_compts_1(X2,X1)
% 7.85/1.49      | ~ v4_pre_topc(X2,X1)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ r1_tarski(X2,X0)
% 7.85/1.49      | ~ l1_pre_topc(X1)
% 7.85/1.49      | sK0 != X1 ),
% 7.85/1.49      inference(resolution_lifted,[status(thm)],[c_10,c_18]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_289,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,sK0)
% 7.85/1.49      | v2_compts_1(X1,sK0)
% 7.85/1.49      | ~ v4_pre_topc(X1,sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ r1_tarski(X1,X0)
% 7.85/1.49      | ~ l1_pre_topc(sK0) ),
% 7.85/1.49      inference(unflattening,[status(thm)],[c_288]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_291,plain,
% 7.85/1.49      ( ~ r1_tarski(X1,X0)
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ v4_pre_topc(X1,sK0)
% 7.85/1.49      | v2_compts_1(X1,sK0)
% 7.85/1.49      | ~ v2_compts_1(X0,sK0) ),
% 7.85/1.49      inference(global_propositional_subsumption,
% 7.85/1.49                [status(thm)],
% 7.85/1.49                [c_289,c_17]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_292,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,sK0)
% 7.85/1.49      | v2_compts_1(X1,sK0)
% 7.85/1.49      | ~ v4_pre_topc(X1,sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ r1_tarski(X1,X0) ),
% 7.85/1.49      inference(renaming,[status(thm)],[c_291]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1145,plain,
% 7.85/1.49      ( v2_compts_1(X0,sK0)
% 7.85/1.49      | ~ v2_compts_1(sK1,sK0)
% 7.85/1.49      | ~ v4_pre_topc(X0,sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ r1_tarski(X0,sK1) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_292]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_10168,plain,
% 7.85/1.49      ( v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
% 7.85/1.49      | ~ v2_compts_1(sK1,sK0)
% 7.85/1.49      | ~ v4_pre_topc(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
% 7.85/1.49      | ~ m1_subset_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK1) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1145]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_689,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,X1) | v4_pre_topc(X2,X3) | X2 != X0 | X3 != X1 ),
% 7.85/1.49      theory(equality) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1196,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,X1)
% 7.85/1.49      | v4_pre_topc(X2,sK0)
% 7.85/1.49      | X2 != X0
% 7.85/1.49      | sK0 != X1 ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_689]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1533,plain,
% 7.85/1.49      ( v4_pre_topc(X0,sK0)
% 7.85/1.49      | ~ v4_pre_topc(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)
% 7.85/1.49      | X0 != k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))
% 7.85/1.49      | sK0 != sK0 ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1196]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_5250,plain,
% 7.85/1.49      ( v4_pre_topc(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
% 7.85/1.49      | ~ v4_pre_topc(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))
% 7.85/1.49      | sK0 != sK0 ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1533]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_2580,plain,
% 7.85/1.49      ( ~ r1_tarski(sK2,u1_struct_0(sK0))
% 7.85/1.49      | k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) = k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_167]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_2313,plain,
% 7.85/1.49      ( r1_tarski(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK1) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_0]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_680,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1188,plain,
% 7.85/1.49      ( X0 != X1
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != X1
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) = X0 ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_680]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1344,plain,
% 7.85/1.49      ( X0 != k9_subset_1(u1_struct_0(sK0),sK1,sK2)
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) = X0
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1188]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1707,plain,
% 7.85/1.49      ( k9_subset_1(u1_struct_0(sK0),sK1,sK2) != k9_subset_1(u1_struct_0(sK0),sK1,sK2)
% 7.85/1.49      | k9_subset_1(u1_struct_0(sK0),sK1,sK2) = k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))
% 7.85/1.49      | k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) != k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1344]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1218,plain,
% 7.85/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | r1_tarski(X0,u1_struct_0(sK0)) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_4]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1401,plain,
% 7.85/1.49      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | r1_tarski(sK2,u1_struct_0(sK0)) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1218]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_8,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,X1)
% 7.85/1.49      | ~ v4_pre_topc(X2,X1)
% 7.85/1.49      | v4_pre_topc(k4_xboole_0(X2,k4_xboole_0(X2,X0)),X1)
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ v2_pre_topc(X1)
% 7.85/1.49      | ~ l1_pre_topc(X1) ),
% 7.85/1.49      inference(cnf_transformation,[],[f57]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_314,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,X1)
% 7.85/1.49      | ~ v4_pre_topc(X2,X1)
% 7.85/1.49      | v4_pre_topc(k4_xboole_0(X2,k4_xboole_0(X2,X0)),X1)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ l1_pre_topc(X1)
% 7.85/1.49      | sK0 != X1 ),
% 7.85/1.49      inference(resolution_lifted,[status(thm)],[c_8,c_18]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_315,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,sK0)
% 7.85/1.49      | ~ v4_pre_topc(X1,sK0)
% 7.85/1.49      | v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X0)),sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ l1_pre_topc(sK0) ),
% 7.85/1.49      inference(unflattening,[status(thm)],[c_314]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_319,plain,
% 7.85/1.49      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X0)),sK0)
% 7.85/1.49      | ~ v4_pre_topc(X1,sK0)
% 7.85/1.49      | ~ v4_pre_topc(X0,sK0) ),
% 7.85/1.49      inference(global_propositional_subsumption,
% 7.85/1.49                [status(thm)],
% 7.85/1.49                [c_315,c_17]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_320,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,sK0)
% 7.85/1.49      | ~ v4_pre_topc(X1,sK0)
% 7.85/1.49      | v4_pre_topc(k4_xboole_0(X1,k4_xboole_0(X1,X0)),sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(renaming,[status(thm)],[c_319]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1202,plain,
% 7.85/1.49      ( ~ v4_pre_topc(X0,sK0)
% 7.85/1.49      | v4_pre_topc(k4_xboole_0(X0,k4_xboole_0(X0,sK2)),sK0)
% 7.85/1.49      | ~ v4_pre_topc(sK2,sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_320]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1352,plain,
% 7.85/1.49      ( v4_pre_topc(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)
% 7.85/1.49      | ~ v4_pre_topc(sK2,sK0)
% 7.85/1.49      | ~ v4_pre_topc(sK1,sK0)
% 7.85/1.49      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_1202]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_679,plain,( X0 = X0 ),theory(equality) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1341,plain,
% 7.85/1.49      ( k9_subset_1(u1_struct_0(sK0),sK1,sK2) = k9_subset_1(u1_struct_0(sK0),sK1,sK2) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_679]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_9,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,X1)
% 7.85/1.49      | v4_pre_topc(X0,X1)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ v8_pre_topc(X1)
% 7.85/1.49      | ~ v2_pre_topc(X1)
% 7.85/1.49      | ~ l1_pre_topc(X1) ),
% 7.85/1.49      inference(cnf_transformation,[],[f45]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_14,negated_conjecture,
% 7.85/1.49      ( v8_pre_topc(sK0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f51]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_263,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,X1)
% 7.85/1.49      | v4_pre_topc(X0,X1)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.85/1.49      | ~ v2_pre_topc(X1)
% 7.85/1.49      | ~ l1_pre_topc(X1)
% 7.85/1.49      | sK0 != X1 ),
% 7.85/1.49      inference(resolution_lifted,[status(thm)],[c_9,c_14]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_264,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,sK0)
% 7.85/1.49      | v4_pre_topc(X0,sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.85/1.49      | ~ v2_pre_topc(sK0)
% 7.85/1.49      | ~ l1_pre_topc(sK0) ),
% 7.85/1.49      inference(unflattening,[status(thm)],[c_263]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_268,plain,
% 7.85/1.49      ( ~ v2_compts_1(X0,sK0)
% 7.85/1.49      | v4_pre_topc(X0,sK0)
% 7.85/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(global_propositional_subsumption,
% 7.85/1.49                [status(thm)],
% 7.85/1.49                [c_264,c_18,c_17]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1106,plain,
% 7.85/1.49      ( ~ v2_compts_1(sK1,sK0)
% 7.85/1.49      | v4_pre_topc(sK1,sK0)
% 7.85/1.49      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_268]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_1103,plain,
% 7.85/1.49      ( ~ v2_compts_1(sK2,sK0)
% 7.85/1.49      | v4_pre_topc(sK2,sK0)
% 7.85/1.49      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_268]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_702,plain,
% 7.85/1.49      ( sK0 = sK0 ),
% 7.85/1.49      inference(instantiation,[status(thm)],[c_679]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_11,negated_conjecture,
% 7.85/1.49      ( ~ v2_compts_1(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f54]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_12,negated_conjecture,
% 7.85/1.49      ( v2_compts_1(sK2,sK0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f53]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(c_13,negated_conjecture,
% 7.85/1.49      ( v2_compts_1(sK1,sK0) ),
% 7.85/1.49      inference(cnf_transformation,[],[f52]) ).
% 7.85/1.49  
% 7.85/1.49  cnf(contradiction,plain,
% 7.85/1.49      ( $false ),
% 7.85/1.49      inference(minisat,
% 7.85/1.49                [status(thm)],
% 7.85/1.49                [c_16299,c_13591,c_10168,c_5250,c_2580,c_2313,c_1707,
% 7.85/1.49                 c_1401,c_1352,c_1341,c_1106,c_1103,c_702,c_11,c_12,c_13,
% 7.85/1.49                 c_15,c_16]) ).
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  % SZS output end CNFRefutation for theBenchmark.p
% 7.85/1.49  
% 7.85/1.49  ------                               Statistics
% 7.85/1.49  
% 7.85/1.49  ------ General
% 7.85/1.49  
% 7.85/1.49  abstr_ref_over_cycles:                  0
% 7.85/1.49  abstr_ref_under_cycles:                 0
% 7.85/1.49  gc_basic_clause_elim:                   0
% 7.85/1.49  forced_gc_time:                         0
% 7.85/1.49  parsing_time:                           0.009
% 7.85/1.49  unif_index_cands_time:                  0.
% 7.85/1.49  unif_index_add_time:                    0.
% 7.85/1.49  orderings_time:                         0.
% 7.85/1.49  out_proof_time:                         0.009
% 7.85/1.49  total_time:                             0.631
% 7.85/1.49  num_of_symbols:                         49
% 7.85/1.49  num_of_terms:                           24757
% 7.85/1.49  
% 7.85/1.49  ------ Preprocessing
% 7.85/1.49  
% 7.85/1.49  num_of_splits:                          0
% 7.85/1.49  num_of_split_atoms:                     0
% 7.85/1.49  num_of_reused_defs:                     0
% 7.85/1.49  num_eq_ax_congr_red:                    21
% 7.85/1.49  num_of_sem_filtered_clauses:            1
% 7.85/1.49  num_of_subtypes:                        0
% 7.85/1.49  monotx_restored_types:                  0
% 7.85/1.49  sat_num_of_epr_types:                   0
% 7.85/1.49  sat_num_of_non_cyclic_types:            0
% 7.85/1.49  sat_guarded_non_collapsed_types:        0
% 7.85/1.49  num_pure_diseq_elim:                    0
% 7.85/1.49  simp_replaced_by:                       0
% 7.85/1.49  res_preprocessed:                       89
% 7.85/1.49  prep_upred:                             0
% 7.85/1.49  prep_unflattend:                        23
% 7.85/1.49  smt_new_axioms:                         0
% 7.85/1.49  pred_elim_cands:                        4
% 7.85/1.49  pred_elim:                              4
% 7.85/1.49  pred_elim_cl:                           4
% 7.85/1.49  pred_elim_cycles:                       6
% 7.85/1.49  merged_defs:                            8
% 7.85/1.49  merged_defs_ncl:                        0
% 7.85/1.49  bin_hyper_res:                          9
% 7.85/1.49  prep_cycles:                            4
% 7.85/1.49  pred_elim_time:                         0.005
% 7.85/1.49  splitting_time:                         0.
% 7.85/1.49  sem_filter_time:                        0.
% 7.85/1.49  monotx_time:                            0.001
% 7.85/1.49  subtype_inf_time:                       0.
% 7.85/1.49  
% 7.85/1.49  ------ Problem properties
% 7.85/1.49  
% 7.85/1.49  clauses:                                15
% 7.85/1.49  conjectures:                            5
% 7.85/1.49  epr:                                    2
% 7.85/1.49  horn:                                   15
% 7.85/1.49  ground:                                 5
% 7.85/1.49  unary:                                  7
% 7.85/1.49  binary:                                 4
% 7.85/1.49  lits:                                   32
% 7.85/1.49  lits_eq:                                3
% 7.85/1.49  fd_pure:                                0
% 7.85/1.49  fd_pseudo:                              0
% 7.85/1.49  fd_cond:                                0
% 7.85/1.49  fd_pseudo_cond:                         0
% 7.85/1.49  ac_symbols:                             0
% 7.85/1.49  
% 7.85/1.49  ------ Propositional Solver
% 7.85/1.49  
% 7.85/1.49  prop_solver_calls:                      33
% 7.85/1.49  prop_fast_solver_calls:                 981
% 7.85/1.49  smt_solver_calls:                       0
% 7.85/1.49  smt_fast_solver_calls:                  0
% 7.85/1.49  prop_num_of_clauses:                    8892
% 7.85/1.49  prop_preprocess_simplified:             10610
% 7.85/1.49  prop_fo_subsumed:                       38
% 7.85/1.49  prop_solver_time:                       0.
% 7.85/1.49  smt_solver_time:                        0.
% 7.85/1.49  smt_fast_solver_time:                   0.
% 7.85/1.49  prop_fast_solver_time:                  0.
% 7.85/1.49  prop_unsat_core_time:                   0.001
% 7.85/1.49  
% 7.85/1.49  ------ QBF
% 7.85/1.49  
% 7.85/1.49  qbf_q_res:                              0
% 7.85/1.49  qbf_num_tautologies:                    0
% 7.85/1.49  qbf_prep_cycles:                        0
% 7.85/1.49  
% 7.85/1.49  ------ BMC1
% 7.85/1.49  
% 7.85/1.49  bmc1_current_bound:                     -1
% 7.85/1.49  bmc1_last_solved_bound:                 -1
% 7.85/1.49  bmc1_unsat_core_size:                   -1
% 7.85/1.49  bmc1_unsat_core_parents_size:           -1
% 7.85/1.49  bmc1_merge_next_fun:                    0
% 7.85/1.49  bmc1_unsat_core_clauses_time:           0.
% 7.85/1.49  
% 7.85/1.49  ------ Instantiation
% 7.85/1.49  
% 7.85/1.49  inst_num_of_clauses:                    1808
% 7.85/1.49  inst_num_in_passive:                    728
% 7.85/1.49  inst_num_in_active:                     879
% 7.85/1.49  inst_num_in_unprocessed:                200
% 7.85/1.49  inst_num_of_loops:                      950
% 7.85/1.49  inst_num_of_learning_restarts:          0
% 7.85/1.49  inst_num_moves_active_passive:          65
% 7.85/1.49  inst_lit_activity:                      0
% 7.85/1.49  inst_lit_activity_moves:                1
% 7.85/1.49  inst_num_tautologies:                   0
% 7.85/1.49  inst_num_prop_implied:                  0
% 7.85/1.49  inst_num_existing_simplified:           0
% 7.85/1.49  inst_num_eq_res_simplified:             0
% 7.85/1.49  inst_num_child_elim:                    0
% 7.85/1.49  inst_num_of_dismatching_blockings:      609
% 7.85/1.49  inst_num_of_non_proper_insts:           2068
% 7.85/1.49  inst_num_of_duplicates:                 0
% 7.85/1.49  inst_inst_num_from_inst_to_res:         0
% 7.85/1.49  inst_dismatching_checking_time:         0.
% 7.85/1.49  
% 7.85/1.49  ------ Resolution
% 7.85/1.49  
% 7.85/1.49  res_num_of_clauses:                     0
% 7.85/1.49  res_num_in_passive:                     0
% 7.85/1.49  res_num_in_active:                      0
% 7.85/1.49  res_num_of_loops:                       93
% 7.85/1.49  res_forward_subset_subsumed:            254
% 7.85/1.49  res_backward_subset_subsumed:           0
% 7.85/1.49  res_forward_subsumed:                   0
% 7.85/1.49  res_backward_subsumed:                  0
% 7.85/1.49  res_forward_subsumption_resolution:     0
% 7.85/1.49  res_backward_subsumption_resolution:    0
% 7.85/1.49  res_clause_to_clause_subsumption:       2725
% 7.85/1.49  res_orphan_elimination:                 0
% 7.85/1.49  res_tautology_del:                      232
% 7.85/1.49  res_num_eq_res_simplified:              0
% 7.85/1.49  res_num_sel_changes:                    0
% 7.85/1.49  res_moves_from_active_to_pass:          0
% 7.85/1.49  
% 7.85/1.49  ------ Superposition
% 7.85/1.49  
% 7.85/1.49  sup_time_total:                         0.
% 7.85/1.49  sup_time_generating:                    0.
% 7.85/1.49  sup_time_sim_full:                      0.
% 7.85/1.49  sup_time_sim_immed:                     0.
% 7.85/1.49  
% 7.85/1.49  sup_num_of_clauses:                     1250
% 7.85/1.49  sup_num_in_active:                      167
% 7.85/1.49  sup_num_in_passive:                     1083
% 7.85/1.49  sup_num_of_loops:                       188
% 7.85/1.49  sup_fw_superposition:                   1127
% 7.85/1.49  sup_bw_superposition:                   936
% 7.85/1.49  sup_immediate_simplified:               979
% 7.85/1.49  sup_given_eliminated:                   2
% 7.85/1.49  comparisons_done:                       0
% 7.85/1.49  comparisons_avoided:                    0
% 7.85/1.49  
% 7.85/1.49  ------ Simplifications
% 7.85/1.49  
% 7.85/1.49  
% 7.85/1.49  sim_fw_subset_subsumed:                 37
% 7.85/1.49  sim_bw_subset_subsumed:                 40
% 7.85/1.49  sim_fw_subsumed:                        287
% 7.85/1.49  sim_bw_subsumed:                        60
% 7.85/1.49  sim_fw_subsumption_res:                 0
% 7.85/1.49  sim_bw_subsumption_res:                 0
% 7.85/1.49  sim_tautology_del:                      1
% 7.85/1.49  sim_eq_tautology_del:                   48
% 7.85/1.49  sim_eq_res_simp:                        0
% 7.85/1.49  sim_fw_demodulated:                     600
% 7.85/1.49  sim_bw_demodulated:                     57
% 7.85/1.49  sim_light_normalised:                   140
% 7.85/1.49  sim_joinable_taut:                      0
% 7.85/1.49  sim_joinable_simp:                      0
% 7.85/1.49  sim_ac_normalised:                      0
% 7.85/1.49  sim_smt_subsumption:                    0
% 7.85/1.49  
%------------------------------------------------------------------------------
