%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:28:52 EST 2020

% Result     : Theorem 1.53s
% Output     : CNFRefutation 1.53s
% Verified   : 
% Statistics : Number of formulae       :  134 ( 477 expanded)
%              Number of clauses        :   77 ( 101 expanded)
%              Number of leaves         :   15 ( 178 expanded)
%              Depth                    :   29
%              Number of atoms          :  815 (4896 expanded)
%              Number of equality atoms :   85 ( 503 expanded)
%              Maximal formula depth    :   19 (   7 average)
%              Maximal clause size      :   24 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r2_hidden(X2,k2_pre_topc(X0,X1))
              <=> ! [X3] :
                    ( m1_connsp_2(X3,X0,X2)
                   => ~ r1_xboole_0(X3,X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
              <=> ! [X3] :
                    ( ~ r1_xboole_0(X3,X1)
                    | ~ m1_connsp_2(X3,X0,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
              <=> ! [X3] :
                    ( ~ r1_xboole_0(X3,X1)
                    | ~ m1_connsp_2(X3,X0,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f10])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
                  | ? [X3] :
                      ( r1_xboole_0(X3,X1)
                      & m1_connsp_2(X3,X0,X2) ) )
                & ( ! [X3] :
                      ( ~ r1_xboole_0(X3,X1)
                      | ~ m1_connsp_2(X3,X0,X2) )
                  | ~ r2_hidden(X2,k2_pre_topc(X0,X1)) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
                  | ? [X3] :
                      ( r1_xboole_0(X3,X1)
                      & m1_connsp_2(X3,X0,X2) ) )
                & ( ! [X4] :
                      ( ~ r1_xboole_0(X4,X1)
                      | ~ m1_connsp_2(X4,X0,X2) )
                  | ~ r2_hidden(X2,k2_pre_topc(X0,X1)) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f22])).

fof(f24,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( r1_xboole_0(X3,X1)
          & m1_connsp_2(X3,X0,X2) )
     => ( r1_xboole_0(sK0(X0,X1,X2),X1)
        & m1_connsp_2(sK0(X0,X1,X2),X0,X2) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
                  | ( r1_xboole_0(sK0(X0,X1,X2),X1)
                    & m1_connsp_2(sK0(X0,X1,X2),X0,X2) ) )
                & ( ! [X4] :
                      ( ~ r1_xboole_0(X4,X1)
                      | ~ m1_connsp_2(X4,X0,X2) )
                  | ~ r2_hidden(X2,k2_pre_topc(X0,X1)) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f24])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k2_pre_topc(X0,X1))
      | r1_xboole_0(sK0(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f7,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( ( l1_waybel_0(X2,X0)
                & v7_waybel_0(X2)
                & v4_orders_2(X2)
                & ~ v2_struct_0(X2) )
             => ( r2_hidden(X1,k10_yellow_6(X0,X2))
               => ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                   => ( k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                     => r2_hidden(X1,k2_pre_topc(X0,X3)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( ( l1_waybel_0(X2,X0)
                  & v7_waybel_0(X2)
                  & v4_orders_2(X2)
                  & ~ v2_struct_0(X2) )
               => ( r2_hidden(X1,k10_yellow_6(X0,X2))
                 => ! [X3] :
                      ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                     => ( k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                       => r2_hidden(X1,k2_pre_topc(X0,X3)) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
                  & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & r2_hidden(X1,k10_yellow_6(X0,X2))
              & l1_waybel_0(X2,X0)
              & v7_waybel_0(X2)
              & v4_orders_2(X2)
              & ~ v2_struct_0(X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
                  & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & r2_hidden(X1,k10_yellow_6(X0,X2))
              & l1_waybel_0(X2,X0)
              & v7_waybel_0(X2)
              & v4_orders_2(X2)
              & ~ v2_struct_0(X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
          & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r2_hidden(X1,k2_pre_topc(X0,sK7))
        & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = sK7
        & m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
              & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
              & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
          & r2_hidden(X1,k10_yellow_6(X0,X2))
          & l1_waybel_0(X2,X0)
          & v7_waybel_0(X2)
          & v4_orders_2(X2)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
            & k2_relset_1(u1_struct_0(sK6),u1_struct_0(X0),u1_waybel_0(X0,sK6)) = X3
            & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
        & r2_hidden(X1,k10_yellow_6(X0,sK6))
        & l1_waybel_0(sK6,X0)
        & v7_waybel_0(sK6)
        & v4_orders_2(sK6)
        & ~ v2_struct_0(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
                  & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & r2_hidden(X1,k10_yellow_6(X0,X2))
              & l1_waybel_0(X2,X0)
              & v7_waybel_0(X2)
              & v4_orders_2(X2)
              & ~ v2_struct_0(X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ r2_hidden(sK5,k2_pre_topc(X0,X3))
                & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
            & r2_hidden(sK5,k10_yellow_6(X0,X2))
            & l1_waybel_0(X2,X0)
            & v7_waybel_0(X2)
            & v4_orders_2(X2)
            & ~ v2_struct_0(X2) )
        & m1_subset_1(sK5,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ r2_hidden(X1,k2_pre_topc(X0,X3))
                    & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & r2_hidden(X1,k10_yellow_6(X0,X2))
                & l1_waybel_0(X2,X0)
                & v7_waybel_0(X2)
                & v4_orders_2(X2)
                & ~ v2_struct_0(X2) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(X1,k2_pre_topc(sK4,X3))
                  & k2_relset_1(u1_struct_0(X2),u1_struct_0(sK4),u1_waybel_0(sK4,X2)) = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK4))) )
              & r2_hidden(X1,k10_yellow_6(sK4,X2))
              & l1_waybel_0(X2,sK4)
              & v7_waybel_0(X2)
              & v4_orders_2(X2)
              & ~ v2_struct_0(X2) )
          & m1_subset_1(X1,u1_struct_0(sK4)) )
      & l1_pre_topc(sK4)
      & v2_pre_topc(sK4)
      & ~ v2_struct_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( ~ r2_hidden(sK5,k2_pre_topc(sK4,sK7))
    & k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7
    & m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4)))
    & r2_hidden(sK5,k10_yellow_6(sK4,sK6))
    & l1_waybel_0(sK6,sK4)
    & v7_waybel_0(sK6)
    & v4_orders_2(sK6)
    & ~ v2_struct_0(sK6)
    & m1_subset_1(sK5,u1_struct_0(sK4))
    & l1_pre_topc(sK4)
    & v2_pre_topc(sK4)
    & ~ v2_struct_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f21,f36,f35,f34,f33])).

fof(f54,plain,(
    l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f52,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f53,plain,(
    v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k2_pre_topc(X0,X1))
      | m1_connsp_2(sK0(X0,X1,X2),X0,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f60,plain,(
    r2_hidden(sK5,k10_yellow_6(sK4,sK6)) ),
    inference(cnf_transformation,[],[f37])).

fof(f59,plain,(
    l1_waybel_0(sK6,sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f4,axiom,(
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

fof(f14,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f15,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f49,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f58,plain,(
    v7_waybel_0(sK6) ),
    inference(cnf_transformation,[],[f37])).

fof(f56,plain,(
    ~ v2_struct_0(sK6) ),
    inference(cnf_transformation,[],[f37])).

fof(f57,plain,(
    v4_orders_2(sK6) ),
    inference(cnf_transformation,[],[f37])).

fof(f3,axiom,(
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

fof(f12,plain,(
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
    inference(ennf_transformation,[],[f3])).

fof(f13,plain,(
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
    inference(flattening,[],[f12])).

fof(f26,plain,(
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
    inference(nnf_transformation,[],[f13])).

fof(f27,plain,(
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
    inference(flattening,[],[f26])).

fof(f28,plain,(
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
    inference(rectify,[],[f27])).

fof(f31,plain,(
    ! [X6,X1,X0] :
      ( ? [X7] :
          ( ~ r1_waybel_0(X0,X1,X7)
          & m1_connsp_2(X7,X0,X6) )
     => ( ~ r1_waybel_0(X0,X1,sK3(X0,X1,X6))
        & m1_connsp_2(sK3(X0,X1,X6),X0,X6) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ~ r1_waybel_0(X0,X1,X4)
          & m1_connsp_2(X4,X0,X3) )
     => ( ~ r1_waybel_0(X0,X1,sK2(X0,X1,X2))
        & m1_connsp_2(sK2(X0,X1,X2),X0,X3) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
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

fof(f32,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f28,f31,f30,f29])).

fof(f42,plain,(
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
    inference(cnf_transformation,[],[f32])).

fof(f66,plain,(
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
    inference(equality_resolution,[],[f42])).

fof(f55,plain,(
    m1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f37])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f38,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & ~ v2_struct_0(X1) )
         => r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
      | ~ l1_waybel_0(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f62,plain,(
    k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7 ),
    inference(cnf_transformation,[],[f37])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2,X3] :
              ~ ( r1_xboole_0(X2,X3)
                & r1_waybel_0(X0,X1,X3)
                & r1_waybel_0(X0,X1,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2,X3] :
              ( ~ r1_xboole_0(X2,X3)
              | ~ r1_waybel_0(X0,X1,X3)
              | ~ r1_waybel_0(X0,X1,X2) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2,X3] :
              ( ~ r1_xboole_0(X2,X3)
              | ~ r1_waybel_0(X0,X1,X3)
              | ~ r1_waybel_0(X0,X1,X2) )
          | ~ l1_waybel_0(X1,X0)
          | ~ v7_waybel_0(X1)
          | ~ v4_orders_2(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f50,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r1_xboole_0(X2,X3)
      | ~ r1_waybel_0(X0,X1,X3)
      | ~ r1_waybel_0(X0,X1,X2)
      | ~ l1_waybel_0(X1,X0)
      | ~ v7_waybel_0(X1)
      | ~ v4_orders_2(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f63,plain,(
    ~ r2_hidden(sK5,k2_pre_topc(sK4,sK7)) ),
    inference(cnf_transformation,[],[f37])).

fof(f61,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | r1_xboole_0(sK0(X1,X0,X2),X0)
    | r2_hidden(X2,k2_pre_topc(X1,X0))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_23,negated_conjecture,
    ( l1_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1211,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | r1_xboole_0(sK0(X1,X0,X2),X0)
    | r2_hidden(X2,k2_pre_topc(X1,X0))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_23])).

cnf(c_1212,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r1_xboole_0(sK0(sK4,X0,X1),X0)
    | r2_hidden(X1,k2_pre_topc(sK4,X0))
    | v2_struct_0(sK4)
    | ~ v2_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_1211])).

cnf(c_25,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_24,negated_conjecture,
    ( v2_pre_topc(sK4) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1216,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r1_xboole_0(sK0(sK4,X0,X1),X0)
    | r2_hidden(X1,k2_pre_topc(sK4,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1212,c_25,c_24])).

cnf(c_3150,plain,
    ( ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X1_54,u1_struct_0(sK4))
    | r1_xboole_0(sK0(sK4,X0_54,X1_54),X0_54)
    | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) ),
    inference(subtyping,[status(esa)],[c_1216])).

cnf(c_3522,plain,
    ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(X1_54,u1_struct_0(sK4)) != iProver_top
    | r1_xboole_0(sK0(sK4,X0_54,X1_54),X0_54) = iProver_top
    | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3150])).

cnf(c_2,plain,
    ( m1_connsp_2(sK0(X0,X1,X2),X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | r2_hidden(X2,k2_pre_topc(X0,X1))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1160,plain,
    ( m1_connsp_2(sK0(X0,X1,X2),X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | r2_hidden(X2,k2_pre_topc(X0,X1))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_23])).

cnf(c_1161,plain,
    ( m1_connsp_2(sK0(sK4,X0,X1),sK4,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r2_hidden(X1,k2_pre_topc(sK4,X0))
    | v2_struct_0(sK4)
    | ~ v2_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_1160])).

cnf(c_1165,plain,
    ( m1_connsp_2(sK0(sK4,X0,X1),sK4,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | r2_hidden(X1,k2_pre_topc(sK4,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1161,c_25,c_24])).

cnf(c_3152,plain,
    ( m1_connsp_2(sK0(sK4,X0_54,X1_54),sK4,X1_54)
    | ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X1_54,u1_struct_0(sK4))
    | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) ),
    inference(subtyping,[status(esa)],[c_1165])).

cnf(c_3520,plain,
    ( m1_connsp_2(sK0(sK4,X0_54,X1_54),sK4,X1_54) = iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(X1_54,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3152])).

cnf(c_17,negated_conjecture,
    ( r2_hidden(sK5,k10_yellow_6(sK4,sK6)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_3164,negated_conjecture,
    ( r2_hidden(sK5,k10_yellow_6(sK4,sK6)) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_3508,plain,
    ( r2_hidden(sK5,k10_yellow_6(sK4,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3164])).

cnf(c_18,negated_conjecture,
    ( l1_waybel_0(sK6,sK4) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_11,plain,
    ( ~ l1_waybel_0(X0,X1)
    | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_orders_2(X0)
    | ~ v7_waybel_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_19,negated_conjecture,
    ( v7_waybel_0(sK6) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_686,plain,
    ( ~ l1_waybel_0(X0,X1)
    | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v4_orders_2(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_19])).

cnf(c_687,plain,
    ( ~ l1_waybel_0(sK6,X0)
    | m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v4_orders_2(sK6)
    | v2_struct_0(X0)
    | v2_struct_0(sK6)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_686])).

cnf(c_21,negated_conjecture,
    ( ~ v2_struct_0(sK6) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_20,negated_conjecture,
    ( v4_orders_2(sK6) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_691,plain,
    ( v2_struct_0(X0)
    | ~ l1_waybel_0(sK6,X0)
    | m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_687,c_21,c_20])).

cnf(c_692,plain,
    ( ~ l1_waybel_0(sK6,X0)
    | m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(renaming,[status(thm)],[c_691])).

cnf(c_10,plain,
    ( r1_waybel_0(X0,X1,X2)
    | ~ m1_connsp_2(X2,X0,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ r2_hidden(X3,k10_yellow_6(X0,X1))
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_464,plain,
    ( r1_waybel_0(X0,X1,X2)
    | ~ m1_connsp_2(X2,X0,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ r2_hidden(X3,k10_yellow_6(X0,X1))
    | ~ v4_orders_2(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_19])).

cnf(c_465,plain,
    ( r1_waybel_0(X0,sK6,X1)
    | ~ m1_connsp_2(X1,X0,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
    | ~ v4_orders_2(sK6)
    | v2_struct_0(X0)
    | v2_struct_0(sK6)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_464])).

cnf(c_469,plain,
    ( v2_struct_0(X0)
    | r1_waybel_0(X0,sK6,X1)
    | ~ m1_connsp_2(X1,X0,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_465,c_21,c_20])).

cnf(c_470,plain,
    ( r1_waybel_0(X0,sK6,X1)
    | ~ m1_connsp_2(X1,X0,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(renaming,[status(thm)],[c_469])).

cnf(c_709,plain,
    ( r1_waybel_0(X0,sK6,X1)
    | ~ m1_connsp_2(X1,X0,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_692,c_470])).

cnf(c_988,plain,
    ( r1_waybel_0(X0,sK6,X1)
    | ~ m1_connsp_2(X1,X0,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | sK6 != sK6
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_709])).

cnf(c_989,plain,
    ( r1_waybel_0(sK4,sK6,X0)
    | ~ m1_connsp_2(X0,sK4,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,sK6))
    | v2_struct_0(sK4)
    | ~ v2_pre_topc(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_988])).

cnf(c_993,plain,
    ( ~ r2_hidden(X1,k10_yellow_6(sK4,sK6))
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_connsp_2(X0,sK4,X1)
    | r1_waybel_0(sK4,sK6,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_989,c_25,c_24,c_23])).

cnf(c_994,plain,
    ( r1_waybel_0(sK4,sK6,X0)
    | ~ m1_connsp_2(X0,sK4,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ r2_hidden(X1,k10_yellow_6(sK4,sK6)) ),
    inference(renaming,[status(thm)],[c_993])).

cnf(c_3158,plain,
    ( r1_waybel_0(sK4,sK6,X0_54)
    | ~ m1_connsp_2(X0_54,sK4,X1_54)
    | ~ m1_subset_1(X1_54,u1_struct_0(sK4))
    | ~ r2_hidden(X1_54,k10_yellow_6(sK4,sK6)) ),
    inference(subtyping,[status(esa)],[c_994])).

cnf(c_3514,plain,
    ( r1_waybel_0(sK4,sK6,X0_54) = iProver_top
    | m1_connsp_2(X0_54,sK4,X1_54) != iProver_top
    | m1_subset_1(X1_54,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X1_54,k10_yellow_6(sK4,sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3158])).

cnf(c_3984,plain,
    ( r1_waybel_0(sK4,sK6,X0_54) = iProver_top
    | m1_connsp_2(X0_54,sK4,sK5) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3508,c_3514])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_29,plain,
    ( m1_subset_1(sK5,u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3989,plain,
    ( m1_connsp_2(X0_54,sK4,sK5) != iProver_top
    | r1_waybel_0(sK4,sK6,X0_54) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3984,c_29])).

cnf(c_3990,plain,
    ( r1_waybel_0(sK4,sK6,X0_54) = iProver_top
    | m1_connsp_2(X0_54,sK4,sK5) != iProver_top ),
    inference(renaming,[status(thm)],[c_3989])).

cnf(c_3997,plain,
    ( r1_waybel_0(sK4,sK6,sK0(sK4,X0_54,sK5)) = iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3520,c_3990])).

cnf(c_4287,plain,
    ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r1_waybel_0(sK4,sK6,sK0(sK4,X0_54,sK5)) = iProver_top
    | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3997,c_29])).

cnf(c_4288,plain,
    ( r1_waybel_0(sK4,sK6,sK0(sK4,X0_54,sK5)) = iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
    inference(renaming,[status(thm)],[c_4287])).

cnf(c_0,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_13,plain,
    ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_275,plain,
    ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
    | ~ l1_waybel_0(X1,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_0,c_13])).

cnf(c_914,plain,
    ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0)
    | sK6 != X1
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_275,c_18])).

cnf(c_915,plain,
    ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)))
    | v2_struct_0(sK6)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_914])).

cnf(c_917,plain,
    ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_915,c_25,c_23,c_21])).

cnf(c_3162,plain,
    ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6))) ),
    inference(subtyping,[status(esa)],[c_917])).

cnf(c_3510,plain,
    ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3162])).

cnf(c_15,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_3166,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7 ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_3535,plain,
    ( r1_waybel_0(sK4,sK6,sK7) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3510,c_3166])).

cnf(c_12,plain,
    ( ~ r1_waybel_0(X0,X1,X2)
    | ~ r1_waybel_0(X0,X1,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ r1_xboole_0(X3,X2)
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_295,plain,
    ( ~ r1_waybel_0(X0,X1,X2)
    | ~ r1_waybel_0(X0,X1,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ r1_xboole_0(X3,X2)
    | ~ v4_orders_2(X1)
    | ~ v7_waybel_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_0,c_12])).

cnf(c_434,plain,
    ( ~ r1_waybel_0(X0,X1,X2)
    | ~ r1_waybel_0(X0,X1,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ r1_xboole_0(X3,X2)
    | ~ v4_orders_2(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_295,c_19])).

cnf(c_435,plain,
    ( ~ r1_waybel_0(X0,sK6,X1)
    | ~ r1_waybel_0(X0,sK6,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ r1_xboole_0(X1,X2)
    | ~ v4_orders_2(sK6)
    | v2_struct_0(X0)
    | v2_struct_0(sK6)
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_434])).

cnf(c_439,plain,
    ( v2_struct_0(X0)
    | ~ r1_waybel_0(X0,sK6,X1)
    | ~ r1_waybel_0(X0,sK6,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ r1_xboole_0(X1,X2)
    | ~ l1_pre_topc(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_435,c_21,c_20])).

cnf(c_440,plain,
    ( ~ r1_waybel_0(X0,sK6,X1)
    | ~ r1_waybel_0(X0,sK6,X2)
    | ~ l1_waybel_0(sK6,X0)
    | ~ r1_xboole_0(X2,X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(renaming,[status(thm)],[c_439])).

cnf(c_1098,plain,
    ( ~ r1_waybel_0(X0,sK6,X1)
    | ~ r1_waybel_0(X0,sK6,X2)
    | ~ r1_xboole_0(X1,X2)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK6 != sK6
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_440])).

cnf(c_1099,plain,
    ( ~ r1_waybel_0(sK4,sK6,X0)
    | ~ r1_waybel_0(sK4,sK6,X1)
    | ~ r1_xboole_0(X1,X0)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_1098])).

cnf(c_1103,plain,
    ( ~ r1_waybel_0(sK4,sK6,X0)
    | ~ r1_waybel_0(sK4,sK6,X1)
    | ~ r1_xboole_0(X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1099,c_25,c_23])).

cnf(c_3153,plain,
    ( ~ r1_waybel_0(sK4,sK6,X0_54)
    | ~ r1_waybel_0(sK4,sK6,X1_54)
    | ~ r1_xboole_0(X1_54,X0_54) ),
    inference(subtyping,[status(esa)],[c_1103])).

cnf(c_3519,plain,
    ( r1_waybel_0(sK4,sK6,X0_54) != iProver_top
    | r1_waybel_0(sK4,sK6,X1_54) != iProver_top
    | r1_xboole_0(X1_54,X0_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3153])).

cnf(c_3846,plain,
    ( r1_waybel_0(sK4,sK6,X0_54) != iProver_top
    | r1_xboole_0(X0_54,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_3535,c_3519])).

cnf(c_4296,plain,
    ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r1_xboole_0(sK0(sK4,X0_54,sK5),sK7) != iProver_top
    | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4288,c_3846])).

cnf(c_4322,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(sK5,k2_pre_topc(sK4,sK7)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3522,c_4296])).

cnf(c_14,negated_conjecture,
    ( ~ r2_hidden(sK5,k2_pre_topc(sK4,sK7)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_36,plain,
    ( r2_hidden(sK5,k2_pre_topc(sK4,sK7)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_35,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4322,c_36,c_35,c_29])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n018.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:24:27 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.53/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.53/1.00  
% 1.53/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.53/1.00  
% 1.53/1.00  ------  iProver source info
% 1.53/1.00  
% 1.53/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.53/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.53/1.00  git: non_committed_changes: false
% 1.53/1.00  git: last_make_outside_of_git: false
% 1.53/1.00  
% 1.53/1.00  ------ 
% 1.53/1.00  
% 1.53/1.00  ------ Input Options
% 1.53/1.00  
% 1.53/1.00  --out_options                           all
% 1.53/1.00  --tptp_safe_out                         true
% 1.53/1.00  --problem_path                          ""
% 1.53/1.00  --include_path                          ""
% 1.53/1.00  --clausifier                            res/vclausify_rel
% 1.53/1.00  --clausifier_options                    --mode clausify
% 1.53/1.00  --stdin                                 false
% 1.53/1.00  --stats_out                             all
% 1.53/1.00  
% 1.53/1.00  ------ General Options
% 1.53/1.00  
% 1.53/1.00  --fof                                   false
% 1.53/1.00  --time_out_real                         305.
% 1.53/1.00  --time_out_virtual                      -1.
% 1.53/1.00  --symbol_type_check                     false
% 1.53/1.00  --clausify_out                          false
% 1.53/1.00  --sig_cnt_out                           false
% 1.53/1.00  --trig_cnt_out                          false
% 1.53/1.00  --trig_cnt_out_tolerance                1.
% 1.53/1.00  --trig_cnt_out_sk_spl                   false
% 1.53/1.00  --abstr_cl_out                          false
% 1.53/1.00  
% 1.53/1.00  ------ Global Options
% 1.53/1.00  
% 1.53/1.00  --schedule                              default
% 1.53/1.00  --add_important_lit                     false
% 1.53/1.00  --prop_solver_per_cl                    1000
% 1.53/1.00  --min_unsat_core                        false
% 1.53/1.00  --soft_assumptions                      false
% 1.53/1.00  --soft_lemma_size                       3
% 1.53/1.00  --prop_impl_unit_size                   0
% 1.53/1.00  --prop_impl_unit                        []
% 1.53/1.00  --share_sel_clauses                     true
% 1.53/1.00  --reset_solvers                         false
% 1.53/1.00  --bc_imp_inh                            [conj_cone]
% 1.53/1.00  --conj_cone_tolerance                   3.
% 1.53/1.00  --extra_neg_conj                        none
% 1.53/1.00  --large_theory_mode                     true
% 1.53/1.00  --prolific_symb_bound                   200
% 1.53/1.00  --lt_threshold                          2000
% 1.53/1.00  --clause_weak_htbl                      true
% 1.53/1.00  --gc_record_bc_elim                     false
% 1.53/1.00  
% 1.53/1.00  ------ Preprocessing Options
% 1.53/1.00  
% 1.53/1.00  --preprocessing_flag                    true
% 1.53/1.00  --time_out_prep_mult                    0.1
% 1.53/1.00  --splitting_mode                        input
% 1.53/1.00  --splitting_grd                         true
% 1.53/1.00  --splitting_cvd                         false
% 1.53/1.00  --splitting_cvd_svl                     false
% 1.53/1.00  --splitting_nvd                         32
% 1.53/1.00  --sub_typing                            true
% 1.53/1.00  --prep_gs_sim                           true
% 1.53/1.00  --prep_unflatten                        true
% 1.53/1.00  --prep_res_sim                          true
% 1.53/1.00  --prep_upred                            true
% 1.53/1.00  --prep_sem_filter                       exhaustive
% 1.53/1.00  --prep_sem_filter_out                   false
% 1.53/1.00  --pred_elim                             true
% 1.53/1.00  --res_sim_input                         true
% 1.53/1.00  --eq_ax_congr_red                       true
% 1.53/1.00  --pure_diseq_elim                       true
% 1.53/1.00  --brand_transform                       false
% 1.53/1.00  --non_eq_to_eq                          false
% 1.53/1.00  --prep_def_merge                        true
% 1.53/1.00  --prep_def_merge_prop_impl              false
% 1.53/1.00  --prep_def_merge_mbd                    true
% 1.53/1.00  --prep_def_merge_tr_red                 false
% 1.53/1.00  --prep_def_merge_tr_cl                  false
% 1.53/1.00  --smt_preprocessing                     true
% 1.53/1.00  --smt_ac_axioms                         fast
% 1.53/1.00  --preprocessed_out                      false
% 1.53/1.00  --preprocessed_stats                    false
% 1.53/1.00  
% 1.53/1.00  ------ Abstraction refinement Options
% 1.53/1.00  
% 1.53/1.00  --abstr_ref                             []
% 1.53/1.00  --abstr_ref_prep                        false
% 1.53/1.00  --abstr_ref_until_sat                   false
% 1.53/1.00  --abstr_ref_sig_restrict                funpre
% 1.53/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.53/1.00  --abstr_ref_under                       []
% 1.53/1.00  
% 1.53/1.00  ------ SAT Options
% 1.53/1.00  
% 1.53/1.00  --sat_mode                              false
% 1.53/1.00  --sat_fm_restart_options                ""
% 1.53/1.00  --sat_gr_def                            false
% 1.53/1.00  --sat_epr_types                         true
% 1.53/1.00  --sat_non_cyclic_types                  false
% 1.53/1.00  --sat_finite_models                     false
% 1.53/1.00  --sat_fm_lemmas                         false
% 1.53/1.00  --sat_fm_prep                           false
% 1.53/1.00  --sat_fm_uc_incr                        true
% 1.53/1.00  --sat_out_model                         small
% 1.53/1.00  --sat_out_clauses                       false
% 1.53/1.00  
% 1.53/1.00  ------ QBF Options
% 1.53/1.00  
% 1.53/1.00  --qbf_mode                              false
% 1.53/1.00  --qbf_elim_univ                         false
% 1.53/1.00  --qbf_dom_inst                          none
% 1.53/1.00  --qbf_dom_pre_inst                      false
% 1.53/1.00  --qbf_sk_in                             false
% 1.53/1.00  --qbf_pred_elim                         true
% 1.53/1.00  --qbf_split                             512
% 1.53/1.00  
% 1.53/1.00  ------ BMC1 Options
% 1.53/1.00  
% 1.53/1.00  --bmc1_incremental                      false
% 1.53/1.00  --bmc1_axioms                           reachable_all
% 1.53/1.00  --bmc1_min_bound                        0
% 1.53/1.00  --bmc1_max_bound                        -1
% 1.53/1.00  --bmc1_max_bound_default                -1
% 1.53/1.00  --bmc1_symbol_reachability              true
% 1.53/1.00  --bmc1_property_lemmas                  false
% 1.53/1.00  --bmc1_k_induction                      false
% 1.53/1.00  --bmc1_non_equiv_states                 false
% 1.53/1.00  --bmc1_deadlock                         false
% 1.53/1.00  --bmc1_ucm                              false
% 1.53/1.00  --bmc1_add_unsat_core                   none
% 1.53/1.00  --bmc1_unsat_core_children              false
% 1.53/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.53/1.00  --bmc1_out_stat                         full
% 1.53/1.00  --bmc1_ground_init                      false
% 1.53/1.00  --bmc1_pre_inst_next_state              false
% 1.53/1.00  --bmc1_pre_inst_state                   false
% 1.53/1.00  --bmc1_pre_inst_reach_state             false
% 1.53/1.00  --bmc1_out_unsat_core                   false
% 1.53/1.00  --bmc1_aig_witness_out                  false
% 1.53/1.00  --bmc1_verbose                          false
% 1.53/1.00  --bmc1_dump_clauses_tptp                false
% 1.53/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.53/1.00  --bmc1_dump_file                        -
% 1.53/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.53/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.53/1.00  --bmc1_ucm_extend_mode                  1
% 1.53/1.00  --bmc1_ucm_init_mode                    2
% 1.53/1.00  --bmc1_ucm_cone_mode                    none
% 1.53/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.53/1.00  --bmc1_ucm_relax_model                  4
% 1.53/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.53/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.53/1.00  --bmc1_ucm_layered_model                none
% 1.53/1.00  --bmc1_ucm_max_lemma_size               10
% 1.53/1.00  
% 1.53/1.00  ------ AIG Options
% 1.53/1.00  
% 1.53/1.00  --aig_mode                              false
% 1.53/1.00  
% 1.53/1.00  ------ Instantiation Options
% 1.53/1.00  
% 1.53/1.00  --instantiation_flag                    true
% 1.53/1.00  --inst_sos_flag                         false
% 1.53/1.00  --inst_sos_phase                        true
% 1.53/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.53/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.53/1.00  --inst_lit_sel_side                     num_symb
% 1.53/1.00  --inst_solver_per_active                1400
% 1.53/1.00  --inst_solver_calls_frac                1.
% 1.53/1.00  --inst_passive_queue_type               priority_queues
% 1.53/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.53/1.00  --inst_passive_queues_freq              [25;2]
% 1.53/1.00  --inst_dismatching                      true
% 1.53/1.00  --inst_eager_unprocessed_to_passive     true
% 1.53/1.00  --inst_prop_sim_given                   true
% 1.53/1.00  --inst_prop_sim_new                     false
% 1.53/1.00  --inst_subs_new                         false
% 1.53/1.00  --inst_eq_res_simp                      false
% 1.53/1.00  --inst_subs_given                       false
% 1.53/1.00  --inst_orphan_elimination               true
% 1.53/1.00  --inst_learning_loop_flag               true
% 1.53/1.00  --inst_learning_start                   3000
% 1.53/1.00  --inst_learning_factor                  2
% 1.53/1.00  --inst_start_prop_sim_after_learn       3
% 1.53/1.00  --inst_sel_renew                        solver
% 1.53/1.00  --inst_lit_activity_flag                true
% 1.53/1.00  --inst_restr_to_given                   false
% 1.53/1.00  --inst_activity_threshold               500
% 1.53/1.00  --inst_out_proof                        true
% 1.53/1.00  
% 1.53/1.00  ------ Resolution Options
% 1.53/1.00  
% 1.53/1.00  --resolution_flag                       true
% 1.53/1.00  --res_lit_sel                           adaptive
% 1.53/1.00  --res_lit_sel_side                      none
% 1.53/1.00  --res_ordering                          kbo
% 1.53/1.00  --res_to_prop_solver                    active
% 1.53/1.00  --res_prop_simpl_new                    false
% 1.53/1.00  --res_prop_simpl_given                  true
% 1.53/1.00  --res_passive_queue_type                priority_queues
% 1.53/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.53/1.00  --res_passive_queues_freq               [15;5]
% 1.53/1.00  --res_forward_subs                      full
% 1.53/1.00  --res_backward_subs                     full
% 1.53/1.00  --res_forward_subs_resolution           true
% 1.53/1.00  --res_backward_subs_resolution          true
% 1.53/1.00  --res_orphan_elimination                true
% 1.53/1.00  --res_time_limit                        2.
% 1.53/1.00  --res_out_proof                         true
% 1.53/1.00  
% 1.53/1.00  ------ Superposition Options
% 1.53/1.00  
% 1.53/1.00  --superposition_flag                    true
% 1.53/1.00  --sup_passive_queue_type                priority_queues
% 1.53/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.53/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.53/1.00  --demod_completeness_check              fast
% 1.53/1.00  --demod_use_ground                      true
% 1.53/1.00  --sup_to_prop_solver                    passive
% 1.53/1.00  --sup_prop_simpl_new                    true
% 1.53/1.00  --sup_prop_simpl_given                  true
% 1.53/1.00  --sup_fun_splitting                     false
% 1.53/1.00  --sup_smt_interval                      50000
% 1.53/1.00  
% 1.53/1.00  ------ Superposition Simplification Setup
% 1.53/1.00  
% 1.53/1.00  --sup_indices_passive                   []
% 1.53/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.53/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/1.00  --sup_full_bw                           [BwDemod]
% 1.53/1.00  --sup_immed_triv                        [TrivRules]
% 1.53/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.53/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/1.00  --sup_immed_bw_main                     []
% 1.53/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.53/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/1.00  
% 1.53/1.00  ------ Combination Options
% 1.53/1.00  
% 1.53/1.00  --comb_res_mult                         3
% 1.53/1.00  --comb_sup_mult                         2
% 1.53/1.00  --comb_inst_mult                        10
% 1.53/1.00  
% 1.53/1.00  ------ Debug Options
% 1.53/1.00  
% 1.53/1.00  --dbg_backtrace                         false
% 1.53/1.00  --dbg_dump_prop_clauses                 false
% 1.53/1.00  --dbg_dump_prop_clauses_file            -
% 1.53/1.00  --dbg_out_stat                          false
% 1.53/1.00  ------ Parsing...
% 1.53/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.53/1.00  
% 1.53/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 1.53/1.00  
% 1.53/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.53/1.00  
% 1.53/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.53/1.00  ------ Proving...
% 1.53/1.00  ------ Problem Properties 
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  clauses                                 18
% 1.53/1.00  conjectures                             5
% 1.53/1.00  EPR                                     1
% 1.53/1.00  Horn                                    12
% 1.53/1.00  unary                                   7
% 1.53/1.00  binary                                  0
% 1.53/1.00  lits                                    49
% 1.53/1.00  lits eq                                 5
% 1.53/1.00  fd_pure                                 0
% 1.53/1.00  fd_pseudo                               0
% 1.53/1.00  fd_cond                                 4
% 1.53/1.00  fd_pseudo_cond                          0
% 1.53/1.00  AC symbols                              0
% 1.53/1.00  
% 1.53/1.00  ------ Schedule dynamic 5 is on 
% 1.53/1.00  
% 1.53/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  ------ 
% 1.53/1.00  Current options:
% 1.53/1.00  ------ 
% 1.53/1.00  
% 1.53/1.00  ------ Input Options
% 1.53/1.00  
% 1.53/1.00  --out_options                           all
% 1.53/1.00  --tptp_safe_out                         true
% 1.53/1.00  --problem_path                          ""
% 1.53/1.00  --include_path                          ""
% 1.53/1.00  --clausifier                            res/vclausify_rel
% 1.53/1.00  --clausifier_options                    --mode clausify
% 1.53/1.00  --stdin                                 false
% 1.53/1.00  --stats_out                             all
% 1.53/1.00  
% 1.53/1.00  ------ General Options
% 1.53/1.00  
% 1.53/1.00  --fof                                   false
% 1.53/1.00  --time_out_real                         305.
% 1.53/1.00  --time_out_virtual                      -1.
% 1.53/1.00  --symbol_type_check                     false
% 1.53/1.00  --clausify_out                          false
% 1.53/1.00  --sig_cnt_out                           false
% 1.53/1.00  --trig_cnt_out                          false
% 1.53/1.00  --trig_cnt_out_tolerance                1.
% 1.53/1.00  --trig_cnt_out_sk_spl                   false
% 1.53/1.00  --abstr_cl_out                          false
% 1.53/1.00  
% 1.53/1.00  ------ Global Options
% 1.53/1.00  
% 1.53/1.00  --schedule                              default
% 1.53/1.00  --add_important_lit                     false
% 1.53/1.00  --prop_solver_per_cl                    1000
% 1.53/1.00  --min_unsat_core                        false
% 1.53/1.00  --soft_assumptions                      false
% 1.53/1.00  --soft_lemma_size                       3
% 1.53/1.00  --prop_impl_unit_size                   0
% 1.53/1.00  --prop_impl_unit                        []
% 1.53/1.00  --share_sel_clauses                     true
% 1.53/1.00  --reset_solvers                         false
% 1.53/1.00  --bc_imp_inh                            [conj_cone]
% 1.53/1.00  --conj_cone_tolerance                   3.
% 1.53/1.00  --extra_neg_conj                        none
% 1.53/1.00  --large_theory_mode                     true
% 1.53/1.00  --prolific_symb_bound                   200
% 1.53/1.00  --lt_threshold                          2000
% 1.53/1.00  --clause_weak_htbl                      true
% 1.53/1.00  --gc_record_bc_elim                     false
% 1.53/1.00  
% 1.53/1.00  ------ Preprocessing Options
% 1.53/1.00  
% 1.53/1.00  --preprocessing_flag                    true
% 1.53/1.00  --time_out_prep_mult                    0.1
% 1.53/1.00  --splitting_mode                        input
% 1.53/1.00  --splitting_grd                         true
% 1.53/1.00  --splitting_cvd                         false
% 1.53/1.00  --splitting_cvd_svl                     false
% 1.53/1.00  --splitting_nvd                         32
% 1.53/1.00  --sub_typing                            true
% 1.53/1.00  --prep_gs_sim                           true
% 1.53/1.00  --prep_unflatten                        true
% 1.53/1.00  --prep_res_sim                          true
% 1.53/1.00  --prep_upred                            true
% 1.53/1.00  --prep_sem_filter                       exhaustive
% 1.53/1.00  --prep_sem_filter_out                   false
% 1.53/1.00  --pred_elim                             true
% 1.53/1.00  --res_sim_input                         true
% 1.53/1.00  --eq_ax_congr_red                       true
% 1.53/1.00  --pure_diseq_elim                       true
% 1.53/1.00  --brand_transform                       false
% 1.53/1.00  --non_eq_to_eq                          false
% 1.53/1.00  --prep_def_merge                        true
% 1.53/1.00  --prep_def_merge_prop_impl              false
% 1.53/1.00  --prep_def_merge_mbd                    true
% 1.53/1.00  --prep_def_merge_tr_red                 false
% 1.53/1.00  --prep_def_merge_tr_cl                  false
% 1.53/1.00  --smt_preprocessing                     true
% 1.53/1.00  --smt_ac_axioms                         fast
% 1.53/1.00  --preprocessed_out                      false
% 1.53/1.00  --preprocessed_stats                    false
% 1.53/1.00  
% 1.53/1.00  ------ Abstraction refinement Options
% 1.53/1.00  
% 1.53/1.00  --abstr_ref                             []
% 1.53/1.00  --abstr_ref_prep                        false
% 1.53/1.00  --abstr_ref_until_sat                   false
% 1.53/1.00  --abstr_ref_sig_restrict                funpre
% 1.53/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.53/1.00  --abstr_ref_under                       []
% 1.53/1.00  
% 1.53/1.00  ------ SAT Options
% 1.53/1.00  
% 1.53/1.00  --sat_mode                              false
% 1.53/1.00  --sat_fm_restart_options                ""
% 1.53/1.00  --sat_gr_def                            false
% 1.53/1.00  --sat_epr_types                         true
% 1.53/1.00  --sat_non_cyclic_types                  false
% 1.53/1.00  --sat_finite_models                     false
% 1.53/1.00  --sat_fm_lemmas                         false
% 1.53/1.00  --sat_fm_prep                           false
% 1.53/1.00  --sat_fm_uc_incr                        true
% 1.53/1.00  --sat_out_model                         small
% 1.53/1.00  --sat_out_clauses                       false
% 1.53/1.00  
% 1.53/1.00  ------ QBF Options
% 1.53/1.00  
% 1.53/1.00  --qbf_mode                              false
% 1.53/1.00  --qbf_elim_univ                         false
% 1.53/1.00  --qbf_dom_inst                          none
% 1.53/1.00  --qbf_dom_pre_inst                      false
% 1.53/1.00  --qbf_sk_in                             false
% 1.53/1.00  --qbf_pred_elim                         true
% 1.53/1.00  --qbf_split                             512
% 1.53/1.00  
% 1.53/1.00  ------ BMC1 Options
% 1.53/1.00  
% 1.53/1.00  --bmc1_incremental                      false
% 1.53/1.00  --bmc1_axioms                           reachable_all
% 1.53/1.00  --bmc1_min_bound                        0
% 1.53/1.00  --bmc1_max_bound                        -1
% 1.53/1.00  --bmc1_max_bound_default                -1
% 1.53/1.00  --bmc1_symbol_reachability              true
% 1.53/1.00  --bmc1_property_lemmas                  false
% 1.53/1.00  --bmc1_k_induction                      false
% 1.53/1.00  --bmc1_non_equiv_states                 false
% 1.53/1.00  --bmc1_deadlock                         false
% 1.53/1.00  --bmc1_ucm                              false
% 1.53/1.00  --bmc1_add_unsat_core                   none
% 1.53/1.00  --bmc1_unsat_core_children              false
% 1.53/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.53/1.00  --bmc1_out_stat                         full
% 1.53/1.00  --bmc1_ground_init                      false
% 1.53/1.00  --bmc1_pre_inst_next_state              false
% 1.53/1.00  --bmc1_pre_inst_state                   false
% 1.53/1.00  --bmc1_pre_inst_reach_state             false
% 1.53/1.00  --bmc1_out_unsat_core                   false
% 1.53/1.00  --bmc1_aig_witness_out                  false
% 1.53/1.00  --bmc1_verbose                          false
% 1.53/1.00  --bmc1_dump_clauses_tptp                false
% 1.53/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.53/1.00  --bmc1_dump_file                        -
% 1.53/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.53/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.53/1.00  --bmc1_ucm_extend_mode                  1
% 1.53/1.00  --bmc1_ucm_init_mode                    2
% 1.53/1.00  --bmc1_ucm_cone_mode                    none
% 1.53/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.53/1.00  --bmc1_ucm_relax_model                  4
% 1.53/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.53/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.53/1.00  --bmc1_ucm_layered_model                none
% 1.53/1.00  --bmc1_ucm_max_lemma_size               10
% 1.53/1.00  
% 1.53/1.00  ------ AIG Options
% 1.53/1.00  
% 1.53/1.00  --aig_mode                              false
% 1.53/1.00  
% 1.53/1.00  ------ Instantiation Options
% 1.53/1.00  
% 1.53/1.00  --instantiation_flag                    true
% 1.53/1.00  --inst_sos_flag                         false
% 1.53/1.00  --inst_sos_phase                        true
% 1.53/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.53/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.53/1.00  --inst_lit_sel_side                     none
% 1.53/1.00  --inst_solver_per_active                1400
% 1.53/1.00  --inst_solver_calls_frac                1.
% 1.53/1.00  --inst_passive_queue_type               priority_queues
% 1.53/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.53/1.00  --inst_passive_queues_freq              [25;2]
% 1.53/1.00  --inst_dismatching                      true
% 1.53/1.00  --inst_eager_unprocessed_to_passive     true
% 1.53/1.00  --inst_prop_sim_given                   true
% 1.53/1.00  --inst_prop_sim_new                     false
% 1.53/1.00  --inst_subs_new                         false
% 1.53/1.00  --inst_eq_res_simp                      false
% 1.53/1.00  --inst_subs_given                       false
% 1.53/1.00  --inst_orphan_elimination               true
% 1.53/1.00  --inst_learning_loop_flag               true
% 1.53/1.00  --inst_learning_start                   3000
% 1.53/1.00  --inst_learning_factor                  2
% 1.53/1.00  --inst_start_prop_sim_after_learn       3
% 1.53/1.00  --inst_sel_renew                        solver
% 1.53/1.00  --inst_lit_activity_flag                true
% 1.53/1.00  --inst_restr_to_given                   false
% 1.53/1.00  --inst_activity_threshold               500
% 1.53/1.00  --inst_out_proof                        true
% 1.53/1.00  
% 1.53/1.00  ------ Resolution Options
% 1.53/1.00  
% 1.53/1.00  --resolution_flag                       false
% 1.53/1.00  --res_lit_sel                           adaptive
% 1.53/1.00  --res_lit_sel_side                      none
% 1.53/1.00  --res_ordering                          kbo
% 1.53/1.00  --res_to_prop_solver                    active
% 1.53/1.00  --res_prop_simpl_new                    false
% 1.53/1.00  --res_prop_simpl_given                  true
% 1.53/1.00  --res_passive_queue_type                priority_queues
% 1.53/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.53/1.00  --res_passive_queues_freq               [15;5]
% 1.53/1.00  --res_forward_subs                      full
% 1.53/1.00  --res_backward_subs                     full
% 1.53/1.00  --res_forward_subs_resolution           true
% 1.53/1.00  --res_backward_subs_resolution          true
% 1.53/1.00  --res_orphan_elimination                true
% 1.53/1.00  --res_time_limit                        2.
% 1.53/1.00  --res_out_proof                         true
% 1.53/1.00  
% 1.53/1.00  ------ Superposition Options
% 1.53/1.00  
% 1.53/1.00  --superposition_flag                    true
% 1.53/1.00  --sup_passive_queue_type                priority_queues
% 1.53/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.53/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.53/1.00  --demod_completeness_check              fast
% 1.53/1.00  --demod_use_ground                      true
% 1.53/1.00  --sup_to_prop_solver                    passive
% 1.53/1.00  --sup_prop_simpl_new                    true
% 1.53/1.00  --sup_prop_simpl_given                  true
% 1.53/1.00  --sup_fun_splitting                     false
% 1.53/1.00  --sup_smt_interval                      50000
% 1.53/1.00  
% 1.53/1.00  ------ Superposition Simplification Setup
% 1.53/1.00  
% 1.53/1.00  --sup_indices_passive                   []
% 1.53/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.53/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/1.00  --sup_full_bw                           [BwDemod]
% 1.53/1.00  --sup_immed_triv                        [TrivRules]
% 1.53/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.53/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/1.00  --sup_immed_bw_main                     []
% 1.53/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.53/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/1.00  
% 1.53/1.00  ------ Combination Options
% 1.53/1.00  
% 1.53/1.00  --comb_res_mult                         3
% 1.53/1.00  --comb_sup_mult                         2
% 1.53/1.00  --comb_inst_mult                        10
% 1.53/1.00  
% 1.53/1.00  ------ Debug Options
% 1.53/1.00  
% 1.53/1.00  --dbg_backtrace                         false
% 1.53/1.00  --dbg_dump_prop_clauses                 false
% 1.53/1.00  --dbg_dump_prop_clauses_file            -
% 1.53/1.00  --dbg_out_stat                          false
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  ------ Proving...
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  % SZS status Theorem for theBenchmark.p
% 1.53/1.00  
% 1.53/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.53/1.00  
% 1.53/1.00  fof(f2,axiom,(
% 1.53/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_hidden(X2,k2_pre_topc(X0,X1)) <=> ! [X3] : (m1_connsp_2(X3,X0,X2) => ~r1_xboole_0(X3,X1))))))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f10,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,k2_pre_topc(X0,X1)) <=> ! [X3] : (~r1_xboole_0(X3,X1) | ~m1_connsp_2(X3,X0,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.53/1.00    inference(ennf_transformation,[],[f2])).
% 1.53/1.00  
% 1.53/1.00  fof(f11,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,k2_pre_topc(X0,X1)) <=> ! [X3] : (~r1_xboole_0(X3,X1) | ~m1_connsp_2(X3,X0,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f10])).
% 1.53/1.00  
% 1.53/1.00  fof(f22,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k2_pre_topc(X0,X1)) | ? [X3] : (r1_xboole_0(X3,X1) & m1_connsp_2(X3,X0,X2))) & (! [X3] : (~r1_xboole_0(X3,X1) | ~m1_connsp_2(X3,X0,X2)) | ~r2_hidden(X2,k2_pre_topc(X0,X1)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(nnf_transformation,[],[f11])).
% 1.53/1.00  
% 1.53/1.00  fof(f23,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k2_pre_topc(X0,X1)) | ? [X3] : (r1_xboole_0(X3,X1) & m1_connsp_2(X3,X0,X2))) & (! [X4] : (~r1_xboole_0(X4,X1) | ~m1_connsp_2(X4,X0,X2)) | ~r2_hidden(X2,k2_pre_topc(X0,X1)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(rectify,[],[f22])).
% 1.53/1.00  
% 1.53/1.00  fof(f24,plain,(
% 1.53/1.00    ! [X2,X1,X0] : (? [X3] : (r1_xboole_0(X3,X1) & m1_connsp_2(X3,X0,X2)) => (r1_xboole_0(sK0(X0,X1,X2),X1) & m1_connsp_2(sK0(X0,X1,X2),X0,X2)))),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f25,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k2_pre_topc(X0,X1)) | (r1_xboole_0(sK0(X0,X1,X2),X1) & m1_connsp_2(sK0(X0,X1,X2),X0,X2))) & (! [X4] : (~r1_xboole_0(X4,X1) | ~m1_connsp_2(X4,X0,X2)) | ~r2_hidden(X2,k2_pre_topc(X0,X1)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f24])).
% 1.53/1.00  
% 1.53/1.00  fof(f41,plain,(
% 1.53/1.00    ( ! [X2,X0,X1] : (r2_hidden(X2,k2_pre_topc(X0,X1)) | r1_xboole_0(sK0(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f25])).
% 1.53/1.00  
% 1.53/1.00  fof(f7,conjecture,(
% 1.53/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : ((l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) => (r2_hidden(X1,k10_yellow_6(X0,X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 => r2_hidden(X1,k2_pre_topc(X0,X3))))))))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f8,negated_conjecture,(
% 1.53/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : ((l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) => (r2_hidden(X1,k10_yellow_6(X0,X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 => r2_hidden(X1,k2_pre_topc(X0,X3))))))))),
% 1.53/1.00    inference(negated_conjecture,[],[f7])).
% 1.53/1.00  
% 1.53/1.00  fof(f20,plain,(
% 1.53/1.00    ? [X0] : (? [X1] : (? [X2] : ((? [X3] : ((~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X1,k10_yellow_6(X0,X2))) & (l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.53/1.00    inference(ennf_transformation,[],[f8])).
% 1.53/1.00  
% 1.53/1.00  fof(f21,plain,(
% 1.53/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X1,k10_yellow_6(X0,X2)) & l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f20])).
% 1.53/1.00  
% 1.53/1.00  fof(f36,plain,(
% 1.53/1.00    ( ! [X2,X0,X1] : (? [X3] : (~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (~r2_hidden(X1,k2_pre_topc(X0,sK7)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = sK7 & m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f35,plain,(
% 1.53/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X1,k10_yellow_6(X0,X2)) & l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) => (? [X3] : (~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(sK6),u1_struct_0(X0),u1_waybel_0(X0,sK6)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X1,k10_yellow_6(X0,sK6)) & l1_waybel_0(sK6,X0) & v7_waybel_0(sK6) & v4_orders_2(sK6) & ~v2_struct_0(sK6))) )),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f34,plain,(
% 1.53/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X1,k10_yellow_6(X0,X2)) & l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (? [X3] : (~r2_hidden(sK5,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(sK5,k10_yellow_6(X0,X2)) & l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) & m1_subset_1(sK5,u1_struct_0(X0)))) )),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f33,plain,(
% 1.53/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(X1,k2_pre_topc(X0,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(X0),u1_waybel_0(X0,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X1,k10_yellow_6(X0,X2)) & l1_waybel_0(X2,X0) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(X1,k2_pre_topc(sK4,X3)) & k2_relset_1(u1_struct_0(X2),u1_struct_0(sK4),u1_waybel_0(sK4,X2)) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK4)))) & r2_hidden(X1,k10_yellow_6(sK4,X2)) & l1_waybel_0(X2,sK4) & v7_waybel_0(X2) & v4_orders_2(X2) & ~v2_struct_0(X2)) & m1_subset_1(X1,u1_struct_0(sK4))) & l1_pre_topc(sK4) & v2_pre_topc(sK4) & ~v2_struct_0(sK4))),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f37,plain,(
% 1.53/1.00    (((~r2_hidden(sK5,k2_pre_topc(sK4,sK7)) & k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7 & m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4)))) & r2_hidden(sK5,k10_yellow_6(sK4,sK6)) & l1_waybel_0(sK6,sK4) & v7_waybel_0(sK6) & v4_orders_2(sK6) & ~v2_struct_0(sK6)) & m1_subset_1(sK5,u1_struct_0(sK4))) & l1_pre_topc(sK4) & v2_pre_topc(sK4) & ~v2_struct_0(sK4)),
% 1.53/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f21,f36,f35,f34,f33])).
% 1.53/1.00  
% 1.53/1.00  fof(f54,plain,(
% 1.53/1.00    l1_pre_topc(sK4)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f52,plain,(
% 1.53/1.00    ~v2_struct_0(sK4)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f53,plain,(
% 1.53/1.00    v2_pre_topc(sK4)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f40,plain,(
% 1.53/1.00    ( ! [X2,X0,X1] : (r2_hidden(X2,k2_pre_topc(X0,X1)) | m1_connsp_2(sK0(X0,X1,X2),X0,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f25])).
% 1.53/1.00  
% 1.53/1.00  fof(f60,plain,(
% 1.53/1.00    r2_hidden(sK5,k10_yellow_6(sK4,sK6))),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f59,plain,(
% 1.53/1.00    l1_waybel_0(sK6,sK4)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f4,axiom,(
% 1.53/1.00    ! [X0,X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f14,plain,(
% 1.53/1.00    ! [X0,X1] : (m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.53/1.00    inference(ennf_transformation,[],[f4])).
% 1.53/1.00  
% 1.53/1.00  fof(f15,plain,(
% 1.53/1.00    ! [X0,X1] : (m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f14])).
% 1.53/1.00  
% 1.53/1.00  fof(f49,plain,(
% 1.53/1.00    ( ! [X0,X1] : (m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f15])).
% 1.53/1.00  
% 1.53/1.00  fof(f58,plain,(
% 1.53/1.00    v7_waybel_0(sK6)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f56,plain,(
% 1.53/1.00    ~v2_struct_0(sK6)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f57,plain,(
% 1.53/1.00    v4_orders_2(sK6)),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f3,axiom,(
% 1.53/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (k10_yellow_6(X0,X1) = X2 <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X2) <=> ! [X4] : (m1_connsp_2(X4,X0,X3) => r1_waybel_0(X0,X1,X4))))))))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f12,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : ((k10_yellow_6(X0,X1) = X2 <=> ! [X3] : ((r2_hidden(X3,X2) <=> ! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3))) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.53/1.00    inference(ennf_transformation,[],[f3])).
% 1.53/1.00  
% 1.53/1.00  fof(f13,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : ((k10_yellow_6(X0,X1) = X2 <=> ! [X3] : ((r2_hidden(X3,X2) <=> ! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3))) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f12])).
% 1.53/1.00  
% 1.53/1.00  fof(f26,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | ? [X3] : (((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | r2_hidden(X3,X2))) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (((r2_hidden(X3,X2) | ? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3))) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(nnf_transformation,[],[f13])).
% 1.53/1.00  
% 1.53/1.00  fof(f27,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | ? [X3] : ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | r2_hidden(X3,X2)) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (((r2_hidden(X3,X2) | ? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3))) & (! [X4] : (r1_waybel_0(X0,X1,X4) | ~m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2))) | ~m1_subset_1(X3,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f26])).
% 1.53/1.00  
% 1.53/1.00  fof(f28,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | ? [X3] : ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,X3)) | r2_hidden(X3,X2)) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X6] : (((r2_hidden(X6,X2) | ? [X7] : (~r1_waybel_0(X0,X1,X7) & m1_connsp_2(X7,X0,X6))) & (! [X8] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6)) | ~r2_hidden(X6,X2))) | ~m1_subset_1(X6,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(rectify,[],[f27])).
% 1.53/1.00  
% 1.53/1.00  fof(f31,plain,(
% 1.53/1.00    ! [X6,X1,X0] : (? [X7] : (~r1_waybel_0(X0,X1,X7) & m1_connsp_2(X7,X0,X6)) => (~r1_waybel_0(X0,X1,sK3(X0,X1,X6)) & m1_connsp_2(sK3(X0,X1,X6),X0,X6)))),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f30,plain,(
% 1.53/1.00    ( ! [X3] : (! [X2,X1,X0] : (? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) => (~r1_waybel_0(X0,X1,sK2(X0,X1,X2)) & m1_connsp_2(sK2(X0,X1,X2),X0,X3)))) )),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f29,plain,(
% 1.53/1.00    ! [X2,X1,X0] : (? [X3] : ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,X3)) | ~r2_hidden(X3,X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,X3)) | r2_hidden(X3,X2)) & m1_subset_1(X3,u1_struct_0(X0))) => ((? [X4] : (~r1_waybel_0(X0,X1,X4) & m1_connsp_2(X4,X0,sK1(X0,X1,X2))) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,sK1(X0,X1,X2))) | r2_hidden(sK1(X0,X1,X2),X2)) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))))),
% 1.53/1.00    introduced(choice_axiom,[])).
% 1.53/1.00  
% 1.53/1.00  fof(f32,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2] : (((k10_yellow_6(X0,X1) = X2 | (((~r1_waybel_0(X0,X1,sK2(X0,X1,X2)) & m1_connsp_2(sK2(X0,X1,X2),X0,sK1(X0,X1,X2))) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (! [X5] : (r1_waybel_0(X0,X1,X5) | ~m1_connsp_2(X5,X0,sK1(X0,X1,X2))) | r2_hidden(sK1(X0,X1,X2),X2)) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)))) & (! [X6] : (((r2_hidden(X6,X2) | (~r1_waybel_0(X0,X1,sK3(X0,X1,X6)) & m1_connsp_2(sK3(X0,X1,X6),X0,X6))) & (! [X8] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6)) | ~r2_hidden(X6,X2))) | ~m1_subset_1(X6,u1_struct_0(X0))) | k10_yellow_6(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f28,f31,f30,f29])).
% 1.53/1.00  
% 1.53/1.00  fof(f42,plain,(
% 1.53/1.00    ( ! [X6,X2,X0,X8,X1] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6) | ~r2_hidden(X6,X2) | ~m1_subset_1(X6,u1_struct_0(X0)) | k10_yellow_6(X0,X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f32])).
% 1.53/1.00  
% 1.53/1.00  fof(f66,plain,(
% 1.53/1.00    ( ! [X6,X0,X8,X1] : (r1_waybel_0(X0,X1,X8) | ~m1_connsp_2(X8,X0,X6) | ~r2_hidden(X6,k10_yellow_6(X0,X1)) | ~m1_subset_1(X6,u1_struct_0(X0)) | ~m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(equality_resolution,[],[f42])).
% 1.53/1.00  
% 1.53/1.00  fof(f55,plain,(
% 1.53/1.00    m1_subset_1(sK5,u1_struct_0(sK4))),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f1,axiom,(
% 1.53/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f9,plain,(
% 1.53/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.53/1.00    inference(ennf_transformation,[],[f1])).
% 1.53/1.00  
% 1.53/1.00  fof(f38,plain,(
% 1.53/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f9])).
% 1.53/1.00  
% 1.53/1.00  fof(f6,axiom,(
% 1.53/1.00    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f18,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1))) | (~l1_waybel_0(X1,X0) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.53/1.00    inference(ennf_transformation,[],[f6])).
% 1.53/1.00  
% 1.53/1.00  fof(f19,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f18])).
% 1.53/1.00  
% 1.53/1.00  fof(f51,plain,(
% 1.53/1.00    ( ! [X0,X1] : (r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f19])).
% 1.53/1.00  
% 1.53/1.00  fof(f62,plain,(
% 1.53/1.00    k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f5,axiom,(
% 1.53/1.00    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2,X3] : ~(r1_xboole_0(X2,X3) & r1_waybel_0(X0,X1,X3) & r1_waybel_0(X0,X1,X2))))),
% 1.53/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.53/1.00  
% 1.53/1.00  fof(f16,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2,X3] : (~r1_xboole_0(X2,X3) | ~r1_waybel_0(X0,X1,X3) | ~r1_waybel_0(X0,X1,X2)) | (~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.53/1.00    inference(ennf_transformation,[],[f5])).
% 1.53/1.00  
% 1.53/1.00  fof(f17,plain,(
% 1.53/1.00    ! [X0] : (! [X1] : (! [X2,X3] : (~r1_xboole_0(X2,X3) | ~r1_waybel_0(X0,X1,X3) | ~r1_waybel_0(X0,X1,X2)) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.53/1.00    inference(flattening,[],[f16])).
% 1.53/1.00  
% 1.53/1.00  fof(f50,plain,(
% 1.53/1.00    ( ! [X2,X0,X3,X1] : (~r1_xboole_0(X2,X3) | ~r1_waybel_0(X0,X1,X3) | ~r1_waybel_0(X0,X1,X2) | ~l1_waybel_0(X1,X0) | ~v7_waybel_0(X1) | ~v4_orders_2(X1) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.53/1.00    inference(cnf_transformation,[],[f17])).
% 1.53/1.00  
% 1.53/1.00  fof(f63,plain,(
% 1.53/1.00    ~r2_hidden(sK5,k2_pre_topc(sK4,sK7))),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  fof(f61,plain,(
% 1.53/1.00    m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4)))),
% 1.53/1.00    inference(cnf_transformation,[],[f37])).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1,plain,
% 1.53/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.53/1.00      | r1_xboole_0(sK0(X1,X0,X2),X0)
% 1.53/1.00      | r2_hidden(X2,k2_pre_topc(X1,X0))
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ v2_pre_topc(X1)
% 1.53/1.00      | ~ l1_pre_topc(X1) ),
% 1.53/1.00      inference(cnf_transformation,[],[f41]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_23,negated_conjecture,
% 1.53/1.00      ( l1_pre_topc(sK4) ),
% 1.53/1.00      inference(cnf_transformation,[],[f54]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1211,plain,
% 1.53/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.53/1.00      | r1_xboole_0(sK0(X1,X0,X2),X0)
% 1.53/1.00      | r2_hidden(X2,k2_pre_topc(X1,X0))
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ v2_pre_topc(X1)
% 1.53/1.00      | sK4 != X1 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_23]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1212,plain,
% 1.53/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | r1_xboole_0(sK0(sK4,X0,X1),X0)
% 1.53/1.00      | r2_hidden(X1,k2_pre_topc(sK4,X0))
% 1.53/1.00      | v2_struct_0(sK4)
% 1.53/1.00      | ~ v2_pre_topc(sK4) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_1211]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_25,negated_conjecture,
% 1.53/1.00      ( ~ v2_struct_0(sK4) ),
% 1.53/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_24,negated_conjecture,
% 1.53/1.00      ( v2_pre_topc(sK4) ),
% 1.53/1.00      inference(cnf_transformation,[],[f53]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1216,plain,
% 1.53/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | r1_xboole_0(sK0(sK4,X0,X1),X0)
% 1.53/1.00      | r2_hidden(X1,k2_pre_topc(sK4,X0)) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_1212,c_25,c_24]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3150,plain,
% 1.53/1.00      ( ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4)))
% 1.53/1.00      | ~ m1_subset_1(X1_54,u1_struct_0(sK4))
% 1.53/1.00      | r1_xboole_0(sK0(sK4,X0_54,X1_54),X0_54)
% 1.53/1.00      | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_1216]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3522,plain,
% 1.53/1.00      ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | m1_subset_1(X1_54,u1_struct_0(sK4)) != iProver_top
% 1.53/1.00      | r1_xboole_0(sK0(sK4,X0_54,X1_54),X0_54) = iProver_top
% 1.53/1.00      | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) = iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_3150]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_2,plain,
% 1.53/1.00      ( m1_connsp_2(sK0(X0,X1,X2),X0,X2)
% 1.53/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | r2_hidden(X2,k2_pre_topc(X0,X1))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1160,plain,
% 1.53/1.00      ( m1_connsp_2(sK0(X0,X1,X2),X0,X2)
% 1.53/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | r2_hidden(X2,k2_pre_topc(X0,X1))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | sK4 != X0 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_2,c_23]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1161,plain,
% 1.53/1.00      ( m1_connsp_2(sK0(sK4,X0,X1),sK4,X1)
% 1.53/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | r2_hidden(X1,k2_pre_topc(sK4,X0))
% 1.53/1.00      | v2_struct_0(sK4)
% 1.53/1.00      | ~ v2_pre_topc(sK4) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_1160]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1165,plain,
% 1.53/1.00      ( m1_connsp_2(sK0(sK4,X0,X1),sK4,X1)
% 1.53/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | r2_hidden(X1,k2_pre_topc(sK4,X0)) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_1161,c_25,c_24]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3152,plain,
% 1.53/1.00      ( m1_connsp_2(sK0(sK4,X0_54,X1_54),sK4,X1_54)
% 1.53/1.00      | ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4)))
% 1.53/1.00      | ~ m1_subset_1(X1_54,u1_struct_0(sK4))
% 1.53/1.00      | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_1165]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3520,plain,
% 1.53/1.00      ( m1_connsp_2(sK0(sK4,X0_54,X1_54),sK4,X1_54) = iProver_top
% 1.53/1.00      | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | m1_subset_1(X1_54,u1_struct_0(sK4)) != iProver_top
% 1.53/1.00      | r2_hidden(X1_54,k2_pre_topc(sK4,X0_54)) = iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_3152]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_17,negated_conjecture,
% 1.53/1.00      ( r2_hidden(sK5,k10_yellow_6(sK4,sK6)) ),
% 1.53/1.00      inference(cnf_transformation,[],[f60]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3164,negated_conjecture,
% 1.53/1.00      ( r2_hidden(sK5,k10_yellow_6(sK4,sK6)) ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_17]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3508,plain,
% 1.53/1.00      ( r2_hidden(sK5,k10_yellow_6(sK4,sK6)) = iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_3164]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_18,negated_conjecture,
% 1.53/1.00      ( l1_waybel_0(sK6,sK4) ),
% 1.53/1.00      inference(cnf_transformation,[],[f59]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_11,plain,
% 1.53/1.00      ( ~ l1_waybel_0(X0,X1)
% 1.53/1.00      | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.53/1.00      | ~ v4_orders_2(X0)
% 1.53/1.00      | ~ v7_waybel_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X1)
% 1.53/1.00      | ~ l1_pre_topc(X1) ),
% 1.53/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_19,negated_conjecture,
% 1.53/1.00      ( v7_waybel_0(sK6) ),
% 1.53/1.00      inference(cnf_transformation,[],[f58]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_686,plain,
% 1.53/1.00      ( ~ l1_waybel_0(X0,X1)
% 1.53/1.00      | m1_subset_1(k10_yellow_6(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.53/1.00      | ~ v4_orders_2(X0)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ v2_pre_topc(X1)
% 1.53/1.00      | ~ l1_pre_topc(X1)
% 1.53/1.00      | sK6 != X0 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_11,c_19]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_687,plain,
% 1.53/1.00      ( ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ v4_orders_2(sK6)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(sK6)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_686]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_21,negated_conjecture,
% 1.53/1.00      ( ~ v2_struct_0(sK6) ),
% 1.53/1.00      inference(cnf_transformation,[],[f56]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_20,negated_conjecture,
% 1.53/1.00      ( v4_orders_2(sK6) ),
% 1.53/1.00      inference(cnf_transformation,[],[f57]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_691,plain,
% 1.53/1.00      ( v2_struct_0(X0)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_687,c_21,c_20]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_692,plain,
% 1.53/1.00      ( ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(renaming,[status(thm)],[c_691]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_10,plain,
% 1.53/1.00      ( r1_waybel_0(X0,X1,X2)
% 1.53/1.00      | ~ m1_connsp_2(X2,X0,X3)
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.53/1.00      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ r2_hidden(X3,k10_yellow_6(X0,X1))
% 1.53/1.00      | ~ v4_orders_2(X1)
% 1.53/1.00      | ~ v7_waybel_0(X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(cnf_transformation,[],[f66]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_464,plain,
% 1.53/1.00      ( r1_waybel_0(X0,X1,X2)
% 1.53/1.00      | ~ m1_connsp_2(X2,X0,X3)
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.53/1.00      | ~ m1_subset_1(k10_yellow_6(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ r2_hidden(X3,k10_yellow_6(X0,X1))
% 1.53/1.00      | ~ v4_orders_2(X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0)
% 1.53/1.00      | sK6 != X1 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_10,c_19]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_465,plain,
% 1.53/1.00      ( r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ m1_connsp_2(X1,X0,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | ~ m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
% 1.53/1.00      | ~ v4_orders_2(sK6)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(sK6)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_464]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_469,plain,
% 1.53/1.00      ( v2_struct_0(X0)
% 1.53/1.00      | r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ m1_connsp_2(X1,X0,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | ~ m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_465,c_21,c_20]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_470,plain,
% 1.53/1.00      ( r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ m1_connsp_2(X1,X0,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | ~ m1_subset_1(k10_yellow_6(X0,sK6),k1_zfmisc_1(u1_struct_0(X0)))
% 1.53/1.00      | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(renaming,[status(thm)],[c_469]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_709,plain,
% 1.53/1.00      ( r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ m1_connsp_2(X1,X0,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(backward_subsumption_resolution,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_692,c_470]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_988,plain,
% 1.53/1.00      ( r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ m1_connsp_2(X1,X0,X2)
% 1.53/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.53/1.00      | ~ r2_hidden(X2,k10_yellow_6(X0,sK6))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ v2_pre_topc(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0)
% 1.53/1.00      | sK6 != sK6
% 1.53/1.00      | sK4 != X0 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_18,c_709]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_989,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0)
% 1.53/1.00      | ~ m1_connsp_2(X0,sK4,X1)
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | ~ r2_hidden(X1,k10_yellow_6(sK4,sK6))
% 1.53/1.00      | v2_struct_0(sK4)
% 1.53/1.00      | ~ v2_pre_topc(sK4)
% 1.53/1.00      | ~ l1_pre_topc(sK4) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_988]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_993,plain,
% 1.53/1.00      ( ~ r2_hidden(X1,k10_yellow_6(sK4,sK6))
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | ~ m1_connsp_2(X0,sK4,X1)
% 1.53/1.00      | r1_waybel_0(sK4,sK6,X0) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_989,c_25,c_24,c_23]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_994,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0)
% 1.53/1.00      | ~ m1_connsp_2(X0,sK4,X1)
% 1.53/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 1.53/1.00      | ~ r2_hidden(X1,k10_yellow_6(sK4,sK6)) ),
% 1.53/1.00      inference(renaming,[status(thm)],[c_993]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3158,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0_54)
% 1.53/1.00      | ~ m1_connsp_2(X0_54,sK4,X1_54)
% 1.53/1.00      | ~ m1_subset_1(X1_54,u1_struct_0(sK4))
% 1.53/1.00      | ~ r2_hidden(X1_54,k10_yellow_6(sK4,sK6)) ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_994]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3514,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0_54) = iProver_top
% 1.53/1.00      | m1_connsp_2(X0_54,sK4,X1_54) != iProver_top
% 1.53/1.00      | m1_subset_1(X1_54,u1_struct_0(sK4)) != iProver_top
% 1.53/1.00      | r2_hidden(X1_54,k10_yellow_6(sK4,sK6)) != iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_3158]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3984,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0_54) = iProver_top
% 1.53/1.00      | m1_connsp_2(X0_54,sK4,sK5) != iProver_top
% 1.53/1.00      | m1_subset_1(sK5,u1_struct_0(sK4)) != iProver_top ),
% 1.53/1.00      inference(superposition,[status(thm)],[c_3508,c_3514]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_22,negated_conjecture,
% 1.53/1.00      ( m1_subset_1(sK5,u1_struct_0(sK4)) ),
% 1.53/1.00      inference(cnf_transformation,[],[f55]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_29,plain,
% 1.53/1.00      ( m1_subset_1(sK5,u1_struct_0(sK4)) = iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3989,plain,
% 1.53/1.00      ( m1_connsp_2(X0_54,sK4,sK5) != iProver_top
% 1.53/1.00      | r1_waybel_0(sK4,sK6,X0_54) = iProver_top ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_3984,c_29]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3990,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0_54) = iProver_top
% 1.53/1.00      | m1_connsp_2(X0_54,sK4,sK5) != iProver_top ),
% 1.53/1.00      inference(renaming,[status(thm)],[c_3989]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3997,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,sK0(sK4,X0_54,sK5)) = iProver_top
% 1.53/1.00      | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | m1_subset_1(sK5,u1_struct_0(sK4)) != iProver_top
% 1.53/1.00      | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
% 1.53/1.00      inference(superposition,[status(thm)],[c_3520,c_3990]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_4287,plain,
% 1.53/1.00      ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | r1_waybel_0(sK4,sK6,sK0(sK4,X0_54,sK5)) = iProver_top
% 1.53/1.00      | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_3997,c_29]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_4288,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,sK0(sK4,X0_54,sK5)) = iProver_top
% 1.53/1.00      | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
% 1.53/1.00      inference(renaming,[status(thm)],[c_4287]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_0,plain,
% 1.53/1.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 1.53/1.00      inference(cnf_transformation,[],[f38]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_13,plain,
% 1.53/1.00      ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ l1_struct_0(X0) ),
% 1.53/1.00      inference(cnf_transformation,[],[f51]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_275,plain,
% 1.53/1.00      ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(resolution,[status(thm)],[c_0,c_13]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_914,plain,
% 1.53/1.00      ( r1_waybel_0(X0,X1,k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),u1_waybel_0(X0,X1)))
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ l1_pre_topc(X0)
% 1.53/1.00      | sK6 != X1
% 1.53/1.00      | sK4 != X0 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_275,c_18]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_915,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)))
% 1.53/1.00      | v2_struct_0(sK6)
% 1.53/1.00      | v2_struct_0(sK4)
% 1.53/1.00      | ~ l1_pre_topc(sK4) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_914]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_917,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6))) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_915,c_25,c_23,c_21]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3162,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6))) ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_917]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3510,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6))) = iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_3162]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_15,negated_conjecture,
% 1.53/1.00      ( k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7 ),
% 1.53/1.00      inference(cnf_transformation,[],[f62]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3166,negated_conjecture,
% 1.53/1.00      ( k2_relset_1(u1_struct_0(sK6),u1_struct_0(sK4),u1_waybel_0(sK4,sK6)) = sK7 ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_15]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3535,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,sK7) = iProver_top ),
% 1.53/1.00      inference(light_normalisation,[status(thm)],[c_3510,c_3166]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_12,plain,
% 1.53/1.00      ( ~ r1_waybel_0(X0,X1,X2)
% 1.53/1.00      | ~ r1_waybel_0(X0,X1,X3)
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | ~ r1_xboole_0(X3,X2)
% 1.53/1.00      | ~ v4_orders_2(X1)
% 1.53/1.00      | ~ v7_waybel_0(X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ l1_struct_0(X0) ),
% 1.53/1.00      inference(cnf_transformation,[],[f50]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_295,plain,
% 1.53/1.00      ( ~ r1_waybel_0(X0,X1,X2)
% 1.53/1.00      | ~ r1_waybel_0(X0,X1,X3)
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | ~ r1_xboole_0(X3,X2)
% 1.53/1.00      | ~ v4_orders_2(X1)
% 1.53/1.00      | ~ v7_waybel_0(X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(resolution,[status(thm)],[c_0,c_12]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_434,plain,
% 1.53/1.00      ( ~ r1_waybel_0(X0,X1,X2)
% 1.53/1.00      | ~ r1_waybel_0(X0,X1,X3)
% 1.53/1.00      | ~ l1_waybel_0(X1,X0)
% 1.53/1.00      | ~ r1_xboole_0(X3,X2)
% 1.53/1.00      | ~ v4_orders_2(X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(X1)
% 1.53/1.00      | ~ l1_pre_topc(X0)
% 1.53/1.00      | sK6 != X1 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_295,c_19]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_435,plain,
% 1.53/1.00      ( ~ r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ r1_waybel_0(X0,sK6,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ r1_xboole_0(X1,X2)
% 1.53/1.00      | ~ v4_orders_2(sK6)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | v2_struct_0(sK6)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_434]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_439,plain,
% 1.53/1.00      ( v2_struct_0(X0)
% 1.53/1.00      | ~ r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ r1_waybel_0(X0,sK6,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ r1_xboole_0(X1,X2)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_435,c_21,c_20]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_440,plain,
% 1.53/1.00      ( ~ r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ r1_waybel_0(X0,sK6,X2)
% 1.53/1.00      | ~ l1_waybel_0(sK6,X0)
% 1.53/1.00      | ~ r1_xboole_0(X2,X1)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0) ),
% 1.53/1.00      inference(renaming,[status(thm)],[c_439]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1098,plain,
% 1.53/1.00      ( ~ r1_waybel_0(X0,sK6,X1)
% 1.53/1.00      | ~ r1_waybel_0(X0,sK6,X2)
% 1.53/1.00      | ~ r1_xboole_0(X1,X2)
% 1.53/1.00      | v2_struct_0(X0)
% 1.53/1.00      | ~ l1_pre_topc(X0)
% 1.53/1.00      | sK6 != sK6
% 1.53/1.00      | sK4 != X0 ),
% 1.53/1.00      inference(resolution_lifted,[status(thm)],[c_18,c_440]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1099,plain,
% 1.53/1.00      ( ~ r1_waybel_0(sK4,sK6,X0)
% 1.53/1.00      | ~ r1_waybel_0(sK4,sK6,X1)
% 1.53/1.00      | ~ r1_xboole_0(X1,X0)
% 1.53/1.00      | v2_struct_0(sK4)
% 1.53/1.00      | ~ l1_pre_topc(sK4) ),
% 1.53/1.00      inference(unflattening,[status(thm)],[c_1098]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_1103,plain,
% 1.53/1.00      ( ~ r1_waybel_0(sK4,sK6,X0)
% 1.53/1.00      | ~ r1_waybel_0(sK4,sK6,X1)
% 1.53/1.00      | ~ r1_xboole_0(X1,X0) ),
% 1.53/1.00      inference(global_propositional_subsumption,
% 1.53/1.00                [status(thm)],
% 1.53/1.00                [c_1099,c_25,c_23]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3153,plain,
% 1.53/1.00      ( ~ r1_waybel_0(sK4,sK6,X0_54)
% 1.53/1.00      | ~ r1_waybel_0(sK4,sK6,X1_54)
% 1.53/1.00      | ~ r1_xboole_0(X1_54,X0_54) ),
% 1.53/1.00      inference(subtyping,[status(esa)],[c_1103]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3519,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0_54) != iProver_top
% 1.53/1.00      | r1_waybel_0(sK4,sK6,X1_54) != iProver_top
% 1.53/1.00      | r1_xboole_0(X1_54,X0_54) != iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_3153]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_3846,plain,
% 1.53/1.00      ( r1_waybel_0(sK4,sK6,X0_54) != iProver_top
% 1.53/1.00      | r1_xboole_0(X0_54,sK7) != iProver_top ),
% 1.53/1.00      inference(superposition,[status(thm)],[c_3535,c_3519]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_4296,plain,
% 1.53/1.00      ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | r1_xboole_0(sK0(sK4,X0_54,sK5),sK7) != iProver_top
% 1.53/1.00      | r2_hidden(sK5,k2_pre_topc(sK4,X0_54)) = iProver_top ),
% 1.53/1.00      inference(superposition,[status(thm)],[c_4288,c_3846]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_4322,plain,
% 1.53/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 1.53/1.00      | m1_subset_1(sK5,u1_struct_0(sK4)) != iProver_top
% 1.53/1.00      | r2_hidden(sK5,k2_pre_topc(sK4,sK7)) = iProver_top ),
% 1.53/1.00      inference(superposition,[status(thm)],[c_3522,c_4296]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_14,negated_conjecture,
% 1.53/1.00      ( ~ r2_hidden(sK5,k2_pre_topc(sK4,sK7)) ),
% 1.53/1.00      inference(cnf_transformation,[],[f63]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_36,plain,
% 1.53/1.00      ( r2_hidden(sK5,k2_pre_topc(sK4,sK7)) != iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_16,negated_conjecture,
% 1.53/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) ),
% 1.53/1.00      inference(cnf_transformation,[],[f61]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(c_35,plain,
% 1.53/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 1.53/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.53/1.00  
% 1.53/1.00  cnf(contradiction,plain,
% 1.53/1.00      ( $false ),
% 1.53/1.00      inference(minisat,[status(thm)],[c_4322,c_36,c_35,c_29]) ).
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.53/1.00  
% 1.53/1.00  ------                               Statistics
% 1.53/1.00  
% 1.53/1.00  ------ General
% 1.53/1.00  
% 1.53/1.00  abstr_ref_over_cycles:                  0
% 1.53/1.00  abstr_ref_under_cycles:                 0
% 1.53/1.00  gc_basic_clause_elim:                   0
% 1.53/1.00  forced_gc_time:                         0
% 1.53/1.00  parsing_time:                           0.011
% 1.53/1.00  unif_index_cands_time:                  0.
% 1.53/1.00  unif_index_add_time:                    0.
% 1.53/1.00  orderings_time:                         0.
% 1.53/1.00  out_proof_time:                         0.009
% 1.53/1.00  total_time:                             0.151
% 1.53/1.00  num_of_symbols:                         58
% 1.53/1.00  num_of_terms:                           2949
% 1.53/1.00  
% 1.53/1.00  ------ Preprocessing
% 1.53/1.00  
% 1.53/1.00  num_of_splits:                          0
% 1.53/1.00  num_of_split_atoms:                     0
% 1.53/1.00  num_of_reused_defs:                     0
% 1.53/1.00  num_eq_ax_congr_red:                    50
% 1.53/1.00  num_of_sem_filtered_clauses:            1
% 1.53/1.00  num_of_subtypes:                        4
% 1.53/1.00  monotx_restored_types:                  0
% 1.53/1.00  sat_num_of_epr_types:                   0
% 1.53/1.00  sat_num_of_non_cyclic_types:            0
% 1.53/1.00  sat_guarded_non_collapsed_types:        1
% 1.53/1.00  num_pure_diseq_elim:                    0
% 1.53/1.00  simp_replaced_by:                       0
% 1.53/1.00  res_preprocessed:                       97
% 1.53/1.00  prep_upred:                             0
% 1.53/1.00  prep_unflattend:                        151
% 1.53/1.00  smt_new_axioms:                         0
% 1.53/1.00  pred_elim_cands:                        5
% 1.53/1.00  pred_elim:                              7
% 1.53/1.00  pred_elim_cl:                           8
% 1.53/1.00  pred_elim_cycles:                       15
% 1.53/1.00  merged_defs:                            0
% 1.53/1.00  merged_defs_ncl:                        0
% 1.53/1.00  bin_hyper_res:                          0
% 1.53/1.00  prep_cycles:                            4
% 1.53/1.00  pred_elim_time:                         0.068
% 1.53/1.00  splitting_time:                         0.
% 1.53/1.00  sem_filter_time:                        0.
% 1.53/1.00  monotx_time:                            0.
% 1.53/1.00  subtype_inf_time:                       0.
% 1.53/1.00  
% 1.53/1.00  ------ Problem properties
% 1.53/1.00  
% 1.53/1.00  clauses:                                18
% 1.53/1.00  conjectures:                            5
% 1.53/1.00  epr:                                    1
% 1.53/1.00  horn:                                   12
% 1.53/1.00  ground:                                 7
% 1.53/1.00  unary:                                  7
% 1.53/1.00  binary:                                 0
% 1.53/1.00  lits:                                   49
% 1.53/1.00  lits_eq:                                5
% 1.53/1.00  fd_pure:                                0
% 1.53/1.00  fd_pseudo:                              0
% 1.53/1.00  fd_cond:                                4
% 1.53/1.00  fd_pseudo_cond:                         0
% 1.53/1.00  ac_symbols:                             0
% 1.53/1.00  
% 1.53/1.00  ------ Propositional Solver
% 1.53/1.00  
% 1.53/1.00  prop_solver_calls:                      27
% 1.53/1.00  prop_fast_solver_calls:                 1532
% 1.53/1.00  smt_solver_calls:                       0
% 1.53/1.00  smt_fast_solver_calls:                  0
% 1.53/1.00  prop_num_of_clauses:                    832
% 1.53/1.00  prop_preprocess_simplified:             3434
% 1.53/1.00  prop_fo_subsumed:                       82
% 1.53/1.00  prop_solver_time:                       0.
% 1.53/1.00  smt_solver_time:                        0.
% 1.53/1.00  smt_fast_solver_time:                   0.
% 1.53/1.00  prop_fast_solver_time:                  0.
% 1.53/1.00  prop_unsat_core_time:                   0.
% 1.53/1.00  
% 1.53/1.00  ------ QBF
% 1.53/1.00  
% 1.53/1.00  qbf_q_res:                              0
% 1.53/1.00  qbf_num_tautologies:                    0
% 1.53/1.00  qbf_prep_cycles:                        0
% 1.53/1.00  
% 1.53/1.00  ------ BMC1
% 1.53/1.00  
% 1.53/1.00  bmc1_current_bound:                     -1
% 1.53/1.00  bmc1_last_solved_bound:                 -1
% 1.53/1.00  bmc1_unsat_core_size:                   -1
% 1.53/1.00  bmc1_unsat_core_parents_size:           -1
% 1.53/1.00  bmc1_merge_next_fun:                    0
% 1.53/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.53/1.00  
% 1.53/1.00  ------ Instantiation
% 1.53/1.00  
% 1.53/1.00  inst_num_of_clauses:                    130
% 1.53/1.00  inst_num_in_passive:                    5
% 1.53/1.00  inst_num_in_active:                     105
% 1.53/1.00  inst_num_in_unprocessed:                20
% 1.53/1.00  inst_num_of_loops:                      120
% 1.53/1.00  inst_num_of_learning_restarts:          0
% 1.53/1.00  inst_num_moves_active_passive:          11
% 1.53/1.00  inst_lit_activity:                      0
% 1.53/1.00  inst_lit_activity_moves:                0
% 1.53/1.00  inst_num_tautologies:                   0
% 1.53/1.00  inst_num_prop_implied:                  0
% 1.53/1.00  inst_num_existing_simplified:           0
% 1.53/1.00  inst_num_eq_res_simplified:             0
% 1.53/1.00  inst_num_child_elim:                    0
% 1.53/1.00  inst_num_of_dismatching_blockings:      7
% 1.53/1.00  inst_num_of_non_proper_insts:           125
% 1.53/1.00  inst_num_of_duplicates:                 0
% 1.53/1.00  inst_inst_num_from_inst_to_res:         0
% 1.53/1.00  inst_dismatching_checking_time:         0.
% 1.53/1.00  
% 1.53/1.00  ------ Resolution
% 1.53/1.00  
% 1.53/1.00  res_num_of_clauses:                     0
% 1.53/1.00  res_num_in_passive:                     0
% 1.53/1.00  res_num_in_active:                      0
% 1.53/1.00  res_num_of_loops:                       101
% 1.53/1.00  res_forward_subset_subsumed:            22
% 1.53/1.00  res_backward_subset_subsumed:           2
% 1.53/1.00  res_forward_subsumed:                   0
% 1.53/1.00  res_backward_subsumed:                  0
% 1.53/1.00  res_forward_subsumption_resolution:     7
% 1.53/1.00  res_backward_subsumption_resolution:    3
% 1.53/1.00  res_clause_to_clause_subsumption:       101
% 1.53/1.00  res_orphan_elimination:                 0
% 1.53/1.00  res_tautology_del:                      34
% 1.53/1.00  res_num_eq_res_simplified:              0
% 1.53/1.00  res_num_sel_changes:                    0
% 1.53/1.00  res_moves_from_active_to_pass:          0
% 1.53/1.00  
% 1.53/1.00  ------ Superposition
% 1.53/1.00  
% 1.53/1.00  sup_time_total:                         0.
% 1.53/1.00  sup_time_generating:                    0.
% 1.53/1.00  sup_time_sim_full:                      0.
% 1.53/1.00  sup_time_sim_immed:                     0.
% 1.53/1.00  
% 1.53/1.00  sup_num_of_clauses:                     29
% 1.53/1.00  sup_num_in_active:                      24
% 1.53/1.00  sup_num_in_passive:                     5
% 1.53/1.00  sup_num_of_loops:                       23
% 1.53/1.00  sup_fw_superposition:                   10
% 1.53/1.00  sup_bw_superposition:                   3
% 1.53/1.00  sup_immediate_simplified:               1
% 1.53/1.00  sup_given_eliminated:                   0
% 1.53/1.00  comparisons_done:                       0
% 1.53/1.00  comparisons_avoided:                    0
% 1.53/1.00  
% 1.53/1.00  ------ Simplifications
% 1.53/1.00  
% 1.53/1.00  
% 1.53/1.00  sim_fw_subset_subsumed:                 1
% 1.53/1.00  sim_bw_subset_subsumed:                 0
% 1.53/1.00  sim_fw_subsumed:                        0
% 1.53/1.00  sim_bw_subsumed:                        0
% 1.53/1.00  sim_fw_subsumption_res:                 0
% 1.53/1.00  sim_bw_subsumption_res:                 0
% 1.53/1.00  sim_tautology_del:                      1
% 1.53/1.00  sim_eq_tautology_del:                   0
% 1.53/1.00  sim_eq_res_simp:                        0
% 1.53/1.00  sim_fw_demodulated:                     0
% 1.53/1.00  sim_bw_demodulated:                     0
% 1.53/1.00  sim_light_normalised:                   1
% 1.53/1.00  sim_joinable_taut:                      0
% 1.53/1.00  sim_joinable_simp:                      0
% 1.53/1.00  sim_ac_normalised:                      0
% 1.53/1.00  sim_smt_subsumption:                    0
% 1.53/1.00  
%------------------------------------------------------------------------------
