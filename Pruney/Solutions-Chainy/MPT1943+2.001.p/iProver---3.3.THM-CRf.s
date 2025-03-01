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
% DateTime   : Thu Dec  3 12:28:18 EST 2020

% Result     : Theorem 2.14s
% Output     : CNFRefutation 2.14s
% Verified   : 
% Statistics : Number of formulae       :  188 (1356 expanded)
%              Number of clauses        :  120 ( 281 expanded)
%              Number of leaves         :   16 ( 451 expanded)
%              Depth                    :   24
%              Number of atoms          : 1083 (10370 expanded)
%              Number of equality atoms :   87 ( 149 expanded)
%              Maximal formula depth    :   19 (   7 average)
%              Maximal clause size      :   24 (   5 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,axiom,(
    ! [X0,X1] :
      ( ( l1_waybel_0(X1,X0)
        & v7_waybel_0(X1)
        & v4_orders_2(X1)
        & ~ v2_struct_0(X1)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f21,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f55,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f9,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m2_yellow_6(X2,X0,X1)
             => r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_waybel_0(X1,X0)
              & v7_waybel_0(X1)
              & v4_orders_2(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( m2_yellow_6(X2,X0,X1)
               => r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) ) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2))
              & m2_yellow_6(X2,X0,X1) )
          & l1_waybel_0(X1,X0)
          & v7_waybel_0(X1)
          & v4_orders_2(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f27,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2))
              & m2_yellow_6(X2,X0,X1) )
          & l1_waybel_0(X1,X0)
          & v7_waybel_0(X1)
          & v4_orders_2(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2))
          & m2_yellow_6(X2,X0,X1) )
     => ( ~ r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,sK6))
        & m2_yellow_6(sK6,X0,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2))
              & m2_yellow_6(X2,X0,X1) )
          & l1_waybel_0(X1,X0)
          & v7_waybel_0(X1)
          & v4_orders_2(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ~ r1_tarski(k10_yellow_6(X0,sK5),k10_yellow_6(X0,X2))
            & m2_yellow_6(X2,X0,sK5) )
        & l1_waybel_0(sK5,X0)
        & v7_waybel_0(sK5)
        & v4_orders_2(sK5)
        & ~ v2_struct_0(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2))
                & m2_yellow_6(X2,X0,X1) )
            & l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k10_yellow_6(sK4,X1),k10_yellow_6(sK4,X2))
              & m2_yellow_6(X2,sK4,X1) )
          & l1_waybel_0(X1,sK4)
          & v7_waybel_0(X1)
          & v4_orders_2(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK4)
      & v2_pre_topc(sK4)
      & ~ v2_struct_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ~ r1_tarski(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))
    & m2_yellow_6(sK6,sK4,sK5)
    & l1_waybel_0(sK5,sK4)
    & v7_waybel_0(sK5)
    & v4_orders_2(sK5)
    & ~ v2_struct_0(sK5)
    & l1_pre_topc(sK4)
    & v2_pre_topc(sK4)
    & ~ v2_struct_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6])],[f27,f40,f39,f38])).

fof(f62,plain,(
    v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f61,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f63,plain,(
    l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( k10_yellow_6(X0,X1) = X2
              <=> ! [X3] :
                    ( m1_subset_1(X3,u1_struct_0(X0))
                   => ( r2_hidden(X3,X2)
                    <=> ! [X4] :
                          ( m1_connsp_2(X4,X0,X3)
                         => r1_waybel_0(X0,X1,X4) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k10_yellow_6(X0,X1) = X2
              <=> ! [X3] :
                    ( ( r2_hidden(X3,X2)
                    <=> ! [X4] :
                          ( r1_waybel_0(X0,X1,X4)
                          | ~ m1_connsp_2(X4,X0,X3) ) )
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k10_yellow_6(X0,X1) = X2
              <=> ! [X3] :
                    ( ( r2_hidden(X3,X2)
                    <=> ! [X4] :
                          ( r1_waybel_0(X0,X1,X4)
                          | ~ m1_connsp_2(X4,X0,X3) ) )
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k10_yellow_6(X0,X1) = X2
                  | ? [X3] :
                      ( ( ? [X4] :
                            ( ~ r1_waybel_0(X0,X1,X4)
                            & m1_connsp_2(X4,X0,X3) )
                        | ~ r2_hidden(X3,X2) )
                      & ( ! [X4] :
                            ( r1_waybel_0(X0,X1,X4)
                            | ~ m1_connsp_2(X4,X0,X3) )
                        | r2_hidden(X3,X2) )
                      & m1_subset_1(X3,u1_struct_0(X0)) ) )
                & ( ! [X3] :
                      ( ( ( r2_hidden(X3,X2)
                          | ? [X4] :
                              ( ~ r1_waybel_0(X0,X1,X4)
                              & m1_connsp_2(X4,X0,X3) ) )
                        & ( ! [X4] :
                              ( r1_waybel_0(X0,X1,X4)
                              | ~ m1_connsp_2(X4,X0,X3) )
                          | ~ r2_hidden(X3,X2) ) )
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  | k10_yellow_6(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k10_yellow_6(X0,X1) = X2
                  | ? [X3] :
                      ( ( ? [X4] :
                            ( ~ r1_waybel_0(X0,X1,X4)
                            & m1_connsp_2(X4,X0,X3) )
                        | ~ r2_hidden(X3,X2) )
                      & ( ! [X4] :
                            ( r1_waybel_0(X0,X1,X4)
                            | ~ m1_connsp_2(X4,X0,X3) )
                        | r2_hidden(X3,X2) )
                      & m1_subset_1(X3,u1_struct_0(X0)) ) )
                & ( ! [X3] :
                      ( ( ( r2_hidden(X3,X2)
                          | ? [X4] :
                              ( ~ r1_waybel_0(X0,X1,X4)
                              & m1_connsp_2(X4,X0,X3) ) )
                        & ( ! [X4] :
                              ( r1_waybel_0(X0,X1,X4)
                              | ~ m1_connsp_2(X4,X0,X3) )
                          | ~ r2_hidden(X3,X2) ) )
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  | k10_yellow_6(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k10_yellow_6(X0,X1) = X2
                  | ? [X3] :
                      ( ( ? [X4] :
                            ( ~ r1_waybel_0(X0,X1,X4)
                            & m1_connsp_2(X4,X0,X3) )
                        | ~ r2_hidden(X3,X2) )
                      & ( ! [X5] :
                            ( r1_waybel_0(X0,X1,X5)
                            | ~ m1_connsp_2(X5,X0,X3) )
                        | r2_hidden(X3,X2) )
                      & m1_subset_1(X3,u1_struct_0(X0)) ) )
                & ( ! [X6] :
                      ( ( ( r2_hidden(X6,X2)
                          | ? [X7] :
                              ( ~ r1_waybel_0(X0,X1,X7)
                              & m1_connsp_2(X7,X0,X6) ) )
                        & ( ! [X8] :
                              ( r1_waybel_0(X0,X1,X8)
                              | ~ m1_connsp_2(X8,X0,X6) )
                          | ~ r2_hidden(X6,X2) ) )
                      | ~ m1_subset_1(X6,u1_struct_0(X0)) )
                  | k10_yellow_6(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f32])).

fof(f36,plain,(
    ! [X6,X1,X0] :
      ( ? [X7] :
          ( ~ r1_waybel_0(X0,X1,X7)
          & m1_connsp_2(X7,X0,X6) )
     => ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X6))
        & m1_connsp_2(sK3(X0,X1,X6),X0,X6) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ~ r1_waybel_0(X0,X1,X4)
          & m1_connsp_2(X4,X0,X3) )
     => ( ~ r1_waybel_0(X0,X1,sK2(X0,X1,X2))
        & m1_connsp_2(sK2(X0,X1,X2),X0,X3) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ? [X4] :
                ( ~ r1_waybel_0(X0,X1,X4)
                & m1_connsp_2(X4,X0,X3) )
            | ~ r2_hidden(X3,X2) )
          & ( ! [X5] :
                ( r1_waybel_0(X0,X1,X5)
                | ~ m1_connsp_2(X5,X0,X3) )
            | r2_hidden(X3,X2) )
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ( ? [X4] :
              ( ~ r1_waybel_0(X0,X1,X4)
              & m1_connsp_2(X4,X0,sK1(X0,X1,X2)) )
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( ! [X5] :
              ( r1_waybel_0(X0,X1,X5)
              | ~ m1_connsp_2(X5,X0,sK1(X0,X1,X2)) )
          | r2_hidden(sK1(X0,X1,X2),X2) )
        & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k10_yellow_6(X0,X1) = X2
                  | ( ( ( ~ r1_waybel_0(X0,X1,sK2(X0,X1,X2))
                        & m1_connsp_2(sK2(X0,X1,X2),X0,sK1(X0,X1,X2)) )
                      | ~ r2_hidden(sK1(X0,X1,X2),X2) )
                    & ( ! [X5] :
                          ( r1_waybel_0(X0,X1,X5)
                          | ~ m1_connsp_2(X5,X0,sK1(X0,X1,X2)) )
                      | r2_hidden(sK1(X0,X1,X2),X2) )
                    & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) )
                & ( ! [X6] :
                      ( ( ( r2_hidden(X6,X2)
                          | ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X6))
                            & m1_connsp_2(sK3(X0,X1,X6),X0,X6) ) )
                        & ( ! [X8] :
                              ( r1_waybel_0(X0,X1,X8)
                              | ~ m1_connsp_2(X8,X0,X6) )
                          | ~ r2_hidden(X6,X2) ) )
                      | ~ m1_subset_1(X6,u1_struct_0(X0)) )
                  | k10_yellow_6(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f33,f36,f35,f34])).

fof(f49,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_hidden(X6,X2)
      | m1_connsp_2(sK3(X0,X1,X6),X0,X6)
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | k10_yellow_6(X0,X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f71,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(X6,k10_yellow_6(X0,X1))
      | m1_connsp_2(sK3(X0,X1,X6),X0,X6)
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f49])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( l1_waybel_0(X1,X0)
        & v7_waybel_0(X1)
        & v4_orders_2(X1)
        & ~ v2_struct_0(X1)
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X2] :
          ( m2_yellow_6(X2,X0,X1)
         => ( l1_waybel_0(X2,X0)
            & v7_waybel_0(X2)
            & v4_orders_2(X2)
            & ~ v2_struct_0(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( l1_waybel_0(X2,X0)
            & v7_waybel_0(X2)
            & v4_orders_2(X2)
            & ~ v2_struct_0(X2) )
          | ~ m2_yellow_6(X2,X0,X1) )
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( l1_waybel_0(X2,X0)
            & v7_waybel_0(X2)
            & v4_orders_2(X2)
            & ~ v2_struct_0(X2) )
          | ~ m2_yellow_6(X2,X0,X1) )
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( v7_waybel_0(X2)
      | ~ m2_yellow_6(X2,X0,X1)
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f68,plain,(
    m2_yellow_6(sK6,sK4,sK5) ),
    inference(cnf_transformation,[],[f41])).

fof(f64,plain,(
    ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f41])).

fof(f65,plain,(
    v4_orders_2(sK5) ),
    inference(cnf_transformation,[],[f41])).

fof(f66,plain,(
    v7_waybel_0(sK5) ),
    inference(cnf_transformation,[],[f41])).

fof(f67,plain,(
    l1_waybel_0(sK5,sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f45,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ v2_struct_0(X2)
      | ~ m2_yellow_6(X2,X0,X1)
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( v4_orders_2(X2)
      | ~ m2_yellow_6(X2,X0,X1)
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( l1_waybel_0(X2,X0)
      | ~ m2_yellow_6(X2,X0,X1)
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) )
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f12,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f28,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f28])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f69,plain,(
    ~ r1_tarski(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)) ),
    inference(cnf_transformation,[],[f41])).

fof(f48,plain,(
    ! [X6,X2,X0,X8,X1] :
      ( r1_waybel_0(X0,X1,X8)
      | ~ m1_connsp_2(X8,X0,X6)
      | ~ r2_hidden(X6,X2)
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | k10_yellow_6(X0,X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f72,plain,(
    ! [X6,X0,X8,X1] :
      ( r1_waybel_0(X0,X1,X8)
      | ~ m1_connsp_2(X8,X0,X6)
      | ~ r2_hidden(X6,k10_yellow_6(X0,X1))
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f48])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f13])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( r1_waybel_0(X0,X1,X2)
            <=> ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_waybel_0(X0,X1,X2)
            <=> ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_waybel_0(X0,X1,X2)
            <=> ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_waybel_0(X0,X1,X2)
                | r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) )
              & ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
                | ~ r1_waybel_0(X0,X1,X2) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
      | ~ r1_waybel_0(X0,X1,X2)
      | ~ l1_waybel_0(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m2_yellow_6(X2,X0,X1)
             => ! [X3] :
                  ( r2_waybel_0(X0,X2,X3)
                 => r2_waybel_0(X0,X1,X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( r2_waybel_0(X0,X1,X3)
                  | ~ r2_waybel_0(X0,X2,X3) )
              | ~ m2_yellow_6(X2,X0,X1) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( r2_waybel_0(X0,X1,X3)
                  | ~ r2_waybel_0(X0,X2,X3) )
              | ~ m2_yellow_6(X2,X0,X1) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_waybel_0(X0,X1,X3)
      | ~ r2_waybel_0(X0,X2,X3)
      | ~ m2_yellow_6(X2,X0,X1)
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( r1_waybel_0(X0,X1,X2)
      | r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
      | ~ l1_waybel_0(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f50,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_hidden(X6,X2)
      | ~ r1_waybel_0(X0,X1,sK3(X0,X1,X6))
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | k10_yellow_6(X0,X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f70,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(X6,k10_yellow_6(X0,X1))
      | ~ r1_waybel_0(X0,X1,sK3(X0,X1,X6))
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f50])).

cnf(c_13,plain,
    ( ~ l1_waybel_0(X0,X1)
    | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_26,negated_conjecture,
    ( v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_597,plain,
    ( ~ l1_waybel_0(X0,X1)
    | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_26])).

cnf(c_598,plain,
    ( ~ l1_waybel_0(X0,sK4)
    | m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_597])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_602,plain,
    ( ~ l1_waybel_0(X0,sK4)
    | m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_598,c_27,c_25])).

cnf(c_11,plain,
    ( m1_connsp_2(sK3(X0,X1,X2),X0,X2)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | r2_hidden(X2,k10_yellow_6(X0,X1))
    | ~ v2_pre_topc(X0)
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_453,plain,
    ( m1_connsp_2(sK3(X0,X1,X2),X0,X2)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | r2_hidden(X2,k10_yellow_6(X0,X1))
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_26])).

cnf(c_454,plain,
    ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_453])).

cnf(c_458,plain,
    ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_454,c_27,c_25])).

cnf(c_620,plain,
    ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_602,c_458])).

cnf(c_15,plain,
    ( ~ m2_yellow_6(X0,X1,X2)
    | ~ l1_waybel_0(X2,X1)
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | v7_waybel_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_20,negated_conjecture,
    ( m2_yellow_6(sK6,sK4,sK5) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_360,plain,
    ( ~ l1_waybel_0(X0,X1)
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v7_waybel_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_struct_0(X1)
    | sK6 != X2
    | sK5 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_20])).

cnf(c_361,plain,
    ( ~ l1_waybel_0(sK5,sK4)
    | ~ v4_orders_2(sK5)
    | v7_waybel_0(sK6)
    | ~ v7_waybel_0(sK5)
    | v2_struct_0(sK5)
    | v2_struct_0(sK4)
    | ~ l1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_360])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_23,negated_conjecture,
    ( v4_orders_2(sK5) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_22,negated_conjecture,
    ( v7_waybel_0(sK5) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_21,negated_conjecture,
    ( l1_waybel_0(sK5,sK4) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_3,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_73,plain,
    ( ~ l1_pre_topc(sK4)
    | l1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_363,plain,
    ( v7_waybel_0(sK6) ),
    inference(global_propositional_subsumption,[status(thm)],[c_361,c_27,c_25,c_24,c_23,c_22,c_21,c_73])).

cnf(c_1645,plain,
    ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | v2_struct_0(X0)
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_620,c_363])).

cnf(c_1646,plain,
    ( m1_connsp_2(sK3(sK4,sK6,X0),sK4,X0)
    | ~ l1_waybel_0(sK6,sK4)
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | r2_hidden(X0,k10_yellow_6(sK4,sK6))
    | ~ v4_orders_2(sK6)
    | v2_struct_0(sK6) ),
    inference(unflattening,[status(thm)],[c_1645])).

cnf(c_17,plain,
    ( ~ m2_yellow_6(X0,X1,X2)
    | ~ l1_waybel_0(X2,X1)
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | ~ v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_338,plain,
    ( ~ l1_waybel_0(X0,X1)
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | ~ v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_struct_0(X1)
    | sK6 != X2
    | sK5 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_20])).

cnf(c_339,plain,
    ( ~ l1_waybel_0(sK5,sK4)
    | ~ v4_orders_2(sK5)
    | ~ v7_waybel_0(sK5)
    | ~ v2_struct_0(sK6)
    | v2_struct_0(sK5)
    | v2_struct_0(sK4)
    | ~ l1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_338])).

cnf(c_16,plain,
    ( ~ m2_yellow_6(X0,X1,X2)
    | ~ l1_waybel_0(X2,X1)
    | ~ v4_orders_2(X2)
    | v4_orders_2(X0)
    | ~ v7_waybel_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_349,plain,
    ( ~ l1_waybel_0(X0,X1)
    | ~ v4_orders_2(X0)
    | v4_orders_2(X2)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_struct_0(X1)
    | sK6 != X2
    | sK5 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_20])).

cnf(c_350,plain,
    ( ~ l1_waybel_0(sK5,sK4)
    | v4_orders_2(sK6)
    | ~ v4_orders_2(sK5)
    | ~ v7_waybel_0(sK5)
    | v2_struct_0(sK5)
    | v2_struct_0(sK4)
    | ~ l1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_349])).

cnf(c_14,plain,
    ( ~ m2_yellow_6(X0,X1,X2)
    | ~ l1_waybel_0(X2,X1)
    | l1_waybel_0(X0,X1)
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_371,plain,
    ( ~ l1_waybel_0(X0,X1)
    | l1_waybel_0(X2,X1)
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_struct_0(X1)
    | sK6 != X2
    | sK5 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_20])).

cnf(c_372,plain,
    ( l1_waybel_0(sK6,sK4)
    | ~ l1_waybel_0(sK5,sK4)
    | ~ v4_orders_2(sK5)
    | ~ v7_waybel_0(sK5)
    | v2_struct_0(sK5)
    | v2_struct_0(sK4)
    | ~ l1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_371])).

cnf(c_1650,plain,
    ( m1_connsp_2(sK3(sK4,sK6,X0),sK4,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | r2_hidden(X0,k10_yellow_6(sK4,sK6)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1646,c_27,c_25,c_24,c_23,c_22,c_21,c_73,c_339,c_350,c_372])).

cnf(c_6767,plain,
    ( m1_connsp_2(sK3(sK4,sK6,X0_58),sK4,X0_58)
    | ~ m1_subset_1(X0_58,u1_struct_0(sK4))
    | r2_hidden(X0_58,k10_yellow_6(sK4,sK6)) ),
    inference(subtyping,[status(esa)],[c_1650])).

cnf(c_7425,plain,
    ( m1_connsp_2(sK3(sK4,sK6,X0_58),sK4,X0_58) = iProver_top
    | m1_subset_1(X0_58,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X0_58,k10_yellow_6(sK4,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6767])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_19,negated_conjecture,
    ( ~ r1_tarski(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_302,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | k10_yellow_6(sK4,sK6) != X1
    | k10_yellow_6(sK4,sK5) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_19])).

cnf(c_303,plain,
    ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
    inference(unflattening,[status(thm)],[c_302])).

cnf(c_6782,plain,
    ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
    inference(subtyping,[status(esa)],[c_303])).

cnf(c_7410,plain,
    ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6782])).

cnf(c_12,plain,
    ( ~ m1_connsp_2(X0,X1,X2)
    | r1_waybel_0(X1,X3,X0)
    | ~ l1_waybel_0(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(k10_yellow_6(X1,X3),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,k10_yellow_6(X1,X3))
    | ~ v2_pre_topc(X1)
    | ~ v4_orders_2(X3)
    | ~ v7_waybel_0(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_632,plain,
    ( ~ m1_connsp_2(X0,X1,X2)
    | r1_waybel_0(X1,X3,X0)
    | ~ l1_waybel_0(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(k10_yellow_6(X1,X3),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,k10_yellow_6(X1,X3))
    | ~ v4_orders_2(X3)
    | ~ v7_waybel_0(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_26])).

cnf(c_633,plain,
    ( ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,X2,X0)
    | ~ l1_waybel_0(X2,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(k10_yellow_6(sK4,X2),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | v2_struct_0(X2)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_632])).

cnf(c_637,plain,
    ( ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,X2,X0)
    | ~ l1_waybel_0(X2,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(k10_yellow_6(sK4,X2),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | v2_struct_0(X2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_633,c_27,c_25])).

cnf(c_652,plain,
    ( ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,X2,X0)
    | ~ l1_waybel_0(X2,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | v2_struct_0(X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_637,c_602])).

cnf(c_1433,plain,
    ( ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,X2,X0)
    | ~ l1_waybel_0(X2,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
    | ~ v4_orders_2(X2)
    | v2_struct_0(X2)
    | sK5 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_652,c_22])).

cnf(c_1434,plain,
    ( ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,sK5,X0)
    | ~ l1_waybel_0(sK5,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,sK5))
    | ~ v4_orders_2(sK5)
    | v2_struct_0(sK5) ),
    inference(unflattening,[status(thm)],[c_1433])).

cnf(c_1438,plain,
    ( r1_waybel_0(sK4,sK5,X0)
    | ~ m1_connsp_2(X0,sK4,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,sK5)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1434,c_24,c_23,c_21])).

cnf(c_1439,plain,
    ( ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,sK5,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,sK5)) ),
    inference(renaming,[status(thm)],[c_1438])).

cnf(c_6777,plain,
    ( ~ m1_connsp_2(X0_57,sK4,X0_58)
    | r1_waybel_0(sK4,sK5,X0_57)
    | ~ m1_subset_1(X0_58,u1_struct_0(sK4))
    | ~ r2_hidden(X0_58,k10_yellow_6(sK4,sK5)) ),
    inference(subtyping,[status(esa)],[c_1439])).

cnf(c_7415,plain,
    ( m1_connsp_2(X0_57,sK4,X0_58) != iProver_top
    | r1_waybel_0(sK4,sK5,X0_57) = iProver_top
    | m1_subset_1(X0_58,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X0_58,k10_yellow_6(sK4,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6777])).

cnf(c_7693,plain,
    ( m1_connsp_2(X0_57,sK4,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))) != iProver_top
    | r1_waybel_0(sK4,sK5,X0_57) = iProver_top
    | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7410,c_7415])).

