%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:21:57 EST 2020

% Result     : Theorem 2.99s
% Output     : CNFRefutation 2.99s
% Verified   : 
% Statistics : Number of formulae       :  145 (1010 expanded)
%              Number of clauses        :   93 ( 316 expanded)
%              Number of leaves         :   16 ( 282 expanded)
%              Depth                    :   19
%              Number of atoms          :  498 (7060 expanded)
%              Number of equality atoms :  146 ( 409 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                 => ( m1_pre_topc(X1,X2)
                   => ( ( ~ r1_tsep_1(X3,X2)
                        & ~ r1_tsep_1(X2,X3) )
                      | ( r1_tsep_1(X3,X1)
                        & r1_tsep_1(X1,X3) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_pre_topc(X1,X0)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_pre_topc(X2,X0)
                  & ~ v2_struct_0(X2) )
               => ! [X3] :
                    ( ( m1_pre_topc(X3,X0)
                      & ~ v2_struct_0(X3) )
                   => ( m1_pre_topc(X1,X2)
                     => ( ( ~ r1_tsep_1(X3,X2)
                          & ~ r1_tsep_1(X2,X3) )
                        | ( r1_tsep_1(X3,X1)
                          & r1_tsep_1(X1,X3) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f13,plain,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( m1_pre_topc(X1,X0)
           => ! [X2] :
                ( m1_pre_topc(X2,X0)
               => ! [X3] :
                    ( m1_pre_topc(X3,X0)
                   => ( m1_pre_topc(X1,X2)
                     => ( ( ~ r1_tsep_1(X3,X2)
                          & ~ r1_tsep_1(X2,X3) )
                        | ( r1_tsep_1(X3,X1)
                          & r1_tsep_1(X1,X3) ) ) ) ) ) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( r1_tsep_1(X3,X2)
                    | r1_tsep_1(X2,X3) )
                  & ( ~ r1_tsep_1(X3,X1)
                    | ~ r1_tsep_1(X1,X3) )
                  & m1_pre_topc(X1,X2)
                  & m1_pre_topc(X3,X0) )
              & m1_pre_topc(X2,X0) )
          & m1_pre_topc(X1,X0) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( r1_tsep_1(X3,X2)
                    | r1_tsep_1(X2,X3) )
                  & ( ~ r1_tsep_1(X3,X1)
                    | ~ r1_tsep_1(X1,X3) )
                  & m1_pre_topc(X1,X2)
                  & m1_pre_topc(X3,X0) )
              & m1_pre_topc(X2,X0) )
          & m1_pre_topc(X1,X0) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f25])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ( r1_tsep_1(X3,X2)
            | r1_tsep_1(X2,X3) )
          & ( ~ r1_tsep_1(X3,X1)
            | ~ r1_tsep_1(X1,X3) )
          & m1_pre_topc(X1,X2)
          & m1_pre_topc(X3,X0) )
     => ( ( r1_tsep_1(sK3,X2)
          | r1_tsep_1(X2,sK3) )
        & ( ~ r1_tsep_1(sK3,X1)
          | ~ r1_tsep_1(X1,sK3) )
        & m1_pre_topc(X1,X2)
        & m1_pre_topc(sK3,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ( r1_tsep_1(X3,X2)
                | r1_tsep_1(X2,X3) )
              & ( ~ r1_tsep_1(X3,X1)
                | ~ r1_tsep_1(X1,X3) )
              & m1_pre_topc(X1,X2)
              & m1_pre_topc(X3,X0) )
          & m1_pre_topc(X2,X0) )
     => ( ? [X3] :
            ( ( r1_tsep_1(X3,sK2)
              | r1_tsep_1(sK2,X3) )
            & ( ~ r1_tsep_1(X3,X1)
              | ~ r1_tsep_1(X1,X3) )
            & m1_pre_topc(X1,sK2)
            & m1_pre_topc(X3,X0) )
        & m1_pre_topc(sK2,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( r1_tsep_1(X3,X2)
                    | r1_tsep_1(X2,X3) )
                  & ( ~ r1_tsep_1(X3,X1)
                    | ~ r1_tsep_1(X1,X3) )
                  & m1_pre_topc(X1,X2)
                  & m1_pre_topc(X3,X0) )
              & m1_pre_topc(X2,X0) )
          & m1_pre_topc(X1,X0) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ( r1_tsep_1(X3,X2)
                  | r1_tsep_1(X2,X3) )
                & ( ~ r1_tsep_1(X3,sK1)
                  | ~ r1_tsep_1(sK1,X3) )
                & m1_pre_topc(sK1,X2)
                & m1_pre_topc(X3,X0) )
            & m1_pre_topc(X2,X0) )
        & m1_pre_topc(sK1,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ( r1_tsep_1(X3,X2)
                      | r1_tsep_1(X2,X3) )
                    & ( ~ r1_tsep_1(X3,X1)
                      | ~ r1_tsep_1(X1,X3) )
                    & m1_pre_topc(X1,X2)
                    & m1_pre_topc(X3,X0) )
                & m1_pre_topc(X2,X0) )
            & m1_pre_topc(X1,X0) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( r1_tsep_1(X3,X2)
                    | r1_tsep_1(X2,X3) )
                  & ( ~ r1_tsep_1(X3,X1)
                    | ~ r1_tsep_1(X1,X3) )
                  & m1_pre_topc(X1,X2)
                  & m1_pre_topc(X3,sK0) )
              & m1_pre_topc(X2,sK0) )
          & m1_pre_topc(X1,sK0) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ( r1_tsep_1(sK3,sK2)
      | r1_tsep_1(sK2,sK3) )
    & ( ~ r1_tsep_1(sK3,sK1)
      | ~ r1_tsep_1(sK1,sK3) )
    & m1_pre_topc(sK1,sK2)
    & m1_pre_topc(sK3,sK0)
    & m1_pre_topc(sK2,sK0)
    & m1_pre_topc(sK1,sK0)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f26,f35,f34,f33,f32])).

fof(f55,plain,(
    m1_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f36])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f23])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
                  | ~ m1_pre_topc(X1,X2) )
                & ( m1_pre_topc(X1,X2)
                  | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) ) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(X1,X2)
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f53,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f36])).

fof(f54,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f36])).

fof(f60,plain,
    ( r1_tsep_1(sK3,sK2)
    | r1_tsep_1(sK2,sK3) ),
    inference(cnf_transformation,[],[f36])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( l1_struct_0(X1)
        & l1_struct_0(X0) )
     => ( r1_tsep_1(X0,X1)
       => r1_tsep_1(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_tsep_1(X1,X0)
      | ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f22,plain,(
    ! [X0,X1] :
      ( r1_tsep_1(X1,X0)
      | ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tsep_1(X1,X0)
      | ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f56,plain,(
    m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f36])).

fof(f57,plain,(
    m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f36])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f46,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f47,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( l1_struct_0(X1)
         => ( r1_tsep_1(X0,X1)
          <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tsep_1(X0,X1)
          <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r1_tsep_1(X0,X1)
              | ~ r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) )
            & ( r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
              | ~ r1_tsep_1(X0,X1) ) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
      | ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f27])).

fof(f38,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f62,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f38])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f37,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f58,plain,(
    m1_pre_topc(sK1,sK2) ),
    inference(cnf_transformation,[],[f36])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tsep_1(X0,X1)
      | ~ r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f59,plain,
    ( ~ r1_tsep_1(sK3,sK1)
    | ~ r1_tsep_1(sK1,sK3) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_21,negated_conjecture,
    ( m1_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1056,plain,
    ( m1_pre_topc(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_14,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X2,X1)
    | r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1063,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | m1_pre_topc(X0,X2) != iProver_top
    | r1_tarski(u1_struct_0(X0),u1_struct_0(X2)) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1925,plain,
    ( m1_pre_topc(X0,sK0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1056,c_1063])).

cnf(c_23,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_24,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_22,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_25,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3017,plain,
    ( m1_pre_topc(X0,sK0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1925,c_24,c_25])).

cnf(c_16,negated_conjecture,
    ( r1_tsep_1(sK2,sK3)
    | r1_tsep_1(sK3,sK2) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1061,plain,
    ( r1_tsep_1(sK2,sK3) = iProver_top
    | r1_tsep_1(sK3,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_13,plain,
    ( ~ r1_tsep_1(X0,X1)
    | r1_tsep_1(X1,X0)
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1064,plain,
    ( r1_tsep_1(X0,X1) != iProver_top
    | r1_tsep_1(X1,X0) = iProver_top
    | l1_struct_0(X1) != iProver_top
    | l1_struct_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2202,plain,
    ( r1_tsep_1(sK3,sK2) = iProver_top
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1061,c_1064])).

cnf(c_20,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_27,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_19,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_28,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_9,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1358,plain,
    ( l1_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1359,plain,
    ( l1_struct_0(sK2) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1358])).

cnf(c_10,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1366,plain,
    ( ~ m1_pre_topc(sK2,X0)
    | ~ l1_pre_topc(X0)
    | l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1367,plain,
    ( m1_pre_topc(sK2,X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1366])).

cnf(c_1369,plain,
    ( m1_pre_topc(sK2,sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1367])).

cnf(c_1537,plain,
    ( l1_struct_0(sK3)
    | ~ l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1538,plain,
    ( l1_struct_0(sK3) = iProver_top
    | l1_pre_topc(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1537])).

cnf(c_1679,plain,
    ( ~ m1_pre_topc(sK3,X0)
    | ~ l1_pre_topc(X0)
    | l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1680,plain,
    ( m1_pre_topc(sK3,X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1679])).

cnf(c_1682,plain,
    ( m1_pre_topc(sK3,sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK3) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1680])).

cnf(c_2650,plain,
    ( r1_tsep_1(sK3,sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2202,c_25,c_27,c_28,c_1359,c_1369,c_1538,c_1682])).

cnf(c_12,plain,
    ( ~ r1_tsep_1(X0,X1)
    | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1065,plain,
    ( r1_tsep_1(X0,X1) != iProver_top
    | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) = iProver_top
    | l1_struct_0(X1) != iProver_top
    | l1_struct_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_7,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1070,plain,
    ( k4_xboole_0(X0,X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2531,plain,
    ( k4_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) = u1_struct_0(X0)
    | r1_tsep_1(X0,X1) != iProver_top
    | l1_struct_0(X1) != iProver_top
    | l1_struct_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1065,c_1070])).

cnf(c_4953,plain,
    ( k4_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2)) = u1_struct_0(sK3)
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2650,c_2531])).

cnf(c_1368,plain,
    ( ~ m1_pre_topc(sK2,sK0)
    | ~ l1_pre_topc(sK0)
    | l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_1366])).

cnf(c_1681,plain,
    ( ~ m1_pre_topc(sK3,sK0)
    | ~ l1_pre_topc(sK0)
    | l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_1679])).

cnf(c_1826,plain,
    ( ~ r1_tsep_1(sK3,sK2)
    | r1_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2))
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_2203,plain,
    ( r1_tsep_1(sK3,sK2)
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK3) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2202])).

cnf(c_2371,plain,
    ( ~ r1_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2))
    | k4_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2)) = u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_5367,plain,
    ( k4_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2)) = u1_struct_0(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4953,c_22,c_20,c_19,c_1358,c_1368,c_1537,c_1681,c_1826,c_2203,c_2371])).

