%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:18:43 EST 2020

% Result     : Theorem 1.59s
% Output     : CNFRefutation 1.59s
% Verified   : 
% Statistics : Number of formulae       :  132 ( 950 expanded)
%              Number of clauses        :   67 ( 243 expanded)
%              Number of leaves         :   20 ( 250 expanded)
%              Depth                    :   24
%              Number of atoms          :  435 (8741 expanded)
%              Number of equality atoms :   82 ( 842 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   30 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4,X5,X6] :
                  ( ( r2_hidden(X6,X1)
                    & r2_hidden(X5,X6)
                    & r2_hidden(X4,X5)
                    & r2_hidden(X3,X4)
                    & r2_hidden(X2,X3) )
                 => r1_xboole_0(X2,X0) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f17])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f35])).

fof(f52,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f15,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
             => ~ ( k1_xboole_0 = X2
                  & ! [X3] :
                      ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                     => ( r2_hidden(X3,X2)
                      <=> ( r2_hidden(X1,X3)
                          & v4_pre_topc(X3,X0)
                          & v3_pre_topc(X3,X0) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
               => ~ ( k1_xboole_0 = X2
                    & ! [X3] :
                        ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                       => ( r2_hidden(X3,X2)
                        <=> ( r2_hidden(X1,X3)
                            & v4_pre_topc(X3,X0)
                            & v3_pre_topc(X3,X0) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_xboole_0 = X2
              & ! [X3] :
                  ( ( r2_hidden(X3,X2)
                  <=> ( r2_hidden(X1,X3)
                      & v4_pre_topc(X3,X0)
                      & v3_pre_topc(X3,X0) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f34,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_xboole_0 = X2
              & ! [X3] :
                  ( ( r2_hidden(X3,X2)
                  <=> ( r2_hidden(X1,X3)
                      & v4_pre_topc(X3,X0)
                      & v3_pre_topc(X3,X0) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f33])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_xboole_0 = X2
              & ! [X3] :
                  ( ( ( r2_hidden(X3,X2)
                      | ~ r2_hidden(X1,X3)
                      | ~ v4_pre_topc(X3,X0)
                      | ~ v3_pre_topc(X3,X0) )
                    & ( ( r2_hidden(X1,X3)
                        & v4_pre_topc(X3,X0)
                        & v3_pre_topc(X3,X0) )
                      | ~ r2_hidden(X3,X2) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f40,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_xboole_0 = X2
              & ! [X3] :
                  ( ( ( r2_hidden(X3,X2)
                      | ~ r2_hidden(X1,X3)
                      | ~ v4_pre_topc(X3,X0)
                      | ~ v3_pre_topc(X3,X0) )
                    & ( ( r2_hidden(X1,X3)
                        & v4_pre_topc(X3,X0)
                        & v3_pre_topc(X3,X0) )
                      | ~ r2_hidden(X3,X2) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f39])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( k1_xboole_0 = X2
          & ! [X3] :
              ( ( ( r2_hidden(X3,X2)
                  | ~ r2_hidden(X1,X3)
                  | ~ v4_pre_topc(X3,X0)
                  | ~ v3_pre_topc(X3,X0) )
                & ( ( r2_hidden(X1,X3)
                    & v4_pre_topc(X3,X0)
                    & v3_pre_topc(X3,X0) )
                  | ~ r2_hidden(X3,X2) ) )
              | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
     => ( k1_xboole_0 = sK4
        & ! [X3] :
            ( ( ( r2_hidden(X3,sK4)
                | ~ r2_hidden(X1,X3)
                | ~ v4_pre_topc(X3,X0)
                | ~ v3_pre_topc(X3,X0) )
              & ( ( r2_hidden(X1,X3)
                  & v4_pre_topc(X3,X0)
                  & v3_pre_topc(X3,X0) )
                | ~ r2_hidden(X3,sK4) ) )
            | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK4,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_xboole_0 = X2
              & ! [X3] :
                  ( ( ( r2_hidden(X3,X2)
                      | ~ r2_hidden(X1,X3)
                      | ~ v4_pre_topc(X3,X0)
                      | ~ v3_pre_topc(X3,X0) )
                    & ( ( r2_hidden(X1,X3)
                        & v4_pre_topc(X3,X0)
                        & v3_pre_topc(X3,X0) )
                      | ~ r2_hidden(X3,X2) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k1_xboole_0 = X2
            & ! [X3] :
                ( ( ( r2_hidden(X3,X2)
                    | ~ r2_hidden(sK3,X3)
                    | ~ v4_pre_topc(X3,X0)
                    | ~ v3_pre_topc(X3,X0) )
                  & ( ( r2_hidden(sK3,X3)
                      & v4_pre_topc(X3,X0)
                      & v3_pre_topc(X3,X0) )
                    | ~ r2_hidden(X3,X2) ) )
                | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( k1_xboole_0 = X2
                & ! [X3] :
                    ( ( ( r2_hidden(X3,X2)
                        | ~ r2_hidden(X1,X3)
                        | ~ v4_pre_topc(X3,X0)
                        | ~ v3_pre_topc(X3,X0) )
                      & ( ( r2_hidden(X1,X3)
                          & v4_pre_topc(X3,X0)
                          & v3_pre_topc(X3,X0) )
                        | ~ r2_hidden(X3,X2) ) )
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( k1_xboole_0 = X2
              & ! [X3] :
                  ( ( ( r2_hidden(X3,X2)
                      | ~ r2_hidden(X1,X3)
                      | ~ v4_pre_topc(X3,sK2)
                      | ~ v3_pre_topc(X3,sK2) )
                    & ( ( r2_hidden(X1,X3)
                        & v4_pre_topc(X3,sK2)
                        & v3_pre_topc(X3,sK2) )
                      | ~ r2_hidden(X3,X2) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK2))) )
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) )
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l1_pre_topc(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( k1_xboole_0 = sK4
    & ! [X3] :
        ( ( ( r2_hidden(X3,sK4)
            | ~ r2_hidden(sK3,X3)
            | ~ v4_pre_topc(X3,sK2)
            | ~ v3_pre_topc(X3,sK2) )
          & ( ( r2_hidden(sK3,X3)
              & v4_pre_topc(X3,sK2)
              & v3_pre_topc(X3,sK2) )
            | ~ r2_hidden(X3,sK4) ) )
        | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK2))) )
    & m1_subset_1(sK4,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l1_pre_topc(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f40,f43,f42,f41])).

fof(f63,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f44])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f54,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f53,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f62,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f19])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f68,plain,(
    ! [X3] :
      ( r2_hidden(X3,sK4)
      | ~ r2_hidden(sK3,X3)
      | ~ v4_pre_topc(X3,sK2)
      | ~ v3_pre_topc(X3,sK2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK2))) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v4_pre_topc(k2_struct_0(X0),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( v4_pre_topc(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0] :
      ( v4_pre_topc(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f26])).

fof(f55,plain,(
    ! [X0] :
      ( v4_pre_topc(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f61,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v3_pre_topc(k2_struct_0(X0),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( v3_pre_topc(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f29,plain,(
    ! [X0] :
      ( v3_pre_topc(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f28])).

fof(f56,plain,(
    ! [X0] :
      ( v3_pre_topc(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f69,plain,(
    k1_xboole_0 = sK4 ),
    inference(cnf_transformation,[],[f44])).

fof(f4,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f3,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f7,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f45,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ? [X1] :
          ( v2_tops_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v2_tops_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v2_tops_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( v2_tops_1(sK1(X0),X0)
        & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0] :
      ( ( v2_tops_1(sK1(X0),X0)
        & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f37])).

fof(f57,plain,(
    ! [X0] :
      ( m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f58,plain,(
    ! [X0] :
      ( v2_tops_1(sK1(X0),X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f14,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ~ v2_tops_1(k2_struct_0(X0),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ~ v2_tops_1(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f32,plain,(
    ! [X0] :
      ( ~ v2_tops_1(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f59,plain,(
    ! [X0] :
      ( ~ v2_tops_1(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f60,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_7,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1209,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1206,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_9,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_8,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_278,plain,
    ( ~ l1_pre_topc(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_9,c_8])).

cnf(c_22,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_340,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_278,c_22])).

cnf(c_341,plain,
    ( u1_struct_0(sK2) = k2_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_340])).

cnf(c_1224,plain,
    ( m1_subset_1(sK3,k2_struct_0(sK2)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1206,c_341])).

cnf(c_4,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1211,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | m1_subset_1(X0,X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1801,plain,
    ( r2_hidden(sK3,k2_struct_0(sK2)) = iProver_top
    | v1_xboole_0(k2_struct_0(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1224,c_1211])).

cnf(c_16,negated_conjecture,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ v4_pre_topc(X0,sK2)
    | r2_hidden(X0,sK4)
    | ~ r2_hidden(sK3,X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_10,plain,
    ( v4_pre_topc(k2_struct_0(X0),X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_23,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_325,plain,
    ( v4_pre_topc(k2_struct_0(X0),X0)
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_23])).

cnf(c_326,plain,
    ( v4_pre_topc(k2_struct_0(sK2),sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_325])).

cnf(c_55,plain,
    ( v4_pre_topc(k2_struct_0(sK2),sK2)
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_328,plain,
    ( v4_pre_topc(k2_struct_0(sK2),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_326,c_23,c_22,c_55])).

cnf(c_394,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | r2_hidden(X0,sK4)
    | ~ r2_hidden(sK3,X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | k2_struct_0(sK2) != X0
    | sK2 != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_328])).

cnf(c_395,plain,
    ( ~ v3_pre_topc(k2_struct_0(sK2),sK2)
    | r2_hidden(k2_struct_0(sK2),sK4)
    | ~ r2_hidden(sK3,k2_struct_0(sK2))
    | ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_394])).

cnf(c_11,plain,
    ( v3_pre_topc(k2_struct_0(X0),X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_52,plain,
    ( v3_pre_topc(k2_struct_0(sK2),sK2)
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_397,plain,
    ( r2_hidden(k2_struct_0(sK2),sK4)
    | ~ r2_hidden(sK3,k2_struct_0(sK2))
    | ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_395,c_23,c_22,c_52])).

cnf(c_1203,plain,
    ( r2_hidden(k2_struct_0(sK2),sK4) = iProver_top
    | r2_hidden(sK3,k2_struct_0(sK2)) != iProver_top
    | m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_397])).

cnf(c_15,negated_conjecture,
    ( k1_xboole_0 = sK4 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1257,plain,
    ( r2_hidden(k2_struct_0(sK2),k1_xboole_0) = iProver_top
    | r2_hidden(sK3,k2_struct_0(sK2)) != iProver_top
    | m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1203,c_15,c_341])).

cnf(c_3,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1212,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1227,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1212,c_2])).

cnf(c_1,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_267,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_6])).

cnf(c_268,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_267])).

cnf(c_1205,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_268])).

cnf(c_1261,plain,
    ( r2_hidden(sK3,k2_struct_0(sK2)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1257,c_1227,c_1205])).

cnf(c_1893,plain,
    ( v1_xboole_0(k2_struct_0(sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1801,c_1261])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1213,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1898,plain,
    ( k2_struct_0(sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1893,c_1213])).

cnf(c_13,plain,
    ( m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_345,plain,
    ( m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_22])).

cnf(c_346,plain,
    ( m1_subset_1(sK1(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_345])).

cnf(c_1204,plain,
    ( m1_subset_1(sK1(sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_346])).

cnf(c_1230,plain,
    ( m1_subset_1(sK1(sK2),k1_zfmisc_1(k2_struct_0(sK2))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1204,c_341])).

cnf(c_2051,plain,
    ( m1_subset_1(sK1(sK2),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1898,c_1230])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1210,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
    | v1_xboole_0(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2444,plain,
    ( r2_hidden(X0,sK1(sK2)) != iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2051,c_1210])).

cnf(c_2049,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1898,c_1893])).

cnf(c_2475,plain,
    ( r2_hidden(X0,sK1(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2444,c_2049])).

cnf(c_2482,plain,
    ( sK1(sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1209,c_2475])).

cnf(c_12,plain,
    ( v2_tops_1(sK1(X0),X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_14,plain,
    ( ~ v2_tops_1(k2_struct_0(X0),X0)
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_292,plain,
    ( ~ v2_tops_1(k2_struct_0(X0),X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_24])).

cnf(c_293,plain,
    ( ~ v2_tops_1(k2_struct_0(sK2),sK2)
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_292])).

cnf(c_43,plain,
    ( ~ v2_tops_1(k2_struct_0(sK2),sK2)
    | v2_struct_0(sK2)
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_295,plain,
    ( ~ v2_tops_1(k2_struct_0(sK2),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_293,c_24,c_23,c_22,c_43])).

cnf(c_305,plain,
    ( ~ l1_pre_topc(X0)
    | sK1(X0) != k2_struct_0(sK2)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_295])).

cnf(c_306,plain,
    ( ~ l1_pre_topc(sK2)
    | sK1(sK2) != k2_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_305])).

cnf(c_308,plain,
    ( sK1(sK2) != k2_struct_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_306,c_22])).

cnf(c_2054,plain,
    ( sK1(sK2) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1898,c_308])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2482,c_2054])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n022.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 13:53:55 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.59/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.59/1.00  
% 1.59/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.59/1.00  
% 1.59/1.00  ------  iProver source info
% 1.59/1.00  
% 1.59/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.59/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.59/1.00  git: non_committed_changes: false
% 1.59/1.00  git: last_make_outside_of_git: false
% 1.59/1.00  
% 1.59/1.00  ------ 
% 1.59/1.00  
% 1.59/1.00  ------ Input Options
% 1.59/1.00  
% 1.59/1.00  --out_options                           all
% 1.59/1.00  --tptp_safe_out                         true
% 1.59/1.00  --problem_path                          ""
% 1.59/1.00  --include_path                          ""
% 1.59/1.00  --clausifier                            res/vclausify_rel
% 1.59/1.00  --clausifier_options                    --mode clausify
% 1.59/1.00  --stdin                                 false
% 1.59/1.00  --stats_out                             all
% 1.59/1.00  
% 1.59/1.00  ------ General Options
% 1.59/1.00  
% 1.59/1.00  --fof                                   false
% 1.59/1.00  --time_out_real                         305.
% 1.59/1.00  --time_out_virtual                      -1.
% 1.59/1.00  --symbol_type_check                     false
% 1.59/1.00  --clausify_out                          false
% 1.59/1.00  --sig_cnt_out                           false
% 1.59/1.00  --trig_cnt_out                          false
% 1.59/1.00  --trig_cnt_out_tolerance                1.
% 1.59/1.00  --trig_cnt_out_sk_spl                   false
% 1.59/1.00  --abstr_cl_out                          false
% 1.59/1.00  
% 1.59/1.00  ------ Global Options
% 1.59/1.00  
% 1.59/1.00  --schedule                              default
% 1.59/1.00  --add_important_lit                     false
% 1.59/1.00  --prop_solver_per_cl                    1000
% 1.59/1.00  --min_unsat_core                        false
% 1.59/1.00  --soft_assumptions                      false
% 1.59/1.00  --soft_lemma_size                       3
% 1.59/1.00  --prop_impl_unit_size                   0
% 1.59/1.00  --prop_impl_unit                        []
% 1.59/1.00  --share_sel_clauses                     true
% 1.59/1.00  --reset_solvers                         false
% 1.59/1.00  --bc_imp_inh                            [conj_cone]
% 1.59/1.00  --conj_cone_tolerance                   3.
% 1.59/1.00  --extra_neg_conj                        none
% 1.59/1.00  --large_theory_mode                     true
% 1.59/1.00  --prolific_symb_bound                   200
% 1.59/1.00  --lt_threshold                          2000
% 1.59/1.00  --clause_weak_htbl                      true
% 1.59/1.00  --gc_record_bc_elim                     false
% 1.59/1.00  
% 1.59/1.00  ------ Preprocessing Options
% 1.59/1.00  
% 1.59/1.00  --preprocessing_flag                    true
% 1.59/1.00  --time_out_prep_mult                    0.1
% 1.59/1.00  --splitting_mode                        input
% 1.59/1.00  --splitting_grd                         true
% 1.59/1.00  --splitting_cvd                         false
% 1.59/1.00  --splitting_cvd_svl                     false
% 1.59/1.00  --splitting_nvd                         32
% 1.59/1.00  --sub_typing                            true
% 1.59/1.00  --prep_gs_sim                           true
% 1.59/1.00  --prep_unflatten                        true
% 1.59/1.00  --prep_res_sim                          true
% 1.59/1.00  --prep_upred                            true
% 1.59/1.00  --prep_sem_filter                       exhaustive
% 1.59/1.00  --prep_sem_filter_out                   false
% 1.59/1.00  --pred_elim                             true
% 1.59/1.00  --res_sim_input                         true
% 1.59/1.00  --eq_ax_congr_red                       true
% 1.59/1.00  --pure_diseq_elim                       true
% 1.59/1.00  --brand_transform                       false
% 1.59/1.00  --non_eq_to_eq                          false
% 1.59/1.00  --prep_def_merge                        true
% 1.59/1.00  --prep_def_merge_prop_impl              false
% 1.59/1.00  --prep_def_merge_mbd                    true
% 1.59/1.00  --prep_def_merge_tr_red                 false
% 1.59/1.00  --prep_def_merge_tr_cl                  false
% 1.59/1.00  --smt_preprocessing                     true
% 1.59/1.00  --smt_ac_axioms                         fast
% 1.59/1.00  --preprocessed_out                      false
% 1.59/1.00  --preprocessed_stats                    false
% 1.59/1.00  
% 1.59/1.00  ------ Abstraction refinement Options
% 1.59/1.00  
% 1.59/1.00  --abstr_ref                             []
% 1.59/1.00  --abstr_ref_prep                        false
% 1.59/1.00  --abstr_ref_until_sat                   false
% 1.59/1.00  --abstr_ref_sig_restrict                funpre
% 1.59/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.59/1.00  --abstr_ref_under                       []
% 1.59/1.00  
% 1.59/1.00  ------ SAT Options
% 1.59/1.00  
% 1.59/1.00  --sat_mode                              false
% 1.59/1.00  --sat_fm_restart_options                ""
% 1.59/1.00  --sat_gr_def                            false
% 1.59/1.00  --sat_epr_types                         true
% 1.59/1.00  --sat_non_cyclic_types                  false
% 1.59/1.00  --sat_finite_models                     false
% 1.59/1.00  --sat_fm_lemmas                         false
% 1.59/1.00  --sat_fm_prep                           false
% 1.59/1.00  --sat_fm_uc_incr                        true
% 1.59/1.00  --sat_out_model                         small
% 1.59/1.00  --sat_out_clauses                       false
% 1.59/1.00  
% 1.59/1.00  ------ QBF Options
% 1.59/1.00  
% 1.59/1.00  --qbf_mode                              false
% 1.59/1.00  --qbf_elim_univ                         false
% 1.59/1.00  --qbf_dom_inst                          none
% 1.59/1.00  --qbf_dom_pre_inst                      false
% 1.59/1.00  --qbf_sk_in                             false
% 1.59/1.00  --qbf_pred_elim                         true
% 1.59/1.00  --qbf_split                             512
% 1.59/1.00  
% 1.59/1.00  ------ BMC1 Options
% 1.59/1.00  
% 1.59/1.00  --bmc1_incremental                      false
% 1.59/1.00  --bmc1_axioms                           reachable_all
% 1.59/1.00  --bmc1_min_bound                        0
% 1.59/1.00  --bmc1_max_bound                        -1
% 1.59/1.00  --bmc1_max_bound_default                -1
% 1.59/1.00  --bmc1_symbol_reachability              true
% 1.59/1.00  --bmc1_property_lemmas                  false
% 1.59/1.00  --bmc1_k_induction                      false
% 1.59/1.00  --bmc1_non_equiv_states                 false
% 1.59/1.00  --bmc1_deadlock                         false
% 1.59/1.00  --bmc1_ucm                              false
% 1.59/1.00  --bmc1_add_unsat_core                   none
% 1.59/1.00  --bmc1_unsat_core_children              false
% 1.59/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.59/1.00  --bmc1_out_stat                         full
% 1.59/1.00  --bmc1_ground_init                      false
% 1.59/1.00  --bmc1_pre_inst_next_state              false
% 1.59/1.00  --bmc1_pre_inst_state                   false
% 1.59/1.00  --bmc1_pre_inst_reach_state             false
% 1.59/1.00  --bmc1_out_unsat_core                   false
% 1.59/1.00  --bmc1_aig_witness_out                  false
% 1.59/1.00  --bmc1_verbose                          false
% 1.59/1.00  --bmc1_dump_clauses_tptp                false
% 1.59/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.59/1.00  --bmc1_dump_file                        -
% 1.59/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.59/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.59/1.00  --bmc1_ucm_extend_mode                  1
% 1.59/1.00  --bmc1_ucm_init_mode                    2
% 1.59/1.00  --bmc1_ucm_cone_mode                    none
% 1.59/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.59/1.00  --bmc1_ucm_relax_model                  4
% 1.59/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.59/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.59/1.00  --bmc1_ucm_layered_model                none
% 1.59/1.00  --bmc1_ucm_max_lemma_size               10
% 1.59/1.00  
% 1.59/1.00  ------ AIG Options
% 1.59/1.00  
% 1.59/1.00  --aig_mode                              false
% 1.59/1.00  
% 1.59/1.00  ------ Instantiation Options
% 1.59/1.00  
% 1.59/1.00  --instantiation_flag                    true
% 1.59/1.00  --inst_sos_flag                         false
% 1.59/1.00  --inst_sos_phase                        true
% 1.59/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.59/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.59/1.00  --inst_lit_sel_side                     num_symb
% 1.59/1.00  --inst_solver_per_active                1400
% 1.59/1.00  --inst_solver_calls_frac                1.
% 1.59/1.00  --inst_passive_queue_type               priority_queues
% 1.59/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.59/1.00  --inst_passive_queues_freq              [25;2]
% 1.59/1.00  --inst_dismatching                      true
% 1.59/1.00  --inst_eager_unprocessed_to_passive     true
% 1.59/1.00  --inst_prop_sim_given                   true
% 1.59/1.00  --inst_prop_sim_new                     false
% 1.59/1.00  --inst_subs_new                         false
% 1.59/1.00  --inst_eq_res_simp                      false
% 1.59/1.00  --inst_subs_given                       false
% 1.59/1.00  --inst_orphan_elimination               true
% 1.59/1.00  --inst_learning_loop_flag               true
% 1.59/1.00  --inst_learning_start                   3000
% 1.59/1.00  --inst_learning_factor                  2
% 1.59/1.00  --inst_start_prop_sim_after_learn       3
% 1.59/1.00  --inst_sel_renew                        solver
% 1.59/1.00  --inst_lit_activity_flag                true
% 1.59/1.00  --inst_restr_to_given                   false
% 1.59/1.00  --inst_activity_threshold               500
% 1.59/1.00  --inst_out_proof                        true
% 1.59/1.00  
% 1.59/1.00  ------ Resolution Options
% 1.59/1.00  
% 1.59/1.00  --resolution_flag                       true
% 1.59/1.00  --res_lit_sel                           adaptive
% 1.59/1.00  --res_lit_sel_side                      none
% 1.59/1.00  --res_ordering                          kbo
% 1.59/1.00  --res_to_prop_solver                    active
% 1.59/1.00  --res_prop_simpl_new                    false
% 1.59/1.00  --res_prop_simpl_given                  true
% 1.59/1.00  --res_passive_queue_type                priority_queues
% 1.59/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.59/1.00  --res_passive_queues_freq               [15;5]
% 1.59/1.00  --res_forward_subs                      full
% 1.59/1.00  --res_backward_subs                     full
% 1.59/1.00  --res_forward_subs_resolution           true
% 1.59/1.00  --res_backward_subs_resolution          true
% 1.59/1.00  --res_orphan_elimination                true
% 1.59/1.00  --res_time_limit                        2.
% 1.59/1.00  --res_out_proof                         true
% 1.59/1.00  
% 1.59/1.00  ------ Superposition Options
% 1.59/1.00  
% 1.59/1.00  --superposition_flag                    true
% 1.59/1.00  --sup_passive_queue_type                priority_queues
% 1.59/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.59/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.59/1.00  --demod_completeness_check              fast
% 1.59/1.00  --demod_use_ground                      true
% 1.59/1.00  --sup_to_prop_solver                    passive
% 1.59/1.00  --sup_prop_simpl_new                    true
% 1.59/1.00  --sup_prop_simpl_given                  true
% 1.59/1.00  --sup_fun_splitting                     false
% 1.59/1.00  --sup_smt_interval                      50000
% 1.59/1.00  
% 1.59/1.00  ------ Superposition Simplification Setup
% 1.59/1.00  
% 1.59/1.00  --sup_indices_passive                   []
% 1.59/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.59/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.59/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.59/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.59/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.59/1.00  --sup_full_bw                           [BwDemod]
% 1.59/1.00  --sup_immed_triv                        [TrivRules]
% 1.59/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.59/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.59/1.00  --sup_immed_bw_main                     []
% 1.59/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.59/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.59/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.59/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.59/1.00  
% 1.59/1.00  ------ Combination Options
% 1.59/1.00  
% 1.59/1.00  --comb_res_mult                         3
% 1.59/1.00  --comb_sup_mult                         2
% 1.59/1.00  --comb_inst_mult                        10
% 1.59/1.00  
% 1.59/1.00  ------ Debug Options
% 1.59/1.00  
% 1.59/1.00  --dbg_backtrace                         false
% 1.59/1.00  --dbg_dump_prop_clauses                 false
% 1.59/1.00  --dbg_dump_prop_clauses_file            -
% 1.59/1.00  --dbg_out_stat                          false
% 1.59/1.00  ------ Parsing...
% 1.59/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.59/1.00  
% 1.59/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 1.59/1.00  
% 1.59/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.59/1.00  
% 1.59/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.59/1.00  ------ Proving...
% 1.59/1.00  ------ Problem Properties 
% 1.59/1.00  
% 1.59/1.00  
% 1.59/1.00  clauses                                 15
% 1.59/1.00  conjectures                             4
% 1.59/1.00  EPR                                     4
% 1.59/1.00  Horn                                    13
% 1.59/1.00  unary                                   9
% 1.59/1.00  binary                                  2
% 1.59/1.00  lits                                    25
% 1.59/1.00  lits eq                                 6
% 1.59/1.00  fd_pure                                 0
% 1.59/1.00  fd_pseudo                               0
% 1.59/1.00  fd_cond                                 2
% 1.59/1.00  fd_pseudo_cond                          0
% 1.59/1.00  AC symbols                              0
% 1.59/1.00  
% 1.59/1.00  ------ Schedule dynamic 5 is on 
% 1.59/1.00  
% 1.59/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.59/1.00  
% 1.59/1.00  
% 1.59/1.00  ------ 
% 1.59/1.00  Current options:
% 1.59/1.00  ------ 
% 1.59/1.00  
% 1.59/1.00  ------ Input Options
% 1.59/1.00  
% 1.59/1.00  --out_options                           all
% 1.59/1.00  --tptp_safe_out                         true
% 1.59/1.00  --problem_path                          ""
% 1.59/1.00  --include_path                          ""
% 1.59/1.00  --clausifier                            res/vclausify_rel
% 1.59/1.00  --clausifier_options                    --mode clausify
% 1.59/1.00  --stdin                                 false
% 1.59/1.00  --stats_out                             all
% 1.59/1.00  
% 1.59/1.00  ------ General Options
% 1.59/1.00  
% 1.59/1.00  --fof                                   false
% 1.59/1.00  --time_out_real                         305.
% 1.59/1.00  --time_out_virtual                      -1.
% 1.59/1.00  --symbol_type_check                     false
% 1.59/1.00  --clausify_out                          false
% 1.59/1.00  --sig_cnt_out                           false
% 1.59/1.00  --trig_cnt_out                          false
% 1.59/1.00  --trig_cnt_out_tolerance                1.
% 1.59/1.00  --trig_cnt_out_sk_spl                   false
% 1.59/1.00  --abstr_cl_out                          false
% 1.59/1.00  
% 1.59/1.00  ------ Global Options
% 1.59/1.00  
% 1.59/1.00  --schedule                              default
% 1.59/1.00  --add_important_lit                     false
% 1.59/1.00  --prop_solver_per_cl                    1000
% 1.59/1.00  --min_unsat_core                        false
% 1.59/1.00  --soft_assumptions                      false
% 1.59/1.00  --soft_lemma_size                       3
% 1.59/1.00  --prop_impl_unit_size                   0
% 1.59/1.00  --prop_impl_unit                        []
% 1.59/1.00  --share_sel_clauses                     true
% 1.59/1.00  --reset_solvers                         false
% 1.59/1.00  --bc_imp_inh                            [conj_cone]
% 1.59/1.00  --conj_cone_tolerance                   3.
% 1.59/1.00  --extra_neg_conj                        none
% 1.59/1.00  --large_theory_mode                     true
% 1.59/1.00  --prolific_symb_bound                   200
% 1.59/1.00  --lt_threshold                          2000
% 1.59/1.00  --clause_weak_htbl                      true
% 1.59/1.00  --gc_record_bc_elim                     false
% 1.59/1.00  
% 1.59/1.00  ------ Preprocessing Options
% 1.59/1.00  
% 1.59/1.00  --preprocessing_flag                    true
% 1.59/1.00  --time_out_prep_mult                    0.1
% 1.59/1.00  --splitting_mode                        input
% 1.59/1.00  --splitting_grd                         true
% 1.59/1.00  --splitting_cvd                         false
% 1.59/1.00  --splitting_cvd_svl                     false
% 1.59/1.00  --splitting_nvd                         32
% 1.59/1.00  --sub_typing                            true
% 1.59/1.00  --prep_gs_sim                           true
% 1.59/1.00  --prep_unflatten                        true
% 1.59/1.00  --prep_res_sim                          true
% 1.59/1.00  --prep_upred                            true
% 1.59/1.00  --prep_sem_filter                       exhaustive
% 1.59/1.00  --prep_sem_filter_out                   false
% 1.59/1.00  --pred_elim                             true
% 1.59/1.00  --res_sim_input                         true
% 1.59/1.00  --eq_ax_congr_red                       true
% 1.59/1.00  --pure_diseq_elim                       true
% 1.59/1.00  --brand_transform                       false
% 1.59/1.00  --non_eq_to_eq                          false
% 1.59/1.00  --prep_def_merge                        true
% 1.59/1.00  --prep_def_merge_prop_impl              false
% 1.59/1.00  --prep_def_merge_mbd                    true
% 1.59/1.00  --prep_def_merge_tr_red                 false
% 1.59/1.00  --prep_def_merge_tr_cl                  false
% 1.59/1.00  --smt_preprocessing                     true
% 1.59/1.00  --smt_ac_axioms                         fast
% 1.59/1.00  --preprocessed_out                      false
% 1.59/1.00  --preprocessed_stats                    false
% 1.59/1.00  
% 1.59/1.00  ------ Abstraction refinement Options
% 1.59/1.00  
% 1.59/1.00  --abstr_ref                             []
% 1.59/1.00  --abstr_ref_prep                        false
% 1.59/1.00  --abstr_ref_until_sat                   false
% 1.59/1.00  --abstr_ref_sig_restrict                funpre
% 1.59/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.59/1.00  --abstr_ref_under                       []
% 1.59/1.00  
% 1.59/1.00  ------ SAT Options
% 1.59/1.00  
% 1.59/1.00  --sat_mode                              false
% 1.59/1.00  --sat_fm_restart_options                ""
% 1.59/1.00  --sat_gr_def                            false
% 1.59/1.00  --sat_epr_types                         true
% 1.59/1.00  --sat_non_cyclic_types                  false
% 1.59/1.00  --sat_finite_models                     false
% 1.59/1.00  --sat_fm_lemmas                         false
% 1.59/1.00  --sat_fm_prep                           false
% 1.59/1.00  --sat_fm_uc_incr                        true
% 1.59/1.00  --sat_out_model                         small
% 1.59/1.00  --sat_out_clauses                       false
% 1.59/1.00  
% 1.59/1.00  ------ QBF Options
% 1.59/1.00  
% 1.59/1.00  --qbf_mode                              false
% 1.59/1.00  --qbf_elim_univ                         false
% 1.59/1.00  --qbf_dom_inst                          none
% 1.59/1.00  --qbf_dom_pre_inst                      false
% 1.59/1.00  --qbf_sk_in                             false
% 1.59/1.00  --qbf_pred_elim                         true
% 1.59/1.00  --qbf_split                             512
% 1.59/1.00  
% 1.59/1.00  ------ BMC1 Options
% 1.59/1.00  
% 1.59/1.00  --bmc1_incremental                      false
% 1.59/1.00  --bmc1_axioms                           reachable_all
% 1.59/1.00  --bmc1_min_bound                        0
% 1.59/1.00  --bmc1_max_bound                        -1
% 1.59/1.00  --bmc1_max_bound_default                -1
% 1.59/1.00  --bmc1_symbol_reachability              true
% 1.59/1.00  --bmc1_property_lemmas                  false
% 1.59/1.00  --bmc1_k_induction                      false
% 1.59/1.00  --bmc1_non_equiv_states                 false
% 1.59/1.00  --bmc1_deadlock                         false
% 1.59/1.00  --bmc1_ucm                              false
% 1.59/1.00  --bmc1_add_unsat_core                   none
% 1.59/1.00  --bmc1_unsat_core_children              false
% 1.59/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.59/1.00  --bmc1_out_stat                         full
% 1.59/1.00  --bmc1_ground_init                      false
% 1.59/1.00  --bmc1_pre_inst_next_state              false
% 1.59/1.00  --bmc1_pre_inst_state                   false
% 1.59/1.00  --bmc1_pre_inst_reach_state             false
% 1.59/1.00  --bmc1_out_unsat_core                   false
% 1.59/1.00  --bmc1_aig_witness_out                  false
% 1.59/1.00  --bmc1_verbose                          false
% 1.59/1.00  --bmc1_dump_clauses_tptp                false
% 1.59/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.59/1.00  --bmc1_dump_file                        -
% 1.59/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.59/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.59/1.00  --bmc1_ucm_extend_mode                  1
% 1.59/1.00  --bmc1_ucm_init_mode                    2
% 1.59/1.00  --bmc1_ucm_cone_mode                    none
% 1.59/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.59/1.00  --bmc1_ucm_relax_model                  4
% 1.59/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.59/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.59/1.00  --bmc1_ucm_layered_model                none
% 1.59/1.00  --bmc1_ucm_max_lemma_size               10
% 1.59/1.00  
% 1.59/1.00  ------ AIG Options
% 1.59/1.00  
% 1.59/1.00  --aig_mode                              false
% 1.59/1.00  
% 1.59/1.00  ------ Instantiation Options
% 1.59/1.00  
% 1.59/1.00  --instantiation_flag                    true
% 1.59/1.00  --inst_sos_flag                         false
% 1.59/1.00  --inst_sos_phase                        true
% 1.59/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.59/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.59/1.00  --inst_lit_sel_side                     none
% 1.59/1.00  --inst_solver_per_active                1400
% 1.59/1.00  --inst_solver_calls_frac                1.
% 1.59/1.00  --inst_passive_queue_type               priority_queues
% 1.59/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.59/1.00  --inst_passive_queues_freq              [25;2]
% 1.59/1.00  --inst_dismatching                      true
% 1.59/1.00  --inst_eager_unprocessed_to_passive     true
% 1.59/1.00  --inst_prop_sim_given                   true
% 1.59/1.00  --inst_prop_sim_new                     false
% 1.59/1.00  --inst_subs_new                         false
% 1.59/1.00  --inst_eq_res_simp                      false
% 1.59/1.00  --inst_subs_given                       false
% 1.59/1.00  --inst_orphan_elimination               true
% 1.59/1.00  --inst_learning_loop_flag               true
% 1.59/1.00  --inst_learning_start                   3000
% 1.59/1.00  --inst_learning_factor                  2
% 1.59/1.00  --inst_start_prop_sim_after_learn       3
% 1.59/1.00  --inst_sel_renew                        solver
% 1.59/1.00  --inst_lit_activity_flag                true
% 1.59/1.00  --inst_restr_to_given                   false
% 1.59/1.00  --inst_activity_threshold               500
% 1.59/1.00  --inst_out_proof                        true
% 1.59/1.00  
% 1.59/1.00  ------ Resolution Options
% 1.59/1.00  
% 1.59/1.00  --resolution_flag                       false
% 1.59/1.00  --res_lit_sel                           adaptive
% 1.59/1.00  --res_lit_sel_side                      none
% 1.59/1.00  --res_ordering                          kbo
% 1.59/1.00  --res_to_prop_solver                    active
% 1.59/1.00  --res_prop_simpl_new                    false
% 1.59/1.00  --res_prop_simpl_given                  true
% 1.59/1.00  --res_passive_queue_type                priority_queues
% 1.59/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.59/1.00  --res_passive_queues_freq               [15;5]
% 1.59/1.00  --res_forward_subs                      full
% 1.59/1.00  --res_backward_subs                     full
% 1.59/1.00  --res_forward_subs_resolution           true
% 1.59/1.00  --res_backward_subs_resolution          true
% 1.59/1.00  --res_orphan_elimination                true
% 1.59/1.00  --res_time_limit                        2.
% 1.59/1.00  --res_out_proof                         true
% 1.59/1.00  
% 1.59/1.00  ------ Superposition Options
% 1.59/1.00  
% 1.59/1.00  --superposition_flag                    true
% 1.59/1.00  --sup_passive_queue_type                priority_queues
% 1.59/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.59/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.59/1.00  --demod_completeness_check              fast
% 1.59/1.00  --demod_use_ground                      true
% 1.59/1.00  --sup_to_prop_solver                    passive
% 1.59/1.00  --sup_prop_simpl_new                    true
% 1.59/1.00  --sup_prop_simpl_given                  true
% 1.59/1.00  --sup_fun_splitting                     false
% 1.59/1.00  --sup_smt_interval                      50000
% 1.59/1.00  
% 1.59/1.00  ------ Superposition Simplification Setup
% 1.59/1.00  
% 1.59/1.00  --sup_indices_passive                   []
% 1.59/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.59/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.59/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.59/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.59/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.59/1.00  --sup_full_bw                           [BwDemod]
% 1.59/1.00  --sup_immed_triv                        [TrivRules]
% 1.59/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.59/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.59/1.00  --sup_immed_bw_main                     []
% 1.59/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.59/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.59/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.59/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.59/1.00  
% 1.59/1.00  ------ Combination Options
% 1.59/1.00  
% 1.59/1.00  --comb_res_mult                         3
% 1.59/1.00  --comb_sup_mult                         2
% 1.59/1.00  --comb_inst_mult                        10
% 1.59/1.00  
% 1.59/1.00  ------ Debug Options
% 1.59/1.00  
% 1.59/1.00  --dbg_backtrace                         false
% 1.59/1.00  --dbg_dump_prop_clauses                 false
% 1.59/1.00  --dbg_dump_prop_clauses_file            -
% 1.59/1.00  --dbg_out_stat                          false
% 1.59/1.00  
% 1.59/1.00  
% 1.59/1.00  
% 1.59/1.00  
% 1.59/1.00  ------ Proving...
% 1.59/1.00  
% 1.59/1.00  
% 1.59/1.00  % SZS status Theorem for theBenchmark.p
% 1.59/1.00  
% 1.59/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.59/1.00  
% 1.59/1.00  fof(f8,axiom,(
% 1.59/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4,X5,X6] : ((r2_hidden(X6,X1) & r2_hidden(X5,X6) & r2_hidden(X4,X5) & r2_hidden(X3,X4) & r2_hidden(X2,X3)) => r1_xboole_0(X2,X0)) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f17,plain,(
% 1.59/1.00    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.59/1.00    inference(pure_predicate_removal,[],[f8])).
% 1.59/1.00  
% 1.59/1.00  fof(f23,plain,(
% 1.59/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.59/1.00    inference(ennf_transformation,[],[f17])).
% 1.59/1.00  
% 1.59/1.00  fof(f35,plain,(
% 1.59/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 1.59/1.00    introduced(choice_axiom,[])).
% 1.59/1.00  
% 1.59/1.00  fof(f36,plain,(
% 1.59/1.00    ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0)),
% 1.59/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f35])).
% 1.59/1.00  
% 1.59/1.00  fof(f52,plain,(
% 1.59/1.00    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 1.59/1.00    inference(cnf_transformation,[],[f36])).
% 1.59/1.00  
% 1.59/1.00  fof(f15,conjecture,(
% 1.59/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => ~(k1_xboole_0 = X2 & ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X3,X2) <=> (r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0))))))))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f16,negated_conjecture,(
% 1.59/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => ~(k1_xboole_0 = X2 & ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X3,X2) <=> (r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0))))))))),
% 1.59/1.00    inference(negated_conjecture,[],[f15])).
% 1.59/1.00  
% 1.59/1.00  fof(f33,plain,(
% 1.59/1.00    ? [X0] : (? [X1] : (? [X2] : ((k1_xboole_0 = X2 & ! [X3] : ((r2_hidden(X3,X2) <=> (r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.59/1.00    inference(ennf_transformation,[],[f16])).
% 1.59/1.00  
% 1.59/1.00  fof(f34,plain,(
% 1.59/1.00    ? [X0] : (? [X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : ((r2_hidden(X3,X2) <=> (r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.59/1.00    inference(flattening,[],[f33])).
% 1.59/1.00  
% 1.59/1.00  fof(f39,plain,(
% 1.59/1.00    ? [X0] : (? [X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | (~r2_hidden(X1,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0))) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.59/1.00    inference(nnf_transformation,[],[f34])).
% 1.59/1.00  
% 1.59/1.00  fof(f40,plain,(
% 1.59/1.00    ? [X0] : (? [X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | ~r2_hidden(X1,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0)) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.59/1.00    inference(flattening,[],[f39])).
% 1.59/1.00  
% 1.59/1.00  fof(f43,plain,(
% 1.59/1.00    ( ! [X0,X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | ~r2_hidden(X1,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0)) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) => (k1_xboole_0 = sK4 & ! [X3] : (((r2_hidden(X3,sK4) | ~r2_hidden(X1,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0)) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,sK4))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK4,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))))) )),
% 1.59/1.00    introduced(choice_axiom,[])).
% 1.59/1.00  
% 1.59/1.00  fof(f42,plain,(
% 1.59/1.00    ( ! [X0] : (? [X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | ~r2_hidden(X1,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0)) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | ~r2_hidden(sK3,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0)) & ((r2_hidden(sK3,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 1.59/1.00    introduced(choice_axiom,[])).
% 1.59/1.00  
% 1.59/1.00  fof(f41,plain,(
% 1.59/1.00    ? [X0] : (? [X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | ~r2_hidden(X1,X3) | ~v4_pre_topc(X3,X0) | ~v3_pre_topc(X3,X0)) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,X0) & v3_pre_topc(X3,X0)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (k1_xboole_0 = X2 & ! [X3] : (((r2_hidden(X3,X2) | ~r2_hidden(X1,X3) | ~v4_pre_topc(X3,sK2) | ~v3_pre_topc(X3,sK2)) & ((r2_hidden(X1,X3) & v4_pre_topc(X3,sK2) & v3_pre_topc(X3,sK2)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK2)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))) & m1_subset_1(X1,u1_struct_0(sK2))) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))),
% 1.59/1.00    introduced(choice_axiom,[])).
% 1.59/1.00  
% 1.59/1.00  fof(f44,plain,(
% 1.59/1.00    ((k1_xboole_0 = sK4 & ! [X3] : (((r2_hidden(X3,sK4) | ~r2_hidden(sK3,X3) | ~v4_pre_topc(X3,sK2) | ~v3_pre_topc(X3,sK2)) & ((r2_hidden(sK3,X3) & v4_pre_topc(X3,sK2) & v3_pre_topc(X3,sK2)) | ~r2_hidden(X3,sK4))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK2)))) & m1_subset_1(sK4,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))) & m1_subset_1(sK3,u1_struct_0(sK2))) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)),
% 1.59/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f40,f43,f42,f41])).
% 1.59/1.00  
% 1.59/1.00  fof(f63,plain,(
% 1.59/1.00    m1_subset_1(sK3,u1_struct_0(sK2))),
% 1.59/1.00    inference(cnf_transformation,[],[f44])).
% 1.59/1.00  
% 1.59/1.00  fof(f10,axiom,(
% 1.59/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f25,plain,(
% 1.59/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.59/1.00    inference(ennf_transformation,[],[f10])).
% 1.59/1.00  
% 1.59/1.00  fof(f54,plain,(
% 1.59/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f25])).
% 1.59/1.00  
% 1.59/1.00  fof(f9,axiom,(
% 1.59/1.00    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f24,plain,(
% 1.59/1.00    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 1.59/1.00    inference(ennf_transformation,[],[f9])).
% 1.59/1.00  
% 1.59/1.00  fof(f53,plain,(
% 1.59/1.00    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f24])).
% 1.59/1.00  
% 1.59/1.00  fof(f62,plain,(
% 1.59/1.00    l1_pre_topc(sK2)),
% 1.59/1.00    inference(cnf_transformation,[],[f44])).
% 1.59/1.00  
% 1.59/1.00  fof(f5,axiom,(
% 1.59/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f19,plain,(
% 1.59/1.00    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.59/1.00    inference(ennf_transformation,[],[f5])).
% 1.59/1.00  
% 1.59/1.00  fof(f20,plain,(
% 1.59/1.00    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.59/1.00    inference(flattening,[],[f19])).
% 1.59/1.00  
% 1.59/1.00  fof(f49,plain,(
% 1.59/1.00    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f20])).
% 1.59/1.00  
% 1.59/1.00  fof(f68,plain,(
% 1.59/1.00    ( ! [X3] : (r2_hidden(X3,sK4) | ~r2_hidden(sK3,X3) | ~v4_pre_topc(X3,sK2) | ~v3_pre_topc(X3,sK2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK2)))) )),
% 1.59/1.00    inference(cnf_transformation,[],[f44])).
% 1.59/1.00  
% 1.59/1.00  fof(f11,axiom,(
% 1.59/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => v4_pre_topc(k2_struct_0(X0),X0))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f26,plain,(
% 1.59/1.00    ! [X0] : (v4_pre_topc(k2_struct_0(X0),X0) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.59/1.00    inference(ennf_transformation,[],[f11])).
% 1.59/1.00  
% 1.59/1.00  fof(f27,plain,(
% 1.59/1.00    ! [X0] : (v4_pre_topc(k2_struct_0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.59/1.00    inference(flattening,[],[f26])).
% 1.59/1.00  
% 1.59/1.00  fof(f55,plain,(
% 1.59/1.00    ( ! [X0] : (v4_pre_topc(k2_struct_0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f27])).
% 1.59/1.00  
% 1.59/1.00  fof(f61,plain,(
% 1.59/1.00    v2_pre_topc(sK2)),
% 1.59/1.00    inference(cnf_transformation,[],[f44])).
% 1.59/1.00  
% 1.59/1.00  fof(f12,axiom,(
% 1.59/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => v3_pre_topc(k2_struct_0(X0),X0))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f28,plain,(
% 1.59/1.00    ! [X0] : (v3_pre_topc(k2_struct_0(X0),X0) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.59/1.00    inference(ennf_transformation,[],[f12])).
% 1.59/1.00  
% 1.59/1.00  fof(f29,plain,(
% 1.59/1.00    ! [X0] : (v3_pre_topc(k2_struct_0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.59/1.00    inference(flattening,[],[f28])).
% 1.59/1.00  
% 1.59/1.00  fof(f56,plain,(
% 1.59/1.00    ( ! [X0] : (v3_pre_topc(k2_struct_0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f29])).
% 1.59/1.00  
% 1.59/1.00  fof(f69,plain,(
% 1.59/1.00    k1_xboole_0 = sK4),
% 1.59/1.00    inference(cnf_transformation,[],[f44])).
% 1.59/1.00  
% 1.59/1.00  fof(f4,axiom,(
% 1.59/1.00    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f48,plain,(
% 1.59/1.00    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 1.59/1.00    inference(cnf_transformation,[],[f4])).
% 1.59/1.00  
% 1.59/1.00  fof(f3,axiom,(
% 1.59/1.00    ! [X0] : k2_subset_1(X0) = X0),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f47,plain,(
% 1.59/1.00    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 1.59/1.00    inference(cnf_transformation,[],[f3])).
% 1.59/1.00  
% 1.59/1.00  fof(f2,axiom,(
% 1.59/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f46,plain,(
% 1.59/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f2])).
% 1.59/1.00  
% 1.59/1.00  fof(f7,axiom,(
% 1.59/1.00    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f22,plain,(
% 1.59/1.00    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.59/1.00    inference(ennf_transformation,[],[f7])).
% 1.59/1.00  
% 1.59/1.00  fof(f51,plain,(
% 1.59/1.00    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f22])).
% 1.59/1.00  
% 1.59/1.00  fof(f1,axiom,(
% 1.59/1.00    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f18,plain,(
% 1.59/1.00    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 1.59/1.00    inference(ennf_transformation,[],[f1])).
% 1.59/1.00  
% 1.59/1.00  fof(f45,plain,(
% 1.59/1.00    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f18])).
% 1.59/1.00  
% 1.59/1.00  fof(f13,axiom,(
% 1.59/1.00    ! [X0] : (l1_pre_topc(X0) => ? [X1] : (v2_tops_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f30,plain,(
% 1.59/1.00    ! [X0] : (? [X1] : (v2_tops_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.59/1.00    inference(ennf_transformation,[],[f13])).
% 1.59/1.00  
% 1.59/1.00  fof(f37,plain,(
% 1.59/1.00    ! [X0] : (? [X1] : (v2_tops_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (v2_tops_1(sK1(X0),X0) & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.59/1.00    introduced(choice_axiom,[])).
% 1.59/1.00  
% 1.59/1.00  fof(f38,plain,(
% 1.59/1.00    ! [X0] : ((v2_tops_1(sK1(X0),X0) & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.59/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f37])).
% 1.59/1.00  
% 1.59/1.00  fof(f57,plain,(
% 1.59/1.00    ( ! [X0] : (m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.59/1.00    inference(cnf_transformation,[],[f38])).
% 1.59/1.00  
% 1.59/1.00  fof(f6,axiom,(
% 1.59/1.00    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 1.59/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.00  
% 1.59/1.00  fof(f21,plain,(
% 1.59/1.00    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 1.59/1.01    inference(ennf_transformation,[],[f6])).
% 1.59/1.01  
% 1.59/1.01  fof(f50,plain,(
% 1.59/1.01    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 1.59/1.01    inference(cnf_transformation,[],[f21])).
% 1.59/1.01  
% 1.59/1.01  fof(f58,plain,(
% 1.59/1.01    ( ! [X0] : (v2_tops_1(sK1(X0),X0) | ~l1_pre_topc(X0)) )),
% 1.59/1.01    inference(cnf_transformation,[],[f38])).
% 1.59/1.01  
% 1.59/1.01  fof(f14,axiom,(
% 1.59/1.01    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ~v2_tops_1(k2_struct_0(X0),X0))),
% 1.59/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.59/1.01  
% 1.59/1.01  fof(f31,plain,(
% 1.59/1.01    ! [X0] : (~v2_tops_1(k2_struct_0(X0),X0) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.59/1.01    inference(ennf_transformation,[],[f14])).
% 1.59/1.01  
% 1.59/1.01  fof(f32,plain,(
% 1.59/1.01    ! [X0] : (~v2_tops_1(k2_struct_0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.59/1.01    inference(flattening,[],[f31])).
% 1.59/1.01  
% 1.59/1.01  fof(f59,plain,(
% 1.59/1.01    ( ! [X0] : (~v2_tops_1(k2_struct_0(X0),X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.59/1.01    inference(cnf_transformation,[],[f32])).
% 1.59/1.01  
% 1.59/1.01  fof(f60,plain,(
% 1.59/1.01    ~v2_struct_0(sK2)),
% 1.59/1.01    inference(cnf_transformation,[],[f44])).
% 1.59/1.01  
% 1.59/1.01  cnf(c_7,plain,
% 1.59/1.01      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 1.59/1.01      inference(cnf_transformation,[],[f52]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1209,plain,
% 1.59/1.01      ( k1_xboole_0 = X0 | r2_hidden(sK0(X0),X0) = iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_21,negated_conjecture,
% 1.59/1.01      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 1.59/1.01      inference(cnf_transformation,[],[f63]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1206,plain,
% 1.59/1.01      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_9,plain,
% 1.59/1.01      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f54]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_8,plain,
% 1.59/1.01      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f53]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_278,plain,
% 1.59/1.01      ( ~ l1_pre_topc(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 1.59/1.01      inference(resolution,[status(thm)],[c_9,c_8]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_22,negated_conjecture,
% 1.59/1.01      ( l1_pre_topc(sK2) ),
% 1.59/1.01      inference(cnf_transformation,[],[f62]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_340,plain,
% 1.59/1.01      ( u1_struct_0(X0) = k2_struct_0(X0) | sK2 != X0 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_278,c_22]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_341,plain,
% 1.59/1.01      ( u1_struct_0(sK2) = k2_struct_0(sK2) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_340]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1224,plain,
% 1.59/1.01      ( m1_subset_1(sK3,k2_struct_0(sK2)) = iProver_top ),
% 1.59/1.01      inference(light_normalisation,[status(thm)],[c_1206,c_341]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_4,plain,
% 1.59/1.01      ( r2_hidden(X0,X1) | ~ m1_subset_1(X0,X1) | v1_xboole_0(X1) ),
% 1.59/1.01      inference(cnf_transformation,[],[f49]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1211,plain,
% 1.59/1.01      ( r2_hidden(X0,X1) = iProver_top
% 1.59/1.01      | m1_subset_1(X0,X1) != iProver_top
% 1.59/1.01      | v1_xboole_0(X1) = iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1801,plain,
% 1.59/1.01      ( r2_hidden(sK3,k2_struct_0(sK2)) = iProver_top
% 1.59/1.01      | v1_xboole_0(k2_struct_0(sK2)) = iProver_top ),
% 1.59/1.01      inference(superposition,[status(thm)],[c_1224,c_1211]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_16,negated_conjecture,
% 1.59/1.01      ( ~ v3_pre_topc(X0,sK2)
% 1.59/1.01      | ~ v4_pre_topc(X0,sK2)
% 1.59/1.01      | r2_hidden(X0,sK4)
% 1.59/1.01      | ~ r2_hidden(sK3,X0)
% 1.59/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.59/1.01      inference(cnf_transformation,[],[f68]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_10,plain,
% 1.59/1.01      ( v4_pre_topc(k2_struct_0(X0),X0)
% 1.59/1.01      | ~ v2_pre_topc(X0)
% 1.59/1.01      | ~ l1_pre_topc(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f55]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_23,negated_conjecture,
% 1.59/1.01      ( v2_pre_topc(sK2) ),
% 1.59/1.01      inference(cnf_transformation,[],[f61]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_325,plain,
% 1.59/1.01      ( v4_pre_topc(k2_struct_0(X0),X0) | ~ l1_pre_topc(X0) | sK2 != X0 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_10,c_23]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_326,plain,
% 1.59/1.01      ( v4_pre_topc(k2_struct_0(sK2),sK2) | ~ l1_pre_topc(sK2) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_325]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_55,plain,
% 1.59/1.01      ( v4_pre_topc(k2_struct_0(sK2),sK2)
% 1.59/1.01      | ~ v2_pre_topc(sK2)
% 1.59/1.01      | ~ l1_pre_topc(sK2) ),
% 1.59/1.01      inference(instantiation,[status(thm)],[c_10]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_328,plain,
% 1.59/1.01      ( v4_pre_topc(k2_struct_0(sK2),sK2) ),
% 1.59/1.01      inference(global_propositional_subsumption,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_326,c_23,c_22,c_55]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_394,plain,
% 1.59/1.01      ( ~ v3_pre_topc(X0,sK2)
% 1.59/1.01      | r2_hidden(X0,sK4)
% 1.59/1.01      | ~ r2_hidden(sK3,X0)
% 1.59/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 1.59/1.01      | k2_struct_0(sK2) != X0
% 1.59/1.01      | sK2 != sK2 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_16,c_328]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_395,plain,
% 1.59/1.01      ( ~ v3_pre_topc(k2_struct_0(sK2),sK2)
% 1.59/1.01      | r2_hidden(k2_struct_0(sK2),sK4)
% 1.59/1.01      | ~ r2_hidden(sK3,k2_struct_0(sK2))
% 1.59/1.01      | ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_394]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_11,plain,
% 1.59/1.01      ( v3_pre_topc(k2_struct_0(X0),X0)
% 1.59/1.01      | ~ v2_pre_topc(X0)
% 1.59/1.01      | ~ l1_pre_topc(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f56]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_52,plain,
% 1.59/1.01      ( v3_pre_topc(k2_struct_0(sK2),sK2)
% 1.59/1.01      | ~ v2_pre_topc(sK2)
% 1.59/1.01      | ~ l1_pre_topc(sK2) ),
% 1.59/1.01      inference(instantiation,[status(thm)],[c_11]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_397,plain,
% 1.59/1.01      ( r2_hidden(k2_struct_0(sK2),sK4)
% 1.59/1.01      | ~ r2_hidden(sK3,k2_struct_0(sK2))
% 1.59/1.01      | ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.59/1.01      inference(global_propositional_subsumption,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_395,c_23,c_22,c_52]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1203,plain,
% 1.59/1.01      ( r2_hidden(k2_struct_0(sK2),sK4) = iProver_top
% 1.59/1.01      | r2_hidden(sK3,k2_struct_0(sK2)) != iProver_top
% 1.59/1.01      | m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_397]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_15,negated_conjecture,
% 1.59/1.01      ( k1_xboole_0 = sK4 ),
% 1.59/1.01      inference(cnf_transformation,[],[f69]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1257,plain,
% 1.59/1.01      ( r2_hidden(k2_struct_0(sK2),k1_xboole_0) = iProver_top
% 1.59/1.01      | r2_hidden(sK3,k2_struct_0(sK2)) != iProver_top
% 1.59/1.01      | m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top ),
% 1.59/1.01      inference(light_normalisation,[status(thm)],[c_1203,c_15,c_341]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_3,plain,
% 1.59/1.01      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 1.59/1.01      inference(cnf_transformation,[],[f48]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1212,plain,
% 1.59/1.01      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2,plain,
% 1.59/1.01      ( k2_subset_1(X0) = X0 ),
% 1.59/1.01      inference(cnf_transformation,[],[f47]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1227,plain,
% 1.59/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.59/1.01      inference(light_normalisation,[status(thm)],[c_1212,c_2]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1,plain,
% 1.59/1.01      ( r1_tarski(k1_xboole_0,X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f46]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_6,plain,
% 1.59/1.01      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f51]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_267,plain,
% 1.59/1.01      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_1,c_6]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_268,plain,
% 1.59/1.01      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_267]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1205,plain,
% 1.59/1.01      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_268]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1261,plain,
% 1.59/1.01      ( r2_hidden(sK3,k2_struct_0(sK2)) != iProver_top ),
% 1.59/1.01      inference(forward_subsumption_resolution,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_1257,c_1227,c_1205]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1893,plain,
% 1.59/1.01      ( v1_xboole_0(k2_struct_0(sK2)) = iProver_top ),
% 1.59/1.01      inference(global_propositional_subsumption,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_1801,c_1261]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_0,plain,
% 1.59/1.01      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 1.59/1.01      inference(cnf_transformation,[],[f45]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1213,plain,
% 1.59/1.01      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1898,plain,
% 1.59/1.01      ( k2_struct_0(sK2) = k1_xboole_0 ),
% 1.59/1.01      inference(superposition,[status(thm)],[c_1893,c_1213]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_13,plain,
% 1.59/1.01      ( m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))
% 1.59/1.01      | ~ l1_pre_topc(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f57]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_345,plain,
% 1.59/1.01      ( m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) | sK2 != X0 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_13,c_22]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_346,plain,
% 1.59/1.01      ( m1_subset_1(sK1(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_345]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1204,plain,
% 1.59/1.01      ( m1_subset_1(sK1(sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_346]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1230,plain,
% 1.59/1.01      ( m1_subset_1(sK1(sK2),k1_zfmisc_1(k2_struct_0(sK2))) = iProver_top ),
% 1.59/1.01      inference(light_normalisation,[status(thm)],[c_1204,c_341]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2051,plain,
% 1.59/1.01      ( m1_subset_1(sK1(sK2),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.59/1.01      inference(demodulation,[status(thm)],[c_1898,c_1230]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_5,plain,
% 1.59/1.01      ( ~ r2_hidden(X0,X1)
% 1.59/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 1.59/1.01      | ~ v1_xboole_0(X2) ),
% 1.59/1.01      inference(cnf_transformation,[],[f50]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_1210,plain,
% 1.59/1.01      ( r2_hidden(X0,X1) != iProver_top
% 1.59/1.01      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
% 1.59/1.01      | v1_xboole_0(X2) != iProver_top ),
% 1.59/1.01      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2444,plain,
% 1.59/1.01      ( r2_hidden(X0,sK1(sK2)) != iProver_top
% 1.59/1.01      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.59/1.01      inference(superposition,[status(thm)],[c_2051,c_1210]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2049,plain,
% 1.59/1.01      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 1.59/1.01      inference(demodulation,[status(thm)],[c_1898,c_1893]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2475,plain,
% 1.59/1.01      ( r2_hidden(X0,sK1(sK2)) != iProver_top ),
% 1.59/1.01      inference(global_propositional_subsumption,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_2444,c_2049]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2482,plain,
% 1.59/1.01      ( sK1(sK2) = k1_xboole_0 ),
% 1.59/1.01      inference(superposition,[status(thm)],[c_1209,c_2475]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_12,plain,
% 1.59/1.01      ( v2_tops_1(sK1(X0),X0) | ~ l1_pre_topc(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f58]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_14,plain,
% 1.59/1.01      ( ~ v2_tops_1(k2_struct_0(X0),X0)
% 1.59/1.01      | v2_struct_0(X0)
% 1.59/1.01      | ~ v2_pre_topc(X0)
% 1.59/1.01      | ~ l1_pre_topc(X0) ),
% 1.59/1.01      inference(cnf_transformation,[],[f59]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_24,negated_conjecture,
% 1.59/1.01      ( ~ v2_struct_0(sK2) ),
% 1.59/1.01      inference(cnf_transformation,[],[f60]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_292,plain,
% 1.59/1.01      ( ~ v2_tops_1(k2_struct_0(X0),X0)
% 1.59/1.01      | ~ v2_pre_topc(X0)
% 1.59/1.01      | ~ l1_pre_topc(X0)
% 1.59/1.01      | sK2 != X0 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_14,c_24]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_293,plain,
% 1.59/1.01      ( ~ v2_tops_1(k2_struct_0(sK2),sK2)
% 1.59/1.01      | ~ v2_pre_topc(sK2)
% 1.59/1.01      | ~ l1_pre_topc(sK2) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_292]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_43,plain,
% 1.59/1.01      ( ~ v2_tops_1(k2_struct_0(sK2),sK2)
% 1.59/1.01      | v2_struct_0(sK2)
% 1.59/1.01      | ~ v2_pre_topc(sK2)
% 1.59/1.01      | ~ l1_pre_topc(sK2) ),
% 1.59/1.01      inference(instantiation,[status(thm)],[c_14]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_295,plain,
% 1.59/1.01      ( ~ v2_tops_1(k2_struct_0(sK2),sK2) ),
% 1.59/1.01      inference(global_propositional_subsumption,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_293,c_24,c_23,c_22,c_43]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_305,plain,
% 1.59/1.01      ( ~ l1_pre_topc(X0) | sK1(X0) != k2_struct_0(sK2) | sK2 != X0 ),
% 1.59/1.01      inference(resolution_lifted,[status(thm)],[c_12,c_295]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_306,plain,
% 1.59/1.01      ( ~ l1_pre_topc(sK2) | sK1(sK2) != k2_struct_0(sK2) ),
% 1.59/1.01      inference(unflattening,[status(thm)],[c_305]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_308,plain,
% 1.59/1.01      ( sK1(sK2) != k2_struct_0(sK2) ),
% 1.59/1.01      inference(global_propositional_subsumption,
% 1.59/1.01                [status(thm)],
% 1.59/1.01                [c_306,c_22]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(c_2054,plain,
% 1.59/1.01      ( sK1(sK2) != k1_xboole_0 ),
% 1.59/1.01      inference(demodulation,[status(thm)],[c_1898,c_308]) ).
% 1.59/1.01  
% 1.59/1.01  cnf(contradiction,plain,
% 1.59/1.01      ( $false ),
% 1.59/1.01      inference(minisat,[status(thm)],[c_2482,c_2054]) ).
% 1.59/1.01  
% 1.59/1.01  
% 1.59/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.59/1.01  
% 1.59/1.01  ------                               Statistics
% 1.59/1.01  
% 1.59/1.01  ------ General
% 1.59/1.01  
% 1.59/1.01  abstr_ref_over_cycles:                  0
% 1.59/1.01  abstr_ref_under_cycles:                 0
% 1.59/1.01  gc_basic_clause_elim:                   0
% 1.59/1.01  forced_gc_time:                         0
% 1.59/1.01  parsing_time:                           0.013
% 1.59/1.01  unif_index_cands_time:                  0.
% 1.59/1.01  unif_index_add_time:                    0.
% 1.59/1.01  orderings_time:                         0.
% 1.59/1.01  out_proof_time:                         0.009
% 1.59/1.01  total_time:                             0.087
% 1.59/1.01  num_of_symbols:                         49
% 1.59/1.01  num_of_terms:                           1587
% 1.59/1.01  
% 1.59/1.01  ------ Preprocessing
% 1.59/1.01  
% 1.59/1.01  num_of_splits:                          0
% 1.59/1.01  num_of_split_atoms:                     0
% 1.59/1.01  num_of_reused_defs:                     0
% 1.59/1.01  num_eq_ax_congr_red:                    14
% 1.59/1.01  num_of_sem_filtered_clauses:            1
% 1.59/1.01  num_of_subtypes:                        0
% 1.59/1.01  monotx_restored_types:                  0
% 1.59/1.01  sat_num_of_epr_types:                   0
% 1.59/1.01  sat_num_of_non_cyclic_types:            0
% 1.59/1.01  sat_guarded_non_collapsed_types:        0
% 1.59/1.01  num_pure_diseq_elim:                    0
% 1.59/1.01  simp_replaced_by:                       0
% 1.59/1.01  res_preprocessed:                       87
% 1.59/1.01  prep_upred:                             0
% 1.59/1.01  prep_unflattend:                        45
% 1.59/1.01  smt_new_axioms:                         0
% 1.59/1.01  pred_elim_cands:                        3
% 1.59/1.01  pred_elim:                              8
% 1.59/1.01  pred_elim_cl:                           10
% 1.59/1.01  pred_elim_cycles:                       12
% 1.59/1.01  merged_defs:                            0
% 1.59/1.01  merged_defs_ncl:                        0
% 1.59/1.01  bin_hyper_res:                          0
% 1.59/1.01  prep_cycles:                            4
% 1.59/1.01  pred_elim_time:                         0.009
% 1.59/1.01  splitting_time:                         0.
% 1.59/1.01  sem_filter_time:                        0.
% 1.59/1.01  monotx_time:                            0.
% 1.59/1.01  subtype_inf_time:                       0.
% 1.59/1.01  
% 1.59/1.01  ------ Problem properties
% 1.59/1.01  
% 1.59/1.01  clauses:                                15
% 1.59/1.01  conjectures:                            4
% 1.59/1.01  epr:                                    4
% 1.59/1.01  horn:                                   13
% 1.59/1.01  ground:                                 7
% 1.59/1.01  unary:                                  9
% 1.59/1.01  binary:                                 2
% 1.59/1.01  lits:                                   25
% 1.59/1.01  lits_eq:                                6
% 1.59/1.01  fd_pure:                                0
% 1.59/1.01  fd_pseudo:                              0
% 1.59/1.01  fd_cond:                                2
% 1.59/1.01  fd_pseudo_cond:                         0
% 1.59/1.01  ac_symbols:                             0
% 1.59/1.01  
% 1.59/1.01  ------ Propositional Solver
% 1.59/1.01  
% 1.59/1.01  prop_solver_calls:                      27
% 1.59/1.01  prop_fast_solver_calls:                 506
% 1.59/1.01  smt_solver_calls:                       0
% 1.59/1.01  smt_fast_solver_calls:                  0
% 1.59/1.01  prop_num_of_clauses:                    715
% 1.59/1.01  prop_preprocess_simplified:             2951
% 1.59/1.01  prop_fo_subsumed:                       8
% 1.59/1.01  prop_solver_time:                       0.
% 1.59/1.01  smt_solver_time:                        0.
% 1.59/1.01  smt_fast_solver_time:                   0.
% 1.59/1.01  prop_fast_solver_time:                  0.
% 1.59/1.01  prop_unsat_core_time:                   0.
% 1.59/1.01  
% 1.59/1.01  ------ QBF
% 1.59/1.01  
% 1.59/1.01  qbf_q_res:                              0
% 1.59/1.01  qbf_num_tautologies:                    0
% 1.59/1.01  qbf_prep_cycles:                        0
% 1.59/1.01  
% 1.59/1.01  ------ BMC1
% 1.59/1.01  
% 1.59/1.01  bmc1_current_bound:                     -1
% 1.59/1.01  bmc1_last_solved_bound:                 -1
% 1.59/1.01  bmc1_unsat_core_size:                   -1
% 1.59/1.01  bmc1_unsat_core_parents_size:           -1
% 1.59/1.01  bmc1_merge_next_fun:                    0
% 1.59/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.59/1.01  
% 1.59/1.01  ------ Instantiation
% 1.59/1.01  
% 1.59/1.01  inst_num_of_clauses:                    227
% 1.59/1.01  inst_num_in_passive:                    70
% 1.59/1.01  inst_num_in_active:                     132
% 1.59/1.01  inst_num_in_unprocessed:                25
% 1.59/1.01  inst_num_of_loops:                      140
% 1.59/1.01  inst_num_of_learning_restarts:          0
% 1.59/1.01  inst_num_moves_active_passive:          6
% 1.59/1.01  inst_lit_activity:                      0
% 1.59/1.01  inst_lit_activity_moves:                0
% 1.59/1.01  inst_num_tautologies:                   0
% 1.59/1.01  inst_num_prop_implied:                  0
% 1.59/1.01  inst_num_existing_simplified:           0
% 1.59/1.01  inst_num_eq_res_simplified:             0
% 1.59/1.01  inst_num_child_elim:                    0
% 1.59/1.01  inst_num_of_dismatching_blockings:      50
% 1.59/1.01  inst_num_of_non_proper_insts:           171
% 1.59/1.01  inst_num_of_duplicates:                 0
% 1.59/1.01  inst_inst_num_from_inst_to_res:         0
% 1.59/1.01  inst_dismatching_checking_time:         0.
% 1.59/1.01  
% 1.59/1.01  ------ Resolution
% 1.59/1.01  
% 1.59/1.01  res_num_of_clauses:                     0
% 1.59/1.01  res_num_in_passive:                     0
% 1.59/1.01  res_num_in_active:                      0
% 1.59/1.01  res_num_of_loops:                       91
% 1.59/1.01  res_forward_subset_subsumed:            17
% 1.59/1.01  res_backward_subset_subsumed:           0
% 1.59/1.01  res_forward_subsumed:                   0
% 1.59/1.01  res_backward_subsumed:                  0
% 1.59/1.01  res_forward_subsumption_resolution:     0
% 1.59/1.01  res_backward_subsumption_resolution:    0
% 1.59/1.01  res_clause_to_clause_subsumption:       57
% 1.59/1.01  res_orphan_elimination:                 0
% 1.59/1.01  res_tautology_del:                      22
% 1.59/1.01  res_num_eq_res_simplified:              0
% 1.59/1.01  res_num_sel_changes:                    0
% 1.59/1.01  res_moves_from_active_to_pass:          0
% 1.59/1.01  
% 1.59/1.01  ------ Superposition
% 1.59/1.01  
% 1.59/1.01  sup_time_total:                         0.
% 1.59/1.01  sup_time_generating:                    0.
% 1.59/1.01  sup_time_sim_full:                      0.
% 1.59/1.01  sup_time_sim_immed:                     0.
% 1.59/1.01  
% 1.59/1.01  sup_num_of_clauses:                     23
% 1.59/1.01  sup_num_in_active:                      19
% 1.59/1.01  sup_num_in_passive:                     4
% 1.59/1.01  sup_num_of_loops:                       27
% 1.59/1.01  sup_fw_superposition:                   9
% 1.59/1.01  sup_bw_superposition:                   8
% 1.59/1.01  sup_immediate_simplified:               3
% 1.59/1.01  sup_given_eliminated:                   0
% 1.59/1.01  comparisons_done:                       0
% 1.59/1.01  comparisons_avoided:                    0
% 1.59/1.01  
% 1.59/1.01  ------ Simplifications
% 1.59/1.01  
% 1.59/1.01  
% 1.59/1.01  sim_fw_subset_subsumed:                 2
% 1.59/1.01  sim_bw_subset_subsumed:                 0
% 1.59/1.01  sim_fw_subsumed:                        2
% 1.59/1.01  sim_bw_subsumed:                        0
% 1.59/1.01  sim_fw_subsumption_res:                 2
% 1.59/1.01  sim_bw_subsumption_res:                 0
% 1.59/1.01  sim_tautology_del:                      1
% 1.59/1.01  sim_eq_tautology_del:                   1
% 1.59/1.01  sim_eq_res_simp:                        0
% 1.59/1.01  sim_fw_demodulated:                     0
% 1.59/1.01  sim_bw_demodulated:                     9
% 1.59/1.01  sim_light_normalised:                   6
% 1.59/1.01  sim_joinable_taut:                      0
% 1.59/1.01  sim_joinable_simp:                      0
% 1.59/1.01  sim_ac_normalised:                      0
% 1.59/1.01  sim_smt_subsumption:                    0
% 1.59/1.01  
%------------------------------------------------------------------------------