cnf(c_31,plain,
    ( v2_struct_0(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_32,plain,
    ( v4_orders_2(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_34,plain,
    ( l1_waybel_0(sK5,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_304,plain,
    ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_303])).

cnf(c_1544,plain,
    ( ~ l1_waybel_0(X0,sK4)
    | m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v4_orders_2(X0)
    | v2_struct_0(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_602,c_22])).

cnf(c_1545,plain,
    ( ~ l1_waybel_0(sK5,sK4)
    | m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ v4_orders_2(sK5)
    | v2_struct_0(sK5) ),
    inference(unflattening,[status(thm)],[c_1544])).

cnf(c_1546,plain,
    ( l1_waybel_0(sK5,sK4) != iProver_top
    | m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | v4_orders_2(sK5) != iProver_top
    | v2_struct_0(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1545])).

cnf(c_2,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_6783,plain,
    ( m1_subset_1(X0_58,X0_56)
    | ~ m1_subset_1(X1_58,k1_zfmisc_1(X0_56))
    | ~ r2_hidden(X0_58,X1_58) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_7669,plain,
    ( ~ m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(X0_56))
    | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),X0_56)
    | ~ r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_6783])).

cnf(c_7732,plain,
    ( ~ m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
    | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4))
    | ~ r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_7669])).

cnf(c_7737,plain,
    ( m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) = iProver_top
    | r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7732])).

cnf(c_8025,plain,
    ( r1_waybel_0(sK4,sK5,X0_57) = iProver_top
    | m1_connsp_2(X0_57,sK4,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7693,c_31,c_32,c_34,c_304,c_1546,c_7737])).

cnf(c_8026,plain,
    ( m1_connsp_2(X0_57,sK4,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))) != iProver_top
    | r1_waybel_0(sK4,sK5,X0_57) = iProver_top ),
    inference(renaming,[status(thm)],[c_8025])).

cnf(c_8262,plain,
    ( r1_waybel_0(sK4,sK5,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) = iProver_top
    | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) != iProver_top
    | r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK6)) = iProver_top ),
    inference(superposition,[status(thm)],[c_7425,c_8026])).

cnf(c_5,plain,
    ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | ~ r1_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_393,plain,
    ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | ~ r1_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_3,c_5])).

cnf(c_833,plain,
    ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | ~ r1_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_393,c_25])).

cnf(c_834,plain,
    ( ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
    | ~ r1_waybel_0(sK4,X0,X1)
    | ~ l1_waybel_0(X0,sK4)
    | v2_struct_0(X0)
    | v2_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_833])).

cnf(c_838,plain,
    ( v2_struct_0(X0)
    | ~ l1_waybel_0(X0,sK4)
    | ~ r1_waybel_0(sK4,X0,X1)
    | ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_834,c_27])).

cnf(c_839,plain,
    ( ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
    | ~ r1_waybel_0(sK4,X0,X1)
    | ~ l1_waybel_0(X0,sK4)
    | v2_struct_0(X0) ),
    inference(renaming,[status(thm)],[c_838])).

cnf(c_1795,plain,
    ( ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
    | ~ r1_waybel_0(sK4,X0,X1)
    | v2_struct_0(X0)
    | sK5 != X0
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_839])).

cnf(c_1796,plain,
    ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0))
    | ~ r1_waybel_0(sK4,sK5,X0)
    | v2_struct_0(sK5) ),
    inference(unflattening,[status(thm)],[c_1795])).

cnf(c_4366,plain,
    ( ~ r1_waybel_0(sK4,sK5,X0)
    | ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0)) ),
    inference(prop_impl,[status(thm)],[c_24,c_1796])).

cnf(c_4367,plain,
    ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0))
    | ~ r1_waybel_0(sK4,sK5,X0) ),
    inference(renaming,[status(thm)],[c_4366])).

cnf(c_6763,plain,
    ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0_57))
    | ~ r1_waybel_0(sK4,sK5,X0_57) ),
    inference(subtyping,[status(esa)],[c_4367])).