cnf(c_3,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1074,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
    | r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1073,plain,
    ( r1_tarski(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r1_xboole_0(X0,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1885,plain,
    ( r1_xboole_0(k4_xboole_0(X0,X1),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1074,c_1073])).

cnf(c_0,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1076,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r1_xboole_0(X1,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_3280,plain,
    ( r1_xboole_0(X0,k4_xboole_0(X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1885,c_1076])).

cnf(c_3293,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0 ),
    inference(superposition,[status(thm)],[c_3280,c_1070])).

cnf(c_5376,plain,
    ( k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = u1_struct_0(sK2) ),
    inference(superposition,[status(thm)],[c_5367,c_3293])).

cnf(c_5672,plain,
    ( r1_tarski(X0,u1_struct_0(sK2)) != iProver_top
    | r1_xboole_0(X0,u1_struct_0(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5376,c_1073])).

cnf(c_7131,plain,
    ( m1_pre_topc(sK1,sK2) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3017,c_5672])).

cnf(c_26,plain,
    ( m1_pre_topc(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_18,negated_conjecture,
    ( m1_pre_topc(sK1,sK2) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_29,plain,
    ( m1_pre_topc(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_1247,plain,
    ( ~ r1_tsep_1(sK2,sK3)
    | r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1248,plain,
    ( r1_tsep_1(sK2,sK3) != iProver_top
    | r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = iProver_top
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1247])).

cnf(c_1345,plain,
    ( ~ r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))
    | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1349,plain,
    ( k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = u1_struct_0(sK2)
    | r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1345])).

cnf(c_1293,plain,
    ( ~ m1_pre_topc(X0,sK0)
    | ~ m1_pre_topc(sK1,X0)
    | ~ m1_pre_topc(sK1,sK0)
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0))
    | ~ l1_pre_topc(sK0)
    | ~ v2_pre_topc(sK0) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_1411,plain,
    ( ~ m1_pre_topc(sK1,sK0)
    | ~ m1_pre_topc(sK1,sK2)
    | ~ m1_pre_topc(sK2,sK0)
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2))
    | ~ l1_pre_topc(sK0)
    | ~ v2_pre_topc(sK0) ),
    inference(instantiation,[status(thm)],[c_1293])).

cnf(c_1412,plain,
    ( m1_pre_topc(sK1,sK0) != iProver_top
    | m1_pre_topc(sK1,sK2) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2)) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1411])).

cnf(c_1825,plain,
    ( r1_tsep_1(sK2,sK3)
    | ~ r1_tsep_1(sK3,sK2)
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_1829,plain,
    ( r1_tsep_1(sK2,sK3) = iProver_top
    | r1_tsep_1(sK3,sK2) != iProver_top
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1825])).

cnf(c_499,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2250,plain,
    ( u1_struct_0(sK1) = u1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_499])).

cnf(c_502,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1339,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,k4_xboole_0(X3,X4))
    | X2 != X0
    | k4_xboole_0(X3,X4) != X1 ),
    inference(instantiation,[status(thm)],[c_502])).

cnf(c_2403,plain,
    ( r1_tarski(X0,k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
    | ~ r1_tarski(X1,u1_struct_0(sK2))
    | X0 != X1
    | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_1339])).

cnf(c_3420,plain,
    ( r1_tarski(X0,k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
    | ~ r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2))
    | X0 != u1_struct_0(sK1)
    | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_2403])).

cnf(c_4387,plain,
    ( r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
    | ~ r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2))
    | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2)
    | u1_struct_0(sK1) != u1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_3420])).

cnf(c_4388,plain,
    ( k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))) = iProver_top
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4387])).

cnf(c_6370,plain,
    ( ~ r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
    | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_6371,plain,
    ( r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))) != iProver_top
    | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6370])).

cnf(c_7774,plain,
    ( r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7131,c_24,c_25,c_26,c_27,c_28,c_29,c_1248,c_1349,c_1359,c_1369,c_1412,c_1538,c_1682,c_1829,c_2202,c_2250,c_4388,c_6371])).

cnf(c_7779,plain,
    ( r1_xboole_0(u1_struct_0(sK3),u1_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_7774,c_1076])).

cnf(c_11,plain,
    ( r1_tsep_1(X0,X1)
    | ~ r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1066,plain,
    ( r1_tsep_1(X0,X1) = iProver_top
    | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) != iProver_top
    | l1_struct_0(X1) != iProver_top
    | l1_struct_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_8584,plain,
    ( r1_tsep_1(sK3,sK1) = iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_7779,c_1066])).

cnf(c_7781,plain,
    ( r1_tsep_1(sK1,sK3) = iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_7774,c_1066])).

cnf(c_1059,plain,
    ( m1_pre_topc(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_1067,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2076,plain,
    ( l1_pre_topc(sK1) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1059,c_1067])).

cnf(c_2261,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2076,c_25,c_27,c_1369])).

