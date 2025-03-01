%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:22:10 EST 2020

% Result     : Theorem 3.50s
% Output     : CNFRefutation 3.50s
% Verified   : 
% Statistics : Number of formulae       :  146 (1862 expanded)
%              Number of clauses        :   93 ( 435 expanded)
%              Number of leaves         :   11 ( 661 expanded)
%              Depth                    :   25
%              Number of atoms          :  714 (20186 expanded)
%              Number of equality atoms :  244 ( 901 expanded)
%              Maximal formula depth    :   17 (   6 average)
%              Maximal clause size      :   26 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
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
                 => ( ( m1_pre_topc(X2,X3)
                      & m1_pre_topc(X1,X3) )
                   => ( m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
                      | r1_tsep_1(X1,X2) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
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
                   => ( ( m1_pre_topc(X2,X3)
                        & m1_pre_topc(X1,X3) )
                     => ( m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
                        | r1_tsep_1(X1,X2) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f18,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
                  & ~ r1_tsep_1(X1,X2)
                  & m1_pre_topc(X2,X3)
                  & m1_pre_topc(X1,X3)
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
                  & ~ r1_tsep_1(X1,X2)
                  & m1_pre_topc(X2,X3)
                  & m1_pre_topc(X1,X3)
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
          & ~ r1_tsep_1(X1,X2)
          & m1_pre_topc(X2,X3)
          & m1_pre_topc(X1,X3)
          & m1_pre_topc(X3,X0)
          & ~ v2_struct_0(X3) )
     => ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),sK3)
        & ~ r1_tsep_1(X1,X2)
        & m1_pre_topc(X2,sK3)
        & m1_pre_topc(X1,sK3)
        & m1_pre_topc(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
              & ~ r1_tsep_1(X1,X2)
              & m1_pre_topc(X2,X3)
              & m1_pre_topc(X1,X3)
              & m1_pre_topc(X3,X0)
              & ~ v2_struct_0(X3) )
          & m1_pre_topc(X2,X0)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ~ m1_pre_topc(k2_tsep_1(X0,X1,sK2),X3)
            & ~ r1_tsep_1(X1,sK2)
            & m1_pre_topc(sK2,X3)
            & m1_pre_topc(X1,X3)
            & m1_pre_topc(X3,X0)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK2,X0)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
                  & ~ r1_tsep_1(X1,X2)
                  & m1_pre_topc(X2,X3)
                  & m1_pre_topc(X1,X3)
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ m1_pre_topc(k2_tsep_1(X0,sK1,X2),X3)
                & ~ r1_tsep_1(sK1,X2)
                & m1_pre_topc(X2,X3)
                & m1_pre_topc(sK1,X3)
                & m1_pre_topc(X3,X0)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & m1_pre_topc(sK1,X0)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X3)
                    & ~ r1_tsep_1(X1,X2)
                    & m1_pre_topc(X2,X3)
                    & m1_pre_topc(X1,X3)
                    & m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                & m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
            & m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_pre_topc(k2_tsep_1(sK0,X1,X2),X3)
                  & ~ r1_tsep_1(X1,X2)
                  & m1_pre_topc(X2,X3)
                  & m1_pre_topc(X1,X3)
                  & m1_pre_topc(X3,sK0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,sK0)
              & ~ v2_struct_0(X2) )
          & m1_pre_topc(X1,sK0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ~ m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3)
    & ~ r1_tsep_1(sK1,sK2)
    & m1_pre_topc(sK2,sK3)
    & m1_pre_topc(sK1,sK3)
    & m1_pre_topc(sK3,sK0)
    & ~ v2_struct_0(sK3)
    & m1_pre_topc(sK2,sK0)
    & ~ v2_struct_0(sK2)
    & m1_pre_topc(sK1,sK0)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f27,f26,f25,f24])).

fof(f47,plain,(
    m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(X2,X0)
        & ~ v2_struct_0(X2)
        & m1_pre_topc(X1,X0)
        & ~ v2_struct_0(X1)
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_pre_topc(k2_tsep_1(X0,X1,X2),X0)
        & v1_pre_topc(k2_tsep_1(X0,X1,X2))
        & ~ v2_struct_0(k2_tsep_1(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(k2_tsep_1(X0,X1,X2),X0)
        & v1_pre_topc(k2_tsep_1(X0,X1,X2))
        & ~ v2_struct_0(k2_tsep_1(X0,X1,X2)) )
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(k2_tsep_1(X0,X1,X2),X0)
        & v1_pre_topc(k2_tsep_1(X0,X1,X2))
        & ~ v2_struct_0(k2_tsep_1(X0,X1,X2)) )
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( v1_pre_topc(k2_tsep_1(X0,X1,X2))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(k2_tsep_1(X0,X1,X2),X0)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ( ~ r1_tsep_1(X1,X2)
               => ! [X3] :
                    ( ( m1_pre_topc(X3,X0)
                      & v1_pre_topc(X3)
                      & ~ v2_struct_0(X3) )
                   => ( k2_tsep_1(X0,X1,X2) = X3
                    <=> u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( k2_tsep_1(X0,X1,X2) = X3
                  <=> u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) )
                  | ~ m1_pre_topc(X3,X0)
                  | ~ v1_pre_topc(X3)
                  | v2_struct_0(X3) )
              | r1_tsep_1(X1,X2)
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( k2_tsep_1(X0,X1,X2) = X3
                  <=> u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) )
                  | ~ m1_pre_topc(X3,X0)
                  | ~ v1_pre_topc(X3)
                  | v2_struct_0(X3) )
              | r1_tsep_1(X1,X2)
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f12])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( k2_tsep_1(X0,X1,X2) = X3
                      | u1_struct_0(X3) != k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) )
                    & ( u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))
                      | k2_tsep_1(X0,X1,X2) != X3 ) )
                  | ~ m1_pre_topc(X3,X0)
                  | ~ v1_pre_topc(X3)
                  | v2_struct_0(X3) )
              | r1_tsep_1(X1,X2)
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f34,plain,(
    ! [X2,X0,X3,X1] :
      ( u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))
      | k2_tsep_1(X0,X1,X2) != X3
      | ~ m1_pre_topc(X3,X0)
      | ~ v1_pre_topc(X3)
      | v2_struct_0(X3)
      | r1_tsep_1(X1,X2)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( u1_struct_0(k2_tsep_1(X0,X1,X2)) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(k2_tsep_1(X0,X1,X2),X0)
      | ~ v1_pre_topc(k2_tsep_1(X0,X1,X2))
      | v2_struct_0(k2_tsep_1(X0,X1,X2))
      | r1_tsep_1(X1,X2)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f34])).

fof(f52,plain,(
    ~ r1_tsep_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f28])).

fof(f44,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f46,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f28])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( ~ v2_struct_0(k2_tsep_1(X0,X1,X2))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f41,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f43,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f45,plain,(
    m1_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f51,plain,(
    m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f28])).

fof(f48,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f28])).

fof(f49,plain,(
    m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f50,plain,(
    m1_pre_topc(sK1,sK3) ),
    inference(cnf_transformation,[],[f28])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f33,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f6,axiom,(
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

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f23,plain,(
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
    inference(nnf_transformation,[],[f17])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(X1,X2)
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f42,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => v2_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f9])).

fof(f32,plain,(
    ! [X0,X1] :
      ( v2_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f20])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f55,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f29])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(X1,X2)
      | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f31,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f53,plain,(
    ~ m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_18,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1115,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_8,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v1_pre_topc(k2_tsep_1(X1,X0,X2))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1124,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | v1_pre_topc(k2_tsep_1(X1,X0,X2)) = iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_7,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(k2_tsep_1(X1,X0,X2),X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_1125,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | m1_pre_topc(k2_tsep_1(X1,X0,X2),X1) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_6,plain,
    ( r1_tsep_1(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_pre_topc(k2_tsep_1(X2,X0,X1),X2)
    | v2_struct_0(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(k2_tsep_1(X2,X0,X1))
    | ~ v1_pre_topc(k2_tsep_1(X2,X0,X1))
    | ~ l1_pre_topc(X2)
    | u1_struct_0(k2_tsep_1(X2,X0,X1)) = k3_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_13,negated_conjecture,
    ( ~ r1_tsep_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_250,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(k2_tsep_1(X1,X0,X2),X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(k2_tsep_1(X1,X0,X2))
    | ~ v1_pre_topc(k2_tsep_1(X1,X0,X2))
    | ~ l1_pre_topc(X1)
    | u1_struct_0(k2_tsep_1(X1,X0,X2)) = k3_xboole_0(u1_struct_0(X0),u1_struct_0(X2))
    | sK2 != X2
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_13])).

cnf(c_251,plain,
    ( ~ m1_pre_topc(k2_tsep_1(X0,sK1,sK2),X0)
    | ~ m1_pre_topc(sK2,X0)
    | ~ m1_pre_topc(sK1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2))
    | v2_struct_0(sK2)
    | v2_struct_0(sK1)
    | ~ v1_pre_topc(k2_tsep_1(X0,sK1,sK2))
    | ~ l1_pre_topc(X0)
    | u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_250])).

cnf(c_21,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_19,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_255,plain,
    ( ~ m1_pre_topc(k2_tsep_1(X0,sK1,sK2),X0)
    | ~ m1_pre_topc(sK2,X0)
    | ~ m1_pre_topc(sK1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2))
    | ~ v1_pre_topc(k2_tsep_1(X0,sK1,sK2))
    | ~ l1_pre_topc(X0)
    | u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_251,c_21,c_19])).

cnf(c_1108,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(k2_tsep_1(X0,sK1,sK2),X0) != iProver_top
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
    | v1_pre_topc(k2_tsep_1(X0,sK1,sK2)) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_255])).

cnf(c_4108,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v1_pre_topc(k2_tsep_1(X0,sK1,sK2)) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1125,c_1108])).

cnf(c_28,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_30,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_5953,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
    | v1_pre_topc(k2_tsep_1(X0,sK1,sK2)) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4108,c_28,c_30])).

cnf(c_5966,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1124,c_5953])).

cnf(c_6060,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5966,c_28,c_30])).

cnf(c_9,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ v2_struct_0(k2_tsep_1(X1,X0,X2))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1123,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | v2_struct_0(k2_tsep_1(X1,X0,X2)) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_6072,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_6060,c_1123])).

cnf(c_6165,plain,
    ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | m1_pre_topc(sK2,X0) != iProver_top
    | m1_pre_topc(sK1,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6072,c_28,c_30])).