cnf(c_8056,plain,
    ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))))
    | ~ r1_waybel_0(sK4,sK5,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) ),
    inference(instantiation,[status(thm)],[c_6763])).

cnf(c_8057,plain,
    ( r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) != iProver_top
    | r1_waybel_0(sK4,sK5,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8056])).

cnf(c_18,plain,
    ( ~ m2_yellow_6(X0,X1,X2)
    | ~ r2_waybel_0(X1,X0,X3)
    | r2_waybel_0(X1,X2,X3)
    | ~ l1_waybel_0(X2,X1)
    | ~ v4_orders_2(X2)
    | ~ v7_waybel_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_320,plain,
    ( ~ r2_waybel_0(X0,X1,X2)
    | r2_waybel_0(X0,X3,X2)
    | ~ l1_waybel_0(X3,X0)
    | ~ v4_orders_2(X3)
    | ~ v7_waybel_0(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | ~ l1_struct_0(X0)
    | sK6 != X1
    | sK5 != X3
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_20])).

cnf(c_321,plain,
    ( ~ r2_waybel_0(sK4,sK6,X0)
    | r2_waybel_0(sK4,sK5,X0)
    | ~ l1_waybel_0(sK5,sK4)
    | ~ v4_orders_2(sK5)
    | ~ v7_waybel_0(sK5)
    | v2_struct_0(sK5)
    | v2_struct_0(sK4)
    | ~ l1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_320])).

cnf(c_325,plain,
    ( ~ r2_waybel_0(sK4,sK6,X0)
    | r2_waybel_0(sK4,sK5,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_321,c_27,c_25,c_24,c_23,c_22,c_21,c_73])).

cnf(c_6780,plain,
    ( ~ r2_waybel_0(sK4,sK6,X0_55)
    | r2_waybel_0(sK4,sK5,X0_55) ),
    inference(subtyping,[status(esa)],[c_325])).

cnf(c_7957,plain,
    ( ~ r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))))
    | r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) ),
    inference(instantiation,[status(thm)],[c_6780])).

cnf(c_7958,plain,
    ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) != iProver_top
    | r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7957])).

cnf(c_374,plain,
    ( l1_waybel_0(sK6,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_372,c_27,c_25,c_24,c_23,c_22,c_21,c_73])).

cnf(c_4,plain,
    ( r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | r1_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_416,plain,
    ( r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | r1_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_3,c_4])).

cnf(c_811,plain,
    ( r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | r1_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_416,c_25])).

cnf(c_812,plain,
    ( r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
    | r1_waybel_0(sK4,X0,X1)
    | ~ l1_waybel_0(X0,sK4)
    | v2_struct_0(X0)
    | v2_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_811])).

cnf(c_816,plain,
    ( v2_struct_0(X0)
    | ~ l1_waybel_0(X0,sK4)
    | r1_waybel_0(sK4,X0,X1)
    | r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_812,c_27])).

cnf(c_817,plain,
    ( r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
    | r1_waybel_0(sK4,X0,X1)
    | ~ l1_waybel_0(X0,sK4)
    | v2_struct_0(X0) ),
    inference(renaming,[status(thm)],[c_816])).

cnf(c_1849,plain,
    ( r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
    | r1_waybel_0(sK4,X0,X1)
    | v2_struct_0(X0)
    | sK6 != X0
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_374,c_817])).

cnf(c_1850,plain,
    ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0))
    | r1_waybel_0(sK4,sK6,X0)
    | v2_struct_0(sK6) ),
    inference(unflattening,[status(thm)],[c_1849])).

cnf(c_4372,plain,
    ( r1_waybel_0(sK4,sK6,X0)
    | r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0)) ),
    inference(prop_impl,[status(thm)],[c_27,c_25,c_24,c_23,c_22,c_21,c_73,c_339,c_1850])).

cnf(c_4373,plain,
    ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0))
    | r1_waybel_0(sK4,sK6,X0) ),
    inference(renaming,[status(thm)],[c_4372])).

cnf(c_6760,plain,
    ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0_57))
    | r1_waybel_0(sK4,sK6,X0_57) ),
    inference(subtyping,[status(esa)],[c_4373])).

cnf(c_7860,plain,
    ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))))
    | r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) ),
    inference(instantiation,[status(thm)],[c_6760])).

cnf(c_7861,plain,
    ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) = iProver_top
    | r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7860])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_309,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | k10_yellow_6(sK4,sK6) != X1
    | k10_yellow_6(sK4,sK5) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_19])).

cnf(c_310,plain,
    ( ~ r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK6)) ),
    inference(unflattening,[status(thm)],[c_309])).

cnf(c_10,plain,
    ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X2))
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | r2_hidden(X2,k10_yellow_6(X0,X1))
    | ~ v2_pre_topc(X0)
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_489,plain,
    ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X2))
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | r2_hidden(X2,k10_yellow_6(X0,X1))
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_26])).

cnf(c_490,plain,
    ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_489])).

cnf(c_494,plain,
    ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_490,c_27,c_25])).

cnf(c_621,plain,
    ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_602,c_494])).

cnf(c_1624,plain,
    ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
    | ~ l1_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r2_hidden(X1,k10_yellow_6(sK4,X0))
    | ~ v4_orders_2(X0)
    | v2_struct_0(X0)
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_621,c_363])).

cnf(c_1625,plain,
    ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,X0))
    | ~ l1_waybel_0(sK6,sK4)
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | r2_hidden(X0,k10_yellow_6(sK4,sK6))
    | ~ v4_orders_2(sK6)
    | v2_struct_0(sK6) ),
    inference(unflattening,[status(thm)],[c_1624])).

cnf(c_1629,plain,
    ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,X0))
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | r2_hidden(X0,k10_yellow_6(sK4,sK6)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1625,c_27,c_25,c_24,c_23,c_22,c_21,c_73,c_339,c_350,c_372])).

cnf(c_3504,plain,
    ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,X0))
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | k10_yellow_6(sK4,sK6) != k10_yellow_6(sK4,sK6)
    | sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_310,c_1629])).

cnf(c_3505,plain,
    ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))
    | ~ m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) ),
    inference(unflattening,[status(thm)],[c_3504])).

cnf(c_3506,plain,
    ( r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) != iProver_top
    | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3505])).

cnf(c_311,plain,
    ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_310])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8262,c_8057,c_7958,c_7861,c_7737,c_3506,c_1546,c_311,c_304,c_34,c_32,c_31])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n013.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 20:30:24 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.14/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.14/0.99  