cnf(c_1068,plain,
    ( l1_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2266,plain,
    ( l1_struct_0(sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_2261,c_1068])).

cnf(c_17,negated_conjecture,
    ( ~ r1_tsep_1(sK1,sK3)
    | ~ r1_tsep_1(sK3,sK1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_30,plain,
    ( r1_tsep_1(sK1,sK3) != iProver_top
    | r1_tsep_1(sK3,sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8584,c_7781,c_2266,c_1682,c_1538,c_30,c_28,c_25])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:10:09 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.99/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.99/0.99  
% 2.99/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.99/0.99  
% 2.99/0.99  ------  iProver source info
% 2.99/0.99  
% 2.99/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.99/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.99/0.99  git: non_committed_changes: false
% 2.99/0.99  git: last_make_outside_of_git: false
% 2.99/0.99  
% 2.99/0.99  ------ 
% 2.99/0.99  
% 2.99/0.99  ------ Input Options
% 2.99/0.99  
% 2.99/0.99  --out_options                           all
% 2.99/0.99  --tptp_safe_out                         true
% 2.99/0.99  --problem_path                          ""
% 2.99/0.99  --include_path                          ""
% 2.99/0.99  --clausifier                            res/vclausify_rel
% 2.99/0.99  --clausifier_options                    --mode clausify
% 2.99/0.99  --stdin                                 false
% 2.99/0.99  --stats_out                             all
% 2.99/0.99  
% 2.99/0.99  ------ General Options
% 2.99/0.99  
% 2.99/0.99  --fof                                   false
% 2.99/0.99  --time_out_real                         305.
% 2.99/0.99  --time_out_virtual                      -1.
% 2.99/0.99  --symbol_type_check                     false
% 2.99/0.99  --clausify_out                          false
% 2.99/0.99  --sig_cnt_out                           false
% 2.99/0.99  --trig_cnt_out                          false
% 2.99/0.99  --trig_cnt_out_tolerance                1.
% 2.99/0.99  --trig_cnt_out_sk_spl                   false
% 2.99/0.99  --abstr_cl_out                          false
% 2.99/0.99  
% 2.99/0.99  ------ Global Options
% 2.99/0.99  
% 2.99/0.99  --schedule                              default
% 2.99/0.99  --add_important_lit                     false
% 2.99/0.99  --prop_solver_per_cl                    1000
% 2.99/0.99  --min_unsat_core                        false
% 2.99/0.99  --soft_assumptions                      false
% 2.99/0.99  --soft_lemma_size                       3
% 2.99/0.99  --prop_impl_unit_size                   0
% 2.99/0.99  --prop_impl_unit                        []
% 2.99/0.99  --share_sel_clauses                     true
% 2.99/0.99  --reset_solvers                         false
% 2.99/0.99  --bc_imp_inh                            [conj_cone]
% 2.99/0.99  --conj_cone_tolerance                   3.
% 2.99/0.99  --extra_neg_conj                        none
% 2.99/0.99  --large_theory_mode                     true
% 2.99/0.99  --prolific_symb_bound                   200
% 2.99/0.99  --lt_threshold                          2000
% 2.99/0.99  --clause_weak_htbl                      true
% 2.99/0.99  --gc_record_bc_elim                     false
% 2.99/0.99  
% 2.99/0.99  ------ Preprocessing Options
% 2.99/0.99  
% 2.99/0.99  --preprocessing_flag                    true
% 2.99/0.99  --time_out_prep_mult                    0.1
% 2.99/0.99  --splitting_mode                        input
% 2.99/0.99  --splitting_grd                         true
% 2.99/0.99  --splitting_cvd                         false
% 2.99/0.99  --splitting_cvd_svl                     false
% 2.99/0.99  --splitting_nvd                         32
% 2.99/0.99  --sub_typing                            true
% 2.99/0.99  --prep_gs_sim                           true
% 2.99/0.99  --prep_unflatten                        true
% 2.99/0.99  --prep_res_sim                          true
% 2.99/0.99  --prep_upred                            true
% 2.99/0.99  --prep_sem_filter                       exhaustive
% 2.99/0.99  --prep_sem_filter_out                   false
% 2.99/0.99  --pred_elim                             true
% 2.99/0.99  --res_sim_input                         true
% 2.99/0.99  --eq_ax_congr_red                       true
% 2.99/0.99  --pure_diseq_elim                       true
% 2.99/0.99  --brand_transform                       false
% 2.99/0.99  --non_eq_to_eq                          false
% 2.99/0.99  --prep_def_merge                        true
% 2.99/0.99  --prep_def_merge_prop_impl              false
% 2.99/0.99  --prep_def_merge_mbd                    true
% 2.99/0.99  --prep_def_merge_tr_red                 false
% 2.99/0.99  --prep_def_merge_tr_cl                  false
% 2.99/0.99  --smt_preprocessing                     true
% 2.99/0.99  --smt_ac_axioms                         fast
% 2.99/0.99  --preprocessed_out                      false
% 2.99/0.99  --preprocessed_stats                    false
% 2.99/0.99  
% 2.99/0.99  ------ Abstraction refinement Options
% 2.99/0.99  
% 2.99/0.99  --abstr_ref                             []
% 2.99/0.99  --abstr_ref_prep                        false
% 2.99/0.99  --abstr_ref_until_sat                   false
% 2.99/0.99  --abstr_ref_sig_restrict                funpre
% 2.99/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.99/0.99  --abstr_ref_under                       []
% 2.99/0.99  
% 2.99/0.99  ------ SAT Options
% 2.99/0.99  
% 2.99/0.99  --sat_mode                              false
% 2.99/0.99  --sat_fm_restart_options                ""
% 2.99/0.99  --sat_gr_def                            false
% 2.99/0.99  --sat_epr_types                         true
% 2.99/0.99  --sat_non_cyclic_types                  false
% 2.99/0.99  --sat_finite_models                     false
% 2.99/0.99  --sat_fm_lemmas                         false
% 2.99/0.99  --sat_fm_prep                           false
% 2.99/0.99  --sat_fm_uc_incr                        true
% 2.99/0.99  --sat_out_model                         small
% 2.99/0.99  --sat_out_clauses                       false
% 2.99/0.99  
% 2.99/0.99  ------ QBF Options
% 2.99/0.99  
% 2.99/0.99  --qbf_mode                              false
% 2.99/0.99  --qbf_elim_univ                         false
% 2.99/0.99  --qbf_dom_inst                          none
% 2.99/0.99  --qbf_dom_pre_inst                      false
% 2.99/0.99  --qbf_sk_in                             false
% 2.99/0.99  --qbf_pred_elim                         true
% 2.99/0.99  --qbf_split                             512
% 2.99/0.99  
% 2.99/0.99  ------ BMC1 Options
% 2.99/0.99  
% 2.99/0.99  --bmc1_incremental                      false
% 2.99/0.99  --bmc1_axioms                           reachable_all
% 2.99/0.99  --bmc1_min_bound                        0
% 2.99/0.99  --bmc1_max_bound                        -1
% 2.99/0.99  --bmc1_max_bound_default                -1
% 2.99/0.99  --bmc1_symbol_reachability              true
% 2.99/0.99  --bmc1_property_lemmas                  false
% 2.99/0.99  --bmc1_k_induction                      false
% 2.99/0.99  --bmc1_non_equiv_states                 false
% 2.99/0.99  --bmc1_deadlock                         false
% 2.99/0.99  --bmc1_ucm                              false
% 2.99/0.99  --bmc1_add_unsat_core                   none
% 2.99/0.99  --bmc1_unsat_core_children              false
% 2.99/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.99/0.99  --bmc1_out_stat                         full
% 2.99/0.99  --bmc1_ground_init                      false
% 2.99/0.99  --bmc1_pre_inst_next_state              false
% 2.99/0.99  --bmc1_pre_inst_state                   false
% 2.99/0.99  --bmc1_pre_inst_reach_state             false
% 2.99/0.99  --bmc1_out_unsat_core                   false
% 2.99/0.99  --bmc1_aig_witness_out                  false
% 2.99/0.99  --bmc1_verbose                          false
% 2.99/0.99  --bmc1_dump_clauses_tptp                false
% 2.99/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.99/0.99  --bmc1_dump_file                        -
% 2.99/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.99/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.99/0.99  --bmc1_ucm_extend_mode                  1
% 2.99/0.99  --bmc1_ucm_init_mode                    2
% 2.99/0.99  --bmc1_ucm_cone_mode                    none
% 2.99/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.99/0.99  --bmc1_ucm_relax_model                  4
% 2.99/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.99/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.99/0.99  --bmc1_ucm_layered_model                none
% 2.99/0.99  --bmc1_ucm_max_lemma_size               10
% 2.99/0.99  
% 2.99/0.99  ------ AIG Options
% 2.99/0.99  
% 2.99/0.99  --aig_mode                              false
% 2.99/0.99  
% 2.99/0.99  ------ Instantiation Options
% 2.99/0.99  
% 2.99/0.99  --instantiation_flag                    true
% 2.99/0.99  --inst_sos_flag                         false
% 2.99/0.99  --inst_sos_phase                        true
% 2.99/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.99/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.99/0.99  --inst_lit_sel_side                     num_symb
% 2.99/0.99  --inst_solver_per_active                1400
% 2.99/0.99  --inst_solver_calls_frac                1.
% 2.99/0.99  --inst_passive_queue_type               priority_queues
% 2.99/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.99/0.99  --inst_passive_queues_freq              [25;2]
% 2.99/0.99  --inst_dismatching                      true
% 2.99/0.99  --inst_eager_unprocessed_to_passive     true
% 2.99/0.99  --inst_prop_sim_given                   true
% 2.99/0.99  --inst_prop_sim_new                     false
% 2.99/0.99  --inst_subs_new                         false
% 2.99/0.99  --inst_eq_res_simp                      false
% 2.99/0.99  --inst_subs_given                       false
% 2.99/0.99  --inst_orphan_elimination               true
% 2.99/0.99  --inst_learning_loop_flag               true
% 2.99/0.99  --inst_learning_start                   3000
% 2.99/0.99  --inst_learning_factor                  2
% 2.99/0.99  --inst_start_prop_sim_after_learn       3
% 2.99/0.99  --inst_sel_renew                        solver
% 2.99/0.99  --inst_lit_activity_flag                true
% 2.99/0.99  --inst_restr_to_given                   false
% 2.99/0.99  --inst_activity_threshold               500
% 2.99/0.99  --inst_out_proof                        true
% 2.99/0.99  
% 2.99/0.99  ------ Resolution Options
% 2.99/0.99  
% 2.99/0.99  --resolution_flag                       true
% 2.99/0.99  --res_lit_sel                           adaptive
% 2.99/0.99  --res_lit_sel_side                      none
% 2.99/0.99  --res_ordering                          kbo
% 2.99/0.99  --res_to_prop_solver                    active
% 2.99/0.99  --res_prop_simpl_new                    false
% 2.99/0.99  --res_prop_simpl_given                  true
% 2.99/0.99  --res_passive_queue_type                priority_queues
% 2.99/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.99/1.00  --res_passive_queues_freq               [15;5]
% 2.99/1.00  --res_forward_subs                      full
% 2.99/1.00  --res_backward_subs                     full
% 2.99/1.00  --res_forward_subs_resolution           true
% 2.99/1.00  --res_backward_subs_resolution          true
% 2.99/1.00  --res_orphan_elimination                true
% 2.99/1.00  --res_time_limit                        2.
% 2.99/1.00  --res_out_proof                         true
% 2.99/1.00  
% 2.99/1.00  ------ Superposition Options
% 2.99/1.00  
% 2.99/1.00  --superposition_flag                    true
% 2.99/1.00  --sup_passive_queue_type                priority_queues
% 2.99/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.99/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.99/1.00  --demod_completeness_check              fast
% 2.99/1.00  --demod_use_ground                      true
% 2.99/1.00  --sup_to_prop_solver                    passive
% 2.99/1.00  --sup_prop_simpl_new                    true
% 2.99/1.00  --sup_prop_simpl_given                  true
% 2.99/1.00  --sup_fun_splitting                     false
% 2.99/1.00  --sup_smt_interval                      50000
% 2.99/1.00  
% 2.99/1.00  ------ Superposition Simplification Setup
% 2.99/1.00  
% 2.99/1.00  --sup_indices_passive                   []
% 2.99/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.99/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.99/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.99/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.99/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.99/1.00  --sup_full_bw                           [BwDemod]
% 2.99/1.00  --sup_immed_triv                        [TrivRules]
% 2.99/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.99/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.99/1.00  --sup_immed_bw_main                     []
% 2.99/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.99/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.99/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.99/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.99/1.00  
% 2.99/1.00  ------ Combination Options
% 2.99/1.00  
% 2.99/1.00  --comb_res_mult                         3
% 2.99/1.00  --comb_sup_mult                         2
% 2.99/1.00  --comb_inst_mult                        10
% 2.99/1.00  
% 2.99/1.00  ------ Debug Options
% 2.99/1.00  
% 2.99/1.00  --dbg_backtrace                         false
% 2.99/1.00  --dbg_dump_prop_clauses                 false
% 2.99/1.00  --dbg_dump_prop_clauses_file            -
% 2.99/1.00  --dbg_out_stat                          false
% 2.99/1.00  ------ Parsing...
% 2.99/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.99/1.00  
% 2.99/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.99/1.00  
% 2.99/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.99/1.00  
% 2.99/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.99/1.00  ------ Proving...
% 2.99/1.00  ------ Problem Properties 
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  clauses                                 23
% 2.99/1.00  conjectures                             8
% 2.99/1.00  EPR                                     15
% 2.99/1.00  Horn                                    22
% 2.99/1.00  unary                                   7
% 2.99/1.00  binary                                  8
% 2.99/1.00  lits                                    57
% 2.99/1.00  lits eq                                 3
% 2.99/1.00  fd_pure                                 0
% 2.99/1.00  fd_pseudo                               0
% 2.99/1.00  fd_cond                                 0
% 2.99/1.00  fd_pseudo_cond                          1
% 2.99/1.00  AC symbols                              0
% 2.99/1.00  
% 2.99/1.00  ------ Schedule dynamic 5 is on 
% 2.99/1.00  
% 2.99/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  ------ 
% 2.99/1.00  Current options:
% 2.99/1.00  ------ 
% 2.99/1.00  
% 2.99/1.00  ------ Input Options
% 2.99/1.00  
% 2.99/1.00  --out_options                           all
% 2.99/1.00  --tptp_safe_out                         true
% 2.99/1.00  --problem_path                          ""
% 2.99/1.00  --include_path                          ""
% 2.99/1.00  --clausifier                            res/vclausify_rel
% 2.99/1.00  --clausifier_options                    --mode clausify
% 2.99/1.00  --stdin                                 false
% 2.99/1.00  --stats_out                             all
% 2.99/1.00  
% 2.99/1.00  ------ General Options
% 2.99/1.00  
% 2.99/1.00  --fof                                   false
% 2.99/1.00  --time_out_real                         305.
% 2.99/1.00  --time_out_virtual                      -1.
% 2.99/1.00  --symbol_type_check                     false
% 2.99/1.00  --clausify_out                          false
% 2.99/1.00  --sig_cnt_out                           false
% 2.99/1.00  --trig_cnt_out                          false
% 2.99/1.00  --trig_cnt_out_tolerance                1.
% 2.99/1.00  --trig_cnt_out_sk_spl                   false
% 2.99/1.00  --abstr_cl_out                          false
% 2.99/1.00  
% 2.99/1.00  ------ Global Options
% 2.99/1.00  
% 2.99/1.00  --schedule                              default
% 2.99/1.00  --add_important_lit                     false
% 2.99/1.00  --prop_solver_per_cl                    1000
% 2.99/1.00  --min_unsat_core                        false
% 2.99/1.00  --soft_assumptions                      false
% 2.99/1.00  --soft_lemma_size                       3
% 2.99/1.00  --prop_impl_unit_size                   0
% 2.99/1.00  --prop_impl_unit                        []
% 2.99/1.00  --share_sel_clauses                     true
% 2.99/1.00  --reset_solvers                         false
% 2.99/1.00  --bc_imp_inh                            [conj_cone]
% 2.99/1.00  --conj_cone_tolerance                   3.
% 2.99/1.00  --extra_neg_conj                        none
% 2.99/1.00  --large_theory_mode                     true
% 2.99/1.00  --prolific_symb_bound                   200
% 2.99/1.00  --lt_threshold                          2000
% 2.99/1.00  --clause_weak_htbl                      true
% 2.99/1.00  --gc_record_bc_elim                     false
% 2.99/1.00  
% 2.99/1.00  ------ Preprocessing Options
% 2.99/1.00  
% 2.99/1.00  --preprocessing_flag                    true
% 2.99/1.00  --time_out_prep_mult                    0.1
% 2.99/1.00  --splitting_mode                        input
% 2.99/1.00  --splitting_grd                         true
% 2.99/1.00  --splitting_cvd                         false
% 2.99/1.00  --splitting_cvd_svl                     false
% 2.99/1.00  --splitting_nvd                         32
% 2.99/1.00  --sub_typing                            true
% 2.99/1.00  --prep_gs_sim                           true
% 2.99/1.00  --prep_unflatten                        true
% 2.99/1.00  --prep_res_sim                          true
% 2.99/1.00  --prep_upred                            true
% 2.99/1.00  --prep_sem_filter                       exhaustive
% 2.99/1.00  --prep_sem_filter_out                   false
% 2.99/1.00  --pred_elim                             true
% 2.99/1.00  --res_sim_input                         true
% 2.99/1.00  --eq_ax_congr_red                       true
% 2.99/1.00  --pure_diseq_elim                       true
% 2.99/1.00  --brand_transform                       false
% 2.99/1.00  --non_eq_to_eq                          false
% 2.99/1.00  --prep_def_merge                        true
% 2.99/1.00  --prep_def_merge_prop_impl              false
% 2.99/1.00  --prep_def_merge_mbd                    true
% 2.99/1.00  --prep_def_merge_tr_red                 false
% 2.99/1.00  --prep_def_merge_tr_cl                  false
% 2.99/1.00  --smt_preprocessing                     true
% 2.99/1.00  --smt_ac_axioms                         fast
% 2.99/1.00  --preprocessed_out                      false
% 2.99/1.00  --preprocessed_stats                    false
% 2.99/1.00  
% 2.99/1.00  ------ Abstraction refinement Options
% 2.99/1.00  
% 2.99/1.00  --abstr_ref                             []
% 2.99/1.00  --abstr_ref_prep                        false
% 2.99/1.00  --abstr_ref_until_sat                   false
% 2.99/1.00  --abstr_ref_sig_restrict                funpre
% 2.99/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.99/1.00  --abstr_ref_under                       []
% 2.99/1.00  
% 2.99/1.00  ------ SAT Options
% 2.99/1.00  
% 2.99/1.00  --sat_mode                              false
% 2.99/1.00  --sat_fm_restart_options                ""
% 2.99/1.00  --sat_gr_def                            false
% 2.99/1.00  --sat_epr_types                         true
% 2.99/1.00  --sat_non_cyclic_types                  false
% 2.99/1.00  --sat_finite_models                     false
% 2.99/1.00  --sat_fm_lemmas                         false
% 2.99/1.00  --sat_fm_prep                           false
% 2.99/1.00  --sat_fm_uc_incr                        true
% 2.99/1.00  --sat_out_model                         small
% 2.99/1.00  --sat_out_clauses                       false
% 2.99/1.00  
% 2.99/1.00  ------ QBF Options
% 2.99/1.00  
% 2.99/1.00  --qbf_mode                              false
% 2.99/1.00  --qbf_elim_univ                         false
% 2.99/1.00  --qbf_dom_inst                          none
% 2.99/1.00  --qbf_dom_pre_inst                      false
% 2.99/1.00  --qbf_sk_in                             false
% 2.99/1.00  --qbf_pred_elim                         true
% 2.99/1.00  --qbf_split                             512
% 2.99/1.00  
% 2.99/1.00  ------ BMC1 Options
% 2.99/1.00  
% 2.99/1.00  --bmc1_incremental                      false
% 2.99/1.00  --bmc1_axioms                           reachable_all
% 2.99/1.00  --bmc1_min_bound                        0
% 2.99/1.00  --bmc1_max_bound                        -1
% 2.99/1.00  --bmc1_max_bound_default                -1
% 2.99/1.00  --bmc1_symbol_reachability              true
% 2.99/1.00  --bmc1_property_lemmas                  false
% 2.99/1.00  --bmc1_k_induction                      false
% 2.99/1.00  --bmc1_non_equiv_states                 false
% 2.99/1.00  --bmc1_deadlock                         false
% 2.99/1.00  --bmc1_ucm                              false
% 2.99/1.00  --bmc1_add_unsat_core                   none
% 2.99/1.00  --bmc1_unsat_core_children              false
% 2.99/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.99/1.00  --bmc1_out_stat                         full
% 2.99/1.00  --bmc1_ground_init                      false
% 2.99/1.00  --bmc1_pre_inst_next_state              false
% 2.99/1.00  --bmc1_pre_inst_state                   false
% 2.99/1.00  --bmc1_pre_inst_reach_state             false
% 2.99/1.00  --bmc1_out_unsat_core                   false
% 2.99/1.00  --bmc1_aig_witness_out                  false
% 2.99/1.00  --bmc1_verbose                          false
% 2.99/1.00  --bmc1_dump_clauses_tptp                false
% 2.99/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.99/1.00  --bmc1_dump_file                        -
% 2.99/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.99/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.99/1.00  --bmc1_ucm_extend_mode                  1
% 2.99/1.00  --bmc1_ucm_init_mode                    2
% 2.99/1.00  --bmc1_ucm_cone_mode                    none
% 2.99/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.99/1.00  --bmc1_ucm_relax_model                  4
% 2.99/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.99/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.99/1.00  --bmc1_ucm_layered_model                none
% 2.99/1.00  --bmc1_ucm_max_lemma_size               10
% 2.99/1.00  
% 2.99/1.00  ------ AIG Options
% 2.99/1.00  
% 2.99/1.00  --aig_mode                              false
% 2.99/1.00  
% 2.99/1.00  ------ Instantiation Options
% 2.99/1.00  
% 2.99/1.00  --instantiation_flag                    true
% 2.99/1.00  --inst_sos_flag                         false
% 2.99/1.00  --inst_sos_phase                        true
% 2.99/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.99/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.99/1.00  --inst_lit_sel_side                     none
% 2.99/1.00  --inst_solver_per_active                1400
% 2.99/1.00  --inst_solver_calls_frac                1.
% 2.99/1.00  --inst_passive_queue_type               priority_queues
% 2.99/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.99/1.00  --inst_passive_queues_freq              [25;2]
% 2.99/1.00  --inst_dismatching                      true
% 2.99/1.00  --inst_eager_unprocessed_to_passive     true
% 2.99/1.00  --inst_prop_sim_given                   true
% 2.99/1.00  --inst_prop_sim_new                     false
% 2.99/1.00  --inst_subs_new                         false
% 2.99/1.00  --inst_eq_res_simp                      false
% 2.99/1.00  --inst_subs_given                       false
% 2.99/1.00  --inst_orphan_elimination               true
% 2.99/1.00  --inst_learning_loop_flag               true
% 2.99/1.00  --inst_learning_start                   3000
% 2.99/1.00  --inst_learning_factor                  2
% 2.99/1.00  --inst_start_prop_sim_after_learn       3
% 2.99/1.00  --inst_sel_renew                        solver
% 2.99/1.00  --inst_lit_activity_flag                true
% 2.99/1.00  --inst_restr_to_given                   false
% 2.99/1.00  --inst_activity_threshold               500
% 2.99/1.00  --inst_out_proof                        true
% 2.99/1.00  
% 2.99/1.00  ------ Resolution Options
% 2.99/1.00  
% 2.99/1.00  --resolution_flag                       false
% 2.99/1.00  --res_lit_sel                           adaptive
% 2.99/1.00  --res_lit_sel_side                      none
% 2.99/1.00  --res_ordering                          kbo
% 2.99/1.00  --res_to_prop_solver                    active
% 2.99/1.00  --res_prop_simpl_new                    false
% 2.99/1.00  --res_prop_simpl_given                  true
% 2.99/1.00  --res_passive_queue_type                priority_queues
% 2.99/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.99/1.00  --res_passive_queues_freq               [15;5]
% 2.99/1.00  --res_forward_subs                      full
% 2.99/1.00  --res_backward_subs                     full
% 2.99/1.00  --res_forward_subs_resolution           true
% 2.99/1.00  --res_backward_subs_resolution          true
% 2.99/1.00  --res_orphan_elimination                true
% 2.99/1.00  --res_time_limit                        2.
% 2.99/1.00  --res_out_proof                         true
% 2.99/1.00  
% 2.99/1.00  ------ Superposition Options
% 2.99/1.00  
% 2.99/1.00  --superposition_flag                    true
% 2.99/1.00  --sup_passive_queue_type                priority_queues
% 2.99/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.99/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.99/1.00  --demod_completeness_check              fast
% 2.99/1.00  --demod_use_ground                      true
% 2.99/1.00  --sup_to_prop_solver                    passive
% 2.99/1.00  --sup_prop_simpl_new                    true
% 2.99/1.00  --sup_prop_simpl_given                  true
% 2.99/1.00  --sup_fun_splitting                     false
% 2.99/1.00  --sup_smt_interval                      50000
% 2.99/1.00  
% 2.99/1.00  ------ Superposition Simplification Setup
% 2.99/1.00  
% 2.99/1.00  --sup_indices_passive                   []
% 2.99/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.99/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.99/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.99/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.99/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.99/1.00  --sup_full_bw                           [BwDemod]
% 2.99/1.00  --sup_immed_triv                        [TrivRules]
% 2.99/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.99/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.99/1.00  --sup_immed_bw_main                     []
% 2.99/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.99/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.99/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.99/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.99/1.00  
% 2.99/1.00  ------ Combination Options
% 2.99/1.00  
% 2.99/1.00  --comb_res_mult                         3
% 2.99/1.00  --comb_sup_mult                         2
% 2.99/1.00  --comb_inst_mult                        10
% 2.99/1.00  
% 2.99/1.00  ------ Debug Options
% 2.99/1.00  
% 2.99/1.00  --dbg_backtrace                         false
% 2.99/1.00  --dbg_dump_prop_clauses                 false
% 2.99/1.00  --dbg_dump_prop_clauses_file            -
% 2.99/1.00  --dbg_out_stat                          false
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  ------ Proving...
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  % SZS status Theorem for theBenchmark.p
% 2.99/1.00  
% 2.99/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.99/1.00  
% 2.99/1.00  fof(f11,conjecture,(
% 2.99/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (m1_pre_topc(X1,X2) => ((~r1_tsep_1(X3,X2) & ~r1_tsep_1(X2,X3)) | (r1_tsep_1(X3,X1) & r1_tsep_1(X1,X3))))))))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f12,negated_conjecture,(
% 2.99/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (m1_pre_topc(X1,X2) => ((~r1_tsep_1(X3,X2) & ~r1_tsep_1(X2,X3)) | (r1_tsep_1(X3,X1) & r1_tsep_1(X1,X3))))))))),
% 2.99/1.00    inference(negated_conjecture,[],[f11])).
% 2.99/1.00  
% 2.99/1.00  fof(f13,plain,(
% 2.99/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => (m1_pre_topc(X1,X2) => ((~r1_tsep_1(X3,X2) & ~r1_tsep_1(X2,X3)) | (r1_tsep_1(X3,X1) & r1_tsep_1(X1,X3))))))))),
% 2.99/1.00    inference(pure_predicate_removal,[],[f12])).
% 2.99/1.00  
% 2.99/1.00  fof(f25,plain,(
% 2.99/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3))) & m1_pre_topc(X1,X2)) & m1_pre_topc(X3,X0)) & m1_pre_topc(X2,X0)) & m1_pre_topc(X1,X0)) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 2.99/1.00    inference(ennf_transformation,[],[f13])).
% 2.99/1.00  
% 2.99/1.00  fof(f26,plain,(
% 2.99/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,X2) & m1_pre_topc(X3,X0)) & m1_pre_topc(X2,X0)) & m1_pre_topc(X1,X0)) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 2.99/1.00    inference(flattening,[],[f25])).
% 2.99/1.00  
% 2.99/1.00  fof(f35,plain,(
% 2.99/1.00    ( ! [X2,X0,X1] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,X2) & m1_pre_topc(X3,X0)) => ((r1_tsep_1(sK3,X2) | r1_tsep_1(X2,sK3)) & (~r1_tsep_1(sK3,X1) | ~r1_tsep_1(X1,sK3)) & m1_pre_topc(X1,X2) & m1_pre_topc(sK3,X0))) )),
% 2.99/1.00    introduced(choice_axiom,[])).
% 2.99/1.00  
% 2.99/1.00  fof(f34,plain,(
% 2.99/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,X2) & m1_pre_topc(X3,X0)) & m1_pre_topc(X2,X0)) => (? [X3] : ((r1_tsep_1(X3,sK2) | r1_tsep_1(sK2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,sK2) & m1_pre_topc(X3,X0)) & m1_pre_topc(sK2,X0))) )),
% 2.99/1.00    introduced(choice_axiom,[])).
% 2.99/1.00  
% 2.99/1.00  fof(f33,plain,(
% 2.99/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,X2) & m1_pre_topc(X3,X0)) & m1_pre_topc(X2,X0)) & m1_pre_topc(X1,X0)) => (? [X2] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,sK1) | ~r1_tsep_1(sK1,X3)) & m1_pre_topc(sK1,X2) & m1_pre_topc(X3,X0)) & m1_pre_topc(X2,X0)) & m1_pre_topc(sK1,X0))) )),
% 2.99/1.00    introduced(choice_axiom,[])).
% 2.99/1.00  
% 2.99/1.00  fof(f32,plain,(
% 2.99/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,X2) & m1_pre_topc(X3,X0)) & m1_pre_topc(X2,X0)) & m1_pre_topc(X1,X0)) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (? [X1] : (? [X2] : (? [X3] : ((r1_tsep_1(X3,X2) | r1_tsep_1(X2,X3)) & (~r1_tsep_1(X3,X1) | ~r1_tsep_1(X1,X3)) & m1_pre_topc(X1,X2) & m1_pre_topc(X3,sK0)) & m1_pre_topc(X2,sK0)) & m1_pre_topc(X1,sK0)) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 2.99/1.00    introduced(choice_axiom,[])).
% 2.99/1.00  
% 2.99/1.00  fof(f36,plain,(
% 2.99/1.00    ((((r1_tsep_1(sK3,sK2) | r1_tsep_1(sK2,sK3)) & (~r1_tsep_1(sK3,sK1) | ~r1_tsep_1(sK1,sK3)) & m1_pre_topc(sK1,sK2) & m1_pre_topc(sK3,sK0)) & m1_pre_topc(sK2,sK0)) & m1_pre_topc(sK1,sK0)) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 2.99/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f26,f35,f34,f33,f32])).
% 2.99/1.00  
% 2.99/1.00  fof(f55,plain,(
% 2.99/1.00    m1_pre_topc(sK1,sK0)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f10,axiom,(
% 2.99/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X0) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)))))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f23,plain,(
% 2.99/1.00    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.99/1.00    inference(ennf_transformation,[],[f10])).
% 2.99/1.00  
% 2.99/1.00  fof(f24,plain,(
% 2.99/1.00    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.99/1.00    inference(flattening,[],[f23])).
% 2.99/1.00  
% 2.99/1.00  fof(f31,plain,(
% 2.99/1.00    ! [X0] : (! [X1] : (! [X2] : (((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2)) & (m1_pre_topc(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)))) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.99/1.00    inference(nnf_transformation,[],[f24])).
% 2.99/1.00  
% 2.99/1.00  fof(f52,plain,(
% 2.99/1.00    ( ! [X2,X0,X1] : (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2) | ~m1_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f31])).
% 2.99/1.00  
% 2.99/1.00  fof(f53,plain,(
% 2.99/1.00    v2_pre_topc(sK0)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f54,plain,(
% 2.99/1.00    l1_pre_topc(sK0)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f60,plain,(
% 2.99/1.00    r1_tsep_1(sK3,sK2) | r1_tsep_1(sK2,sK3)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f9,axiom,(
% 2.99/1.00    ! [X0,X1] : ((l1_struct_0(X1) & l1_struct_0(X0)) => (r1_tsep_1(X0,X1) => r1_tsep_1(X1,X0)))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f21,plain,(
% 2.99/1.00    ! [X0,X1] : ((r1_tsep_1(X1,X0) | ~r1_tsep_1(X0,X1)) | (~l1_struct_0(X1) | ~l1_struct_0(X0)))),
% 2.99/1.00    inference(ennf_transformation,[],[f9])).
% 2.99/1.00  
% 2.99/1.00  fof(f22,plain,(
% 2.99/1.00    ! [X0,X1] : (r1_tsep_1(X1,X0) | ~r1_tsep_1(X0,X1) | ~l1_struct_0(X1) | ~l1_struct_0(X0))),
% 2.99/1.00    inference(flattening,[],[f21])).
% 2.99/1.00  
% 2.99/1.00  fof(f50,plain,(
% 2.99/1.00    ( ! [X0,X1] : (r1_tsep_1(X1,X0) | ~r1_tsep_1(X0,X1) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f22])).
% 2.99/1.00  
% 2.99/1.00  fof(f56,plain,(
% 2.99/1.00    m1_pre_topc(sK2,sK0)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f57,plain,(
% 2.99/1.00    m1_pre_topc(sK3,sK0)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f6,axiom,(
% 2.99/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f18,plain,(
% 2.99/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.99/1.00    inference(ennf_transformation,[],[f6])).
% 2.99/1.00  
% 2.99/1.00  fof(f46,plain,(
% 2.99/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f18])).
% 2.99/1.00  
% 2.99/1.00  fof(f7,axiom,(
% 2.99/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f19,plain,(
% 2.99/1.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.99/1.00    inference(ennf_transformation,[],[f7])).
% 2.99/1.00  
% 2.99/1.00  fof(f47,plain,(
% 2.99/1.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f19])).
% 2.99/1.00  
% 2.99/1.00  fof(f8,axiom,(
% 2.99/1.00    ! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => (r1_tsep_1(X0,X1) <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)))))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f20,plain,(
% 2.99/1.00    ! [X0] : (! [X1] : ((r1_tsep_1(X0,X1) <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.99/1.00    inference(ennf_transformation,[],[f8])).
% 2.99/1.00  
% 2.99/1.00  fof(f30,plain,(
% 2.99/1.00    ! [X0] : (! [X1] : (((r1_tsep_1(X0,X1) | ~r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))) & (r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) | ~r1_tsep_1(X0,X1))) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.99/1.00    inference(nnf_transformation,[],[f20])).
% 2.99/1.00  
% 2.99/1.00  fof(f48,plain,(
% 2.99/1.00    ( ! [X0,X1] : (r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) | ~r1_tsep_1(X0,X1) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f30])).
% 2.99/1.00  
% 2.99/1.00  fof(f4,axiom,(
% 2.99/1.00    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f29,plain,(
% 2.99/1.00    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 2.99/1.00    inference(nnf_transformation,[],[f4])).
% 2.99/1.00  
% 2.99/1.00  fof(f43,plain,(
% 2.99/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f29])).
% 2.99/1.00  
% 2.99/1.00  fof(f2,axiom,(
% 2.99/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f27,plain,(
% 2.99/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.99/1.00    inference(nnf_transformation,[],[f2])).
% 2.99/1.00  
% 2.99/1.00  fof(f28,plain,(
% 2.99/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.99/1.00    inference(flattening,[],[f27])).
% 2.99/1.00  
% 2.99/1.00  fof(f38,plain,(
% 2.99/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.99/1.00    inference(cnf_transformation,[],[f28])).
% 2.99/1.00  
% 2.99/1.00  fof(f62,plain,(
% 2.99/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.99/1.00    inference(equality_resolution,[],[f38])).
% 2.99/1.00  
% 2.99/1.00  fof(f3,axiom,(
% 2.99/1.00    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f15,plain,(
% 2.99/1.00    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) | ~r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 2.99/1.00    inference(ennf_transformation,[],[f3])).
% 2.99/1.00  
% 2.99/1.00  fof(f42,plain,(
% 2.99/1.00    ( ! [X2,X0,X1] : (r1_xboole_0(X0,X2) | ~r1_tarski(X0,k4_xboole_0(X1,X2))) )),
% 2.99/1.00    inference(cnf_transformation,[],[f15])).
% 2.99/1.00  
% 2.99/1.00  fof(f1,axiom,(
% 2.99/1.00    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 2.99/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.99/1.00  
% 2.99/1.00  fof(f14,plain,(
% 2.99/1.00    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 2.99/1.00    inference(ennf_transformation,[],[f1])).
% 2.99/1.00  
% 2.99/1.00  fof(f37,plain,(
% 2.99/1.00    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f14])).
% 2.99/1.00  
% 2.99/1.00  fof(f58,plain,(
% 2.99/1.00    m1_pre_topc(sK1,sK2)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  fof(f49,plain,(
% 2.99/1.00    ( ! [X0,X1] : (r1_tsep_1(X0,X1) | ~r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.99/1.00    inference(cnf_transformation,[],[f30])).
% 2.99/1.00  
% 2.99/1.00  fof(f59,plain,(
% 2.99/1.00    ~r1_tsep_1(sK3,sK1) | ~r1_tsep_1(sK1,sK3)),
% 2.99/1.00    inference(cnf_transformation,[],[f36])).
% 2.99/1.00  
% 2.99/1.00  cnf(c_21,negated_conjecture,
% 2.99/1.00      ( m1_pre_topc(sK1,sK0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1056,plain,
% 2.99/1.00      ( m1_pre_topc(sK1,sK0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_14,plain,
% 2.99/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.99/1.00      | ~ m1_pre_topc(X0,X2)
% 2.99/1.00      | ~ m1_pre_topc(X2,X1)
% 2.99/1.00      | r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
% 2.99/1.00      | ~ l1_pre_topc(X1)
% 2.99/1.00      | ~ v2_pre_topc(X1) ),
% 2.99/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1063,plain,
% 2.99/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 2.99/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 2.99/1.00      | m1_pre_topc(X0,X2) != iProver_top
% 2.99/1.00      | r1_tarski(u1_struct_0(X0),u1_struct_0(X2)) = iProver_top
% 2.99/1.00      | l1_pre_topc(X1) != iProver_top
% 2.99/1.00      | v2_pre_topc(X1) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1925,plain,
% 2.99/1.00      ( m1_pre_topc(X0,sK0) != iProver_top
% 2.99/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) = iProver_top
% 2.99/1.00      | l1_pre_topc(sK0) != iProver_top
% 2.99/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_1056,c_1063]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_23,negated_conjecture,
% 2.99/1.00      ( v2_pre_topc(sK0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_24,plain,
% 2.99/1.00      ( v2_pre_topc(sK0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_22,negated_conjecture,
% 2.99/1.00      ( l1_pre_topc(sK0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_25,plain,
% 2.99/1.00      ( l1_pre_topc(sK0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_3017,plain,
% 2.99/1.00      ( m1_pre_topc(X0,sK0) != iProver_top
% 2.99/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) = iProver_top ),
% 2.99/1.00      inference(global_propositional_subsumption,
% 2.99/1.00                [status(thm)],
% 2.99/1.00                [c_1925,c_24,c_25]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_16,negated_conjecture,
% 2.99/1.00      ( r1_tsep_1(sK2,sK3) | r1_tsep_1(sK3,sK2) ),
% 2.99/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1061,plain,
% 2.99/1.00      ( r1_tsep_1(sK2,sK3) = iProver_top
% 2.99/1.00      | r1_tsep_1(sK3,sK2) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_13,plain,
% 2.99/1.00      ( ~ r1_tsep_1(X0,X1)
% 2.99/1.00      | r1_tsep_1(X1,X0)
% 2.99/1.00      | ~ l1_struct_0(X1)
% 2.99/1.00      | ~ l1_struct_0(X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1064,plain,
% 2.99/1.00      ( r1_tsep_1(X0,X1) != iProver_top
% 2.99/1.00      | r1_tsep_1(X1,X0) = iProver_top
% 2.99/1.00      | l1_struct_0(X1) != iProver_top
% 2.99/1.00      | l1_struct_0(X0) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2202,plain,
% 2.99/1.00      ( r1_tsep_1(sK3,sK2) = iProver_top
% 2.99/1.00      | l1_struct_0(sK2) != iProver_top
% 2.99/1.00      | l1_struct_0(sK3) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_1061,c_1064]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_20,negated_conjecture,
% 2.99/1.00      ( m1_pre_topc(sK2,sK0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_27,plain,
% 2.99/1.00      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_19,negated_conjecture,
% 2.99/1.00      ( m1_pre_topc(sK3,sK0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_28,plain,
% 2.99/1.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_9,plain,
% 2.99/1.00      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1358,plain,
% 2.99/1.00      ( l1_struct_0(sK2) | ~ l1_pre_topc(sK2) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_9]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1359,plain,
% 2.99/1.00      ( l1_struct_0(sK2) = iProver_top
% 2.99/1.00      | l1_pre_topc(sK2) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1358]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_10,plain,
% 2.99/1.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f47]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1366,plain,
% 2.99/1.00      ( ~ m1_pre_topc(sK2,X0) | ~ l1_pre_topc(X0) | l1_pre_topc(sK2) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_10]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1367,plain,
% 2.99/1.00      ( m1_pre_topc(sK2,X0) != iProver_top
% 2.99/1.00      | l1_pre_topc(X0) != iProver_top
% 2.99/1.00      | l1_pre_topc(sK2) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1366]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1369,plain,
% 2.99/1.00      ( m1_pre_topc(sK2,sK0) != iProver_top
% 2.99/1.00      | l1_pre_topc(sK0) != iProver_top
% 2.99/1.00      | l1_pre_topc(sK2) = iProver_top ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_1367]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1537,plain,
% 2.99/1.00      ( l1_struct_0(sK3) | ~ l1_pre_topc(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_9]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1538,plain,
% 2.99/1.00      ( l1_struct_0(sK3) = iProver_top
% 2.99/1.00      | l1_pre_topc(sK3) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1537]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1679,plain,
% 2.99/1.00      ( ~ m1_pre_topc(sK3,X0) | ~ l1_pre_topc(X0) | l1_pre_topc(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_10]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1680,plain,
% 2.99/1.00      ( m1_pre_topc(sK3,X0) != iProver_top
% 2.99/1.00      | l1_pre_topc(X0) != iProver_top
% 2.99/1.00      | l1_pre_topc(sK3) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1679]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1682,plain,
% 2.99/1.00      ( m1_pre_topc(sK3,sK0) != iProver_top
% 2.99/1.00      | l1_pre_topc(sK0) != iProver_top
% 2.99/1.00      | l1_pre_topc(sK3) = iProver_top ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_1680]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2650,plain,
% 2.99/1.00      ( r1_tsep_1(sK3,sK2) = iProver_top ),
% 2.99/1.00      inference(global_propositional_subsumption,
% 2.99/1.00                [status(thm)],
% 2.99/1.00                [c_2202,c_25,c_27,c_28,c_1359,c_1369,c_1538,c_1682]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_12,plain,
% 2.99/1.00      ( ~ r1_tsep_1(X0,X1)
% 2.99/1.00      | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
% 2.99/1.00      | ~ l1_struct_0(X1)
% 2.99/1.00      | ~ l1_struct_0(X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f48]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1065,plain,
% 2.99/1.00      ( r1_tsep_1(X0,X1) != iProver_top
% 2.99/1.00      | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) = iProver_top
% 2.99/1.00      | l1_struct_0(X1) != iProver_top
% 2.99/1.00      | l1_struct_0(X0) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_7,plain,
% 2.99/1.00      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0 ),
% 2.99/1.00      inference(cnf_transformation,[],[f43]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1070,plain,
% 2.99/1.00      ( k4_xboole_0(X0,X1) = X0 | r1_xboole_0(X0,X1) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2531,plain,
% 2.99/1.00      ( k4_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) = u1_struct_0(X0)
% 2.99/1.00      | r1_tsep_1(X0,X1) != iProver_top
% 2.99/1.00      | l1_struct_0(X1) != iProver_top
% 2.99/1.00      | l1_struct_0(X0) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_1065,c_1070]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_4953,plain,
% 2.99/1.00      ( k4_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2)) = u1_struct_0(sK3)
% 2.99/1.00      | l1_struct_0(sK2) != iProver_top
% 2.99/1.00      | l1_struct_0(sK3) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_2650,c_2531]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1368,plain,
% 2.99/1.00      ( ~ m1_pre_topc(sK2,sK0) | ~ l1_pre_topc(sK0) | l1_pre_topc(sK2) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_1366]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1681,plain,
% 2.99/1.00      ( ~ m1_pre_topc(sK3,sK0) | ~ l1_pre_topc(sK0) | l1_pre_topc(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_1679]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1826,plain,
% 2.99/1.00      ( ~ r1_tsep_1(sK3,sK2)
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2))
% 2.99/1.00      | ~ l1_struct_0(sK2)
% 2.99/1.00      | ~ l1_struct_0(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2203,plain,
% 2.99/1.00      ( r1_tsep_1(sK3,sK2) | ~ l1_struct_0(sK2) | ~ l1_struct_0(sK3) ),
% 2.99/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_2202]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2371,plain,
% 2.99/1.00      ( ~ r1_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2))
% 2.99/1.00      | k4_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2)) = u1_struct_0(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_5367,plain,
% 2.99/1.00      ( k4_xboole_0(u1_struct_0(sK3),u1_struct_0(sK2)) = u1_struct_0(sK3) ),
% 2.99/1.00      inference(global_propositional_subsumption,
% 2.99/1.00                [status(thm)],
% 2.99/1.00                [c_4953,c_22,c_20,c_19,c_1358,c_1368,c_1537,c_1681,
% 2.99/1.00                 c_1826,c_2203,c_2371]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_3,plain,
% 2.99/1.00      ( r1_tarski(X0,X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1074,plain,
% 2.99/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_4,plain,
% 2.99/1.00      ( ~ r1_tarski(X0,k4_xboole_0(X1,X2)) | r1_xboole_0(X0,X2) ),
% 2.99/1.00      inference(cnf_transformation,[],[f42]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1073,plain,
% 2.99/1.00      ( r1_tarski(X0,k4_xboole_0(X1,X2)) != iProver_top
% 2.99/1.00      | r1_xboole_0(X0,X2) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1885,plain,
% 2.99/1.00      ( r1_xboole_0(k4_xboole_0(X0,X1),X1) = iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_1074,c_1073]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_0,plain,
% 2.99/1.00      ( ~ r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f37]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1076,plain,
% 2.99/1.00      ( r1_xboole_0(X0,X1) != iProver_top
% 2.99/1.00      | r1_xboole_0(X1,X0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_3280,plain,
% 2.99/1.00      ( r1_xboole_0(X0,k4_xboole_0(X1,X0)) = iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_1885,c_1076]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_3293,plain,
% 2.99/1.00      ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0 ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_3280,c_1070]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_5376,plain,
% 2.99/1.00      ( k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = u1_struct_0(sK2) ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_5367,c_3293]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_5672,plain,
% 2.99/1.00      ( r1_tarski(X0,u1_struct_0(sK2)) != iProver_top
% 2.99/1.00      | r1_xboole_0(X0,u1_struct_0(sK3)) = iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_5376,c_1073]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_7131,plain,
% 2.99/1.00      ( m1_pre_topc(sK1,sK2) != iProver_top
% 2.99/1.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) = iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_3017,c_5672]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_26,plain,
% 2.99/1.00      ( m1_pre_topc(sK1,sK0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_18,negated_conjecture,
% 2.99/1.00      ( m1_pre_topc(sK1,sK2) ),
% 2.99/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_29,plain,
% 2.99/1.00      ( m1_pre_topc(sK1,sK2) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1247,plain,
% 2.99/1.00      ( ~ r1_tsep_1(sK2,sK3)
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))
% 2.99/1.00      | ~ l1_struct_0(sK2)
% 2.99/1.00      | ~ l1_struct_0(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1248,plain,
% 2.99/1.00      ( r1_tsep_1(sK2,sK3) != iProver_top
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = iProver_top
% 2.99/1.00      | l1_struct_0(sK2) != iProver_top
% 2.99/1.00      | l1_struct_0(sK3) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1247]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1345,plain,
% 2.99/1.00      ( ~ r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))
% 2.99/1.00      | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = u1_struct_0(sK2) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1349,plain,
% 2.99/1.00      ( k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) = u1_struct_0(sK2)
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1345]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1293,plain,
% 2.99/1.00      ( ~ m1_pre_topc(X0,sK0)
% 2.99/1.00      | ~ m1_pre_topc(sK1,X0)
% 2.99/1.00      | ~ m1_pre_topc(sK1,sK0)
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0))
% 2.99/1.00      | ~ l1_pre_topc(sK0)
% 2.99/1.00      | ~ v2_pre_topc(sK0) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_14]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1411,plain,
% 2.99/1.00      ( ~ m1_pre_topc(sK1,sK0)
% 2.99/1.00      | ~ m1_pre_topc(sK1,sK2)
% 2.99/1.00      | ~ m1_pre_topc(sK2,sK0)
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2))
% 2.99/1.00      | ~ l1_pre_topc(sK0)
% 2.99/1.00      | ~ v2_pre_topc(sK0) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_1293]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1412,plain,
% 2.99/1.00      ( m1_pre_topc(sK1,sK0) != iProver_top
% 2.99/1.00      | m1_pre_topc(sK1,sK2) != iProver_top
% 2.99/1.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2)) = iProver_top
% 2.99/1.00      | l1_pre_topc(sK0) != iProver_top
% 2.99/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1411]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1825,plain,
% 2.99/1.00      ( r1_tsep_1(sK2,sK3)
% 2.99/1.00      | ~ r1_tsep_1(sK3,sK2)
% 2.99/1.00      | ~ l1_struct_0(sK2)
% 2.99/1.00      | ~ l1_struct_0(sK3) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_13]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1829,plain,
% 2.99/1.00      ( r1_tsep_1(sK2,sK3) = iProver_top
% 2.99/1.00      | r1_tsep_1(sK3,sK2) != iProver_top
% 2.99/1.00      | l1_struct_0(sK2) != iProver_top
% 2.99/1.00      | l1_struct_0(sK3) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_1825]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_499,plain,( X0 = X0 ),theory(equality) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2250,plain,
% 2.99/1.00      ( u1_struct_0(sK1) = u1_struct_0(sK1) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_499]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_502,plain,
% 2.99/1.00      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.99/1.00      theory(equality) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1339,plain,
% 2.99/1.00      ( ~ r1_tarski(X0,X1)
% 2.99/1.00      | r1_tarski(X2,k4_xboole_0(X3,X4))
% 2.99/1.00      | X2 != X0
% 2.99/1.00      | k4_xboole_0(X3,X4) != X1 ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_502]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2403,plain,
% 2.99/1.00      ( r1_tarski(X0,k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
% 2.99/1.00      | ~ r1_tarski(X1,u1_struct_0(sK2))
% 2.99/1.00      | X0 != X1
% 2.99/1.00      | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_1339]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_3420,plain,
% 2.99/1.00      ( r1_tarski(X0,k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
% 2.99/1.00      | ~ r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2))
% 2.99/1.00      | X0 != u1_struct_0(sK1)
% 2.99/1.00      | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_2403]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_4387,plain,
% 2.99/1.00      ( r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
% 2.99/1.00      | ~ r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2))
% 2.99/1.00      | k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2)
% 2.99/1.00      | u1_struct_0(sK1) != u1_struct_0(sK1) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_3420]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_4388,plain,
% 2.99/1.00      ( k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)) != u1_struct_0(sK2)
% 2.99/1.00      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))) = iProver_top
% 2.99/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK2)) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_4387]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_6370,plain,
% 2.99/1.00      ( ~ r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3)))
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) ),
% 2.99/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_6371,plain,
% 2.99/1.00      ( r1_tarski(u1_struct_0(sK1),k4_xboole_0(u1_struct_0(sK2),u1_struct_0(sK3))) != iProver_top
% 2.99/1.00      | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_6370]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_7774,plain,
% 2.99/1.00      ( r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK3)) = iProver_top ),
% 2.99/1.00      inference(global_propositional_subsumption,
% 2.99/1.00                [status(thm)],
% 2.99/1.00                [c_7131,c_24,c_25,c_26,c_27,c_28,c_29,c_1248,c_1349,
% 2.99/1.00                 c_1359,c_1369,c_1412,c_1538,c_1682,c_1829,c_2202,c_2250,
% 2.99/1.00                 c_4388,c_6371]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_7779,plain,
% 2.99/1.00      ( r1_xboole_0(u1_struct_0(sK3),u1_struct_0(sK1)) = iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_7774,c_1076]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_11,plain,
% 2.99/1.00      ( r1_tsep_1(X0,X1)
% 2.99/1.00      | ~ r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
% 2.99/1.00      | ~ l1_struct_0(X1)
% 2.99/1.00      | ~ l1_struct_0(X0) ),
% 2.99/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1066,plain,
% 2.99/1.00      ( r1_tsep_1(X0,X1) = iProver_top
% 2.99/1.00      | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) != iProver_top
% 2.99/1.00      | l1_struct_0(X1) != iProver_top
% 2.99/1.00      | l1_struct_0(X0) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_8584,plain,
% 2.99/1.00      ( r1_tsep_1(sK3,sK1) = iProver_top
% 2.99/1.00      | l1_struct_0(sK1) != iProver_top
% 2.99/1.00      | l1_struct_0(sK3) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_7779,c_1066]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_7781,plain,
% 2.99/1.00      ( r1_tsep_1(sK1,sK3) = iProver_top
% 2.99/1.00      | l1_struct_0(sK1) != iProver_top
% 2.99/1.00      | l1_struct_0(sK3) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_7774,c_1066]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1059,plain,
% 2.99/1.00      ( m1_pre_topc(sK1,sK2) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1067,plain,
% 2.99/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 2.99/1.00      | l1_pre_topc(X1) != iProver_top
% 2.99/1.00      | l1_pre_topc(X0) = iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2076,plain,
% 2.99/1.00      ( l1_pre_topc(sK1) = iProver_top
% 2.99/1.00      | l1_pre_topc(sK2) != iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_1059,c_1067]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2261,plain,
% 2.99/1.00      ( l1_pre_topc(sK1) = iProver_top ),
% 2.99/1.00      inference(global_propositional_subsumption,
% 2.99/1.00                [status(thm)],
% 2.99/1.00                [c_2076,c_25,c_27,c_1369]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_1068,plain,
% 2.99/1.00      ( l1_struct_0(X0) = iProver_top | l1_pre_topc(X0) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_2266,plain,
% 2.99/1.00      ( l1_struct_0(sK1) = iProver_top ),
% 2.99/1.00      inference(superposition,[status(thm)],[c_2261,c_1068]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_17,negated_conjecture,
% 2.99/1.00      ( ~ r1_tsep_1(sK1,sK3) | ~ r1_tsep_1(sK3,sK1) ),
% 2.99/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(c_30,plain,
% 2.99/1.00      ( r1_tsep_1(sK1,sK3) != iProver_top
% 2.99/1.00      | r1_tsep_1(sK3,sK1) != iProver_top ),
% 2.99/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.99/1.00  
% 2.99/1.00  cnf(contradiction,plain,
% 2.99/1.00      ( $false ),
% 2.99/1.00      inference(minisat,
% 2.99/1.00                [status(thm)],
% 2.99/1.00                [c_8584,c_7781,c_2266,c_1682,c_1538,c_30,c_28,c_25]) ).
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.99/1.00  
% 2.99/1.00  ------                               Statistics
% 2.99/1.00  
% 2.99/1.00  ------ General
% 2.99/1.00  
% 2.99/1.00  abstr_ref_over_cycles:                  0
% 2.99/1.00  abstr_ref_under_cycles:                 0
% 2.99/1.00  gc_basic_clause_elim:                   0
% 2.99/1.00  forced_gc_time:                         0
% 2.99/1.00  parsing_time:                           0.008
% 2.99/1.00  unif_index_cands_time:                  0.
% 2.99/1.00  unif_index_add_time:                    0.
% 2.99/1.00  orderings_time:                         0.
% 2.99/1.00  out_proof_time:                         0.029
% 2.99/1.00  total_time:                             0.237
% 2.99/1.00  num_of_symbols:                         44
% 2.99/1.00  num_of_terms:                           6832
% 2.99/1.00  
% 2.99/1.00  ------ Preprocessing
% 2.99/1.00  
% 2.99/1.00  num_of_splits:                          0
% 2.99/1.00  num_of_split_atoms:                     0
% 2.99/1.00  num_of_reused_defs:                     0
% 2.99/1.00  num_eq_ax_congr_red:                    12
% 2.99/1.00  num_of_sem_filtered_clauses:            1
% 2.99/1.00  num_of_subtypes:                        0
% 2.99/1.00  monotx_restored_types:                  0
% 2.99/1.00  sat_num_of_epr_types:                   0
% 2.99/1.00  sat_num_of_non_cyclic_types:            0
% 2.99/1.00  sat_guarded_non_collapsed_types:        0
% 2.99/1.00  num_pure_diseq_elim:                    0
% 2.99/1.00  simp_replaced_by:                       0
% 2.99/1.00  res_preprocessed:                       109
% 2.99/1.00  prep_upred:                             0
% 2.99/1.00  prep_unflattend:                        0
% 2.99/1.00  smt_new_axioms:                         0
% 2.99/1.00  pred_elim_cands:                        7
% 2.99/1.00  pred_elim:                              0
% 2.99/1.00  pred_elim_cl:                           0
% 2.99/1.00  pred_elim_cycles:                       2
% 2.99/1.00  merged_defs:                            8
% 2.99/1.00  merged_defs_ncl:                        0
% 2.99/1.00  bin_hyper_res:                          8
% 2.99/1.00  prep_cycles:                            4
% 2.99/1.00  pred_elim_time:                         0.
% 2.99/1.00  splitting_time:                         0.
% 2.99/1.00  sem_filter_time:                        0.
% 2.99/1.00  monotx_time:                            0.
% 2.99/1.00  subtype_inf_time:                       0.
% 2.99/1.00  
% 2.99/1.00  ------ Problem properties
% 2.99/1.00  
% 2.99/1.00  clauses:                                23
% 2.99/1.00  conjectures:                            8
% 2.99/1.00  epr:                                    15
% 2.99/1.00  horn:                                   22
% 2.99/1.00  ground:                                 8
% 2.99/1.00  unary:                                  7
% 2.99/1.00  binary:                                 8
% 2.99/1.00  lits:                                   57
% 2.99/1.00  lits_eq:                                3
% 2.99/1.00  fd_pure:                                0
% 2.99/1.00  fd_pseudo:                              0
% 2.99/1.00  fd_cond:                                0
% 2.99/1.00  fd_pseudo_cond:                         1
% 2.99/1.00  ac_symbols:                             0
% 2.99/1.00  
% 2.99/1.00  ------ Propositional Solver
% 2.99/1.00  
% 2.99/1.00  prop_solver_calls:                      30
% 2.99/1.00  prop_fast_solver_calls:                 896
% 2.99/1.00  smt_solver_calls:                       0
% 2.99/1.00  smt_fast_solver_calls:                  0
% 2.99/1.00  prop_num_of_clauses:                    3130
% 2.99/1.00  prop_preprocess_simplified:             6846
% 2.99/1.00  prop_fo_subsumed:                       59
% 2.99/1.00  prop_solver_time:                       0.
% 2.99/1.00  smt_solver_time:                        0.
% 2.99/1.00  smt_fast_solver_time:                   0.
% 2.99/1.00  prop_fast_solver_time:                  0.
% 2.99/1.00  prop_unsat_core_time:                   0.
% 2.99/1.00  
% 2.99/1.00  ------ QBF
% 2.99/1.00  
% 2.99/1.00  qbf_q_res:                              0
% 2.99/1.00  qbf_num_tautologies:                    0
% 2.99/1.00  qbf_prep_cycles:                        0
% 2.99/1.00  
% 2.99/1.00  ------ BMC1
% 2.99/1.00  
% 2.99/1.00  bmc1_current_bound:                     -1
% 2.99/1.00  bmc1_last_solved_bound:                 -1
% 2.99/1.00  bmc1_unsat_core_size:                   -1
% 2.99/1.00  bmc1_unsat_core_parents_size:           -1
% 2.99/1.00  bmc1_merge_next_fun:                    0
% 2.99/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.99/1.00  
% 2.99/1.00  ------ Instantiation
% 2.99/1.00  
% 2.99/1.00  inst_num_of_clauses:                    815
% 2.99/1.00  inst_num_in_passive:                    52
% 2.99/1.00  inst_num_in_active:                     486
% 2.99/1.00  inst_num_in_unprocessed:                277
% 2.99/1.00  inst_num_of_loops:                      530
% 2.99/1.00  inst_num_of_learning_restarts:          0
% 2.99/1.00  inst_num_moves_active_passive:          39
% 2.99/1.00  inst_lit_activity:                      0
% 2.99/1.00  inst_lit_activity_moves:                0
% 2.99/1.00  inst_num_tautologies:                   0
% 2.99/1.00  inst_num_prop_implied:                  0
% 2.99/1.00  inst_num_existing_simplified:           0
% 2.99/1.00  inst_num_eq_res_simplified:             0
% 2.99/1.00  inst_num_child_elim:                    0
% 2.99/1.00  inst_num_of_dismatching_blockings:      578
% 2.99/1.00  inst_num_of_non_proper_insts:           1199
% 2.99/1.00  inst_num_of_duplicates:                 0
% 2.99/1.00  inst_inst_num_from_inst_to_res:         0
% 2.99/1.00  inst_dismatching_checking_time:         0.
% 2.99/1.00  
% 2.99/1.00  ------ Resolution
% 2.99/1.00  
% 2.99/1.00  res_num_of_clauses:                     0
% 2.99/1.00  res_num_in_passive:                     0
% 2.99/1.00  res_num_in_active:                      0
% 2.99/1.00  res_num_of_loops:                       113
% 2.99/1.00  res_forward_subset_subsumed:            80
% 2.99/1.00  res_backward_subset_subsumed:           2
% 2.99/1.00  res_forward_subsumed:                   0
% 2.99/1.00  res_backward_subsumed:                  0
% 2.99/1.00  res_forward_subsumption_resolution:     0
% 2.99/1.00  res_backward_subsumption_resolution:    0
% 2.99/1.00  res_clause_to_clause_subsumption:       1201
% 2.99/1.00  res_orphan_elimination:                 0
% 2.99/1.00  res_tautology_del:                      136
% 2.99/1.00  res_num_eq_res_simplified:              0
% 2.99/1.00  res_num_sel_changes:                    0
% 2.99/1.00  res_moves_from_active_to_pass:          0
% 2.99/1.00  
% 2.99/1.00  ------ Superposition
% 2.99/1.00  
% 2.99/1.00  sup_time_total:                         0.
% 2.99/1.00  sup_time_generating:                    0.
% 2.99/1.00  sup_time_sim_full:                      0.
% 2.99/1.00  sup_time_sim_immed:                     0.
% 2.99/1.00  
% 2.99/1.00  sup_num_of_clauses:                     237
% 2.99/1.00  sup_num_in_active:                      105
% 2.99/1.00  sup_num_in_passive:                     132
% 2.99/1.00  sup_num_of_loops:                       105
% 2.99/1.00  sup_fw_superposition:                   313
% 2.99/1.00  sup_bw_superposition:                   370
% 2.99/1.00  sup_immediate_simplified:               90
% 2.99/1.00  sup_given_eliminated:                   0
% 2.99/1.00  comparisons_done:                       0
% 2.99/1.00  comparisons_avoided:                    0
% 2.99/1.00  
% 2.99/1.00  ------ Simplifications
% 2.99/1.00  
% 2.99/1.00  
% 2.99/1.00  sim_fw_subset_subsumed:                 19
% 2.99/1.00  sim_bw_subset_subsumed:                 3
% 2.99/1.00  sim_fw_subsumed:                        56
% 2.99/1.00  sim_bw_subsumed:                        0
% 2.99/1.00  sim_fw_subsumption_res:                 0
% 2.99/1.00  sim_bw_subsumption_res:                 0
% 2.99/1.00  sim_tautology_del:                      25
% 2.99/1.00  sim_eq_tautology_del:                   25
% 2.99/1.00  sim_eq_res_simp:                        0
% 2.99/1.00  sim_fw_demodulated:                     1
% 2.99/1.00  sim_bw_demodulated:                     0
% 2.99/1.00  sim_light_normalised:                   20
% 2.99/1.00  sim_joinable_taut:                      0
% 2.99/1.00  sim_joinable_simp:                      0
% 2.99/1.00  sim_ac_normalised:                      0
% 2.99/1.00  sim_smt_subsumption:                    0
% 2.99/1.00  
%------------------------------------------------------------------------------