cnf(c_6177,plain,
    ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK0,sK1,sK2))
    | m1_pre_topc(sK1,sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1115,c_6165])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_25,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_22,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_27,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_20,negated_conjecture,
    ( m1_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_29,plain,
    ( m1_pre_topc(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_6309,plain,
    ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK0,sK1,sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6177,c_25,c_27,c_29])).

cnf(c_14,negated_conjecture,
    ( m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1119,plain,
    ( m1_pre_topc(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_6176,plain,
    ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK3,sK1,sK2))
    | m1_pre_topc(sK1,sK3) != iProver_top
    | v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1119,c_6165])).

cnf(c_17,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_32,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_16,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_33,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_15,negated_conjecture,
    ( m1_pre_topc(sK1,sK3) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_34,plain,
    ( m1_pre_topc(sK1,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_4,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_1556,plain,
    ( ~ m1_pre_topc(sK3,X0)
    | ~ l1_pre_topc(X0)
    | l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1557,plain,
    ( m1_pre_topc(sK3,X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1556])).

cnf(c_1559,plain,
    ( m1_pre_topc(sK3,sK0) != iProver_top
    | l1_pre_topc(sK3) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1557])).

cnf(c_6207,plain,
    ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK3,sK1,sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6176,c_27,c_32,c_33,c_34,c_1559])).

cnf(c_6312,plain,
    ( u1_struct_0(k2_tsep_1(sK3,sK1,sK2)) = u1_struct_0(k2_tsep_1(sK0,sK1,sK2)) ),
    inference(demodulation,[status(thm)],[c_6309,c_6207])).

cnf(c_10,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X0,X2)
    | r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1122,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | m1_pre_topc(X0,X2) != iProver_top
    | r1_tarski(u1_struct_0(X0),u1_struct_0(X2)) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_4105,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | m1_pre_topc(X3,X1) != iProver_top
    | m1_pre_topc(k2_tsep_1(X1,X0,X2),X3) != iProver_top
    | r1_tarski(u1_struct_0(k2_tsep_1(X1,X0,X2)),u1_struct_0(X3)) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1125,c_1122])).

cnf(c_6333,plain,
    ( m1_pre_topc(X0,sK3) != iProver_top
    | m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),X0) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | m1_pre_topc(sK1,sK3) != iProver_top
    | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(X0)) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_6312,c_4105])).

cnf(c_23,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_26,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_35,plain,
    ( m1_pre_topc(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_2777,plain,
    ( ~ m1_pre_topc(sK3,X0)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0)
    | v2_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_2778,plain,
    ( m1_pre_topc(sK3,X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2777])).

cnf(c_2780,plain,
    ( m1_pre_topc(sK3,sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK3) = iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2778])).

cnf(c_8920,plain,
    ( r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(X0)) = iProver_top
    | m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),X0) != iProver_top
    | m1_pre_topc(X0,sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6333,c_26,c_27,c_28,c_30,c_32,c_33,c_34,c_35,c_1559,c_2780])).

cnf(c_8921,plain,
    ( m1_pre_topc(X0,sK3) != iProver_top
    | m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),X0) != iProver_top
    | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(X0)) = iProver_top ),
    inference(renaming,[status(thm)],[c_8920])).

cnf(c_1117,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3048,plain,
    ( m1_pre_topc(X0,sK0) != iProver_top
    | m1_pre_topc(sK3,X0) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1117,c_1122])).

cnf(c_3845,plain,
    ( m1_pre_topc(X0,sK0) != iProver_top
    | m1_pre_topc(sK3,X0) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3048,c_26,c_27])).

cnf(c_6329,plain,
    ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK0) != iProver_top
    | m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(k2_tsep_1(sK0,sK1,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_6312,c_3845])).

cnf(c_1456,plain,
    ( ~ m1_pre_topc(X0,sK3)
    | m1_pre_topc(k2_tsep_1(sK3,sK1,X0),sK3)
    | ~ m1_pre_topc(sK1,sK3)
    | v2_struct_0(X0)
    | v2_struct_0(sK3)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_3023,plain,
    ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3)
    | ~ m1_pre_topc(sK2,sK3)
    | ~ m1_pre_topc(sK1,sK3)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_1456])).

cnf(c_3024,plain,
    ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3) = iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | m1_pre_topc(sK1,sK3) != iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3023])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1128,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_11,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(X0,X2)
    | ~ r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1121,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | m1_pre_topc(X0,X2) = iProver_top
    | r1_tarski(u1_struct_0(X0),u1_struct_0(X2)) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2775,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_pre_topc(X0,X0) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1128,c_1121])).

cnf(c_4673,plain,
    ( m1_pre_topc(sK3,sK3) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1117,c_2775])).

cnf(c_4920,plain,
    ( m1_pre_topc(sK3,sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4673,c_26,c_27])).

cnf(c_4926,plain,
    ( m1_pre_topc(X0,sK3) != iProver_top
    | m1_pre_topc(sK3,X0) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_4920,c_1122])).

cnf(c_5445,plain,
    ( m1_pre_topc(X0,sK3) != iProver_top
    | m1_pre_topc(sK3,X0) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4926,c_26,c_27,c_33,c_1559,c_2780])).

cnf(c_6318,plain,
    ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3) != iProver_top
    | m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(k2_tsep_1(sK0,sK1,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_6312,c_5445])).

cnf(c_6710,plain,
    ( m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(k2_tsep_1(sK0,sK1,sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6329,c_27,c_28,c_30,c_32,c_33,c_34,c_35,c_1559,c_3024,c_6318])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_1129,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_6716,plain,
    ( u1_struct_0(k2_tsep_1(sK0,sK1,sK2)) = u1_struct_0(sK3)
    | m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
    | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6710,c_1129])).

cnf(c_31,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_12,negated_conjecture,
    ( ~ m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_37,plain,
    ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1471,plain,
    ( ~ m1_pre_topc(X0,sK0)
    | m1_pre_topc(k2_tsep_1(sK0,sK1,X0),sK0)
    | ~ m1_pre_topc(sK1,sK0)
    | v2_struct_0(X0)
    | v2_struct_0(sK1)
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1708,plain,
    ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK0)
    | ~ m1_pre_topc(sK2,sK0)
    | ~ m1_pre_topc(sK1,sK0)
    | v2_struct_0(sK2)
    | v2_struct_0(sK1)
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK0) ),
    inference(instantiation,[status(thm)],[c_1471])).

cnf(c_1709,plain,
    ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK0) = iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK1,sK0) != iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1708])).

cnf(c_5546,plain,
    ( ~ m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),X0)
    | m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3)
    | ~ m1_pre_topc(sK3,X0)
    | ~ r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3))
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_5547,plain,
    ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),X0) != iProver_top
    | m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) = iProver_top
    | m1_pre_topc(sK3,X0) != iProver_top
    | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5546])).

cnf(c_5549,plain,
    ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) = iProver_top
    | m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK0) != iProver_top
    | m1_pre_topc(sK3,sK0) != iProver_top
    | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_5547])).

cnf(c_6835,plain,
    ( r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6716,c_25,c_26,c_27,c_28,c_29,c_30,c_31,c_33,c_37,c_1709,c_5549])).

cnf(c_8941,plain,
    ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3) != iProver_top
    | m1_pre_topc(sK3,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_8921,c_6835])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8941,c_4673,c_3024,c_1559,c_35,c_34,c_33,c_32,c_30,c_28,c_27,c_26])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 11:01:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 3.50/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.50/1.00  