% 2.14/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.14/0.99  
% 2.14/0.99  ------  iProver source info
% 2.14/0.99  
% 2.14/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.14/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.14/0.99  git: non_committed_changes: false
% 2.14/0.99  git: last_make_outside_of_git: false
% 2.14/0.99  
% 2.14/0.99  ------ 
% 2.14/0.99  
% 2.14/0.99  ------ Input Options
% 2.14/0.99  
% 2.14/0.99  --out_options                           all
% 2.14/0.99  --tptp_safe_out                         true
% 2.14/0.99  --problem_path                          ""
% 2.14/0.99  --include_path                          ""
% 2.14/0.99  --clausifier                            res/vclausify_rel
% 2.14/0.99  --clausifier_options                    --mode clausify
% 2.14/0.99  --stdin                                 false
% 2.14/0.99  --stats_out                             all
% 2.14/0.99  
% 2.14/0.99  ------ General Options
% 2.14/0.99  
% 2.14/0.99  --fof                                   false
% 2.14/0.99  --time_out_real                         305.
% 2.14/0.99  --time_out_virtual                      -1.
% 2.14/0.99  --symbol_type_check                     false
% 2.14/0.99  --clausify_out                          false
% 2.14/0.99  --sig_cnt_out                           false
% 2.14/0.99  --trig_cnt_out                          false
% 2.14/0.99  --trig_cnt_out_tolerance                1.
% 2.14/0.99  --trig_cnt_out_sk_spl                   false
% 2.14/0.99  --abstr_cl_out                          false
% 2.14/0.99  
% 2.14/0.99  ------ Global Options
% 2.14/0.99  
% 2.14/0.99  --schedule                              default
% 2.14/0.99  --add_important_lit                     false
% 2.14/0.99  --prop_solver_per_cl                    1000
% 2.14/0.99  --min_unsat_core                        false
% 2.14/0.99  --soft_assumptions                      false
% 2.14/0.99  --soft_lemma_size                       3
% 2.14/0.99  --prop_impl_unit_size                   0
% 2.14/0.99  --prop_impl_unit                        []
% 2.14/0.99  --share_sel_clauses                     true
% 2.14/0.99  --reset_solvers                         false
% 2.14/0.99  --bc_imp_inh                            [conj_cone]
% 2.14/0.99  --conj_cone_tolerance                   3.
% 2.14/0.99  --extra_neg_conj                        none
% 2.14/0.99  --large_theory_mode                     true
% 2.14/0.99  --prolific_symb_bound                   200
% 2.14/0.99  --lt_threshold                          2000
% 2.14/0.99  --clause_weak_htbl                      true
% 2.14/0.99  --gc_record_bc_elim                     false
% 2.14/0.99  
% 2.14/0.99  ------ Preprocessing Options
% 2.14/0.99  
% 2.14/0.99  --preprocessing_flag                    true
% 2.14/0.99  --time_out_prep_mult                    0.1
% 2.14/0.99  --splitting_mode                        input
% 2.14/0.99  --splitting_grd                         true
% 2.14/0.99  --splitting_cvd                         false
% 2.14/0.99  --splitting_cvd_svl                     false
% 2.14/0.99  --splitting_nvd                         32
% 2.14/0.99  --sub_typing                            true
% 2.14/0.99  --prep_gs_sim                           true
% 2.14/0.99  --prep_unflatten                        true
% 2.14/0.99  --prep_res_sim                          true
% 2.14/0.99  --prep_upred                            true
% 2.14/0.99  --prep_sem_filter                       exhaustive
% 2.14/0.99  --prep_sem_filter_out                   false
% 2.14/0.99  --pred_elim                             true
% 2.14/0.99  --res_sim_input                         true
% 2.14/0.99  --eq_ax_congr_red                       true
% 2.14/0.99  --pure_diseq_elim                       true
% 2.14/0.99  --brand_transform                       false
% 2.14/0.99  --non_eq_to_eq                          false
% 2.14/0.99  --prep_def_merge                        true
% 2.14/0.99  --prep_def_merge_prop_impl              false
% 2.14/0.99  --prep_def_merge_mbd                    true
% 2.14/0.99  --prep_def_merge_tr_red                 false
% 2.14/0.99  --prep_def_merge_tr_cl                  false
% 2.14/0.99  --smt_preprocessing                     true
% 2.14/0.99  --smt_ac_axioms                         fast
% 2.14/0.99  --preprocessed_out                      false
% 2.14/0.99  --preprocessed_stats                    false
% 2.14/0.99  
% 2.14/0.99  ------ Abstraction refinement Options
% 2.14/0.99  
% 2.14/0.99  --abstr_ref                             []
% 2.14/0.99  --abstr_ref_prep                        false
% 2.14/0.99  --abstr_ref_until_sat                   false
% 2.14/0.99  --abstr_ref_sig_restrict                funpre
% 2.14/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.14/0.99  --abstr_ref_under                       []
% 2.14/0.99  
% 2.14/0.99  ------ SAT Options
% 2.14/0.99  
% 2.14/0.99  --sat_mode                              false
% 2.14/0.99  --sat_fm_restart_options                ""
% 2.14/0.99  --sat_gr_def                            false
% 2.14/0.99  --sat_epr_types                         true
% 2.14/0.99  --sat_non_cyclic_types                  false
% 2.14/0.99  --sat_finite_models                     false
% 2.14/0.99  --sat_fm_lemmas                         false
% 2.14/0.99  --sat_fm_prep                           false
% 2.14/0.99  --sat_fm_uc_incr                        true
% 2.14/0.99  --sat_out_model                         small
% 2.14/0.99  --sat_out_clauses                       false
% 2.14/0.99  
% 2.14/0.99  ------ QBF Options
% 2.14/0.99  
% 2.14/0.99  --qbf_mode                              false
% 2.14/0.99  --qbf_elim_univ                         false
% 2.14/0.99  --qbf_dom_inst                          none
% 2.14/0.99  --qbf_dom_pre_inst                      false
% 2.14/0.99  --qbf_sk_in                             false
% 2.14/0.99  --qbf_pred_elim                         true
% 2.14/0.99  --qbf_split                             512
% 2.14/0.99  
% 2.14/0.99  ------ BMC1 Options
% 2.14/0.99  
% 2.14/0.99  --bmc1_incremental                      false
% 2.14/0.99  --bmc1_axioms                           reachable_all
% 2.14/0.99  --bmc1_min_bound                        0
% 2.14/0.99  --bmc1_max_bound                        -1
% 2.14/0.99  --bmc1_max_bound_default                -1
% 2.14/0.99  --bmc1_symbol_reachability              true
% 2.14/0.99  --bmc1_property_lemmas                  false
% 2.14/0.99  --bmc1_k_induction                      false
% 2.14/0.99  --bmc1_non_equiv_states                 false
% 2.14/0.99  --bmc1_deadlock                         false
% 2.14/0.99  --bmc1_ucm                              false
% 2.14/0.99  --bmc1_add_unsat_core                   none
% 2.14/0.99  --bmc1_unsat_core_children              false
% 2.14/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.14/0.99  --bmc1_out_stat                         full
% 2.14/0.99  --bmc1_ground_init                      false
% 2.14/0.99  --bmc1_pre_inst_next_state              false
% 2.14/0.99  --bmc1_pre_inst_state                   false
% 2.14/0.99  --bmc1_pre_inst_reach_state             false
% 2.14/0.99  --bmc1_out_unsat_core                   false
% 2.14/0.99  --bmc1_aig_witness_out                  false
% 2.14/0.99  --bmc1_verbose                          false
% 2.14/0.99  --bmc1_dump_clauses_tptp                false
% 2.14/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.14/0.99  --bmc1_dump_file                        -
% 2.14/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.14/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.14/0.99  --bmc1_ucm_extend_mode                  1
% 2.14/0.99  --bmc1_ucm_init_mode                    2
% 2.14/0.99  --bmc1_ucm_cone_mode                    none
% 2.14/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.14/0.99  --bmc1_ucm_relax_model                  4
% 2.14/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.14/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.14/0.99  --bmc1_ucm_layered_model                none
% 2.14/0.99  --bmc1_ucm_max_lemma_size               10
% 2.14/0.99  
% 2.14/0.99  ------ AIG Options
% 2.14/0.99  
% 2.14/0.99  --aig_mode                              false
% 2.14/0.99  
% 2.14/0.99  ------ Instantiation Options
% 2.14/0.99  
% 2.14/0.99  --instantiation_flag                    true
% 2.14/0.99  --inst_sos_flag                         false
% 2.14/0.99  --inst_sos_phase                        true
% 2.14/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.14/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.14/0.99  --inst_lit_sel_side                     num_symb
% 2.14/0.99  --inst_solver_per_active                1400
% 2.14/0.99  --inst_solver_calls_frac                1.
% 2.14/0.99  --inst_passive_queue_type               priority_queues
% 2.14/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.14/0.99  --inst_passive_queues_freq              [25;2]
% 2.14/0.99  --inst_dismatching                      true
% 2.14/0.99  --inst_eager_unprocessed_to_passive     true
% 2.14/0.99  --inst_prop_sim_given                   true
% 2.14/0.99  --inst_prop_sim_new                     false
% 2.14/0.99  --inst_subs_new                         false
% 2.14/0.99  --inst_eq_res_simp                      false
% 2.14/0.99  --inst_subs_given                       false
% 2.14/0.99  --inst_orphan_elimination               true
% 2.14/0.99  --inst_learning_loop_flag               true
% 2.14/0.99  --inst_learning_start                   3000
% 2.14/0.99  --inst_learning_factor                  2
% 2.14/0.99  --inst_start_prop_sim_after_learn       3
% 2.14/0.99  --inst_sel_renew                        solver
% 2.14/0.99  --inst_lit_activity_flag                true
% 2.14/0.99  --inst_restr_to_given                   false
% 2.14/0.99  --inst_activity_threshold               500
% 2.14/0.99  --inst_out_proof                        true
% 2.14/0.99  
% 2.14/0.99  ------ Resolution Options
% 2.14/0.99  
% 2.14/0.99  --resolution_flag                       true
% 2.14/0.99  --res_lit_sel                           adaptive
% 2.14/0.99  --res_lit_sel_side                      none
% 2.14/0.99  --res_ordering                          kbo
% 2.14/0.99  --res_to_prop_solver                    active
% 2.14/0.99  --res_prop_simpl_new                    false
% 2.14/0.99  --res_prop_simpl_given                  true
% 2.14/0.99  --res_passive_queue_type                priority_queues
% 2.14/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.14/0.99  --res_passive_queues_freq               [15;5]
% 2.14/0.99  --res_forward_subs                      full
% 2.14/0.99  --res_backward_subs                     full
% 2.14/0.99  --res_forward_subs_resolution           true
% 2.14/0.99  --res_backward_subs_resolution          true
% 2.14/0.99  --res_orphan_elimination                true
% 2.14/0.99  --res_time_limit                        2.
% 2.14/0.99  --res_out_proof                         true
% 2.14/0.99  
% 2.14/0.99  ------ Superposition Options
% 2.14/0.99  
% 2.14/0.99  --superposition_flag                    true
% 2.14/0.99  --sup_passive_queue_type                priority_queues
% 2.14/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.14/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.14/0.99  --demod_completeness_check              fast
% 2.14/0.99  --demod_use_ground                      true
% 2.14/0.99  --sup_to_prop_solver                    passive
% 2.14/0.99  --sup_prop_simpl_new                    true
% 2.14/0.99  --sup_prop_simpl_given                  true
% 2.14/0.99  --sup_fun_splitting                     false
% 2.14/0.99  --sup_smt_interval                      50000
% 2.14/0.99  
% 2.14/0.99  ------ Superposition Simplification Setup
% 2.14/0.99  
% 2.14/0.99  --sup_indices_passive                   []
% 2.14/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.14/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.14/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.14/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.14/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.14/0.99  --sup_full_bw                           [BwDemod]
% 2.14/0.99  --sup_immed_triv                        [TrivRules]
% 2.14/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.14/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.14/0.99  --sup_immed_bw_main                     []
% 2.14/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.14/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.14/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.14/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.14/0.99  
% 2.14/0.99  ------ Combination Options
% 2.14/0.99  
% 2.14/0.99  --comb_res_mult                         3
% 2.14/0.99  --comb_sup_mult                         2
% 2.14/0.99  --comb_inst_mult                        10
% 2.14/0.99  
% 2.14/0.99  ------ Debug Options
% 2.14/0.99  
% 2.14/0.99  --dbg_backtrace                         false
% 2.14/0.99  --dbg_dump_prop_clauses                 false
% 2.14/0.99  --dbg_dump_prop_clauses_file            -
% 2.14/0.99  --dbg_out_stat                          false
% 2.14/0.99  ------ Parsing...
% 2.14/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.14/0.99  
% 2.14/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 9 0s  sf_e  pe_s  pe_e 
% 2.14/0.99  
% 2.14/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.14/0.99  
% 2.14/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.14/0.99  ------ Proving...
% 2.14/0.99  ------ Problem Properties 
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  clauses                                 24
% 2.14/0.99  conjectures                             0
% 2.14/0.99  EPR                                     1
% 2.14/0.99  Horn                                    14
% 2.14/0.99  unary                                   4
% 2.14/0.99  binary                                  5
% 2.14/0.99  lits                                    69
% 2.14/0.99  lits eq                                 8
% 2.14/0.99  fd_pure                                 0
% 2.14/0.99  fd_pseudo                               0
% 2.14/0.99  fd_cond                                 8
% 2.14/0.99  fd_pseudo_cond                          0
% 2.14/0.99  AC symbols                              0
% 2.14/0.99  
% 2.14/0.99  ------ Schedule dynamic 5 is on 
% 2.14/0.99  
% 2.14/0.99  ------ no conjectures: strip conj schedule 
% 2.14/0.99  
% 2.14/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  ------ 
% 2.14/0.99  Current options:
% 2.14/0.99  ------ 
% 2.14/0.99  
% 2.14/0.99  ------ Input Options
% 2.14/0.99  
% 2.14/0.99  --out_options                           all
% 2.14/0.99  --tptp_safe_out                         true
% 2.14/0.99  --problem_path                          ""
% 2.14/0.99  --include_path                          ""
% 2.14/0.99  --clausifier                            res/vclausify_rel
% 2.14/0.99  --clausifier_options                    --mode clausify
% 2.14/0.99  --stdin                                 false
% 2.14/0.99  --stats_out                             all
% 2.14/0.99  
% 2.14/0.99  ------ General Options
% 2.14/0.99  
% 2.14/0.99  --fof                                   false
% 2.14/0.99  --time_out_real                         305.
% 2.14/0.99  --time_out_virtual                      -1.
% 2.14/0.99  --symbol_type_check                     false
% 2.14/0.99  --clausify_out                          false
% 2.14/0.99  --sig_cnt_out                           false
% 2.14/0.99  --trig_cnt_out                          false
% 2.14/0.99  --trig_cnt_out_tolerance                1.
% 2.14/0.99  --trig_cnt_out_sk_spl                   false
% 2.14/0.99  --abstr_cl_out                          false
% 2.14/0.99  
% 2.14/0.99  ------ Global Options
% 2.14/0.99  
% 2.14/0.99  --schedule                              default
% 2.14/0.99  --add_important_lit                     false
% 2.14/0.99  --prop_solver_per_cl                    1000
% 2.14/0.99  --min_unsat_core                        false
% 2.14/0.99  --soft_assumptions                      false
% 2.14/0.99  --soft_lemma_size                       3
% 2.14/0.99  --prop_impl_unit_size                   0
% 2.14/0.99  --prop_impl_unit                        []
% 2.14/0.99  --share_sel_clauses                     true
% 2.14/0.99  --reset_solvers                         false
% 2.14/0.99  --bc_imp_inh                            [conj_cone]
% 2.14/0.99  --conj_cone_tolerance                   3.
% 2.14/0.99  --extra_neg_conj                        none
% 2.14/0.99  --large_theory_mode                     true
% 2.14/0.99  --prolific_symb_bound                   200
% 2.14/0.99  --lt_threshold                          2000
% 2.14/0.99  --clause_weak_htbl                      true
% 2.14/0.99  --gc_record_bc_elim                     false
% 2.14/0.99  
% 2.14/0.99  ------ Preprocessing Options
% 2.14/0.99  
% 2.14/0.99  --preprocessing_flag                    true
% 2.14/0.99  --time_out_prep_mult                    0.1
% 2.14/0.99  --splitting_mode                        input
% 2.14/0.99  --splitting_grd                         true
% 2.14/0.99  --splitting_cvd                         false
% 2.14/0.99  --splitting_cvd_svl                     false
% 2.14/0.99  --splitting_nvd                         32
% 2.14/0.99  --sub_typing                            true
% 2.14/0.99  --prep_gs_sim                           true
% 2.14/0.99  --prep_unflatten                        true
% 2.14/0.99  --prep_res_sim                          true
% 2.14/0.99  --prep_upred                            true
% 2.14/0.99  --prep_sem_filter                       exhaustive
% 2.14/0.99  --prep_sem_filter_out                   false
% 2.14/0.99  --pred_elim                             true
% 2.14/0.99  --res_sim_input                         true
% 2.14/0.99  --eq_ax_congr_red                       true
% 2.14/0.99  --pure_diseq_elim                       true
% 2.14/0.99  --brand_transform                       false
% 2.14/0.99  --non_eq_to_eq                          false
% 2.14/0.99  --prep_def_merge                        true
% 2.14/0.99  --prep_def_merge_prop_impl              false
% 2.14/0.99  --prep_def_merge_mbd                    true
% 2.14/0.99  --prep_def_merge_tr_red                 false
% 2.14/0.99  --prep_def_merge_tr_cl                  false
% 2.14/0.99  --smt_preprocessing                     true
% 2.14/0.99  --smt_ac_axioms                         fast
% 2.14/0.99  --preprocessed_out                      false
% 2.14/0.99  --preprocessed_stats                    false
% 2.14/0.99  
% 2.14/0.99  ------ Abstraction refinement Options
% 2.14/0.99  
% 2.14/0.99  --abstr_ref                             []
% 2.14/0.99  --abstr_ref_prep                        false
% 2.14/0.99  --abstr_ref_until_sat                   false
% 2.14/0.99  --abstr_ref_sig_restrict                funpre
% 2.14/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.14/0.99  --abstr_ref_under                       []
% 2.14/0.99  
% 2.14/0.99  ------ SAT Options
% 2.14/0.99  
% 2.14/0.99  --sat_mode                              false
% 2.14/0.99  --sat_fm_restart_options                ""
% 2.14/0.99  --sat_gr_def                            false
% 2.14/0.99  --sat_epr_types                         true
% 2.14/0.99  --sat_non_cyclic_types                  false
% 2.14/0.99  --sat_finite_models                     false
% 2.14/0.99  --sat_fm_lemmas                         false
% 2.14/0.99  --sat_fm_prep                           false
% 2.14/0.99  --sat_fm_uc_incr                        true
% 2.14/0.99  --sat_out_model                         small
% 2.14/0.99  --sat_out_clauses                       false
% 2.14/0.99  
% 2.14/0.99  ------ QBF Options
% 2.14/0.99  
% 2.14/0.99  --qbf_mode                              false
% 2.14/0.99  --qbf_elim_univ                         false
% 2.14/0.99  --qbf_dom_inst                          none
% 2.14/0.99  --qbf_dom_pre_inst                      false
% 2.14/0.99  --qbf_sk_in                             false
% 2.14/0.99  --qbf_pred_elim                         true
% 2.14/0.99  --qbf_split                             512
% 2.14/0.99  
% 2.14/0.99  ------ BMC1 Options
% 2.14/0.99  
% 2.14/0.99  --bmc1_incremental                      false
% 2.14/0.99  --bmc1_axioms                           reachable_all
% 2.14/0.99  --bmc1_min_bound                        0
% 2.14/0.99  --bmc1_max_bound                        -1
% 2.14/0.99  --bmc1_max_bound_default                -1
% 2.14/0.99  --bmc1_symbol_reachability              true
% 2.14/0.99  --bmc1_property_lemmas                  false
% 2.14/0.99  --bmc1_k_induction                      false
% 2.14/0.99  --bmc1_non_equiv_states                 false
% 2.14/0.99  --bmc1_deadlock                         false
% 2.14/0.99  --bmc1_ucm                              false
% 2.14/0.99  --bmc1_add_unsat_core                   none
% 2.14/0.99  --bmc1_unsat_core_children              false
% 2.14/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.14/0.99  --bmc1_out_stat                         full
% 2.14/0.99  --bmc1_ground_init                      false
% 2.14/0.99  --bmc1_pre_inst_next_state              false
% 2.14/0.99  --bmc1_pre_inst_state                   false
% 2.14/0.99  --bmc1_pre_inst_reach_state             false
% 2.14/0.99  --bmc1_out_unsat_core                   false
% 2.14/0.99  --bmc1_aig_witness_out                  false
% 2.14/0.99  --bmc1_verbose                          false
% 2.14/0.99  --bmc1_dump_clauses_tptp                false
% 2.14/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.14/0.99  --bmc1_dump_file                        -
% 2.14/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.14/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.14/0.99  --bmc1_ucm_extend_mode                  1
% 2.14/0.99  --bmc1_ucm_init_mode                    2
% 2.14/0.99  --bmc1_ucm_cone_mode                    none
% 2.14/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.14/0.99  --bmc1_ucm_relax_model                  4
% 2.14/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.14/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.14/0.99  --bmc1_ucm_layered_model                none
% 2.14/0.99  --bmc1_ucm_max_lemma_size               10
% 2.14/0.99  
% 2.14/0.99  ------ AIG Options
% 2.14/0.99  
% 2.14/0.99  --aig_mode                              false
% 2.14/0.99  
% 2.14/0.99  ------ Instantiation Options
% 2.14/0.99  
% 2.14/0.99  --instantiation_flag                    true
% 2.14/0.99  --inst_sos_flag                         false
% 2.14/0.99  --inst_sos_phase                        true
% 2.14/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.14/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.14/0.99  --inst_lit_sel_side                     none
% 2.14/0.99  --inst_solver_per_active                1400
% 2.14/0.99  --inst_solver_calls_frac                1.
% 2.14/0.99  --inst_passive_queue_type               priority_queues
% 2.14/0.99  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 2.14/0.99  --inst_passive_queues_freq              [25;2]
% 2.14/0.99  --inst_dismatching                      true
% 2.14/0.99  --inst_eager_unprocessed_to_passive     true
% 2.14/0.99  --inst_prop_sim_given                   true
% 2.14/0.99  --inst_prop_sim_new                     false
% 2.14/0.99  --inst_subs_new                         false
% 2.14/0.99  --inst_eq_res_simp                      false
% 2.14/0.99  --inst_subs_given                       false
% 2.14/0.99  --inst_orphan_elimination               true
% 2.14/0.99  --inst_learning_loop_flag               true
% 2.14/0.99  --inst_learning_start                   3000
% 2.14/0.99  --inst_learning_factor                  2
% 2.14/0.99  --inst_start_prop_sim_after_learn       3
% 2.14/0.99  --inst_sel_renew                        solver
% 2.14/0.99  --inst_lit_activity_flag                true
% 2.14/0.99  --inst_restr_to_given                   false
% 2.14/0.99  --inst_activity_threshold               500
% 2.14/0.99  --inst_out_proof                        true
% 2.14/0.99  
% 2.14/0.99  ------ Resolution Options
% 2.14/0.99  
% 2.14/0.99  --resolution_flag                       false
% 2.14/0.99  --res_lit_sel                           adaptive
% 2.14/0.99  --res_lit_sel_side                      none
% 2.14/0.99  --res_ordering                          kbo
% 2.14/0.99  --res_to_prop_solver                    active
% 2.14/0.99  --res_prop_simpl_new                    false
% 2.14/0.99  --res_prop_simpl_given                  true
% 2.14/0.99  --res_passive_queue_type                priority_queues
% 2.14/0.99  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 2.14/0.99  --res_passive_queues_freq               [15;5]
% 2.14/0.99  --res_forward_subs                      full
% 2.14/0.99  --res_backward_subs                     full
% 2.14/0.99  --res_forward_subs_resolution           true
% 2.14/0.99  --res_backward_subs_resolution          true
% 2.14/0.99  --res_orphan_elimination                true
% 2.14/0.99  --res_time_limit                        2.
% 2.14/0.99  --res_out_proof                         true
% 2.14/0.99  
% 2.14/0.99  ------ Superposition Options
% 2.14/0.99  
% 2.14/0.99  --superposition_flag                    true
% 2.14/0.99  --sup_passive_queue_type                priority_queues
% 2.14/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.14/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.14/0.99  --demod_completeness_check              fast
% 2.14/0.99  --demod_use_ground                      true
% 2.14/0.99  --sup_to_prop_solver                    passive
% 2.14/0.99  --sup_prop_simpl_new                    true
% 2.14/0.99  --sup_prop_simpl_given                  true
% 2.14/0.99  --sup_fun_splitting                     false
% 2.14/0.99  --sup_smt_interval                      50000
% 2.14/0.99  
% 2.14/0.99  ------ Superposition Simplification Setup
% 2.14/0.99  
% 2.14/0.99  --sup_indices_passive                   []
% 2.14/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.14/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.14/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.14/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.14/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.14/0.99  --sup_full_bw                           [BwDemod]
% 2.14/0.99  --sup_immed_triv                        [TrivRules]
% 2.14/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.14/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.14/0.99  --sup_immed_bw_main                     []
% 2.14/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.14/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.14/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.14/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.14/0.99  
% 2.14/0.99  ------ Combination Options
% 2.14/0.99  
% 2.14/0.99  --comb_res_mult                         3
% 2.14/0.99  --comb_sup_mult                         2
% 2.14/0.99  --comb_inst_mult                        10
% 2.14/0.99  
% 2.14/0.99  ------ Debug Options
% 2.14/0.99  
% 2.14/0.99  --dbg_backtrace                         false
% 2.14/0.99  --dbg_dump_prop_clauses                 false
% 2.14/0.99  --dbg_dump_prop_clauses_file            -
% 2.14/0.99  --dbg_out_stat                          false
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  ------ Proving...
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  % SZS status Theorem for theBenchmark.p
% 2.14/0.99  
% 2.14/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.14/0.99  
% 2.14/0.99  fof(f6,axiom,(
% 2.14/0.99    ! [X0,X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f20,plain,(
% 2.14/0.99    ! [X0,X1] : (m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f6])).
% 2.14/0.99  
% 2.14/0.99  fof(f21,plain,(
% 2.14/0.99    ! [X0,X1] : (m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f20])).
% 2.14/0.99  
% 2.14/0.99  fof(f55,plain,(
% 2.14/0.99    ( ! [X0,X1] : (m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f21])).
% 2.14/0.99  
% 2.14/0.99  fof(f9,conjecture,(
% 2.14/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : (m2_yellow_6(X2,X0,X1) => r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)))))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f10,negated_conjecture,(
% 2.14/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : (m2_yellow_6(X2,X0,X1) => r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)))))),
% 2.14/0.99    inference(negated_conjecture,[],[f9])).
% 2.14/0.99  
% 2.14/0.99  fof(f26,plain,(
% 2.14/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) & m2_yellow_6(X2,X0,X1)) & (l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f10])).
% 2.14/0.99  
% 2.14/0.99  fof(f27,plain,(
% 2.14/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) & m2_yellow_6(X2,X0,X1)) & l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f26])).
% 2.14/0.99  
% 2.14/0.99  fof(f40,plain,(
% 2.14/0.99    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) & m2_yellow_6(X2,X0,X1)) => (~r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,sK6)) & m2_yellow_6(sK6,X0,X1))) )),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f39,plain,(
% 2.14/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) & m2_yellow_6(X2,X0,X1)) & l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => (? [X2] : (~r1_tarski(k10_yellow_6(X0,sK5),k10_yellow_6(X0,X2)) & m2_yellow_6(X2,X0,sK5)) & l1_waybel_0(sK5,X0) & v7_waybel_0(sK5) & v4_orders_2(sK5) & ~v2_struct_0(sK5))) )),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f38,plain,(
% 2.14/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k10_yellow_6(X0,X1),k10_yellow_6(X0,X2)) & m2_yellow_6(X2,X0,X1)) & l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (~r1_tarski(k10_yellow_6(sK4,X1),k10_yellow_6(sK4,X2)) & m2_yellow_6(X2,sK4,X1)) & l1_waybel_0(X1,sK4) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK4) & v2_pre_topc(sK4) & ~v2_struct_0(sK4))),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f41,plain,(
% 2.14/0.99    ((~r1_tarski(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)) & m2_yellow_6(sK6,sK4,sK5)) & l1_waybel_0(sK5,sK4) & v7_waybel_0(sK5) & v4_orders_2(sK5) & ~v2_struct_0(sK5)) & l1_pre_topc(sK4) & v2_pre_topc(sK4) & ~v2_struct_0(sK4)),
% 2.14/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6])],[f27,f40,f39,f38])).
% 2.14/0.99  
% 2.14/0.99  fof(f62,plain,(
% 2.14/0.99    v2_pre_topc(sK4)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f61,plain,(
% 2.14/0.99    ~v2_struct_0(sK4)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f63,plain,(
% 2.14/0.99    l1_pre_topc(sK4)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f5,axiom,(
% 2.14/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (k10_yellow_6(X0,X1) = X2 <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X2) <=> ! [X4] : (m1_connsp_2(X4,X0,X3) => r1_waybel_0(X0,X1,X4))))))))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f18,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : ((k10_yellow_6(X0,X1) = X2 <=> ! [X3] : ((r2_hidden(X3,X2) <=> ! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3))) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f5])).
% 2.14/0.99  
% 2.14/0.99  fof(f19,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : ((k10_yellow_6(X0,X1) = X2 <=> ! [X3] : ((r2_hidden(X3,X2) <=> ! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3))) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f18])).
% 2.14/0.99  
% 2.14/0.99  fof(f31,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | ? [X3] : (((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | r2_hidden(X3,X2))) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (((r2_hidden(X3,X2) | ? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3))) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(nnf_transformation,[],[f19])).
% 2.14/0.99  
% 2.14/0.99  fof(f32,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | ? [X3] : ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | r2_hidden(X3,X2)) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (((r2_hidden(X3,X2) | ? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3))) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f31])).
% 2.14/0.99  
% 2.14/0.99  fof(f33,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | ? [X3] : ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,X3)) | r2_hidden(X3,X2)) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X6] : (((r2_hidden(X6,X2) | ? [X7] : (~r1_waybel_0(X0,X1,X7) & m1_connsp_2(X7,X0,X6))) & (! [X8] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6)) | ~r2_hidden(X6,X2))) | ~m1_subset_1(X6,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(rectify,[],[f32])).
% 2.14/0.99  
% 2.14/0.99  fof(f36,plain,(
% 2.14/0.99    ! [X6,X1,X0] : (? [X7] : (~r1_waybel_0(X0,X1,X7) & m1_connsp_2(X7,X0,X6)) => (~r1_waybel_0(X0,X1,sK3(X0,X1,X6)) & m1_connsp_2(sK3(X0,X1,X6),X0,X6)))),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f35,plain,(
% 2.14/0.99    ( ! [X3] : (! [X2,X1,X0] : (? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) => (~r1_waybel_0(X0,X1,sK2(X0,X1,X2)) & m1_connsp_2(sK2(X0,X1,X2),X0,X3)))) )),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f34,plain,(
% 2.14/0.99    ! [X2,X1,X0] : (? [X3] : ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,X3)) | r2_hidden(X3,X2)) & m1_subset_1(X3,u1_struct_0(X0))) => ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,sK1(X0,X1,X2))) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,sK1(X0,X1,X2))) | r2_hidden(sK1(X0,X1,X2),X2)) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))))),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f37,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | (((~r1_waybel_0(X0,X1,sK2(X0,X1,X2)) & m1_connsp_2(sK2(X0,X1,X2),X0,sK1(X0,X1,X2))) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,sK1(X0,X1,X2))) | r2_hidden(sK1(X0,X1,X2),X2)) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)))) & (! [X6] : (((r2_hidden(X6,X2) | (~r1_waybel_0(X0,X1,sK3(X0,X1,X6)) & m1_connsp_2(sK3(X0,X1,X6),X0,X6))) & (! [X8] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6)) | ~r2_hidden(X6,X2))) | ~m1_subset_1(X6,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f33,f36,f35,f34])).
% 2.14/0.99  
% 2.14/0.99  fof(f49,plain,(
% 2.14/0.99    ( ! [X6,X2,X0,X1] : (r2_hidden(X6,X2) | m1_connsp_2(sK3(X0,X1,X6),X0,X6) | ~m1_subset_1(X6,u1_struct_0(X0)) | k10_yellow_6(X0,X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f37])).
% 2.14/0.99  
% 2.14/0.99  fof(f71,plain,(
% 2.14/0.99    ( ! [X6,X0,X1] : (r2_hidden(X6,k10_yellow_6(X0,X1)) | m1_connsp_2(sK3(X0,X1,X6),X0,X6) | ~m1_subset_1(X6,u1_struct_0(X0)) | ~m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(equality_resolution,[],[f49])).
% 2.14/0.99  
% 2.14/0.99  fof(f7,axiom,(
% 2.14/0.99    ! [X0,X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1) & l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X2] : (m2_yellow_6(X2,X0,X1) => (l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2))))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f22,plain,(
% 2.14/0.99    ! [X0,X1] : (! [X2] : ((l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) | ~m2_yellow_6(X2,X0,X1)) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f7])).
% 2.14/0.99  
% 2.14/0.99  fof(f23,plain,(
% 2.14/0.99    ! [X0,X1] : (! [X2] : ((l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) | ~m2_yellow_6(X2,X0,X1)) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f22])).
% 2.14/0.99  
% 2.14/0.99  fof(f58,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (v7_waybel_0(X2) | ~m2_yellow_6(X2,X0,X1) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f23])).
% 2.14/0.99  
% 2.14/0.99  fof(f68,plain,(
% 2.14/0.99    m2_yellow_6(sK6,sK4,sK5)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f64,plain,(
% 2.14/0.99    ~v2_struct_0(sK5)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f65,plain,(
% 2.14/0.99    v4_orders_2(sK5)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f66,plain,(
% 2.14/0.99    v7_waybel_0(sK5)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f67,plain,(
% 2.14/0.99    l1_waybel_0(sK5,sK4)),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f3,axiom,(
% 2.14/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f15,plain,(
% 2.14/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.14/0.99    inference(ennf_transformation,[],[f3])).
% 2.14/0.99  
% 2.14/0.99  fof(f45,plain,(
% 2.14/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f15])).
% 2.14/0.99  
% 2.14/0.99  fof(f56,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (~v2_struct_0(X2) | ~m2_yellow_6(X2,X0,X1) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f23])).
% 2.14/0.99  
% 2.14/0.99  fof(f57,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (v4_orders_2(X2) | ~m2_yellow_6(X2,X0,X1) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f23])).
% 2.14/0.99  
% 2.14/0.99  fof(f59,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (l1_waybel_0(X2,X0) | ~m2_yellow_6(X2,X0,X1) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f23])).
% 2.14/0.99  
% 2.14/0.99  fof(f1,axiom,(
% 2.14/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f11,plain,(
% 2.14/0.99    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)) => r1_tarski(X0,X1))),
% 2.14/0.99    inference(unused_predicate_definition_removal,[],[f1])).
% 2.14/0.99  
% 2.14/0.99  fof(f12,plain,(
% 2.14/0.99    ! [X0,X1] : (r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f11])).
% 2.14/0.99  
% 2.14/0.99  fof(f28,plain,(
% 2.14/0.99    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.14/0.99    introduced(choice_axiom,[])).
% 2.14/0.99  
% 2.14/0.99  fof(f29,plain,(
% 2.14/0.99    ! [X0,X1] : (r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.14/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f28])).
% 2.14/0.99  
% 2.14/0.99  fof(f42,plain,(
% 2.14/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f29])).
% 2.14/0.99  
% 2.14/0.99  fof(f69,plain,(
% 2.14/0.99    ~r1_tarski(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))),
% 2.14/0.99    inference(cnf_transformation,[],[f41])).
% 2.14/0.99  
% 2.14/0.99  fof(f48,plain,(
% 2.14/0.99    ( ! [X6,X2,X0,X8,X1] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X0)) | k10_yellow_6(X0,X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f37])).
% 2.14/0.99  
% 2.14/0.99  fof(f72,plain,(
% 2.14/0.99    ( ! [X6,X0,X8,X1] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6) | ~r2_hidden(X6,k10_yellow_6(X0,X1)) | ~m1_subset_1(X6,u1_struct_0(X0)) | ~m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(equality_resolution,[],[f48])).
% 2.14/0.99  
% 2.14/0.99  fof(f2,axiom,(
% 2.14/0.99    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f13,plain,(
% 2.14/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 2.14/0.99    inference(ennf_transformation,[],[f2])).
% 2.14/0.99  
% 2.14/0.99  fof(f14,plain,(
% 2.14/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.14/0.99    inference(flattening,[],[f13])).
% 2.14/0.99  
% 2.14/0.99  fof(f44,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f14])).
% 2.14/0.99  
% 2.14/0.99  fof(f4,axiom,(
% 2.14/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : (r1_waybel_0(X0,X1,X2) <=> ~r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)))))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f16,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (r1_waybel_0(X0,X1,X2) <=> ~r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))) | (~l1_waybel_0(X1,X0) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f4])).
% 2.14/0.99  
% 2.14/0.99  fof(f17,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (r1_waybel_0(X0,X1,X2) <=> ~r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f16])).
% 2.14/0.99  
% 2.14/0.99  fof(f30,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_waybel_0(X0,X1,X2) | r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))) & (~r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) | ~r1_waybel_0(X0,X1,X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(nnf_transformation,[],[f17])).
% 2.14/0.99  
% 2.14/0.99  fof(f46,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (~r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) | ~r1_waybel_0(X0,X1,X2) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f30])).
% 2.14/0.99  
% 2.14/0.99  fof(f8,axiom,(
% 2.14/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : (m2_yellow_6(X2,X0,X1) => ! [X3] : (r2_waybel_0(X0,X2,X3) => r2_waybel_0(X0,X1,X3)))))),
% 2.14/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.14/0.99  
% 2.14/0.99  fof(f24,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (r2_waybel_0(X0,X1,X3) | ~r2_waybel_0(X0,X2,X3)) | ~m2_yellow_6(X2,X0,X1)) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.14/0.99    inference(ennf_transformation,[],[f8])).
% 2.14/0.99  
% 2.14/0.99  fof(f25,plain,(
% 2.14/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (r2_waybel_0(X0,X1,X3) | ~r2_waybel_0(X0,X2,X3)) | ~m2_yellow_6(X2,X0,X1)) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.14/0.99    inference(flattening,[],[f24])).
% 2.14/0.99  
% 2.14/0.99  fof(f60,plain,(
% 2.14/0.99    ( ! [X2,X0,X3,X1] : (r2_waybel_0(X0,X1,X3) | ~r2_waybel_0(X0,X2,X3) | ~m2_yellow_6(X2,X0,X1) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f25])).
% 2.14/0.99  
% 2.14/0.99  fof(f47,plain,(
% 2.14/0.99    ( ! [X2,X0,X1] : (r1_waybel_0(X0,X1,X2) | r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f30])).
% 2.14/0.99  
% 2.14/0.99  fof(f43,plain,(
% 2.14/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f29])).
% 2.14/0.99  
% 2.14/0.99  fof(f50,plain,(
% 2.14/0.99    ( ! [X6,X2,X0,X1] : (r2_hidden(X6,X2) | ~r1_waybel_0(X0,X1,sK3(X0,X1,X6)) | ~m1_subset_1(X6,u1_struct_0(X0)) | k10_yellow_6(X0,X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(cnf_transformation,[],[f37])).
% 2.14/0.99  
% 2.14/0.99  fof(f70,plain,(
% 2.14/0.99    ( ! [X6,X0,X1] : (r2_hidden(X6,k10_yellow_6(X0,X1)) | ~r1_waybel_0(X0,X1,sK3(X0,X1,X6)) | ~m1_subset_1(X6,u1_struct_0(X0)) | ~m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.14/0.99    inference(equality_resolution,[],[f50])).
% 2.14/0.99  
% 2.14/0.99  cnf(c_13,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,X1)
% 2.14/0.99      | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.14/0.99      | ~ v2_pre_topc(X1)
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | ~ l1_pre_topc(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_26,negated_conjecture,
% 2.14/0.99      ( v2_pre_topc(sK4) ),
% 2.14/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_597,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,X1)
% 2.14/0.99      | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X1)
% 2.14/0.99      | sK4 != X1 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_26]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_598,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_pre_topc(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_597]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_27,negated_conjecture,
% 2.14/0.99      ( ~ v2_struct_0(sK4) ),
% 2.14/0.99      inference(cnf_transformation,[],[f61]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_25,negated_conjecture,
% 2.14/0.99      ( l1_pre_topc(sK4) ),
% 2.14/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_602,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_598,c_27,c_25]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_11,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(X0,X1,X2),X0,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.14/0.99      | r2_hidden(X2,k10_yellow_6(X0,X1))
% 2.14/0.99      | ~ v2_pre_topc(X0)
% 2.14/0.99      | ~ v4_orders_2(X1)
% 2.14/0.99      | ~ v7_waybel_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X0) ),
% 2.14/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_453,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(X0,X1,X2),X0,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.14/0.99      | r2_hidden(X2,k10_yellow_6(X0,X1))
% 2.14/0.99      | ~ v4_orders_2(X1)
% 2.14/0.99      | ~ v7_waybel_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X0)
% 2.14/0.99      | sK4 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_26]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_454,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_pre_topc(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_453]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_458,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_454,c_27,c_25]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_620,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(backward_subsumption_resolution,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_602,c_458]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_15,plain,
% 2.14/0.99      ( ~ m2_yellow_6(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X2,X1)
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | ~ l1_struct_0(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_20,negated_conjecture,
% 2.14/0.99      ( m2_yellow_6(sK6,sK4,sK5) ),
% 2.14/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_360,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,X1)
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | ~ l1_struct_0(X1)
% 2.14/0.99      | sK6 != X2
% 2.14/0.99      | sK5 != X0
% 2.14/0.99      | sK4 != X1 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_20]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_361,plain,
% 2.14/0.99      ( ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | v7_waybel_0(sK6)
% 2.14/0.99      | ~ v7_waybel_0(sK5)
% 2.14/0.99      | v2_struct_0(sK5)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_360]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_24,negated_conjecture,
% 2.14/0.99      ( ~ v2_struct_0(sK5) ),
% 2.14/0.99      inference(cnf_transformation,[],[f64]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_23,negated_conjecture,
% 2.14/0.99      ( v4_orders_2(sK5) ),
% 2.14/0.99      inference(cnf_transformation,[],[f65]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_22,negated_conjecture,
% 2.14/0.99      ( v7_waybel_0(sK5) ),
% 2.14/0.99      inference(cnf_transformation,[],[f66]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_21,negated_conjecture,
% 2.14/0.99      ( l1_waybel_0(sK5,sK4) ),
% 2.14/0.99      inference(cnf_transformation,[],[f67]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_3,plain,
% 2.14/0.99      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.14/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_73,plain,
% 2.14/0.99      ( ~ l1_pre_topc(sK4) | l1_struct_0(sK4) ),
% 2.14/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_363,plain,
% 2.14/0.99      ( v7_waybel_0(sK6) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_361,c_27,c_25,c_24,c_23,c_22,c_21,c_73]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1645,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,X0,X1),sK4,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | sK6 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_620,c_363]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1646,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,sK6,X0),sK4,X0)
% 2.14/0.99      | ~ l1_waybel_0(sK6,sK4)
% 2.14/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X0,k10_yellow_6(sK4,sK6))
% 2.14/0.99      | ~ v4_orders_2(sK6)
% 2.14/0.99      | v2_struct_0(sK6) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_1645]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_17,plain,
% 2.14/0.99      ( ~ m2_yellow_6(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X2,X1)
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | ~ v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | ~ l1_struct_0(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_338,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,X1)
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | ~ v2_struct_0(X2)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | ~ l1_struct_0(X1)
% 2.14/0.99      | sK6 != X2
% 2.14/0.99      | sK5 != X0
% 2.14/0.99      | sK4 != X1 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_20]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_339,plain,
% 2.14/0.99      ( ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | ~ v7_waybel_0(sK5)
% 2.14/0.99      | ~ v2_struct_0(sK6)
% 2.14/0.99      | v2_struct_0(sK5)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_338]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_16,plain,
% 2.14/0.99      ( ~ m2_yellow_6(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X2,X1)
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | ~ l1_struct_0(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_349,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,X1)
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | ~ l1_struct_0(X1)
% 2.14/0.99      | sK6 != X2
% 2.14/0.99      | sK5 != X0
% 2.14/0.99      | sK4 != X1 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_20]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_350,plain,
% 2.14/0.99      ( ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | v4_orders_2(sK6)
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | ~ v7_waybel_0(sK5)
% 2.14/0.99      | v2_struct_0(sK5)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_349]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_14,plain,
% 2.14/0.99      ( ~ m2_yellow_6(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X2,X1)
% 2.14/0.99      | l1_waybel_0(X0,X1)
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | ~ l1_struct_0(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f59]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_371,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,X1)
% 2.14/0.99      | l1_waybel_0(X2,X1)
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | ~ l1_struct_0(X1)
% 2.14/0.99      | sK6 != X2
% 2.14/0.99      | sK5 != X0
% 2.14/0.99      | sK4 != X1 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_20]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_372,plain,
% 2.14/0.99      ( l1_waybel_0(sK6,sK4)
% 2.14/0.99      | ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | ~ v7_waybel_0(sK5)
% 2.14/0.99      | v2_struct_0(sK5)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_371]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1650,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,sK6,X0),sK4,X0)
% 2.14/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X0,k10_yellow_6(sK4,sK6)) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_1646,c_27,c_25,c_24,c_23,c_22,c_21,c_73,c_339,c_350,
% 2.14/0.99                 c_372]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6767,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,sK6,X0_58),sK4,X0_58)
% 2.14/0.99      | ~ m1_subset_1(X0_58,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X0_58,k10_yellow_6(sK4,sK6)) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_1650]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7425,plain,
% 2.14/0.99      ( m1_connsp_2(sK3(sK4,sK6,X0_58),sK4,X0_58) = iProver_top
% 2.14/0.99      | m1_subset_1(X0_58,u1_struct_0(sK4)) != iProver_top
% 2.14/0.99      | r2_hidden(X0_58,k10_yellow_6(sK4,sK6)) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_6767]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1,plain,
% 2.14/0.99      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_19,negated_conjecture,
% 2.14/0.99      ( ~ r1_tarski(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)) ),
% 2.14/0.99      inference(cnf_transformation,[],[f69]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_302,plain,
% 2.14/0.99      ( r2_hidden(sK0(X0,X1),X0)
% 2.14/0.99      | k10_yellow_6(sK4,sK6) != X1
% 2.14/0.99      | k10_yellow_6(sK4,sK5) != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_19]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_303,plain,
% 2.14/0.99      ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_302]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6782,plain,
% 2.14/0.99      ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_303]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7410,plain,
% 2.14/0.99      ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_6782]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_12,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,X1,X2)
% 2.14/0.99      | r1_waybel_0(X1,X3,X0)
% 2.14/0.99      | ~ l1_waybel_0(X3,X1)
% 2.14/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(X1,X3),k1_zfmisc_1(u1_struct_0(X1)))
% 2.14/0.99      | ~ r2_hidden(X2,k10_yellow_6(X1,X3))
% 2.14/0.99      | ~ v2_pre_topc(X1)
% 2.14/0.99      | ~ v4_orders_2(X3)
% 2.14/0.99      | ~ v7_waybel_0(X3)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X3)
% 2.14/0.99      | ~ l1_pre_topc(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f72]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_632,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,X1,X2)
% 2.14/0.99      | r1_waybel_0(X1,X3,X0)
% 2.14/0.99      | ~ l1_waybel_0(X3,X1)
% 2.14/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(X1,X3),k1_zfmisc_1(u1_struct_0(X1)))
% 2.14/0.99      | ~ r2_hidden(X2,k10_yellow_6(X1,X3))
% 2.14/0.99      | ~ v4_orders_2(X3)
% 2.14/0.99      | ~ v7_waybel_0(X3)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X3)
% 2.14/0.99      | ~ l1_pre_topc(X1)
% 2.14/0.99      | sK4 != X1 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_26]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_633,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | r1_waybel_0(sK4,X2,X0)
% 2.14/0.99      | ~ l1_waybel_0(X2,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(sK4,X2),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_pre_topc(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_632]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_637,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | r1_waybel_0(sK4,X2,X0)
% 2.14/0.99      | ~ l1_waybel_0(X2,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(sK4,X2),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X2) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_633,c_27,c_25]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_652,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | r1_waybel_0(sK4,X2,X0)
% 2.14/0.99      | ~ l1_waybel_0(X2,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X2) ),
% 2.14/0.99      inference(forward_subsumption_resolution,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_637,c_602]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1433,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | r1_waybel_0(sK4,X2,X0)
% 2.14/0.99      | ~ l1_waybel_0(X2,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,X2))
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | sK5 != X2 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_652,c_22]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1434,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | r1_waybel_0(sK4,sK5,X0)
% 2.14/0.99      | ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,sK5))
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | v2_struct_0(sK5) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_1433]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1438,plain,
% 2.14/0.99      ( r1_waybel_0(sK4,sK5,X0)
% 2.14/0.99      | ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_1434,c_24,c_23,c_21]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1439,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0,sK4,X1)
% 2.14/0.99      | r1_waybel_0(sK4,sK5,X0)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(X1,k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(renaming,[status(thm)],[c_1438]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6777,plain,
% 2.14/0.99      ( ~ m1_connsp_2(X0_57,sK4,X0_58)
% 2.14/0.99      | r1_waybel_0(sK4,sK5,X0_57)
% 2.14/0.99      | ~ m1_subset_1(X0_58,u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(X0_58,k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_1439]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7415,plain,
% 2.14/0.99      ( m1_connsp_2(X0_57,sK4,X0_58) != iProver_top
% 2.14/0.99      | r1_waybel_0(sK4,sK5,X0_57) = iProver_top
% 2.14/0.99      | m1_subset_1(X0_58,u1_struct_0(sK4)) != iProver_top
% 2.14/0.99      | r2_hidden(X0_58,k10_yellow_6(sK4,sK5)) != iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_6777]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7693,plain,
% 2.14/0.99      ( m1_connsp_2(X0_57,sK4,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))) != iProver_top
% 2.14/0.99      | r1_waybel_0(sK4,sK5,X0_57) = iProver_top
% 2.14/0.99      | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) != iProver_top ),
% 2.14/0.99      inference(superposition,[status(thm)],[c_7410,c_7415]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_31,plain,
% 2.14/0.99      ( v2_struct_0(sK5) != iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_32,plain,
% 2.14/0.99      ( v4_orders_2(sK5) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_34,plain,
% 2.14/0.99      ( l1_waybel_0(sK5,sK4) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_304,plain,
% 2.14/0.99      ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_303]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1544,plain,
% 2.14/0.99      ( ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | sK5 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_602,c_22]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1545,plain,
% 2.14/0.99      ( ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | v2_struct_0(sK5) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_1544]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1546,plain,
% 2.14/0.99      ( l1_waybel_0(sK5,sK4) != iProver_top
% 2.14/0.99      | m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
% 2.14/0.99      | v4_orders_2(sK5) != iProver_top
% 2.14/0.99      | v2_struct_0(sK5) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_1545]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_2,plain,
% 2.14/0.99      ( m1_subset_1(X0,X1)
% 2.14/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.14/0.99      | ~ r2_hidden(X0,X2) ),
% 2.14/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6783,plain,
% 2.14/0.99      ( m1_subset_1(X0_58,X0_56)
% 2.14/0.99      | ~ m1_subset_1(X1_58,k1_zfmisc_1(X0_56))
% 2.14/0.99      | ~ r2_hidden(X0_58,X1_58) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7669,plain,
% 2.14/0.99      ( ~ m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(X0_56))
% 2.14/0.99      | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),X0_56)
% 2.14/0.99      | ~ r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(instantiation,[status(thm)],[c_6783]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7732,plain,
% 2.14/0.99      ( ~ m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4))
% 2.14/0.99      | ~ r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) ),
% 2.14/0.99      inference(instantiation,[status(thm)],[c_7669]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7737,plain,
% 2.14/0.99      ( m1_subset_1(k10_yellow_6(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.14/0.99      | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) = iProver_top
% 2.14/0.99      | r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK5)) != iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_7732]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_8025,plain,
% 2.14/0.99      ( r1_waybel_0(sK4,sK5,X0_57) = iProver_top
% 2.14/0.99      | m1_connsp_2(X0_57,sK4,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))) != iProver_top ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_7693,c_31,c_32,c_34,c_304,c_1546,c_7737]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_8026,plain,
% 2.14/0.99      ( m1_connsp_2(X0_57,sK4,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))) != iProver_top
% 2.14/0.99      | r1_waybel_0(sK4,sK5,X0_57) = iProver_top ),
% 2.14/0.99      inference(renaming,[status(thm)],[c_8025]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_8262,plain,
% 2.14/0.99      ( r1_waybel_0(sK4,sK5,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) = iProver_top
% 2.14/0.99      | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) != iProver_top
% 2.14/0.99      | r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK6)) = iProver_top ),
% 2.14/0.99      inference(superposition,[status(thm)],[c_7425,c_8026]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_5,plain,
% 2.14/0.99      ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 2.14/0.99      | ~ r1_waybel_0(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_struct_0(X0) ),
% 2.14/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_393,plain,
% 2.14/0.99      ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 2.14/0.99      | ~ r1_waybel_0(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X0) ),
% 2.14/0.99      inference(resolution,[status(thm)],[c_3,c_5]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_833,plain,
% 2.14/0.99      ( ~ r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 2.14/0.99      | ~ r1_waybel_0(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | sK4 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_393,c_25]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_834,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
% 2.14/0.99      | ~ r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_833]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_838,plain,
% 2.14/0.99      ( v2_struct_0(X0)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1)) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_834,c_27]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_839,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
% 2.14/0.99      | ~ r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(renaming,[status(thm)],[c_838]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1795,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
% 2.14/0.99      | ~ r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | sK5 != X0
% 2.14/0.99      | sK4 != sK4 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_21,c_839]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1796,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0))
% 2.14/0.99      | ~ r1_waybel_0(sK4,sK5,X0)
% 2.14/0.99      | v2_struct_0(sK5) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_1795]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_4366,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,sK5,X0)
% 2.14/0.99      | ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0)) ),
% 2.14/0.99      inference(prop_impl,[status(thm)],[c_24,c_1796]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_4367,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0))
% 2.14/0.99      | ~ r1_waybel_0(sK4,sK5,X0) ),
% 2.14/0.99      inference(renaming,[status(thm)],[c_4366]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6763,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),X0_57))
% 2.14/0.99      | ~ r1_waybel_0(sK4,sK5,X0_57) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_4367]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_8056,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))))
% 2.14/0.99      | ~ r1_waybel_0(sK4,sK5,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) ),
% 2.14/0.99      inference(instantiation,[status(thm)],[c_6763]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_8057,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) != iProver_top
% 2.14/0.99      | r1_waybel_0(sK4,sK5,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) != iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_8056]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_18,plain,
% 2.14/0.99      ( ~ m2_yellow_6(X0,X1,X2)
% 2.14/0.99      | ~ r2_waybel_0(X1,X0,X3)
% 2.14/0.99      | r2_waybel_0(X1,X2,X3)
% 2.14/0.99      | ~ l1_waybel_0(X2,X1)
% 2.14/0.99      | ~ v4_orders_2(X2)
% 2.14/0.99      | ~ v7_waybel_0(X2)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | v2_struct_0(X2)
% 2.14/0.99      | ~ l1_struct_0(X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_320,plain,
% 2.14/0.99      ( ~ r2_waybel_0(X0,X1,X2)
% 2.14/0.99      | r2_waybel_0(X0,X3,X2)
% 2.14/0.99      | ~ l1_waybel_0(X3,X0)
% 2.14/0.99      | ~ v4_orders_2(X3)
% 2.14/0.99      | ~ v7_waybel_0(X3)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X3)
% 2.14/0.99      | ~ l1_struct_0(X0)
% 2.14/0.99      | sK6 != X1
% 2.14/0.99      | sK5 != X3
% 2.14/0.99      | sK4 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_20]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_321,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK6,X0)
% 2.14/0.99      | r2_waybel_0(sK4,sK5,X0)
% 2.14/0.99      | ~ l1_waybel_0(sK5,sK4)
% 2.14/0.99      | ~ v4_orders_2(sK5)
% 2.14/0.99      | ~ v7_waybel_0(sK5)
% 2.14/0.99      | v2_struct_0(sK5)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_320]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_325,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK6,X0) | r2_waybel_0(sK4,sK5,X0) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_321,c_27,c_25,c_24,c_23,c_22,c_21,c_73]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6780,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK6,X0_55) | r2_waybel_0(sK4,sK5,X0_55) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_325]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7957,plain,
% 2.14/0.99      ( ~ r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))))
% 2.14/0.99      | r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) ),
% 2.14/0.99      inference(instantiation,[status(thm)],[c_6780]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7958,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) != iProver_top
% 2.14/0.99      | r2_waybel_0(sK4,sK5,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_7957]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_374,plain,
% 2.14/0.99      ( l1_waybel_0(sK6,sK4) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_372,c_27,c_25,c_24,c_23,c_22,c_21,c_73]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_4,plain,
% 2.14/0.99      ( r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 2.14/0.99      | r1_waybel_0(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_struct_0(X0) ),
% 2.14/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_416,plain,
% 2.14/0.99      ( r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 2.14/0.99      | r1_waybel_0(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X0) ),
% 2.14/0.99      inference(resolution,[status(thm)],[c_3,c_4]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_811,plain,
% 2.14/0.99      ( r2_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 2.14/0.99      | r1_waybel_0(X0,X1,X2)
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | sK4 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_416,c_25]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_812,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
% 2.14/0.99      | r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_811]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_816,plain,
% 2.14/0.99      ( v2_struct_0(X0)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1)) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_812,c_27]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_817,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
% 2.14/0.99      | r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(renaming,[status(thm)],[c_816]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1849,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,X0,k6_subset_1(u1_struct_0(sK4),X1))
% 2.14/0.99      | r1_waybel_0(sK4,X0,X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | sK6 != X0
% 2.14/0.99      | sK4 != sK4 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_374,c_817]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1850,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0))
% 2.14/0.99      | r1_waybel_0(sK4,sK6,X0)
% 2.14/0.99      | v2_struct_0(sK6) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_1849]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_4372,plain,
% 2.14/0.99      ( r1_waybel_0(sK4,sK6,X0)
% 2.14/0.99      | r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0)) ),
% 2.14/0.99      inference(prop_impl,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_27,c_25,c_24,c_23,c_22,c_21,c_73,c_339,c_1850]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_4373,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0))
% 2.14/0.99      | r1_waybel_0(sK4,sK6,X0) ),
% 2.14/0.99      inference(renaming,[status(thm)],[c_4372]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_6760,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),X0_57))
% 2.14/0.99      | r1_waybel_0(sK4,sK6,X0_57) ),
% 2.14/0.99      inference(subtyping,[status(esa)],[c_4373]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7860,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))))
% 2.14/0.99      | r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) ),
% 2.14/0.99      inference(instantiation,[status(thm)],[c_6760]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_7861,plain,
% 2.14/0.99      ( r2_waybel_0(sK4,sK6,k6_subset_1(u1_struct_0(sK4),sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))) = iProver_top
% 2.14/0.99      | r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) = iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_7860]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_0,plain,
% 2.14/0.99      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 2.14/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_309,plain,
% 2.14/0.99      ( ~ r2_hidden(sK0(X0,X1),X1)
% 2.14/0.99      | k10_yellow_6(sK4,sK6) != X1
% 2.14/0.99      | k10_yellow_6(sK4,sK5) != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_19]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_310,plain,
% 2.14/0.99      ( ~ r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK6)) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_309]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_10,plain,
% 2.14/0.99      ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X2))
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.14/0.99      | r2_hidden(X2,k10_yellow_6(X0,X1))
% 2.14/0.99      | ~ v2_pre_topc(X0)
% 2.14/0.99      | ~ v4_orders_2(X1)
% 2.14/0.99      | ~ v7_waybel_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X0) ),
% 2.14/0.99      inference(cnf_transformation,[],[f70]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_489,plain,
% 2.14/0.99      ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X2))
% 2.14/0.99      | ~ l1_waybel_0(X1,X0)
% 2.14/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.14/0.99      | r2_hidden(X2,k10_yellow_6(X0,X1))
% 2.14/0.99      | ~ v4_orders_2(X1)
% 2.14/0.99      | ~ v7_waybel_0(X1)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(X1)
% 2.14/0.99      | ~ l1_pre_topc(X0)
% 2.14/0.99      | sK4 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_26]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_490,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | v2_struct_0(sK4)
% 2.14/0.99      | ~ l1_pre_topc(sK4) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_489]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_494,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | ~ m1_subset_1(k10_yellow_6(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_490,c_27,c_25]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_621,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | ~ v7_waybel_0(X0)
% 2.14/0.99      | v2_struct_0(X0) ),
% 2.14/0.99      inference(backward_subsumption_resolution,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_602,c_494]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1624,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,X0,sK3(sK4,X0,X1))
% 2.14/0.99      | ~ l1_waybel_0(X0,sK4)
% 2.14/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X1,k10_yellow_6(sK4,X0))
% 2.14/0.99      | ~ v4_orders_2(X0)
% 2.14/0.99      | v2_struct_0(X0)
% 2.14/0.99      | sK6 != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_621,c_363]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1625,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,X0))
% 2.14/0.99      | ~ l1_waybel_0(sK6,sK4)
% 2.14/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X0,k10_yellow_6(sK4,sK6))
% 2.14/0.99      | ~ v4_orders_2(sK6)
% 2.14/0.99      | v2_struct_0(sK6) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_1624]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_1629,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,X0))
% 2.14/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.14/0.99      | r2_hidden(X0,k10_yellow_6(sK4,sK6)) ),
% 2.14/0.99      inference(global_propositional_subsumption,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_1625,c_27,c_25,c_24,c_23,c_22,c_21,c_73,c_339,c_350,
% 2.14/0.99                 c_372]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_3504,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,X0))
% 2.14/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.14/0.99      | k10_yellow_6(sK4,sK6) != k10_yellow_6(sK4,sK6)
% 2.14/0.99      | sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)) != X0 ),
% 2.14/0.99      inference(resolution_lifted,[status(thm)],[c_310,c_1629]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_3505,plain,
% 2.14/0.99      ( ~ r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6))))
% 2.14/0.99      | ~ m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) ),
% 2.14/0.99      inference(unflattening,[status(thm)],[c_3504]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_3506,plain,
% 2.14/0.99      ( r1_waybel_0(sK4,sK6,sK3(sK4,sK6,sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)))) != iProver_top
% 2.14/0.99      | m1_subset_1(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),u1_struct_0(sK4)) != iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_3505]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(c_311,plain,
% 2.14/0.99      ( r2_hidden(sK0(k10_yellow_6(sK4,sK5),k10_yellow_6(sK4,sK6)),k10_yellow_6(sK4,sK6)) != iProver_top ),
% 2.14/0.99      inference(predicate_to_equality,[status(thm)],[c_310]) ).
% 2.14/0.99  
% 2.14/0.99  cnf(contradiction,plain,
% 2.14/0.99      ( $false ),
% 2.14/0.99      inference(minisat,
% 2.14/0.99                [status(thm)],
% 2.14/0.99                [c_8262,c_8057,c_7958,c_7861,c_7737,c_3506,c_1546,c_311,
% 2.14/0.99                 c_304,c_34,c_32,c_31]) ).
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.14/0.99  
% 2.14/0.99  ------                               Statistics
% 2.14/0.99  
% 2.14/0.99  ------ General
% 2.14/0.99  
% 2.14/0.99  abstr_ref_over_cycles:                  0
% 2.14/0.99  abstr_ref_under_cycles:                 0
% 2.14/0.99  gc_basic_clause_elim:                   0
% 2.14/0.99  forced_gc_time:                         0
% 2.14/0.99  parsing_time:                           0.009
% 2.14/0.99  unif_index_cands_time:                  0.
% 2.14/0.99  unif_index_add_time:                    0.
% 2.14/0.99  orderings_time:                         0.
% 2.14/0.99  out_proof_time:                         0.011
% 2.14/0.99  total_time:                             0.213
% 2.14/0.99  num_of_symbols:                         62
% 2.14/0.99  num_of_terms:                           3618
% 2.14/0.99  
% 2.14/0.99  ------ Preprocessing
% 2.14/0.99  
% 2.14/0.99  num_of_splits:                          0
% 2.14/0.99  num_of_split_atoms:                     0
% 2.14/0.99  num_of_reused_defs:                     0
% 2.14/0.99  num_eq_ax_congr_red:                    44
% 2.14/0.99  num_of_sem_filtered_clauses:            1
% 2.14/0.99  num_of_subtypes:                        6
% 2.14/0.99  monotx_restored_types:                  1
% 2.14/0.99  sat_num_of_epr_types:                   0
% 2.14/0.99  sat_num_of_non_cyclic_types:            0
% 2.14/0.99  sat_guarded_non_collapsed_types:        0
% 2.14/0.99  num_pure_diseq_elim:                    0
% 2.14/0.99  simp_replaced_by:                       0
% 2.14/0.99  res_preprocessed:                       121
% 2.14/0.99  prep_upred:                             0
% 2.14/0.99  prep_unflattend:                        352
% 2.14/0.99  smt_new_axioms:                         0
% 2.14/0.99  pred_elim_cands:                        5
% 2.14/0.99  pred_elim:                              9
% 2.14/0.99  pred_elim_cl:                           4
% 2.14/0.99  pred_elim_cycles:                       17
% 2.14/0.99  merged_defs:                            12
% 2.14/0.99  merged_defs_ncl:                        0
% 2.14/0.99  bin_hyper_res:                          12
% 2.14/0.99  prep_cycles:                            4
% 2.14/0.99  pred_elim_time:                         0.13
% 2.14/0.99  splitting_time:                         0.
% 2.14/0.99  sem_filter_time:                        0.
% 2.14/0.99  monotx_time:                            0.
% 2.14/0.99  subtype_inf_time:                       0.001
% 2.14/0.99  
% 2.14/0.99  ------ Problem properties
% 2.14/0.99  
% 2.14/0.99  clauses:                                24
% 2.14/0.99  conjectures:                            0
% 2.14/0.99  epr:                                    1
% 2.14/0.99  horn:                                   14
% 2.14/0.99  ground:                                 4
% 2.14/0.99  unary:                                  4
% 2.14/0.99  binary:                                 5
% 2.14/0.99  lits:                                   69
% 2.14/0.99  lits_eq:                                8
% 2.14/0.99  fd_pure:                                0
% 2.14/0.99  fd_pseudo:                              0
% 2.14/0.99  fd_cond:                                8
% 2.14/0.99  fd_pseudo_cond:                         0
% 2.14/0.99  ac_symbols:                             0
% 2.14/0.99  
% 2.14/0.99  ------ Propositional Solver
% 2.14/0.99  
% 2.14/0.99  prop_solver_calls:                      27
% 2.14/0.99  prop_fast_solver_calls:                 2584
% 2.14/0.99  smt_solver_calls:                       0
% 2.14/0.99  smt_fast_solver_calls:                  0
% 2.14/0.99  prop_num_of_clauses:                    1215
% 2.14/0.99  prop_preprocess_simplified:             5175
% 2.14/0.99  prop_fo_subsumed:                       152
% 2.14/0.99  prop_solver_time:                       0.
% 2.14/0.99  smt_solver_time:                        0.
% 2.14/0.99  smt_fast_solver_time:                   0.
% 2.14/0.99  prop_fast_solver_time:                  0.
% 2.14/0.99  prop_unsat_core_time:                   0.
% 2.14/0.99  
% 2.14/0.99  ------ QBF
% 2.14/0.99  
% 2.14/0.99  qbf_q_res:                              0
% 2.14/0.99  qbf_num_tautologies:                    0
% 2.14/0.99  qbf_prep_cycles:                        0
% 2.14/0.99  
% 2.14/0.99  ------ BMC1
% 2.14/0.99  
% 2.14/0.99  bmc1_current_bound:                     -1
% 2.14/0.99  bmc1_last_solved_bound:                 -1
% 2.14/0.99  bmc1_unsat_core_size:                   -1
% 2.14/0.99  bmc1_unsat_core_parents_size:           -1
% 2.14/0.99  bmc1_merge_next_fun:                    0
% 2.14/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.14/0.99  
% 2.14/0.99  ------ Instantiation
% 2.14/0.99  
% 2.14/0.99  inst_num_of_clauses:                    138
% 2.14/0.99  inst_num_in_passive:                    20
% 2.14/0.99  inst_num_in_active:                     109
% 2.14/0.99  inst_num_in_unprocessed:                9
% 2.14/0.99  inst_num_of_loops:                      140
% 2.14/0.99  inst_num_of_learning_restarts:          0
% 2.14/0.99  inst_num_moves_active_passive:          27
% 2.14/0.99  inst_lit_activity:                      0
% 2.14/0.99  inst_lit_activity_moves:                0
% 2.14/0.99  inst_num_tautologies:                   0
% 2.14/0.99  inst_num_prop_implied:                  0
% 2.14/0.99  inst_num_existing_simplified:           0
% 2.14/0.99  inst_num_eq_res_simplified:             0
% 2.14/0.99  inst_num_child_elim:                    0
% 2.14/0.99  inst_num_of_dismatching_blockings:      4
% 2.14/0.99  inst_num_of_non_proper_insts:           106
% 2.14/0.99  inst_num_of_duplicates:                 0
% 2.14/0.99  inst_inst_num_from_inst_to_res:         0
% 2.14/0.99  inst_dismatching_checking_time:         0.
% 2.14/0.99  
% 2.14/0.99  ------ Resolution
% 2.14/0.99  
% 2.14/0.99  res_num_of_clauses:                     0
% 2.14/0.99  res_num_in_passive:                     0
% 2.14/0.99  res_num_in_active:                      0
% 2.14/0.99  res_num_of_loops:                       125
% 2.14/0.99  res_forward_subset_subsumed:            25
% 2.14/0.99  res_backward_subset_subsumed:           0
% 2.14/0.99  res_forward_subsumed:                   2
% 2.14/0.99  res_backward_subsumed:                  0
% 2.14/0.99  res_forward_subsumption_resolution:     3
% 2.14/0.99  res_backward_subsumption_resolution:    2
% 2.14/0.99  res_clause_to_clause_subsumption:       310
% 2.14/0.99  res_orphan_elimination:                 0
% 2.14/0.99  res_tautology_del:                      76
% 2.14/0.99  res_num_eq_res_simplified:              0
% 2.14/0.99  res_num_sel_changes:                    0
% 2.14/0.99  res_moves_from_active_to_pass:          0
% 2.14/0.99  
% 2.14/0.99  ------ Superposition
% 2.14/0.99  
% 2.14/0.99  sup_time_total:                         0.
% 2.14/0.99  sup_time_generating:                    0.
% 2.14/0.99  sup_time_sim_full:                      0.
% 2.14/0.99  sup_time_sim_immed:                     0.
% 2.14/0.99  
% 2.14/0.99  sup_num_of_clauses:                     38
% 2.14/0.99  sup_num_in_active:                      28
% 2.14/0.99  sup_num_in_passive:                     10
% 2.14/0.99  sup_num_of_loops:                       27
% 2.14/0.99  sup_fw_superposition:                   7
% 2.14/0.99  sup_bw_superposition:                   8
% 2.14/0.99  sup_immediate_simplified:               1
% 2.14/0.99  sup_given_eliminated:                   0
% 2.14/0.99  comparisons_done:                       0
% 2.14/0.99  comparisons_avoided:                    0
% 2.14/0.99  
% 2.14/0.99  ------ Simplifications
% 2.14/0.99  
% 2.14/0.99  
% 2.14/0.99  sim_fw_subset_subsumed:                 1
% 2.14/0.99  sim_bw_subset_subsumed:                 0
% 2.14/0.99  sim_fw_subsumed:                        0
% 2.14/0.99  sim_bw_subsumed:                        0
% 2.14/0.99  sim_fw_subsumption_res:                 0
% 2.14/0.99  sim_bw_subsumption_res:                 0
% 2.14/0.99  sim_tautology_del:                      1
% 2.14/0.99  sim_eq_tautology_del:                   0
% 2.14/0.99  sim_eq_res_simp:                        0
% 2.14/0.99  sim_fw_demodulated:                     0
% 2.14/0.99  sim_bw_demodulated:                     0
% 2.14/0.99  sim_light_normalised:                   0
% 2.14/0.99  sim_joinable_taut:                      0
% 2.14/0.99  sim_joinable_simp:                      0
% 2.14/0.99  sim_ac_normalised:                      0
% 2.14/0.99  sim_smt_subsumption:                    0
% 2.14/0.99  
%------------------------------------------------------------------------------