% 3.50/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.50/1.00  
% 3.50/1.00  ------  iProver source info
% 3.50/1.00  
% 3.50/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.50/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.50/1.00  git: non_committed_changes: false
% 3.50/1.00  git: last_make_outside_of_git: false
% 3.50/1.00  
% 3.50/1.00  ------ 
% 3.50/1.00  
% 3.50/1.00  ------ Input Options
% 3.50/1.00  
% 3.50/1.00  --out_options                           all
% 3.50/1.00  --tptp_safe_out                         true
% 3.50/1.00  --problem_path                          ""
% 3.50/1.00  --include_path                          ""
% 3.50/1.00  --clausifier                            res/vclausify_rel
% 3.50/1.00  --clausifier_options                    --mode clausify
% 3.50/1.00  --stdin                                 false
% 3.50/1.00  --stats_out                             all
% 3.50/1.00  
% 3.50/1.00  ------ General Options
% 3.50/1.00  
% 3.50/1.00  --fof                                   false
% 3.50/1.00  --time_out_real                         305.
% 3.50/1.00  --time_out_virtual                      -1.
% 3.50/1.00  --symbol_type_check                     false
% 3.50/1.00  --clausify_out                          false
% 3.50/1.00  --sig_cnt_out                           false
% 3.50/1.00  --trig_cnt_out                          false
% 3.50/1.00  --trig_cnt_out_tolerance                1.
% 3.50/1.00  --trig_cnt_out_sk_spl                   false
% 3.50/1.00  --abstr_cl_out                          false
% 3.50/1.00  
% 3.50/1.00  ------ Global Options
% 3.50/1.00  
% 3.50/1.00  --schedule                              default
% 3.50/1.00  --add_important_lit                     false
% 3.50/1.00  --prop_solver_per_cl                    1000
% 3.50/1.00  --min_unsat_core                        false
% 3.50/1.00  --soft_assumptions                      false
% 3.50/1.00  --soft_lemma_size                       3
% 3.50/1.00  --prop_impl_unit_size                   0
% 3.50/1.00  --prop_impl_unit                        []
% 3.50/1.00  --share_sel_clauses                     true
% 3.50/1.00  --reset_solvers                         false
% 3.50/1.00  --bc_imp_inh                            [conj_cone]
% 3.50/1.00  --conj_cone_tolerance                   3.
% 3.50/1.00  --extra_neg_conj                        none
% 3.50/1.00  --large_theory_mode                     true
% 3.50/1.00  --prolific_symb_bound                   200
% 3.50/1.00  --lt_threshold                          2000
% 3.50/1.00  --clause_weak_htbl                      true
% 3.50/1.00  --gc_record_bc_elim                     false
% 3.50/1.00  
% 3.50/1.00  ------ Preprocessing Options
% 3.50/1.00  
% 3.50/1.00  --preprocessing_flag                    true
% 3.50/1.00  --time_out_prep_mult                    0.1
% 3.50/1.00  --splitting_mode                        input
% 3.50/1.00  --splitting_grd                         true
% 3.50/1.00  --splitting_cvd                         false
% 3.50/1.00  --splitting_cvd_svl                     false
% 3.50/1.00  --splitting_nvd                         32
% 3.50/1.00  --sub_typing                            true
% 3.50/1.00  --prep_gs_sim                           true
% 3.50/1.00  --prep_unflatten                        true
% 3.50/1.00  --prep_res_sim                          true
% 3.50/1.00  --prep_upred                            true
% 3.50/1.00  --prep_sem_filter                       exhaustive
% 3.50/1.00  --prep_sem_filter_out                   false
% 3.50/1.00  --pred_elim                             true
% 3.50/1.00  --res_sim_input                         true
% 3.50/1.00  --eq_ax_congr_red                       true
% 3.50/1.00  --pure_diseq_elim                       true
% 3.50/1.00  --brand_transform                       false
% 3.50/1.00  --non_eq_to_eq                          false
% 3.50/1.00  --prep_def_merge                        true
% 3.50/1.00  --prep_def_merge_prop_impl              false
% 3.50/1.00  --prep_def_merge_mbd                    true
% 3.50/1.00  --prep_def_merge_tr_red                 false
% 3.50/1.00  --prep_def_merge_tr_cl                  false
% 3.50/1.00  --smt_preprocessing                     true
% 3.50/1.00  --smt_ac_axioms                         fast
% 3.50/1.00  --preprocessed_out                      false
% 3.50/1.00  --preprocessed_stats                    false
% 3.50/1.00  
% 3.50/1.00  ------ Abstraction refinement Options
% 3.50/1.00  
% 3.50/1.00  --abstr_ref                             []
% 3.50/1.00  --abstr_ref_prep                        false
% 3.50/1.00  --abstr_ref_until_sat                   false
% 3.50/1.00  --abstr_ref_sig_restrict                funpre
% 3.50/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.50/1.00  --abstr_ref_under                       []
% 3.50/1.00  
% 3.50/1.00  ------ SAT Options
% 3.50/1.00  
% 3.50/1.00  --sat_mode                              false
% 3.50/1.00  --sat_fm_restart_options                ""
% 3.50/1.00  --sat_gr_def                            false
% 3.50/1.00  --sat_epr_types                         true
% 3.50/1.00  --sat_non_cyclic_types                  false
% 3.50/1.00  --sat_finite_models                     false
% 3.50/1.00  --sat_fm_lemmas                         false
% 3.50/1.00  --sat_fm_prep                           false
% 3.50/1.00  --sat_fm_uc_incr                        true
% 3.50/1.00  --sat_out_model                         small
% 3.50/1.00  --sat_out_clauses                       false
% 3.50/1.00  
% 3.50/1.00  ------ QBF Options
% 3.50/1.00  
% 3.50/1.00  --qbf_mode                              false
% 3.50/1.00  --qbf_elim_univ                         false
% 3.50/1.00  --qbf_dom_inst                          none
% 3.50/1.00  --qbf_dom_pre_inst                      false
% 3.50/1.00  --qbf_sk_in                             false
% 3.50/1.00  --qbf_pred_elim                         true
% 3.50/1.00  --qbf_split                             512
% 3.50/1.00  
% 3.50/1.00  ------ BMC1 Options
% 3.50/1.00  
% 3.50/1.00  --bmc1_incremental                      false
% 3.50/1.00  --bmc1_axioms                           reachable_all
% 3.50/1.00  --bmc1_min_bound                        0
% 3.50/1.00  --bmc1_max_bound                        -1
% 3.50/1.00  --bmc1_max_bound_default                -1
% 3.50/1.00  --bmc1_symbol_reachability              true
% 3.50/1.00  --bmc1_property_lemmas                  false
% 3.50/1.00  --bmc1_k_induction                      false
% 3.50/1.00  --bmc1_non_equiv_states                 false
% 3.50/1.00  --bmc1_deadlock                         false
% 3.50/1.00  --bmc1_ucm                              false
% 3.50/1.00  --bmc1_add_unsat_core                   none
% 3.50/1.00  --bmc1_unsat_core_children              false
% 3.50/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.50/1.00  --bmc1_out_stat                         full
% 3.50/1.00  --bmc1_ground_init                      false
% 3.50/1.00  --bmc1_pre_inst_next_state              false
% 3.50/1.00  --bmc1_pre_inst_state                   false
% 3.50/1.00  --bmc1_pre_inst_reach_state             false
% 3.50/1.00  --bmc1_out_unsat_core                   false
% 3.50/1.00  --bmc1_aig_witness_out                  false
% 3.50/1.00  --bmc1_verbose                          false
% 3.50/1.00  --bmc1_dump_clauses_tptp                false
% 3.50/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.50/1.00  --bmc1_dump_file                        -
% 3.50/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.50/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.50/1.00  --bmc1_ucm_extend_mode                  1
% 3.50/1.00  --bmc1_ucm_init_mode                    2
% 3.50/1.00  --bmc1_ucm_cone_mode                    none
% 3.50/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.50/1.00  --bmc1_ucm_relax_model                  4
% 3.50/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.50/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.50/1.00  --bmc1_ucm_layered_model                none
% 3.50/1.00  --bmc1_ucm_max_lemma_size               10
% 3.50/1.00  
% 3.50/1.00  ------ AIG Options
% 3.50/1.00  
% 3.50/1.00  --aig_mode                              false
% 3.50/1.00  
% 3.50/1.00  ------ Instantiation Options
% 3.50/1.00  
% 3.50/1.00  --instantiation_flag                    true
% 3.50/1.00  --inst_sos_flag                         false
% 3.50/1.00  --inst_sos_phase                        true
% 3.50/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.50/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.50/1.00  --inst_lit_sel_side                     num_symb
% 3.50/1.00  --inst_solver_per_active                1400
% 3.50/1.00  --inst_solver_calls_frac                1.
% 3.50/1.00  --inst_passive_queue_type               priority_queues
% 3.50/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.50/1.00  --inst_passive_queues_freq              [25;2]
% 3.50/1.00  --inst_dismatching                      true
% 3.50/1.00  --inst_eager_unprocessed_to_passive     true
% 3.50/1.00  --inst_prop_sim_given                   true
% 3.50/1.00  --inst_prop_sim_new                     false
% 3.50/1.00  --inst_subs_new                         false
% 3.50/1.00  --inst_eq_res_simp                      false
% 3.50/1.00  --inst_subs_given                       false
% 3.50/1.00  --inst_orphan_elimination               true
% 3.50/1.00  --inst_learning_loop_flag               true
% 3.50/1.00  --inst_learning_start                   3000
% 3.50/1.00  --inst_learning_factor                  2
% 3.50/1.00  --inst_start_prop_sim_after_learn       3
% 3.50/1.00  --inst_sel_renew                        solver
% 3.50/1.00  --inst_lit_activity_flag                true
% 3.50/1.00  --inst_restr_to_given                   false
% 3.50/1.00  --inst_activity_threshold               500
% 3.50/1.00  --inst_out_proof                        true
% 3.50/1.00  
% 3.50/1.00  ------ Resolution Options
% 3.50/1.00  
% 3.50/1.00  --resolution_flag                       true
% 3.50/1.00  --res_lit_sel                           adaptive
% 3.50/1.00  --res_lit_sel_side                      none
% 3.50/1.00  --res_ordering                          kbo
% 3.50/1.00  --res_to_prop_solver                    active
% 3.50/1.00  --res_prop_simpl_new                    false
% 3.50/1.00  --res_prop_simpl_given                  true
% 3.50/1.00  --res_passive_queue_type                priority_queues
% 3.50/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.50/1.00  --res_passive_queues_freq               [15;5]
% 3.50/1.00  --res_forward_subs                      full
% 3.50/1.00  --res_backward_subs                     full
% 3.50/1.00  --res_forward_subs_resolution           true
% 3.50/1.00  --res_backward_subs_resolution          true
% 3.50/1.00  --res_orphan_elimination                true
% 3.50/1.00  --res_time_limit                        2.
% 3.50/1.00  --res_out_proof                         true
% 3.50/1.00  
% 3.50/1.00  ------ Superposition Options
% 3.50/1.00  
% 3.50/1.00  --superposition_flag                    true
% 3.50/1.00  --sup_passive_queue_type                priority_queues
% 3.50/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.50/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.50/1.00  --demod_completeness_check              fast
% 3.50/1.00  --demod_use_ground                      true
% 3.50/1.00  --sup_to_prop_solver                    passive
% 3.50/1.00  --sup_prop_simpl_new                    true
% 3.50/1.00  --sup_prop_simpl_given                  true
% 3.50/1.00  --sup_fun_splitting                     false
% 3.50/1.00  --sup_smt_interval                      50000
% 3.50/1.00  
% 3.50/1.00  ------ Superposition Simplification Setup
% 3.50/1.00  
% 3.50/1.00  --sup_indices_passive                   []
% 3.50/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.50/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.50/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.50/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.50/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.50/1.00  --sup_full_bw                           [BwDemod]
% 3.50/1.00  --sup_immed_triv                        [TrivRules]
% 3.50/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.50/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.50/1.00  --sup_immed_bw_main                     []
% 3.50/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.50/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.50/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.50/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.50/1.00  
% 3.50/1.00  ------ Combination Options
% 3.50/1.00  
% 3.50/1.00  --comb_res_mult                         3
% 3.50/1.00  --comb_sup_mult                         2
% 3.50/1.00  --comb_inst_mult                        10
% 3.50/1.00  
% 3.50/1.00  ------ Debug Options
% 3.50/1.00  
% 3.50/1.00  --dbg_backtrace                         false
% 3.50/1.00  --dbg_dump_prop_clauses                 false
% 3.50/1.00  --dbg_dump_prop_clauses_file            -
% 3.50/1.00  --dbg_out_stat                          false
% 3.50/1.00  ------ Parsing...
% 3.50/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.50/1.00  
% 3.50/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.50/1.00  
% 3.50/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.50/1.00  
% 3.50/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.50/1.00  ------ Proving...
% 3.50/1.00  ------ Problem Properties 
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  clauses                                 23
% 3.50/1.00  conjectures                             12
% 3.50/1.00  EPR                                     15
% 3.50/1.00  Horn                                    18
% 3.50/1.00  unary                                   13
% 3.50/1.00  binary                                  0
% 3.50/1.00  lits                                    73
% 3.50/1.00  lits eq                                 4
% 3.50/1.00  fd_pure                                 0
% 3.50/1.00  fd_pseudo                               0
% 3.50/1.00  fd_cond                                 0
% 3.50/1.00  fd_pseudo_cond                          2
% 3.50/1.00  AC symbols                              0
% 3.50/1.00  
% 3.50/1.00  ------ Schedule dynamic 5 is on 
% 3.50/1.00  
% 3.50/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  ------ 
% 3.50/1.00  Current options:
% 3.50/1.00  ------ 
% 3.50/1.00  
% 3.50/1.00  ------ Input Options
% 3.50/1.00  
% 3.50/1.00  --out_options                           all
% 3.50/1.00  --tptp_safe_out                         true
% 3.50/1.00  --problem_path                          ""
% 3.50/1.00  --include_path                          ""
% 3.50/1.00  --clausifier                            res/vclausify_rel
% 3.50/1.00  --clausifier_options                    --mode clausify
% 3.50/1.00  --stdin                                 false
% 3.50/1.00  --stats_out                             all
% 3.50/1.00  
% 3.50/1.00  ------ General Options
% 3.50/1.00  
% 3.50/1.00  --fof                                   false
% 3.50/1.00  --time_out_real                         305.
% 3.50/1.00  --time_out_virtual                      -1.
% 3.50/1.00  --symbol_type_check                     false
% 3.50/1.00  --clausify_out                          false
% 3.50/1.00  --sig_cnt_out                           false
% 3.50/1.00  --trig_cnt_out                          false
% 3.50/1.00  --trig_cnt_out_tolerance                1.
% 3.50/1.00  --trig_cnt_out_sk_spl                   false
% 3.50/1.00  --abstr_cl_out                          false
% 3.50/1.00  
% 3.50/1.00  ------ Global Options
% 3.50/1.00  
% 3.50/1.00  --schedule                              default
% 3.50/1.00  --add_important_lit                     false
% 3.50/1.00  --prop_solver_per_cl                    1000
% 3.50/1.00  --min_unsat_core                        false
% 3.50/1.00  --soft_assumptions                      false
% 3.50/1.00  --soft_lemma_size                       3
% 3.50/1.00  --prop_impl_unit_size                   0
% 3.50/1.00  --prop_impl_unit                        []
% 3.50/1.00  --share_sel_clauses                     true
% 3.50/1.00  --reset_solvers                         false
% 3.50/1.00  --bc_imp_inh                            [conj_cone]
% 3.50/1.00  --conj_cone_tolerance                   3.
% 3.50/1.00  --extra_neg_conj                        none
% 3.50/1.00  --large_theory_mode                     true
% 3.50/1.00  --prolific_symb_bound                   200
% 3.50/1.00  --lt_threshold                          2000
% 3.50/1.00  --clause_weak_htbl                      true
% 3.50/1.00  --gc_record_bc_elim                     false
% 3.50/1.00  
% 3.50/1.00  ------ Preprocessing Options
% 3.50/1.00  
% 3.50/1.00  --preprocessing_flag                    true
% 3.50/1.00  --time_out_prep_mult                    0.1
% 3.50/1.00  --splitting_mode                        input
% 3.50/1.00  --splitting_grd                         true
% 3.50/1.00  --splitting_cvd                         false
% 3.50/1.00  --splitting_cvd_svl                     false
% 3.50/1.00  --splitting_nvd                         32
% 3.50/1.00  --sub_typing                            true
% 3.50/1.00  --prep_gs_sim                           true
% 3.50/1.00  --prep_unflatten                        true
% 3.50/1.00  --prep_res_sim                          true
% 3.50/1.00  --prep_upred                            true
% 3.50/1.00  --prep_sem_filter                       exhaustive
% 3.50/1.00  --prep_sem_filter_out                   false
% 3.50/1.00  --pred_elim                             true
% 3.50/1.00  --res_sim_input                         true
% 3.50/1.00  --eq_ax_congr_red                       true
% 3.50/1.00  --pure_diseq_elim                       true
% 3.50/1.00  --brand_transform                       false
% 3.50/1.00  --non_eq_to_eq                          false
% 3.50/1.00  --prep_def_merge                        true
% 3.50/1.00  --prep_def_merge_prop_impl              false
% 3.50/1.00  --prep_def_merge_mbd                    true
% 3.50/1.00  --prep_def_merge_tr_red                 false
% 3.50/1.00  --prep_def_merge_tr_cl                  false
% 3.50/1.00  --smt_preprocessing                     true
% 3.50/1.00  --smt_ac_axioms                         fast
% 3.50/1.00  --preprocessed_out                      false
% 3.50/1.00  --preprocessed_stats                    false
% 3.50/1.00  
% 3.50/1.00  ------ Abstraction refinement Options
% 3.50/1.00  
% 3.50/1.00  --abstr_ref                             []
% 3.50/1.00  --abstr_ref_prep                        false
% 3.50/1.00  --abstr_ref_until_sat                   false
% 3.50/1.00  --abstr_ref_sig_restrict                funpre
% 3.50/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.50/1.00  --abstr_ref_under                       []
% 3.50/1.00  
% 3.50/1.00  ------ SAT Options
% 3.50/1.00  
% 3.50/1.00  --sat_mode                              false
% 3.50/1.00  --sat_fm_restart_options                ""
% 3.50/1.00  --sat_gr_def                            false
% 3.50/1.00  --sat_epr_types                         true
% 3.50/1.00  --sat_non_cyclic_types                  false
% 3.50/1.00  --sat_finite_models                     false
% 3.50/1.00  --sat_fm_lemmas                         false
% 3.50/1.00  --sat_fm_prep                           false
% 3.50/1.00  --sat_fm_uc_incr                        true
% 3.50/1.00  --sat_out_model                         small
% 3.50/1.00  --sat_out_clauses                       false
% 3.50/1.00  
% 3.50/1.00  ------ QBF Options
% 3.50/1.00  
% 3.50/1.00  --qbf_mode                              false
% 3.50/1.00  --qbf_elim_univ                         false
% 3.50/1.00  --qbf_dom_inst                          none
% 3.50/1.00  --qbf_dom_pre_inst                      false
% 3.50/1.00  --qbf_sk_in                             false
% 3.50/1.00  --qbf_pred_elim                         true
% 3.50/1.00  --qbf_split                             512
% 3.50/1.00  
% 3.50/1.00  ------ BMC1 Options
% 3.50/1.00  
% 3.50/1.00  --bmc1_incremental                      false
% 3.50/1.00  --bmc1_axioms                           reachable_all
% 3.50/1.00  --bmc1_min_bound                        0
% 3.50/1.00  --bmc1_max_bound                        -1
% 3.50/1.00  --bmc1_max_bound_default                -1
% 3.50/1.00  --bmc1_symbol_reachability              true
% 3.50/1.00  --bmc1_property_lemmas                  false
% 3.50/1.00  --bmc1_k_induction                      false
% 3.50/1.00  --bmc1_non_equiv_states                 false
% 3.50/1.00  --bmc1_deadlock                         false
% 3.50/1.00  --bmc1_ucm                              false
% 3.50/1.00  --bmc1_add_unsat_core                   none
% 3.50/1.00  --bmc1_unsat_core_children              false
% 3.50/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.50/1.00  --bmc1_out_stat                         full
% 3.50/1.00  --bmc1_ground_init                      false
% 3.50/1.00  --bmc1_pre_inst_next_state              false
% 3.50/1.00  --bmc1_pre_inst_state                   false
% 3.50/1.00  --bmc1_pre_inst_reach_state             false
% 3.50/1.00  --bmc1_out_unsat_core                   false
% 3.50/1.00  --bmc1_aig_witness_out                  false
% 3.50/1.00  --bmc1_verbose                          false
% 3.50/1.00  --bmc1_dump_clauses_tptp                false
% 3.50/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.50/1.00  --bmc1_dump_file                        -
% 3.50/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.50/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.50/1.00  --bmc1_ucm_extend_mode                  1
% 3.50/1.00  --bmc1_ucm_init_mode                    2
% 3.50/1.00  --bmc1_ucm_cone_mode                    none
% 3.50/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.50/1.00  --bmc1_ucm_relax_model                  4
% 3.50/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.50/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.50/1.00  --bmc1_ucm_layered_model                none
% 3.50/1.00  --bmc1_ucm_max_lemma_size               10
% 3.50/1.00  
% 3.50/1.00  ------ AIG Options
% 3.50/1.00  
% 3.50/1.00  --aig_mode                              false
% 3.50/1.00  
% 3.50/1.00  ------ Instantiation Options
% 3.50/1.00  
% 3.50/1.00  --instantiation_flag                    true
% 3.50/1.00  --inst_sos_flag                         false
% 3.50/1.00  --inst_sos_phase                        true
% 3.50/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.50/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.50/1.00  --inst_lit_sel_side                     none
% 3.50/1.00  --inst_solver_per_active                1400
% 3.50/1.00  --inst_solver_calls_frac                1.
% 3.50/1.00  --inst_passive_queue_type               priority_queues
% 3.50/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.50/1.00  --inst_passive_queues_freq              [25;2]
% 3.50/1.00  --inst_dismatching                      true
% 3.50/1.00  --inst_eager_unprocessed_to_passive     true
% 3.50/1.00  --inst_prop_sim_given                   true
% 3.50/1.00  --inst_prop_sim_new                     false
% 3.50/1.00  --inst_subs_new                         false
% 3.50/1.00  --inst_eq_res_simp                      false
% 3.50/1.00  --inst_subs_given                       false
% 3.50/1.00  --inst_orphan_elimination               true
% 3.50/1.00  --inst_learning_loop_flag               true
% 3.50/1.00  --inst_learning_start                   3000
% 3.50/1.00  --inst_learning_factor                  2
% 3.50/1.00  --inst_start_prop_sim_after_learn       3
% 3.50/1.00  --inst_sel_renew                        solver
% 3.50/1.00  --inst_lit_activity_flag                true
% 3.50/1.00  --inst_restr_to_given                   false
% 3.50/1.00  --inst_activity_threshold               500
% 3.50/1.00  --inst_out_proof                        true
% 3.50/1.00  
% 3.50/1.00  ------ Resolution Options
% 3.50/1.00  
% 3.50/1.00  --resolution_flag                       false
% 3.50/1.00  --res_lit_sel                           adaptive
% 3.50/1.00  --res_lit_sel_side                      none
% 3.50/1.00  --res_ordering                          kbo
% 3.50/1.00  --res_to_prop_solver                    active
% 3.50/1.00  --res_prop_simpl_new                    false
% 3.50/1.00  --res_prop_simpl_given                  true
% 3.50/1.00  --res_passive_queue_type                priority_queues
% 3.50/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.50/1.00  --res_passive_queues_freq               [15;5]
% 3.50/1.00  --res_forward_subs                      full
% 3.50/1.00  --res_backward_subs                     full
% 3.50/1.00  --res_forward_subs_resolution           true
% 3.50/1.00  --res_backward_subs_resolution          true
% 3.50/1.00  --res_orphan_elimination                true
% 3.50/1.00  --res_time_limit                        2.
% 3.50/1.00  --res_out_proof                         true
% 3.50/1.00  
% 3.50/1.00  ------ Superposition Options
% 3.50/1.00  
% 3.50/1.00  --superposition_flag                    true
% 3.50/1.00  --sup_passive_queue_type                priority_queues
% 3.50/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.50/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.50/1.00  --demod_completeness_check              fast
% 3.50/1.00  --demod_use_ground                      true
% 3.50/1.00  --sup_to_prop_solver                    passive
% 3.50/1.00  --sup_prop_simpl_new                    true
% 3.50/1.00  --sup_prop_simpl_given                  true
% 3.50/1.00  --sup_fun_splitting                     false
% 3.50/1.00  --sup_smt_interval                      50000
% 3.50/1.00  
% 3.50/1.00  ------ Superposition Simplification Setup
% 3.50/1.00  
% 3.50/1.00  --sup_indices_passive                   []
% 3.50/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.50/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.50/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.50/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.50/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.50/1.00  --sup_full_bw                           [BwDemod]
% 3.50/1.00  --sup_immed_triv                        [TrivRules]
% 3.50/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.50/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.50/1.00  --sup_immed_bw_main                     []
% 3.50/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.50/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.50/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.50/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.50/1.00  
% 3.50/1.00  ------ Combination Options
% 3.50/1.00  
% 3.50/1.00  --comb_res_mult                         3
% 3.50/1.00  --comb_sup_mult                         2
% 3.50/1.00  --comb_inst_mult                        10
% 3.50/1.00  
% 3.50/1.00  ------ Debug Options
% 3.50/1.00  
% 3.50/1.00  --dbg_backtrace                         false
% 3.50/1.00  --dbg_dump_prop_clauses                 false
% 3.50/1.00  --dbg_dump_prop_clauses_file            -
% 3.50/1.00  --dbg_out_stat                          false
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  ------ Proving...
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  % SZS status Theorem for theBenchmark.p
% 3.50/1.00  
% 3.50/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.50/1.00  
% 3.50/1.00  fof(f7,conjecture,(
% 3.50/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ((m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3)) => (m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) | r1_tsep_1(X1,X2)))))))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f8,negated_conjecture,(
% 3.50/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ((m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3)) => (m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) | r1_tsep_1(X1,X2)))))))),
% 3.50/1.00    inference(negated_conjecture,[],[f7])).
% 3.50/1.00  
% 3.50/1.00  fof(f18,plain,(
% 3.50/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (((~m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) & ~r1_tsep_1(X1,X2)) & (m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3))) & (m1_pre_topc(X3,X0) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (m1_pre_topc(X1,X0) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.50/1.00    inference(ennf_transformation,[],[f8])).
% 3.50/1.00  
% 3.50/1.00  fof(f19,plain,(
% 3.50/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.50/1.00    inference(flattening,[],[f18])).
% 3.50/1.00  
% 3.50/1.00  fof(f27,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (~m1_pre_topc(k2_tsep_1(X0,X1,X2),sK3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,sK3) & m1_pre_topc(X1,sK3) & m1_pre_topc(sK3,X0) & ~v2_struct_0(sK3))) )),
% 3.50/1.00    introduced(choice_axiom,[])).
% 3.50/1.00  
% 3.50/1.00  fof(f26,plain,(
% 3.50/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,X1,sK2),X3) & ~r1_tsep_1(X1,sK2) & m1_pre_topc(sK2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(sK2,X0) & ~v2_struct_0(sK2))) )),
% 3.50/1.00    introduced(choice_axiom,[])).
% 3.50/1.00  
% 3.50/1.00  fof(f25,plain,(
% 3.50/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,sK1,X2),X3) & ~r1_tsep_1(sK1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(sK1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & m1_pre_topc(sK1,X0) & ~v2_struct_0(sK1))) )),
% 3.50/1.00    introduced(choice_axiom,[])).
% 3.50/1.00  
% 3.50/1.00  fof(f24,plain,(
% 3.50/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_pre_topc(k2_tsep_1(X0,X1,X2),X3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~m1_pre_topc(k2_tsep_1(sK0,X1,X2),X3) & ~r1_tsep_1(X1,X2) & m1_pre_topc(X2,X3) & m1_pre_topc(X1,X3) & m1_pre_topc(X3,sK0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK0) & ~v2_struct_0(X2)) & m1_pre_topc(X1,sK0) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 3.50/1.00    introduced(choice_axiom,[])).
% 3.50/1.00  
% 3.50/1.00  fof(f28,plain,(
% 3.50/1.00    (((~m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) & ~r1_tsep_1(sK1,sK2) & m1_pre_topc(sK2,sK3) & m1_pre_topc(sK1,sK3) & m1_pre_topc(sK3,sK0) & ~v2_struct_0(sK3)) & m1_pre_topc(sK2,sK0) & ~v2_struct_0(sK2)) & m1_pre_topc(sK1,sK0) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 3.50/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f27,f26,f25,f24])).
% 3.50/1.00  
% 3.50/1.00  fof(f47,plain,(
% 3.50/1.00    m1_pre_topc(sK2,sK0)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f5,axiom,(
% 3.50/1.00    ! [X0,X1,X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_pre_topc(k2_tsep_1(X0,X1,X2),X0) & v1_pre_topc(k2_tsep_1(X0,X1,X2)) & ~v2_struct_0(k2_tsep_1(X0,X1,X2))))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f14,plain,(
% 3.50/1.00    ! [X0,X1,X2] : ((m1_pre_topc(k2_tsep_1(X0,X1,X2),X0) & v1_pre_topc(k2_tsep_1(X0,X1,X2)) & ~v2_struct_0(k2_tsep_1(X0,X1,X2))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 3.50/1.00    inference(ennf_transformation,[],[f5])).
% 3.50/1.00  
% 3.50/1.00  fof(f15,plain,(
% 3.50/1.00    ! [X0,X1,X2] : ((m1_pre_topc(k2_tsep_1(X0,X1,X2),X0) & v1_pre_topc(k2_tsep_1(X0,X1,X2)) & ~v2_struct_0(k2_tsep_1(X0,X1,X2))) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 3.50/1.00    inference(flattening,[],[f14])).
% 3.50/1.00  
% 3.50/1.00  fof(f37,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (v1_pre_topc(k2_tsep_1(X0,X1,X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f15])).
% 3.50/1.00  
% 3.50/1.00  fof(f38,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (m1_pre_topc(k2_tsep_1(X0,X1,X2),X0) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f15])).
% 3.50/1.00  
% 3.50/1.00  fof(f4,axiom,(
% 3.50/1.00    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (~r1_tsep_1(X1,X2) => ! [X3] : ((m1_pre_topc(X3,X0) & v1_pre_topc(X3) & ~v2_struct_0(X3)) => (k2_tsep_1(X0,X1,X2) = X3 <=> u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))))))))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f12,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (! [X2] : ((! [X3] : ((k2_tsep_1(X0,X1,X2) = X3 <=> u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))) | (~m1_pre_topc(X3,X0) | ~v1_pre_topc(X3) | v2_struct_0(X3))) | r1_tsep_1(X1,X2)) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~m1_pre_topc(X1,X0) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 3.50/1.00    inference(ennf_transformation,[],[f4])).
% 3.50/1.00  
% 3.50/1.00  fof(f13,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((k2_tsep_1(X0,X1,X2) = X3 <=> u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))) | ~m1_pre_topc(X3,X0) | ~v1_pre_topc(X3) | v2_struct_0(X3)) | r1_tsep_1(X1,X2) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 3.50/1.00    inference(flattening,[],[f12])).
% 3.50/1.00  
% 3.50/1.00  fof(f22,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((k2_tsep_1(X0,X1,X2) = X3 | u1_struct_0(X3) != k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2))) & (u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) | k2_tsep_1(X0,X1,X2) != X3)) | ~m1_pre_topc(X3,X0) | ~v1_pre_topc(X3) | v2_struct_0(X3)) | r1_tsep_1(X1,X2) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 3.50/1.00    inference(nnf_transformation,[],[f13])).
% 3.50/1.00  
% 3.50/1.00  fof(f34,plain,(
% 3.50/1.00    ( ! [X2,X0,X3,X1] : (u1_struct_0(X3) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) | k2_tsep_1(X0,X1,X2) != X3 | ~m1_pre_topc(X3,X0) | ~v1_pre_topc(X3) | v2_struct_0(X3) | r1_tsep_1(X1,X2) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f22])).
% 3.50/1.00  
% 3.50/1.00  fof(f56,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (u1_struct_0(k2_tsep_1(X0,X1,X2)) = k3_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(k2_tsep_1(X0,X1,X2),X0) | ~v1_pre_topc(k2_tsep_1(X0,X1,X2)) | v2_struct_0(k2_tsep_1(X0,X1,X2)) | r1_tsep_1(X1,X2) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.50/1.00    inference(equality_resolution,[],[f34])).
% 3.50/1.00  
% 3.50/1.00  fof(f52,plain,(
% 3.50/1.00    ~r1_tsep_1(sK1,sK2)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f44,plain,(
% 3.50/1.00    ~v2_struct_0(sK1)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f46,plain,(
% 3.50/1.00    ~v2_struct_0(sK2)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f36,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (~v2_struct_0(k2_tsep_1(X0,X1,X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f15])).
% 3.50/1.00  
% 3.50/1.00  fof(f41,plain,(
% 3.50/1.00    ~v2_struct_0(sK0)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f43,plain,(
% 3.50/1.00    l1_pre_topc(sK0)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f45,plain,(
% 3.50/1.00    m1_pre_topc(sK1,sK0)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f51,plain,(
% 3.50/1.00    m1_pre_topc(sK2,sK3)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f48,plain,(
% 3.50/1.00    ~v2_struct_0(sK3)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f49,plain,(
% 3.50/1.00    m1_pre_topc(sK3,sK0)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f50,plain,(
% 3.50/1.00    m1_pre_topc(sK1,sK3)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f3,axiom,(
% 3.50/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f11,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.50/1.00    inference(ennf_transformation,[],[f3])).
% 3.50/1.00  
% 3.50/1.00  fof(f33,plain,(
% 3.50/1.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f11])).
% 3.50/1.00  
% 3.50/1.00  fof(f6,axiom,(
% 3.50/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X0) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)))))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f16,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.50/1.00    inference(ennf_transformation,[],[f6])).
% 3.50/1.00  
% 3.50/1.00  fof(f17,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.50/1.00    inference(flattening,[],[f16])).
% 3.50/1.00  
% 3.50/1.00  fof(f23,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (! [X2] : (((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2)) & (m1_pre_topc(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)))) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.50/1.00    inference(nnf_transformation,[],[f17])).
% 3.50/1.00  
% 3.50/1.00  fof(f40,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2) | ~m1_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f23])).
% 3.50/1.00  
% 3.50/1.00  fof(f42,plain,(
% 3.50/1.00    v2_pre_topc(sK0)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  fof(f2,axiom,(
% 3.50/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => v2_pre_topc(X1)))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f9,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.50/1.00    inference(ennf_transformation,[],[f2])).
% 3.50/1.00  
% 3.50/1.00  fof(f10,plain,(
% 3.50/1.00    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.50/1.00    inference(flattening,[],[f9])).
% 3.50/1.00  
% 3.50/1.00  fof(f32,plain,(
% 3.50/1.00    ( ! [X0,X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f10])).
% 3.50/1.00  
% 3.50/1.00  fof(f1,axiom,(
% 3.50/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.50/1.00  
% 3.50/1.00  fof(f20,plain,(
% 3.50/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.50/1.00    inference(nnf_transformation,[],[f1])).
% 3.50/1.00  
% 3.50/1.00  fof(f21,plain,(
% 3.50/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.50/1.00    inference(flattening,[],[f20])).
% 3.50/1.00  
% 3.50/1.00  fof(f29,plain,(
% 3.50/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.50/1.00    inference(cnf_transformation,[],[f21])).
% 3.50/1.00  
% 3.50/1.00  fof(f55,plain,(
% 3.50/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.50/1.00    inference(equality_resolution,[],[f29])).
% 3.50/1.00  
% 3.50/1.00  fof(f39,plain,(
% 3.50/1.00    ( ! [X2,X0,X1] : (m1_pre_topc(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f23])).
% 3.50/1.00  
% 3.50/1.00  fof(f31,plain,(
% 3.50/1.00    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.50/1.00    inference(cnf_transformation,[],[f21])).
% 3.50/1.00  
% 3.50/1.00  fof(f53,plain,(
% 3.50/1.00    ~m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3)),
% 3.50/1.00    inference(cnf_transformation,[],[f28])).
% 3.50/1.00  
% 3.50/1.00  cnf(c_18,negated_conjecture,
% 3.50/1.00      ( m1_pre_topc(sK2,sK0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f47]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1115,plain,
% 3.50/1.00      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_8,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X2,X1)
% 3.50/1.00      | v2_struct_0(X1)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(X2)
% 3.50/1.00      | v1_pre_topc(k2_tsep_1(X1,X0,X2))
% 3.50/1.00      | ~ l1_pre_topc(X1) ),
% 3.50/1.00      inference(cnf_transformation,[],[f37]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1124,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 3.50/1.00      | v2_struct_0(X1) = iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(X2) = iProver_top
% 3.50/1.00      | v1_pre_topc(k2_tsep_1(X1,X0,X2)) = iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_7,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X2,X1)
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(X1,X0,X2),X1)
% 3.50/1.00      | v2_struct_0(X1)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(X2)
% 3.50/1.00      | ~ l1_pre_topc(X1) ),
% 3.50/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1125,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(X1,X0,X2),X1) = iProver_top
% 3.50/1.00      | v2_struct_0(X1) = iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(X2) = iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6,plain,
% 3.50/1.00      ( r1_tsep_1(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X0,X2)
% 3.50/1.00      | ~ m1_pre_topc(X1,X2)
% 3.50/1.00      | ~ m1_pre_topc(k2_tsep_1(X2,X0,X1),X2)
% 3.50/1.00      | v2_struct_0(X2)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(X1)
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X2,X0,X1))
% 3.50/1.00      | ~ v1_pre_topc(k2_tsep_1(X2,X0,X1))
% 3.50/1.00      | ~ l1_pre_topc(X2)
% 3.50/1.00      | u1_struct_0(k2_tsep_1(X2,X0,X1)) = k3_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) ),
% 3.50/1.00      inference(cnf_transformation,[],[f56]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_13,negated_conjecture,
% 3.50/1.00      ( ~ r1_tsep_1(sK1,sK2) ),
% 3.50/1.00      inference(cnf_transformation,[],[f52]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_250,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X2,X1)
% 3.50/1.00      | ~ m1_pre_topc(k2_tsep_1(X1,X0,X2),X1)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(X2)
% 3.50/1.00      | v2_struct_0(X1)
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X1,X0,X2))
% 3.50/1.00      | ~ v1_pre_topc(k2_tsep_1(X1,X0,X2))
% 3.50/1.00      | ~ l1_pre_topc(X1)
% 3.50/1.00      | u1_struct_0(k2_tsep_1(X1,X0,X2)) = k3_xboole_0(u1_struct_0(X0),u1_struct_0(X2))
% 3.50/1.00      | sK2 != X2
% 3.50/1.00      | sK1 != X0 ),
% 3.50/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_13]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_251,plain,
% 3.50/1.00      ( ~ m1_pre_topc(k2_tsep_1(X0,sK1,sK2),X0)
% 3.50/1.00      | ~ m1_pre_topc(sK2,X0)
% 3.50/1.00      | ~ m1_pre_topc(sK1,X0)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2))
% 3.50/1.00      | v2_struct_0(sK2)
% 3.50/1.00      | v2_struct_0(sK1)
% 3.50/1.00      | ~ v1_pre_topc(k2_tsep_1(X0,sK1,sK2))
% 3.50/1.00      | ~ l1_pre_topc(X0)
% 3.50/1.00      | u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) ),
% 3.50/1.00      inference(unflattening,[status(thm)],[c_250]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_21,negated_conjecture,
% 3.50/1.00      ( ~ v2_struct_0(sK1) ),
% 3.50/1.00      inference(cnf_transformation,[],[f44]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_19,negated_conjecture,
% 3.50/1.00      ( ~ v2_struct_0(sK2) ),
% 3.50/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_255,plain,
% 3.50/1.00      ( ~ m1_pre_topc(k2_tsep_1(X0,sK1,sK2),X0)
% 3.50/1.00      | ~ m1_pre_topc(sK2,X0)
% 3.50/1.00      | ~ m1_pre_topc(sK1,X0)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2))
% 3.50/1.00      | ~ v1_pre_topc(k2_tsep_1(X0,sK1,sK2))
% 3.50/1.00      | ~ l1_pre_topc(X0)
% 3.50/1.00      | u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_251,c_21,c_19]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1108,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(X0,sK1,sK2),X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
% 3.50/1.00      | v1_pre_topc(k2_tsep_1(X0,sK1,sK2)) != iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_255]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_4108,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
% 3.50/1.00      | v2_struct_0(sK2) = iProver_top
% 3.50/1.00      | v2_struct_0(sK1) = iProver_top
% 3.50/1.00      | v1_pre_topc(k2_tsep_1(X0,sK1,sK2)) != iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1125,c_1108]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_28,plain,
% 3.50/1.00      ( v2_struct_0(sK1) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_30,plain,
% 3.50/1.00      ( v2_struct_0(sK2) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_5953,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
% 3.50/1.00      | v1_pre_topc(k2_tsep_1(X0,sK1,sK2)) != iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_4108,c_28,c_30]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_5966,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
% 3.50/1.00      | v2_struct_0(sK2) = iProver_top
% 3.50/1.00      | v2_struct_0(sK1) = iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1124,c_5953]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6060,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X0,sK1,sK2)) = iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_5966,c_28,c_30]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_9,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X2,X1)
% 3.50/1.00      | v2_struct_0(X1)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(X2)
% 3.50/1.00      | ~ v2_struct_0(k2_tsep_1(X1,X0,X2))
% 3.50/1.00      | ~ l1_pre_topc(X1) ),
% 3.50/1.00      inference(cnf_transformation,[],[f36]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1123,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 3.50/1.00      | v2_struct_0(X1) = iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(X2) = iProver_top
% 3.50/1.00      | v2_struct_0(k2_tsep_1(X1,X0,X2)) != iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6072,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(sK2) = iProver_top
% 3.50/1.00      | v2_struct_0(sK1) = iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_6060,c_1123]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6165,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(X0,sK1,sK2)) = k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
% 3.50/1.00      | m1_pre_topc(sK2,X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,X0) != iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_6072,c_28,c_30]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6177,plain,
% 3.50/1.00      ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK0,sK1,sK2))
% 3.50/1.00      | m1_pre_topc(sK1,sK0) != iProver_top
% 3.50/1.00      | v2_struct_0(sK0) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1115,c_6165]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_24,negated_conjecture,
% 3.50/1.00      ( ~ v2_struct_0(sK0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f41]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_25,plain,
% 3.50/1.00      ( v2_struct_0(sK0) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_22,negated_conjecture,
% 3.50/1.00      ( l1_pre_topc(sK0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f43]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_27,plain,
% 3.50/1.00      ( l1_pre_topc(sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_20,negated_conjecture,
% 3.50/1.00      ( m1_pre_topc(sK1,sK0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f45]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_29,plain,
% 3.50/1.00      ( m1_pre_topc(sK1,sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6309,plain,
% 3.50/1.00      ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK0,sK1,sK2)) ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_6177,c_25,c_27,c_29]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_14,negated_conjecture,
% 3.50/1.00      ( m1_pre_topc(sK2,sK3) ),
% 3.50/1.00      inference(cnf_transformation,[],[f51]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1119,plain,
% 3.50/1.00      ( m1_pre_topc(sK2,sK3) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6176,plain,
% 3.50/1.00      ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK3,sK1,sK2))
% 3.50/1.00      | m1_pre_topc(sK1,sK3) != iProver_top
% 3.50/1.00      | v2_struct_0(sK3) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK3) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1119,c_6165]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_17,negated_conjecture,
% 3.50/1.00      ( ~ v2_struct_0(sK3) ),
% 3.50/1.00      inference(cnf_transformation,[],[f48]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_32,plain,
% 3.50/1.00      ( v2_struct_0(sK3) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_16,negated_conjecture,
% 3.50/1.00      ( m1_pre_topc(sK3,sK0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f49]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_33,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_15,negated_conjecture,
% 3.50/1.00      ( m1_pre_topc(sK1,sK3) ),
% 3.50/1.00      inference(cnf_transformation,[],[f50]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_34,plain,
% 3.50/1.00      ( m1_pre_topc(sK1,sK3) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_4,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f33]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1556,plain,
% 3.50/1.00      ( ~ m1_pre_topc(sK3,X0) | ~ l1_pre_topc(X0) | l1_pre_topc(sK3) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1557,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top
% 3.50/1.00      | l1_pre_topc(sK3) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_1556]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1559,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,sK0) != iProver_top
% 3.50/1.00      | l1_pre_topc(sK3) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_1557]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6207,plain,
% 3.50/1.00      ( k3_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) = u1_struct_0(k2_tsep_1(sK3,sK1,sK2)) ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_6176,c_27,c_32,c_33,c_34,c_1559]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6312,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(sK3,sK1,sK2)) = u1_struct_0(k2_tsep_1(sK0,sK1,sK2)) ),
% 3.50/1.00      inference(demodulation,[status(thm)],[c_6309,c_6207]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_10,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X2,X1)
% 3.50/1.00      | ~ m1_pre_topc(X0,X2)
% 3.50/1.00      | r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
% 3.50/1.00      | ~ l1_pre_topc(X1)
% 3.50/1.00      | ~ v2_pre_topc(X1) ),
% 3.50/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1122,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X0,X2) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(X0),u1_struct_0(X2)) = iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top
% 3.50/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_4105,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X3,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(X1,X0,X2),X3) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(k2_tsep_1(X1,X0,X2)),u1_struct_0(X3)) = iProver_top
% 3.50/1.00      | v2_struct_0(X1) = iProver_top
% 3.50/1.00      | v2_struct_0(X0) = iProver_top
% 3.50/1.00      | v2_struct_0(X2) = iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top
% 3.50/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1125,c_1122]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6333,plain,
% 3.50/1.00      ( m1_pre_topc(X0,sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,sK3) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(X0)) = iProver_top
% 3.50/1.00      | v2_struct_0(sK3) = iProver_top
% 3.50/1.00      | v2_struct_0(sK2) = iProver_top
% 3.50/1.00      | v2_struct_0(sK1) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK3) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK3) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_6312,c_4105]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_23,negated_conjecture,
% 3.50/1.00      ( v2_pre_topc(sK0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f42]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_26,plain,
% 3.50/1.00      ( v2_pre_topc(sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_35,plain,
% 3.50/1.00      ( m1_pre_topc(sK2,sK3) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_3,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ l1_pre_topc(X1)
% 3.50/1.00      | ~ v2_pre_topc(X1)
% 3.50/1.00      | v2_pre_topc(X0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f32]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_2777,plain,
% 3.50/1.00      ( ~ m1_pre_topc(sK3,X0)
% 3.50/1.00      | ~ l1_pre_topc(X0)
% 3.50/1.00      | ~ v2_pre_topc(X0)
% 3.50/1.00      | v2_pre_topc(sK3) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_2778,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top
% 3.50/1.00      | v2_pre_topc(X0) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK3) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_2777]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_2780,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,sK0) != iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK3) = iProver_top
% 3.50/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_2778]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_8920,plain,
% 3.50/1.00      ( r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(X0)) = iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(X0,sK3) != iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_6333,c_26,c_27,c_28,c_30,c_32,c_33,c_34,c_35,c_1559,
% 3.50/1.00                 c_2780]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_8921,plain,
% 3.50/1.00      ( m1_pre_topc(X0,sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),X0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(X0)) = iProver_top ),
% 3.50/1.00      inference(renaming,[status(thm)],[c_8920]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1117,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_3048,plain,
% 3.50/1.00      ( m1_pre_topc(X0,sK0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1117,c_1122]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_3845,plain,
% 3.50/1.00      ( m1_pre_topc(X0,sK0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_3048,c_26,c_27]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6329,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(k2_tsep_1(sK0,sK1,sK2))) = iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_6312,c_3845]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1456,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,sK3)
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK3,sK1,X0),sK3)
% 3.50/1.00      | ~ m1_pre_topc(sK1,sK3)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(sK3)
% 3.50/1.00      | v2_struct_0(sK1)
% 3.50/1.00      | ~ l1_pre_topc(sK3) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_3023,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3)
% 3.50/1.00      | ~ m1_pre_topc(sK2,sK3)
% 3.50/1.00      | ~ m1_pre_topc(sK1,sK3)
% 3.50/1.00      | v2_struct_0(sK3)
% 3.50/1.00      | v2_struct_0(sK2)
% 3.50/1.00      | v2_struct_0(sK1)
% 3.50/1.00      | ~ l1_pre_topc(sK3) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_1456]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_3024,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3) = iProver_top
% 3.50/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,sK3) != iProver_top
% 3.50/1.00      | v2_struct_0(sK3) = iProver_top
% 3.50/1.00      | v2_struct_0(sK2) = iProver_top
% 3.50/1.00      | v2_struct_0(sK1) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK3) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_3023]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_2,plain,
% 3.50/1.00      ( r1_tarski(X0,X0) ),
% 3.50/1.00      inference(cnf_transformation,[],[f55]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1128,plain,
% 3.50/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_11,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.50/1.00      | ~ m1_pre_topc(X2,X1)
% 3.50/1.00      | m1_pre_topc(X0,X2)
% 3.50/1.00      | ~ r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
% 3.50/1.00      | ~ l1_pre_topc(X1)
% 3.50/1.00      | ~ v2_pre_topc(X1) ),
% 3.50/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1121,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X2,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X0,X2) = iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(X0),u1_struct_0(X2)) != iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top
% 3.50/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_2775,plain,
% 3.50/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.50/1.00      | m1_pre_topc(X0,X0) = iProver_top
% 3.50/1.00      | l1_pre_topc(X1) != iProver_top
% 3.50/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1128,c_1121]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_4673,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,sK3) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_1117,c_2775]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_4920,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,sK3) = iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_4673,c_26,c_27]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_4926,plain,
% 3.50/1.00      ( m1_pre_topc(X0,sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK3) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK3) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_4920,c_1122]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_5445,plain,
% 3.50/1.00      ( m1_pre_topc(X0,sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(X0)) = iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_4926,c_26,c_27,c_33,c_1559,c_2780]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6318,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(k2_tsep_1(sK0,sK1,sK2))) = iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_6312,c_5445]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6710,plain,
% 3.50/1.00      ( m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(k2_tsep_1(sK0,sK1,sK2))) = iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_6329,c_27,c_28,c_30,c_32,c_33,c_34,c_35,c_1559,c_3024,
% 3.50/1.00                 c_6318]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_0,plain,
% 3.50/1.00      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.50/1.00      inference(cnf_transformation,[],[f31]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1129,plain,
% 3.50/1.00      ( X0 = X1
% 3.50/1.00      | r1_tarski(X0,X1) != iProver_top
% 3.50/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6716,plain,
% 3.50/1.00      ( u1_struct_0(k2_tsep_1(sK0,sK1,sK2)) = u1_struct_0(sK3)
% 3.50/1.00      | m1_pre_topc(sK3,k2_tsep_1(sK3,sK1,sK2)) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_6710,c_1129]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_31,plain,
% 3.50/1.00      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_12,negated_conjecture,
% 3.50/1.00      ( ~ m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) ),
% 3.50/1.00      inference(cnf_transformation,[],[f53]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_37,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1471,plain,
% 3.50/1.00      ( ~ m1_pre_topc(X0,sK0)
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK0,sK1,X0),sK0)
% 3.50/1.00      | ~ m1_pre_topc(sK1,sK0)
% 3.50/1.00      | v2_struct_0(X0)
% 3.50/1.00      | v2_struct_0(sK1)
% 3.50/1.00      | v2_struct_0(sK0)
% 3.50/1.00      | ~ l1_pre_topc(sK0) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1708,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK0)
% 3.50/1.00      | ~ m1_pre_topc(sK2,sK0)
% 3.50/1.00      | ~ m1_pre_topc(sK1,sK0)
% 3.50/1.00      | v2_struct_0(sK2)
% 3.50/1.00      | v2_struct_0(sK1)
% 3.50/1.00      | v2_struct_0(sK0)
% 3.50/1.00      | ~ l1_pre_topc(sK0) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_1471]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_1709,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK0) = iProver_top
% 3.50/1.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK1,sK0) != iProver_top
% 3.50/1.00      | v2_struct_0(sK2) = iProver_top
% 3.50/1.00      | v2_struct_0(sK1) = iProver_top
% 3.50/1.00      | v2_struct_0(sK0) = iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_1708]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_5546,plain,
% 3.50/1.00      ( ~ m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),X0)
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3)
% 3.50/1.00      | ~ m1_pre_topc(sK3,X0)
% 3.50/1.00      | ~ r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3))
% 3.50/1.00      | ~ l1_pre_topc(X0)
% 3.50/1.00      | ~ v2_pre_topc(X0) ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_11]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_5547,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),X0) != iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) = iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,X0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top
% 3.50/1.00      | l1_pre_topc(X0) != iProver_top
% 3.50/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.50/1.00      inference(predicate_to_equality,[status(thm)],[c_5546]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_5549,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK3) = iProver_top
% 3.50/1.00      | m1_pre_topc(k2_tsep_1(sK0,sK1,sK2),sK0) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 3.50/1.00      | r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top
% 3.50/1.00      | l1_pre_topc(sK0) != iProver_top
% 3.50/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 3.50/1.00      inference(instantiation,[status(thm)],[c_5547]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_6835,plain,
% 3.50/1.00      ( r1_tarski(u1_struct_0(k2_tsep_1(sK0,sK1,sK2)),u1_struct_0(sK3)) != iProver_top ),
% 3.50/1.00      inference(global_propositional_subsumption,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_6716,c_25,c_26,c_27,c_28,c_29,c_30,c_31,c_33,c_37,
% 3.50/1.00                 c_1709,c_5549]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(c_8941,plain,
% 3.50/1.00      ( m1_pre_topc(k2_tsep_1(sK3,sK1,sK2),sK3) != iProver_top
% 3.50/1.00      | m1_pre_topc(sK3,sK3) != iProver_top ),
% 3.50/1.00      inference(superposition,[status(thm)],[c_8921,c_6835]) ).
% 3.50/1.00  
% 3.50/1.00  cnf(contradiction,plain,
% 3.50/1.00      ( $false ),
% 3.50/1.00      inference(minisat,
% 3.50/1.00                [status(thm)],
% 3.50/1.00                [c_8941,c_4673,c_3024,c_1559,c_35,c_34,c_33,c_32,c_30,
% 3.50/1.00                 c_28,c_27,c_26]) ).
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.50/1.00  
% 3.50/1.00  ------                               Statistics
% 3.50/1.00  
% 3.50/1.00  ------ General
% 3.50/1.00  
% 3.50/1.00  abstr_ref_over_cycles:                  0
% 3.50/1.00  abstr_ref_under_cycles:                 0
% 3.50/1.00  gc_basic_clause_elim:                   0
% 3.50/1.00  forced_gc_time:                         0
% 3.50/1.00  parsing_time:                           0.012
% 3.50/1.00  unif_index_cands_time:                  0.
% 3.50/1.00  unif_index_add_time:                    0.
% 3.50/1.00  orderings_time:                         0.
% 3.50/1.00  out_proof_time:                         0.012
% 3.50/1.00  total_time:                             0.275
% 3.50/1.00  num_of_symbols:                         45
% 3.50/1.00  num_of_terms:                           6373
% 3.50/1.00  
% 3.50/1.00  ------ Preprocessing
% 3.50/1.00  
% 3.50/1.00  num_of_splits:                          0
% 3.50/1.00  num_of_split_atoms:                     0
% 3.50/1.00  num_of_reused_defs:                     0
% 3.50/1.00  num_eq_ax_congr_red:                    0
% 3.50/1.00  num_of_sem_filtered_clauses:            1
% 3.50/1.00  num_of_subtypes:                        0
% 3.50/1.00  monotx_restored_types:                  0
% 3.50/1.00  sat_num_of_epr_types:                   0
% 3.50/1.00  sat_num_of_non_cyclic_types:            0
% 3.50/1.00  sat_guarded_non_collapsed_types:        0
% 3.50/1.00  num_pure_diseq_elim:                    0
% 3.50/1.00  simp_replaced_by:                       0
% 3.50/1.00  res_preprocessed:                       116
% 3.50/1.00  prep_upred:                             0
% 3.50/1.00  prep_unflattend:                        6
% 3.50/1.00  smt_new_axioms:                         0
% 3.50/1.00  pred_elim_cands:                        6
% 3.50/1.00  pred_elim:                              1
% 3.50/1.00  pred_elim_cl:                           1
% 3.50/1.00  pred_elim_cycles:                       3
% 3.50/1.00  merged_defs:                            0
% 3.50/1.00  merged_defs_ncl:                        0
% 3.50/1.00  bin_hyper_res:                          0
% 3.50/1.00  prep_cycles:                            4
% 3.50/1.00  pred_elim_time:                         0.01
% 3.50/1.00  splitting_time:                         0.
% 3.50/1.00  sem_filter_time:                        0.
% 3.50/1.00  monotx_time:                            0.001
% 3.50/1.00  subtype_inf_time:                       0.
% 3.50/1.00  
% 3.50/1.00  ------ Problem properties
% 3.50/1.00  
% 3.50/1.00  clauses:                                23
% 3.50/1.00  conjectures:                            12
% 3.50/1.00  epr:                                    15
% 3.50/1.00  horn:                                   18
% 3.50/1.00  ground:                                 12
% 3.50/1.00  unary:                                  13
% 3.50/1.00  binary:                                 0
% 3.50/1.00  lits:                                   73
% 3.50/1.00  lits_eq:                                4
% 3.50/1.00  fd_pure:                                0
% 3.50/1.00  fd_pseudo:                              0
% 3.50/1.00  fd_cond:                                0
% 3.50/1.00  fd_pseudo_cond:                         2
% 3.50/1.00  ac_symbols:                             0
% 3.50/1.00  
% 3.50/1.00  ------ Propositional Solver
% 3.50/1.00  
% 3.50/1.00  prop_solver_calls:                      27
% 3.50/1.00  prop_fast_solver_calls:                 1521
% 3.50/1.00  smt_solver_calls:                       0
% 3.50/1.00  smt_fast_solver_calls:                  0
% 3.50/1.00  prop_num_of_clauses:                    3197
% 3.50/1.00  prop_preprocess_simplified:             7634
% 3.50/1.00  prop_fo_subsumed:                       134
% 3.50/1.00  prop_solver_time:                       0.
% 3.50/1.00  smt_solver_time:                        0.
% 3.50/1.00  smt_fast_solver_time:                   0.
% 3.50/1.00  prop_fast_solver_time:                  0.
% 3.50/1.00  prop_unsat_core_time:                   0.
% 3.50/1.00  
% 3.50/1.00  ------ QBF
% 3.50/1.00  
% 3.50/1.00  qbf_q_res:                              0
% 3.50/1.00  qbf_num_tautologies:                    0
% 3.50/1.00  qbf_prep_cycles:                        0
% 3.50/1.00  
% 3.50/1.00  ------ BMC1
% 3.50/1.00  
% 3.50/1.00  bmc1_current_bound:                     -1
% 3.50/1.00  bmc1_last_solved_bound:                 -1
% 3.50/1.00  bmc1_unsat_core_size:                   -1
% 3.50/1.00  bmc1_unsat_core_parents_size:           -1
% 3.50/1.00  bmc1_merge_next_fun:                    0
% 3.50/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.50/1.00  
% 3.50/1.00  ------ Instantiation
% 3.50/1.00  
% 3.50/1.00  inst_num_of_clauses:                    1027
% 3.50/1.00  inst_num_in_passive:                    194
% 3.50/1.00  inst_num_in_active:                     410
% 3.50/1.00  inst_num_in_unprocessed:                423
% 3.50/1.00  inst_num_of_loops:                      440
% 3.50/1.00  inst_num_of_learning_restarts:          0
% 3.50/1.00  inst_num_moves_active_passive:          29
% 3.50/1.00  inst_lit_activity:                      0
% 3.50/1.00  inst_lit_activity_moves:                1
% 3.50/1.00  inst_num_tautologies:                   0
% 3.50/1.00  inst_num_prop_implied:                  0
% 3.50/1.00  inst_num_existing_simplified:           0
% 3.50/1.00  inst_num_eq_res_simplified:             0
% 3.50/1.00  inst_num_child_elim:                    0
% 3.50/1.00  inst_num_of_dismatching_blockings:      177
% 3.50/1.00  inst_num_of_non_proper_insts:           611
% 3.50/1.00  inst_num_of_duplicates:                 0
% 3.50/1.00  inst_inst_num_from_inst_to_res:         0
% 3.50/1.00  inst_dismatching_checking_time:         0.
% 3.50/1.00  
% 3.50/1.00  ------ Resolution
% 3.50/1.00  
% 3.50/1.00  res_num_of_clauses:                     0
% 3.50/1.00  res_num_in_passive:                     0
% 3.50/1.00  res_num_in_active:                      0
% 3.50/1.00  res_num_of_loops:                       120
% 3.50/1.00  res_forward_subset_subsumed:            21
% 3.50/1.00  res_backward_subset_subsumed:           0
% 3.50/1.00  res_forward_subsumed:                   0
% 3.50/1.00  res_backward_subsumed:                  0
% 3.50/1.00  res_forward_subsumption_resolution:     0
% 3.50/1.00  res_backward_subsumption_resolution:    0
% 3.50/1.00  res_clause_to_clause_subsumption:       744
% 3.50/1.00  res_orphan_elimination:                 0
% 3.50/1.00  res_tautology_del:                      21
% 3.50/1.00  res_num_eq_res_simplified:              0
% 3.50/1.00  res_num_sel_changes:                    0
% 3.50/1.00  res_moves_from_active_to_pass:          0
% 3.50/1.00  
% 3.50/1.00  ------ Superposition
% 3.50/1.00  
% 3.50/1.00  sup_time_total:                         0.
% 3.50/1.00  sup_time_generating:                    0.
% 3.50/1.00  sup_time_sim_full:                      0.
% 3.50/1.00  sup_time_sim_immed:                     0.
% 3.50/1.00  
% 3.50/1.00  sup_num_of_clauses:                     110
% 3.50/1.00  sup_num_in_active:                      81
% 3.50/1.00  sup_num_in_passive:                     29
% 3.50/1.00  sup_num_of_loops:                       86
% 3.50/1.00  sup_fw_superposition:                   135
% 3.50/1.00  sup_bw_superposition:                   104
% 3.50/1.00  sup_immediate_simplified:               43
% 3.50/1.00  sup_given_eliminated:                   0
% 3.50/1.00  comparisons_done:                       0
% 3.50/1.00  comparisons_avoided:                    0
% 3.50/1.00  
% 3.50/1.00  ------ Simplifications
% 3.50/1.00  
% 3.50/1.00  
% 3.50/1.00  sim_fw_subset_subsumed:                 16
% 3.50/1.00  sim_bw_subset_subsumed:                 14
% 3.50/1.00  sim_fw_subsumed:                        4
% 3.50/1.00  sim_bw_subsumed:                        13
% 3.50/1.00  sim_fw_subsumption_res:                 0
% 3.50/1.00  sim_bw_subsumption_res:                 0
% 3.50/1.00  sim_tautology_del:                      24
% 3.50/1.00  sim_eq_tautology_del:                   32
% 3.50/1.00  sim_eq_res_simp:                        0
% 3.50/1.00  sim_fw_demodulated:                     11
% 3.50/1.00  sim_bw_demodulated:                     6
% 3.50/1.00  sim_light_normalised:                   2
% 3.50/1.00  sim_joinable_taut:                      0
% 3.50/1.00  sim_joinable_simp:                      0
% 3.50/1.00  sim_ac_normalised:                      0
% 3.50/1.00  sim_smt_subsumption:                    0
% 3.50/1.00  
%------------------------------------------------------------------------------
