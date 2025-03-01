%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:21:19 EST 2020

% Result     : CounterSatisfiable 1.61s
% Output     : Saturation 1.61s
% Verified   : 
% Statistics : Number of formulae       :  109 ( 726 expanded)
%              Number of clauses        :   69 ( 217 expanded)
%              Number of leaves         :   21 ( 202 expanded)
%              Depth                    :   16
%              Number of atoms          :  401 (5752 expanded)
%              Number of equality atoms :  173 ( 969 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   22 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f10,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( v23_waybel_0(X2,X0,X1)
               => ( k2_relat_1(k2_funct_1(X2)) = u1_struct_0(X0)
                  & m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(k2_funct_1(X2)) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_orders_2(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X2) )
               => ( v23_waybel_0(X2,X0,X1)
                 => ( k2_relat_1(k2_funct_1(X2)) = u1_struct_0(X0)
                    & m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                    & v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                    & v1_funct_1(k2_funct_1(X2)) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f12,plain,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_orders_2(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X2) )
               => ( k2_relat_1(k2_funct_1(X2)) = u1_struct_0(X0)
                  & m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(k2_funct_1(X2)) ) ) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0)
                | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                | ~ v1_funct_1(k2_funct_1(X2)) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_orders_2(X1)
          & ~ v2_struct_0(X1) )
      & l1_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0)
                | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                | ~ v1_funct_1(k2_funct_1(X2)) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_orders_2(X1)
          & ~ v2_struct_0(X1) )
      & l1_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0)
            | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
            | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
            | ~ v1_funct_1(k2_funct_1(X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(X0)
          | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
          | ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(X1),u1_struct_0(X0))
          | ~ v1_funct_1(k2_funct_1(sK2)) )
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0)
                | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                | ~ v1_funct_1(k2_funct_1(X2)) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_orders_2(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0)
              | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
              | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(sK1),u1_struct_0(X0))
              | ~ v1_funct_1(k2_funct_1(X2)) )
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
            & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1))
            & v1_funct_1(X2) )
        & l1_orders_2(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0)
                  | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0))
                  | ~ v1_funct_1(k2_funct_1(X2)) )
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
            & l1_orders_2(X1)
            & ~ v2_struct_0(X1) )
        & l1_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relat_1(k2_funct_1(X2)) != u1_struct_0(sK0)
                | ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0))))
                | ~ v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(sK0))
                | ~ v1_funct_1(k2_funct_1(X2)) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_orders_2(X1)
          & ~ v2_struct_0(X1) )
      & l1_orders_2(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
      | ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
      | ~ v1_funct_1(k2_funct_1(sK2)) )
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_orders_2(sK1)
    & ~ v2_struct_0(sK1)
    & l1_orders_2(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f23,f27,f26,f25])).

fof(f47,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f28])).

fof(f46,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( k1_xboole_0 = X1
         => ( ( v1_funct_2(X2,X0,X1)
            <=> k1_xboole_0 = X2 )
            | k1_xboole_0 = X0 ) )
        & ( ( k1_xboole_0 = X1
           => k1_xboole_0 = X0 )
         => ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f17])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( ( v1_funct_2(X2,X0,X1)
              | k1_xboole_0 != X2 )
            & ( k1_xboole_0 = X2
              | ~ v1_funct_2(X2,X0,X1) ) )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( ( v1_funct_2(X2,X0,X1)
              | k1_relset_1(X0,X1,X2) != X0 )
            & ( k1_relset_1(X0,X1,X2) = X0
              | ~ v1_funct_2(X2,X0,X1) ) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f20,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f39,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f40,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f44,plain,(
    l1_orders_2(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f43,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f48,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f28])).

fof(f45,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f28])).

fof(f42,plain,(
    l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f41,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_197,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_194,plain,
    ( ~ l1_orders_2(X0)
    | l1_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_193,plain,
    ( ~ v2_struct_0(X0)
    | v2_struct_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_191,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(X3,X4,X5)
    | X3 != X0
    | X4 != X1
    | X5 != X2 ),
    theory(equality)).

cnf(c_188,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_186,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_185,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_182,plain,
    ( X0_2 = X0_2 ),
    theory(equality)).

cnf(c_2,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_326,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_13])).

cnf(c_327,plain,
    ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_326])).

cnf(c_535,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_47,X1_47))
    | k1_relset_1(X0_47,X1_47,sK2) = k1_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_327])).

cnf(c_596,plain,
    ( k1_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_535])).

cnf(c_14,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_9,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_290,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_13])).

cnf(c_291,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | k1_relset_1(X0,X1,sK2) = X0
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_290])).

cnf(c_492,plain,
    ( k1_relset_1(X0,X1,sK2) = X0
    | u1_struct_0(sK1) != X1
    | u1_struct_0(sK0) != X0
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK2 != sK2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_291])).

cnf(c_493,plain,
    ( k1_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = u1_struct_0(sK0)
    | k1_xboole_0 = u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_492])).

cnf(c_532,plain,
    ( k1_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = u1_struct_0(sK0)
    | k1_xboole_0 = u1_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_493])).

cnf(c_638,plain,
    ( u1_struct_0(sK1) = k1_xboole_0
    | u1_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_596,c_532])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_10,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_216,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | u1_struct_0(X0) != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_10])).

cnf(c_11,plain,
    ( ~ l1_orders_2(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_16,negated_conjecture,
    ( l1_orders_2(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_234,plain,
    ( l1_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_16])).

cnf(c_235,plain,
    ( l1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_234])).

cnf(c_272,plain,
    ( v2_struct_0(X0)
    | u1_struct_0(X0) != k1_xboole_0
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_216,c_235])).

cnf(c_273,plain,
    ( v2_struct_0(sK1)
    | u1_struct_0(sK1) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_272])).

cnf(c_17,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_275,plain,
    ( u1_struct_0(sK1) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_273,c_17])).

cnf(c_537,plain,
    ( u1_struct_0(sK1) != k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_275])).

cnf(c_672,plain,
    ( u1_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_638,c_537])).

cnf(c_679,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_47,X1_47))
    | k1_relset_1(X0_47,X1_47,sK2) = k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_672,c_535])).

cnf(c_12,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_15,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_252,plain,
    ( ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k2_funct_1(sK2) != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_15])).

cnf(c_400,plain,
    ( ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k2_funct_1(sK2) != sK2
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
    inference(resolution_lifted,[status(thm)],[c_252,c_13])).

cnf(c_460,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k2_funct_1(sK2) != sK2
    | u1_struct_0(sK1) != u1_struct_0(sK0)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
    inference(resolution_lifted,[status(thm)],[c_400,c_14])).

cnf(c_534,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
    | k2_funct_1(sK2) != sK2
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_460])).

cnf(c_678,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),k1_relat_1(sK2))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),u1_struct_0(sK1)))
    | k2_funct_1(sK2) != sK2
    | k2_relat_1(k2_funct_1(sK2)) != k1_relat_1(sK2)
    | u1_struct_0(sK1) != k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_672,c_534])).

cnf(c_18,negated_conjecture,
    ( l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_241,plain,
    ( l1_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_18])).

cnf(c_242,plain,
    ( l1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_241])).

cnf(c_280,plain,
    ( v2_struct_0(X0)
    | u1_struct_0(X0) != k1_xboole_0
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_216,c_242])).

cnf(c_281,plain,
    ( v2_struct_0(sK0)
    | u1_struct_0(sK0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_280])).

cnf(c_19,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_283,plain,
    ( u1_struct_0(sK0) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_281,c_19])).

cnf(c_536,plain,
    ( u1_struct_0(sK0) != k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_283])).

cnf(c_677,plain,
    ( k1_relat_1(sK2) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_672,c_536])).

cnf(c_676,plain,
    ( k1_relset_1(k1_relat_1(sK2),u1_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_672,c_596])).

cnf(c_7,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_308,plain,
    ( v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) != X1
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_13])).

cnf(c_309,plain,
    ( v1_funct_2(sK2,X0,X1)
    | k1_relset_1(X0,X1,sK2) != X0
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_308])).

cnf(c_473,plain,
    ( k1_relset_1(X0,X1,sK2) != X0
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k2_funct_1(sK2) != sK2
    | u1_struct_0(sK1) != X0
    | u1_struct_0(sK0) != X1
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_400,c_309])).

cnf(c_474,plain,
    ( k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k2_funct_1(sK2) != sK2
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
    | k1_xboole_0 = u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_473])).

cnf(c_533,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
    | k2_funct_1(sK2) != sK2
    | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k1_xboole_0 = u1_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_474])).

cnf(c_542,plain,
    ( X0_47 != X1_47
    | X2_47 != X1_47
    | X2_47 = X0_47 ),
    theory(equality)).

cnf(c_603,plain,
    ( u1_struct_0(sK0) != X0_47
    | u1_struct_0(sK0) = k1_xboole_0
    | k1_xboole_0 != X0_47 ),
    inference(instantiation,[status(thm)],[c_542])).

cnf(c_612,plain,
    ( u1_struct_0(sK0) != u1_struct_0(sK0)
    | u1_struct_0(sK0) = k1_xboole_0
    | k1_xboole_0 != u1_struct_0(sK0) ),
    inference(instantiation,[status(thm)],[c_603])).

cnf(c_538,plain,
    ( X0_47 = X0_47 ),
    theory(equality)).

cnf(c_613,plain,
    ( u1_struct_0(sK0) = u1_struct_0(sK0) ),
    inference(instantiation,[status(thm)],[c_538])).

cnf(c_666,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
    | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
    | k2_funct_1(sK2) != sK2
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_533,c_536,c_612,c_613])).

cnf(c_667,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
    | k2_funct_1(sK2) != sK2
    | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
    | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_666])).

cnf(c_675,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),k1_relat_1(sK2))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),u1_struct_0(sK1)))
    | k2_funct_1(sK2) != sK2
    | k1_relset_1(u1_struct_0(sK1),k1_relat_1(sK2),sK2) != u1_struct_0(sK1)
    | k2_relat_1(k2_funct_1(sK2)) != k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_672,c_667])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n008.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 14:27:15 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.61/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.61/0.99  
% 1.61/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.61/0.99  
% 1.61/0.99  ------  iProver source info
% 1.61/0.99  
% 1.61/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.61/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.61/0.99  git: non_committed_changes: false
% 1.61/0.99  git: last_make_outside_of_git: false
% 1.61/0.99  
% 1.61/0.99  ------ 
% 1.61/0.99  
% 1.61/0.99  ------ Input Options
% 1.61/0.99  
% 1.61/0.99  --out_options                           all
% 1.61/0.99  --tptp_safe_out                         true
% 1.61/0.99  --problem_path                          ""
% 1.61/0.99  --include_path                          ""
% 1.61/0.99  --clausifier                            res/vclausify_rel
% 1.61/0.99  --clausifier_options                    --mode clausify
% 1.61/0.99  --stdin                                 false
% 1.61/0.99  --stats_out                             all
% 1.61/0.99  
% 1.61/0.99  ------ General Options
% 1.61/0.99  
% 1.61/0.99  --fof                                   false
% 1.61/0.99  --time_out_real                         305.
% 1.61/0.99  --time_out_virtual                      -1.
% 1.61/0.99  --symbol_type_check                     false
% 1.61/0.99  --clausify_out                          false
% 1.61/0.99  --sig_cnt_out                           false
% 1.61/0.99  --trig_cnt_out                          false
% 1.61/0.99  --trig_cnt_out_tolerance                1.
% 1.61/0.99  --trig_cnt_out_sk_spl                   false
% 1.61/0.99  --abstr_cl_out                          false
% 1.61/0.99  
% 1.61/0.99  ------ Global Options
% 1.61/0.99  
% 1.61/0.99  --schedule                              default
% 1.61/0.99  --add_important_lit                     false
% 1.61/0.99  --prop_solver_per_cl                    1000
% 1.61/0.99  --min_unsat_core                        false
% 1.61/0.99  --soft_assumptions                      false
% 1.61/0.99  --soft_lemma_size                       3
% 1.61/0.99  --prop_impl_unit_size                   0
% 1.61/0.99  --prop_impl_unit                        []
% 1.61/0.99  --share_sel_clauses                     true
% 1.61/0.99  --reset_solvers                         false
% 1.61/0.99  --bc_imp_inh                            [conj_cone]
% 1.61/0.99  --conj_cone_tolerance                   3.
% 1.61/0.99  --extra_neg_conj                        none
% 1.61/0.99  --large_theory_mode                     true
% 1.61/0.99  --prolific_symb_bound                   200
% 1.61/0.99  --lt_threshold                          2000
% 1.61/0.99  --clause_weak_htbl                      true
% 1.61/0.99  --gc_record_bc_elim                     false
% 1.61/0.99  
% 1.61/0.99  ------ Preprocessing Options
% 1.61/0.99  
% 1.61/0.99  --preprocessing_flag                    true
% 1.61/0.99  --time_out_prep_mult                    0.1
% 1.61/0.99  --splitting_mode                        input
% 1.61/0.99  --splitting_grd                         true
% 1.61/0.99  --splitting_cvd                         false
% 1.61/0.99  --splitting_cvd_svl                     false
% 1.61/0.99  --splitting_nvd                         32
% 1.61/0.99  --sub_typing                            true
% 1.61/0.99  --prep_gs_sim                           true
% 1.61/0.99  --prep_unflatten                        true
% 1.61/0.99  --prep_res_sim                          true
% 1.61/0.99  --prep_upred                            true
% 1.61/0.99  --prep_sem_filter                       exhaustive
% 1.61/0.99  --prep_sem_filter_out                   false
% 1.61/0.99  --pred_elim                             true
% 1.61/0.99  --res_sim_input                         true
% 1.61/0.99  --eq_ax_congr_red                       true
% 1.61/0.99  --pure_diseq_elim                       true
% 1.61/0.99  --brand_transform                       false
% 1.61/0.99  --non_eq_to_eq                          false
% 1.61/0.99  --prep_def_merge                        true
% 1.61/0.99  --prep_def_merge_prop_impl              false
% 1.61/0.99  --prep_def_merge_mbd                    true
% 1.61/0.99  --prep_def_merge_tr_red                 false
% 1.61/0.99  --prep_def_merge_tr_cl                  false
% 1.61/0.99  --smt_preprocessing                     true
% 1.61/0.99  --smt_ac_axioms                         fast
% 1.61/0.99  --preprocessed_out                      false
% 1.61/0.99  --preprocessed_stats                    false
% 1.61/0.99  
% 1.61/0.99  ------ Abstraction refinement Options
% 1.61/0.99  
% 1.61/0.99  --abstr_ref                             []
% 1.61/0.99  --abstr_ref_prep                        false
% 1.61/0.99  --abstr_ref_until_sat                   false
% 1.61/0.99  --abstr_ref_sig_restrict                funpre
% 1.61/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.61/0.99  --abstr_ref_under                       []
% 1.61/0.99  
% 1.61/0.99  ------ SAT Options
% 1.61/0.99  
% 1.61/0.99  --sat_mode                              false
% 1.61/0.99  --sat_fm_restart_options                ""
% 1.61/0.99  --sat_gr_def                            false
% 1.61/0.99  --sat_epr_types                         true
% 1.61/0.99  --sat_non_cyclic_types                  false
% 1.61/0.99  --sat_finite_models                     false
% 1.61/0.99  --sat_fm_lemmas                         false
% 1.61/0.99  --sat_fm_prep                           false
% 1.61/0.99  --sat_fm_uc_incr                        true
% 1.61/0.99  --sat_out_model                         small
% 1.61/0.99  --sat_out_clauses                       false
% 1.61/0.99  
% 1.61/0.99  ------ QBF Options
% 1.61/0.99  
% 1.61/0.99  --qbf_mode                              false
% 1.61/0.99  --qbf_elim_univ                         false
% 1.61/0.99  --qbf_dom_inst                          none
% 1.61/0.99  --qbf_dom_pre_inst                      false
% 1.61/0.99  --qbf_sk_in                             false
% 1.61/0.99  --qbf_pred_elim                         true
% 1.61/0.99  --qbf_split                             512
% 1.61/0.99  
% 1.61/0.99  ------ BMC1 Options
% 1.61/0.99  
% 1.61/0.99  --bmc1_incremental                      false
% 1.61/0.99  --bmc1_axioms                           reachable_all
% 1.61/0.99  --bmc1_min_bound                        0
% 1.61/0.99  --bmc1_max_bound                        -1
% 1.61/0.99  --bmc1_max_bound_default                -1
% 1.61/0.99  --bmc1_symbol_reachability              true
% 1.61/0.99  --bmc1_property_lemmas                  false
% 1.61/0.99  --bmc1_k_induction                      false
% 1.61/0.99  --bmc1_non_equiv_states                 false
% 1.61/0.99  --bmc1_deadlock                         false
% 1.61/0.99  --bmc1_ucm                              false
% 1.61/0.99  --bmc1_add_unsat_core                   none
% 1.61/0.99  --bmc1_unsat_core_children              false
% 1.61/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.61/0.99  --bmc1_out_stat                         full
% 1.61/0.99  --bmc1_ground_init                      false
% 1.61/0.99  --bmc1_pre_inst_next_state              false
% 1.61/0.99  --bmc1_pre_inst_state                   false
% 1.61/0.99  --bmc1_pre_inst_reach_state             false
% 1.61/0.99  --bmc1_out_unsat_core                   false
% 1.61/0.99  --bmc1_aig_witness_out                  false
% 1.61/0.99  --bmc1_verbose                          false
% 1.61/0.99  --bmc1_dump_clauses_tptp                false
% 1.61/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.61/0.99  --bmc1_dump_file                        -
% 1.61/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.61/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.61/0.99  --bmc1_ucm_extend_mode                  1
% 1.61/0.99  --bmc1_ucm_init_mode                    2
% 1.61/0.99  --bmc1_ucm_cone_mode                    none
% 1.61/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.61/0.99  --bmc1_ucm_relax_model                  4
% 1.61/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.61/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.61/0.99  --bmc1_ucm_layered_model                none
% 1.61/0.99  --bmc1_ucm_max_lemma_size               10
% 1.61/0.99  
% 1.61/0.99  ------ AIG Options
% 1.61/0.99  
% 1.61/0.99  --aig_mode                              false
% 1.61/0.99  
% 1.61/0.99  ------ Instantiation Options
% 1.61/0.99  
% 1.61/0.99  --instantiation_flag                    true
% 1.61/0.99  --inst_sos_flag                         false
% 1.61/0.99  --inst_sos_phase                        true
% 1.61/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.61/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.61/0.99  --inst_lit_sel_side                     num_symb
% 1.61/0.99  --inst_solver_per_active                1400
% 1.61/0.99  --inst_solver_calls_frac                1.
% 1.61/0.99  --inst_passive_queue_type               priority_queues
% 1.61/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.61/0.99  --inst_passive_queues_freq              [25;2]
% 1.61/0.99  --inst_dismatching                      true
% 1.61/0.99  --inst_eager_unprocessed_to_passive     true
% 1.61/0.99  --inst_prop_sim_given                   true
% 1.61/0.99  --inst_prop_sim_new                     false
% 1.61/0.99  --inst_subs_new                         false
% 1.61/0.99  --inst_eq_res_simp                      false
% 1.61/0.99  --inst_subs_given                       false
% 1.61/0.99  --inst_orphan_elimination               true
% 1.61/0.99  --inst_learning_loop_flag               true
% 1.61/0.99  --inst_learning_start                   3000
% 1.61/0.99  --inst_learning_factor                  2
% 1.61/0.99  --inst_start_prop_sim_after_learn       3
% 1.61/0.99  --inst_sel_renew                        solver
% 1.61/0.99  --inst_lit_activity_flag                true
% 1.61/0.99  --inst_restr_to_given                   false
% 1.61/0.99  --inst_activity_threshold               500
% 1.61/0.99  --inst_out_proof                        true
% 1.61/0.99  
% 1.61/0.99  ------ Resolution Options
% 1.61/0.99  
% 1.61/0.99  --resolution_flag                       true
% 1.61/0.99  --res_lit_sel                           adaptive
% 1.61/0.99  --res_lit_sel_side                      none
% 1.61/0.99  --res_ordering                          kbo
% 1.61/0.99  --res_to_prop_solver                    active
% 1.61/0.99  --res_prop_simpl_new                    false
% 1.61/0.99  --res_prop_simpl_given                  true
% 1.61/0.99  --res_passive_queue_type                priority_queues
% 1.61/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.61/0.99  --res_passive_queues_freq               [15;5]
% 1.61/0.99  --res_forward_subs                      full
% 1.61/0.99  --res_backward_subs                     full
% 1.61/0.99  --res_forward_subs_resolution           true
% 1.61/0.99  --res_backward_subs_resolution          true
% 1.61/0.99  --res_orphan_elimination                true
% 1.61/0.99  --res_time_limit                        2.
% 1.61/0.99  --res_out_proof                         true
% 1.61/0.99  
% 1.61/0.99  ------ Superposition Options
% 1.61/0.99  
% 1.61/0.99  --superposition_flag                    true
% 1.61/0.99  --sup_passive_queue_type                priority_queues
% 1.61/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.61/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.61/0.99  --demod_completeness_check              fast
% 1.61/0.99  --demod_use_ground                      true
% 1.61/0.99  --sup_to_prop_solver                    passive
% 1.61/0.99  --sup_prop_simpl_new                    true
% 1.61/0.99  --sup_prop_simpl_given                  true
% 1.61/0.99  --sup_fun_splitting                     false
% 1.61/0.99  --sup_smt_interval                      50000
% 1.61/0.99  
% 1.61/0.99  ------ Superposition Simplification Setup
% 1.61/0.99  
% 1.61/0.99  --sup_indices_passive                   []
% 1.61/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.61/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.99  --sup_full_bw                           [BwDemod]
% 1.61/0.99  --sup_immed_triv                        [TrivRules]
% 1.61/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.61/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.99  --sup_immed_bw_main                     []
% 1.61/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.61/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.99  
% 1.61/0.99  ------ Combination Options
% 1.61/0.99  
% 1.61/0.99  --comb_res_mult                         3
% 1.61/0.99  --comb_sup_mult                         2
% 1.61/0.99  --comb_inst_mult                        10
% 1.61/0.99  
% 1.61/0.99  ------ Debug Options
% 1.61/0.99  
% 1.61/0.99  --dbg_backtrace                         false
% 1.61/0.99  --dbg_dump_prop_clauses                 false
% 1.61/0.99  --dbg_dump_prop_clauses_file            -
% 1.61/0.99  --dbg_out_stat                          false
% 1.61/0.99  ------ Parsing...
% 1.61/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.61/0.99  
% 1.61/0.99  ------ Preprocessing... sf_s  rm: 4 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 1.61/0.99  
% 1.61/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.61/0.99  
% 1.61/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 1.61/0.99  ------ Proving...
% 1.61/0.99  ------ Problem Properties 
% 1.61/0.99  
% 1.61/0.99  
% 1.61/0.99  clauses                                 6
% 1.61/0.99  conjectures                             0
% 1.61/0.99  EPR                                     0
% 1.61/0.99  Horn                                    5
% 1.61/0.99  unary                                   2
% 1.61/0.99  binary                                  2
% 1.61/0.99  lits                                    15
% 1.61/0.99  lits eq                                 15
% 1.61/0.99  fd_pure                                 0
% 1.61/0.99  fd_pseudo                               0
% 1.61/0.99  fd_cond                                 0
% 1.61/0.99  fd_pseudo_cond                          0
% 1.61/0.99  AC symbols                              0
% 1.61/0.99  
% 1.61/0.99  ------ Schedule dynamic 5 is on 
% 1.61/0.99  
% 1.61/0.99  ------ no conjectures: strip conj schedule 
% 1.61/0.99  
% 1.61/0.99  ------ pure equality problem: resolution off 
% 1.61/0.99  
% 1.61/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 1.61/0.99  
% 1.61/0.99  
% 1.61/0.99  ------ 
% 1.61/0.99  Current options:
% 1.61/0.99  ------ 
% 1.61/0.99  
% 1.61/0.99  ------ Input Options
% 1.61/0.99  
% 1.61/0.99  --out_options                           all
% 1.61/0.99  --tptp_safe_out                         true
% 1.61/0.99  --problem_path                          ""
% 1.61/0.99  --include_path                          ""
% 1.61/0.99  --clausifier                            res/vclausify_rel
% 1.61/0.99  --clausifier_options                    --mode clausify
% 1.61/0.99  --stdin                                 false
% 1.61/0.99  --stats_out                             all
% 1.61/0.99  
% 1.61/0.99  ------ General Options
% 1.61/0.99  
% 1.61/0.99  --fof                                   false
% 1.61/0.99  --time_out_real                         305.
% 1.61/0.99  --time_out_virtual                      -1.
% 1.61/0.99  --symbol_type_check                     false
% 1.61/0.99  --clausify_out                          false
% 1.61/0.99  --sig_cnt_out                           false
% 1.61/0.99  --trig_cnt_out                          false
% 1.61/0.99  --trig_cnt_out_tolerance                1.
% 1.61/0.99  --trig_cnt_out_sk_spl                   false
% 1.61/0.99  --abstr_cl_out                          false
% 1.61/0.99  
% 1.61/0.99  ------ Global Options
% 1.61/0.99  
% 1.61/0.99  --schedule                              default
% 1.61/0.99  --add_important_lit                     false
% 1.61/0.99  --prop_solver_per_cl                    1000
% 1.61/0.99  --min_unsat_core                        false
% 1.61/0.99  --soft_assumptions                      false
% 1.61/0.99  --soft_lemma_size                       3
% 1.61/0.99  --prop_impl_unit_size                   0
% 1.61/0.99  --prop_impl_unit                        []
% 1.61/0.99  --share_sel_clauses                     true
% 1.61/0.99  --reset_solvers                         false
% 1.61/0.99  --bc_imp_inh                            [conj_cone]
% 1.61/0.99  --conj_cone_tolerance                   3.
% 1.61/0.99  --extra_neg_conj                        none
% 1.61/0.99  --large_theory_mode                     true
% 1.61/0.99  --prolific_symb_bound                   200
% 1.61/0.99  --lt_threshold                          2000
% 1.61/0.99  --clause_weak_htbl                      true
% 1.61/0.99  --gc_record_bc_elim                     false
% 1.61/0.99  
% 1.61/0.99  ------ Preprocessing Options
% 1.61/0.99  
% 1.61/0.99  --preprocessing_flag                    true
% 1.61/0.99  --time_out_prep_mult                    0.1
% 1.61/0.99  --splitting_mode                        input
% 1.61/0.99  --splitting_grd                         true
% 1.61/0.99  --splitting_cvd                         false
% 1.61/0.99  --splitting_cvd_svl                     false
% 1.61/0.99  --splitting_nvd                         32
% 1.61/0.99  --sub_typing                            true
% 1.61/0.99  --prep_gs_sim                           true
% 1.61/0.99  --prep_unflatten                        true
% 1.61/0.99  --prep_res_sim                          true
% 1.61/0.99  --prep_upred                            true
% 1.61/0.99  --prep_sem_filter                       exhaustive
% 1.61/0.99  --prep_sem_filter_out                   false
% 1.61/0.99  --pred_elim                             true
% 1.61/0.99  --res_sim_input                         true
% 1.61/0.99  --eq_ax_congr_red                       true
% 1.61/0.99  --pure_diseq_elim                       true
% 1.61/0.99  --brand_transform                       false
% 1.61/0.99  --non_eq_to_eq                          false
% 1.61/0.99  --prep_def_merge                        true
% 1.61/0.99  --prep_def_merge_prop_impl              false
% 1.61/0.99  --prep_def_merge_mbd                    true
% 1.61/0.99  --prep_def_merge_tr_red                 false
% 1.61/0.99  --prep_def_merge_tr_cl                  false
% 1.61/0.99  --smt_preprocessing                     true
% 1.61/0.99  --smt_ac_axioms                         fast
% 1.61/0.99  --preprocessed_out                      false
% 1.61/0.99  --preprocessed_stats                    false
% 1.61/0.99  
% 1.61/0.99  ------ Abstraction refinement Options
% 1.61/0.99  
% 1.61/0.99  --abstr_ref                             []
% 1.61/0.99  --abstr_ref_prep                        false
% 1.61/0.99  --abstr_ref_until_sat                   false
% 1.61/0.99  --abstr_ref_sig_restrict                funpre
% 1.61/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.61/0.99  --abstr_ref_under                       []
% 1.61/0.99  
% 1.61/0.99  ------ SAT Options
% 1.61/0.99  
% 1.61/0.99  --sat_mode                              false
% 1.61/0.99  --sat_fm_restart_options                ""
% 1.61/0.99  --sat_gr_def                            false
% 1.61/0.99  --sat_epr_types                         true
% 1.61/0.99  --sat_non_cyclic_types                  false
% 1.61/0.99  --sat_finite_models                     false
% 1.61/0.99  --sat_fm_lemmas                         false
% 1.61/0.99  --sat_fm_prep                           false
% 1.61/0.99  --sat_fm_uc_incr                        true
% 1.61/0.99  --sat_out_model                         small
% 1.61/0.99  --sat_out_clauses                       false
% 1.61/0.99  
% 1.61/0.99  ------ QBF Options
% 1.61/0.99  
% 1.61/0.99  --qbf_mode                              false
% 1.61/0.99  --qbf_elim_univ                         false
% 1.61/0.99  --qbf_dom_inst                          none
% 1.61/0.99  --qbf_dom_pre_inst                      false
% 1.61/0.99  --qbf_sk_in                             false
% 1.61/0.99  --qbf_pred_elim                         true
% 1.61/0.99  --qbf_split                             512
% 1.61/0.99  
% 1.61/0.99  ------ BMC1 Options
% 1.61/0.99  
% 1.61/0.99  --bmc1_incremental                      false
% 1.61/0.99  --bmc1_axioms                           reachable_all
% 1.61/0.99  --bmc1_min_bound                        0
% 1.61/0.99  --bmc1_max_bound                        -1
% 1.61/0.99  --bmc1_max_bound_default                -1
% 1.61/0.99  --bmc1_symbol_reachability              true
% 1.61/0.99  --bmc1_property_lemmas                  false
% 1.61/0.99  --bmc1_k_induction                      false
% 1.61/0.99  --bmc1_non_equiv_states                 false
% 1.61/0.99  --bmc1_deadlock                         false
% 1.61/0.99  --bmc1_ucm                              false
% 1.61/0.99  --bmc1_add_unsat_core                   none
% 1.61/0.99  --bmc1_unsat_core_children              false
% 1.61/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.61/0.99  --bmc1_out_stat                         full
% 1.61/0.99  --bmc1_ground_init                      false
% 1.61/0.99  --bmc1_pre_inst_next_state              false
% 1.61/0.99  --bmc1_pre_inst_state                   false
% 1.61/0.99  --bmc1_pre_inst_reach_state             false
% 1.61/0.99  --bmc1_out_unsat_core                   false
% 1.61/0.99  --bmc1_aig_witness_out                  false
% 1.61/0.99  --bmc1_verbose                          false
% 1.61/0.99  --bmc1_dump_clauses_tptp                false
% 1.61/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.61/0.99  --bmc1_dump_file                        -
% 1.61/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.61/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.61/0.99  --bmc1_ucm_extend_mode                  1
% 1.61/0.99  --bmc1_ucm_init_mode                    2
% 1.61/0.99  --bmc1_ucm_cone_mode                    none
% 1.61/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.61/0.99  --bmc1_ucm_relax_model                  4
% 1.61/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.61/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.61/0.99  --bmc1_ucm_layered_model                none
% 1.61/0.99  --bmc1_ucm_max_lemma_size               10
% 1.61/0.99  
% 1.61/0.99  ------ AIG Options
% 1.61/0.99  
% 1.61/0.99  --aig_mode                              false
% 1.61/0.99  
% 1.61/0.99  ------ Instantiation Options
% 1.61/0.99  
% 1.61/0.99  --instantiation_flag                    true
% 1.61/0.99  --inst_sos_flag                         false
% 1.61/0.99  --inst_sos_phase                        true
% 1.61/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.61/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.61/0.99  --inst_lit_sel_side                     none
% 1.61/0.99  --inst_solver_per_active                1400
% 1.61/0.99  --inst_solver_calls_frac                1.
% 1.61/0.99  --inst_passive_queue_type               priority_queues
% 1.61/0.99  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 1.61/0.99  --inst_passive_queues_freq              [25;2]
% 1.61/0.99  --inst_dismatching                      true
% 1.61/0.99  --inst_eager_unprocessed_to_passive     true
% 1.61/0.99  --inst_prop_sim_given                   true
% 1.61/0.99  --inst_prop_sim_new                     false
% 1.61/0.99  --inst_subs_new                         false
% 1.61/0.99  --inst_eq_res_simp                      false
% 1.61/0.99  --inst_subs_given                       false
% 1.61/0.99  --inst_orphan_elimination               true
% 1.61/0.99  --inst_learning_loop_flag               true
% 1.61/0.99  --inst_learning_start                   3000
% 1.61/0.99  --inst_learning_factor                  2
% 1.61/0.99  --inst_start_prop_sim_after_learn       3
% 1.61/0.99  --inst_sel_renew                        solver
% 1.61/0.99  --inst_lit_activity_flag                true
% 1.61/0.99  --inst_restr_to_given                   false
% 1.61/0.99  --inst_activity_threshold               500
% 1.61/0.99  --inst_out_proof                        true
% 1.61/0.99  
% 1.61/0.99  ------ Resolution Options
% 1.61/0.99  
% 1.61/0.99  --resolution_flag                       false
% 1.61/0.99  --res_lit_sel                           adaptive
% 1.61/0.99  --res_lit_sel_side                      none
% 1.61/0.99  --res_ordering                          kbo
% 1.61/0.99  --res_to_prop_solver                    active
% 1.61/0.99  --res_prop_simpl_new                    false
% 1.61/0.99  --res_prop_simpl_given                  true
% 1.61/0.99  --res_passive_queue_type                priority_queues
% 1.61/0.99  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 1.61/0.99  --res_passive_queues_freq               [15;5]
% 1.61/0.99  --res_forward_subs                      full
% 1.61/0.99  --res_backward_subs                     full
% 1.61/0.99  --res_forward_subs_resolution           true
% 1.61/0.99  --res_backward_subs_resolution          true
% 1.61/0.99  --res_orphan_elimination                true
% 1.61/0.99  --res_time_limit                        2.
% 1.61/0.99  --res_out_proof                         true
% 1.61/0.99  
% 1.61/0.99  ------ Superposition Options
% 1.61/0.99  
% 1.61/0.99  --superposition_flag                    true
% 1.61/0.99  --sup_passive_queue_type                priority_queues
% 1.61/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.61/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.61/0.99  --demod_completeness_check              fast
% 1.61/0.99  --demod_use_ground                      true
% 1.61/0.99  --sup_to_prop_solver                    passive
% 1.61/0.99  --sup_prop_simpl_new                    true
% 1.61/0.99  --sup_prop_simpl_given                  true
% 1.61/0.99  --sup_fun_splitting                     false
% 1.61/0.99  --sup_smt_interval                      50000
% 1.61/0.99  
% 1.61/0.99  ------ Superposition Simplification Setup
% 1.61/0.99  
% 1.61/0.99  --sup_indices_passive                   []
% 1.61/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.61/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.99  --sup_full_bw                           [BwDemod]
% 1.61/0.99  --sup_immed_triv                        [TrivRules]
% 1.61/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.61/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.99  --sup_immed_bw_main                     []
% 1.61/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.61/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.99  
% 1.61/0.99  ------ Combination Options
% 1.61/0.99  
% 1.61/0.99  --comb_res_mult                         3
% 1.61/0.99  --comb_sup_mult                         2
% 1.61/0.99  --comb_inst_mult                        10
% 1.61/0.99  
% 1.61/0.99  ------ Debug Options
% 1.61/0.99  
% 1.61/0.99  --dbg_backtrace                         false
% 1.61/0.99  --dbg_dump_prop_clauses                 false
% 1.61/0.99  --dbg_dump_prop_clauses_file            -
% 1.61/0.99  --dbg_out_stat                          false
% 1.61/0.99  
% 1.61/0.99  
% 1.61/0.99  
% 1.61/0.99  
% 1.61/0.99  ------ Proving...
% 1.61/0.99  
% 1.61/0.99  
% 1.61/0.99  % SZS status CounterSatisfiable for theBenchmark.p
% 1.61/0.99  
% 1.61/0.99  % SZS output start Saturation for theBenchmark.p
% 1.61/0.99  
% 1.61/0.99  fof(f3,axiom,(
% 1.61/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f31,plain,(
% 1.61/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.61/0.99    inference(cnf_transformation,[],[f3])).
% 1.61/0.99  
% 1.61/0.99  fof(f2,axiom,(
% 1.61/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f15,plain,(
% 1.61/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.61/0.99    inference(ennf_transformation,[],[f2])).
% 1.61/0.99  
% 1.61/0.99  fof(f30,plain,(
% 1.61/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.61/0.99    inference(cnf_transformation,[],[f15])).
% 1.61/0.99  
% 1.61/0.99  fof(f5,axiom,(
% 1.61/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f16,plain,(
% 1.61/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.61/0.99    inference(ennf_transformation,[],[f5])).
% 1.61/0.99  
% 1.61/0.99  fof(f32,plain,(
% 1.61/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.61/0.99    inference(cnf_transformation,[],[f16])).
% 1.61/0.99  
% 1.61/0.99  fof(f10,conjecture,(
% 1.61/0.99    ! [X0] : ((l1_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (v23_waybel_0(X2,X0,X1) => (k2_relat_1(k2_funct_1(X2)) = u1_struct_0(X0) & m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(k2_funct_1(X2)))))))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f11,negated_conjecture,(
% 1.61/0.99    ~! [X0] : ((l1_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (v23_waybel_0(X2,X0,X1) => (k2_relat_1(k2_funct_1(X2)) = u1_struct_0(X0) & m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(k2_funct_1(X2)))))))),
% 1.61/0.99    inference(negated_conjecture,[],[f10])).
% 1.61/0.99  
% 1.61/0.99  fof(f12,plain,(
% 1.61/0.99    ~! [X0] : ((l1_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_orders_2(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (k2_relat_1(k2_funct_1(X2)) = u1_struct_0(X0) & m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(k2_funct_1(X2))))))),
% 1.61/0.99    inference(pure_predicate_removal,[],[f11])).
% 1.61/0.99  
% 1.61/0.99  fof(f22,plain,(
% 1.61/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(X2))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_orders_2(X1) & ~v2_struct_0(X1))) & (l1_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.61/0.99    inference(ennf_transformation,[],[f12])).
% 1.61/0.99  
% 1.61/0.99  fof(f23,plain,(
% 1.61/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(X2))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_orders_2(X1) & ~v2_struct_0(X1)) & l1_orders_2(X0) & ~v2_struct_0(X0))),
% 1.61/0.99    inference(flattening,[],[f22])).
% 1.61/0.99  
% 1.61/0.99  fof(f27,plain,(
% 1.61/0.99    ( ! [X0,X1] : (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(X2))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(sK2),u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(sK2))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 1.61/0.99    introduced(choice_axiom,[])).
% 1.61/0.99  
% 1.61/0.99  fof(f26,plain,(
% 1.61/0.99    ( ! [X0] : (? [X1] : (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(X2))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_orders_2(X1) & ~v2_struct_0(X1)) => (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(sK1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(X2))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_orders_2(sK1) & ~v2_struct_0(sK1))) )),
% 1.61/0.99    introduced(choice_axiom,[])).
% 1.61/0.99  
% 1.61/0.99  fof(f25,plain,(
% 1.61/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(X0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(k2_funct_1(X2))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_orders_2(X1) & ~v2_struct_0(X1)) & l1_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : ((k2_relat_1(k2_funct_1(X2)) != u1_struct_0(sK0) | ~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0)))) | ~v1_funct_2(k2_funct_1(X2),u1_struct_0(X1),u1_struct_0(sK0)) | ~v1_funct_1(k2_funct_1(X2))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_orders_2(X1) & ~v2_struct_0(X1)) & l1_orders_2(sK0) & ~v2_struct_0(sK0))),
% 1.61/0.99    introduced(choice_axiom,[])).
% 1.61/0.99  
% 1.61/0.99  fof(f28,plain,(
% 1.61/0.99    (((k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0) | ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) | ~v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0)) | ~v1_funct_1(k2_funct_1(sK2))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_orders_2(sK1) & ~v2_struct_0(sK1)) & l1_orders_2(sK0) & ~v2_struct_0(sK0)),
% 1.61/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f23,f27,f26,f25])).
% 1.61/0.99  
% 1.61/0.99  fof(f47,plain,(
% 1.61/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f46,plain,(
% 1.61/0.99    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f6,axiom,(
% 1.61/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f17,plain,(
% 1.61/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.61/0.99    inference(ennf_transformation,[],[f6])).
% 1.61/0.99  
% 1.61/0.99  fof(f18,plain,(
% 1.61/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.61/0.99    inference(flattening,[],[f17])).
% 1.61/0.99  
% 1.61/0.99  fof(f24,plain,(
% 1.61/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.61/0.99    inference(nnf_transformation,[],[f18])).
% 1.61/0.99  
% 1.61/0.99  fof(f33,plain,(
% 1.61/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.61/0.99    inference(cnf_transformation,[],[f24])).
% 1.61/0.99  
% 1.61/0.99  fof(f1,axiom,(
% 1.61/0.99    v1_xboole_0(k1_xboole_0)),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f29,plain,(
% 1.61/0.99    v1_xboole_0(k1_xboole_0)),
% 1.61/0.99    inference(cnf_transformation,[],[f1])).
% 1.61/0.99  
% 1.61/0.99  fof(f8,axiom,(
% 1.61/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f19,plain,(
% 1.61/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.61/0.99    inference(ennf_transformation,[],[f8])).
% 1.61/0.99  
% 1.61/0.99  fof(f20,plain,(
% 1.61/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.61/0.99    inference(flattening,[],[f19])).
% 1.61/0.99  
% 1.61/0.99  fof(f39,plain,(
% 1.61/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.61/0.99    inference(cnf_transformation,[],[f20])).
% 1.61/0.99  
% 1.61/0.99  fof(f9,axiom,(
% 1.61/0.99    ! [X0] : (l1_orders_2(X0) => l1_struct_0(X0))),
% 1.61/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.99  
% 1.61/0.99  fof(f21,plain,(
% 1.61/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_orders_2(X0))),
% 1.61/0.99    inference(ennf_transformation,[],[f9])).
% 1.61/0.99  
% 1.61/0.99  fof(f40,plain,(
% 1.61/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_orders_2(X0)) )),
% 1.61/0.99    inference(cnf_transformation,[],[f21])).
% 1.61/0.99  
% 1.61/0.99  fof(f44,plain,(
% 1.61/0.99    l1_orders_2(sK1)),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f43,plain,(
% 1.61/0.99    ~v2_struct_0(sK1)),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f48,plain,(
% 1.61/0.99    k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0) | ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) | ~v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0)) | ~v1_funct_1(k2_funct_1(sK2))),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f45,plain,(
% 1.61/0.99    v1_funct_1(sK2)),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f42,plain,(
% 1.61/0.99    l1_orders_2(sK0)),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f41,plain,(
% 1.61/0.99    ~v2_struct_0(sK0)),
% 1.61/0.99    inference(cnf_transformation,[],[f28])).
% 1.61/0.99  
% 1.61/0.99  fof(f35,plain,(
% 1.61/0.99    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.61/0.99    inference(cnf_transformation,[],[f24])).
% 1.61/0.99  
% 1.61/0.99  cnf(c_197,plain,
% 1.61/0.99      ( ~ v1_funct_1(X0) | v1_funct_1(X1) | X1 != X0 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_194,plain,
% 1.61/0.99      ( ~ l1_orders_2(X0) | l1_orders_2(X1) | X1 != X0 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_193,plain,
% 1.61/0.99      ( ~ v2_struct_0(X0) | v2_struct_0(X1) | X1 != X0 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_191,plain,
% 1.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.61/0.99      | v1_funct_2(X3,X4,X5)
% 1.61/0.99      | X3 != X0
% 1.61/0.99      | X4 != X1
% 1.61/0.99      | X5 != X2 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_188,plain,
% 1.61/0.99      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_186,plain,
% 1.61/0.99      ( ~ v1_relat_1(X0) | v1_relat_1(X1) | X1 != X0 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_185,plain,
% 1.61/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 1.61/0.99      theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_182,plain,( X0_2 = X0_2 ),theory(equality) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_2,plain,
% 1.61/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.61/0.99      inference(cnf_transformation,[],[f31]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_1,plain,
% 1.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f30]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_3,plain,
% 1.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.61/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f32]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_13,negated_conjecture,
% 1.61/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 1.61/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_326,plain,
% 1.61/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.61/0.99      | sK2 != X2 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_13]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_327,plain,
% 1.61/0.99      ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_326]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_535,plain,
% 1.61/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_47,X1_47))
% 1.61/0.99      | k1_relset_1(X0_47,X1_47,sK2) = k1_relat_1(sK2) ),
% 1.61/0.99      inference(subtyping,[status(esa)],[c_327]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_596,plain,
% 1.61/0.99      ( k1_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
% 1.61/0.99      inference(equality_resolution,[status(thm)],[c_535]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_14,negated_conjecture,
% 1.61/0.99      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 1.61/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_9,plain,
% 1.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.61/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.61/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.61/0.99      | k1_xboole_0 = X2 ),
% 1.61/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_290,plain,
% 1.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.61/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.61/0.99      | sK2 != X0
% 1.61/0.99      | k1_xboole_0 = X2 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_13]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_291,plain,
% 1.61/0.99      ( ~ v1_funct_2(sK2,X0,X1)
% 1.61/0.99      | k1_relset_1(X0,X1,sK2) = X0
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.61/0.99      | k1_xboole_0 = X1 ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_290]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_492,plain,
% 1.61/0.99      ( k1_relset_1(X0,X1,sK2) = X0
% 1.61/0.99      | u1_struct_0(sK1) != X1
% 1.61/0.99      | u1_struct_0(sK0) != X0
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.61/0.99      | sK2 != sK2
% 1.61/0.99      | k1_xboole_0 = X1 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_291]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_493,plain,
% 1.61/0.99      ( k1_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = u1_struct_0(sK0)
% 1.61/0.99      | k1_xboole_0 = u1_struct_0(sK1) ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_492]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_532,plain,
% 1.61/0.99      ( k1_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = u1_struct_0(sK0)
% 1.61/0.99      | k1_xboole_0 = u1_struct_0(sK1) ),
% 1.61/0.99      inference(subtyping,[status(esa)],[c_493]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_638,plain,
% 1.61/0.99      ( u1_struct_0(sK1) = k1_xboole_0 | u1_struct_0(sK0) = k1_relat_1(sK2) ),
% 1.61/0.99      inference(demodulation,[status(thm)],[c_596,c_532]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_0,plain,
% 1.61/0.99      ( v1_xboole_0(k1_xboole_0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f29]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_10,plain,
% 1.61/0.99      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 1.61/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_216,plain,
% 1.61/0.99      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | u1_struct_0(X0) != k1_xboole_0 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_10]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_11,plain,
% 1.61/0.99      ( ~ l1_orders_2(X0) | l1_struct_0(X0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_16,negated_conjecture,
% 1.61/0.99      ( l1_orders_2(sK1) ),
% 1.61/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_234,plain,
% 1.61/0.99      ( l1_struct_0(X0) | sK1 != X0 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_16]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_235,plain,
% 1.61/0.99      ( l1_struct_0(sK1) ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_234]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_272,plain,
% 1.61/0.99      ( v2_struct_0(X0) | u1_struct_0(X0) != k1_xboole_0 | sK1 != X0 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_216,c_235]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_273,plain,
% 1.61/0.99      ( v2_struct_0(sK1) | u1_struct_0(sK1) != k1_xboole_0 ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_272]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_17,negated_conjecture,
% 1.61/0.99      ( ~ v2_struct_0(sK1) ),
% 1.61/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_275,plain,
% 1.61/0.99      ( u1_struct_0(sK1) != k1_xboole_0 ),
% 1.61/0.99      inference(global_propositional_subsumption,[status(thm)],[c_273,c_17]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_537,plain,
% 1.61/0.99      ( u1_struct_0(sK1) != k1_xboole_0 ),
% 1.61/0.99      inference(subtyping,[status(esa)],[c_275]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_672,plain,
% 1.61/0.99      ( u1_struct_0(sK0) = k1_relat_1(sK2) ),
% 1.61/0.99      inference(global_propositional_subsumption,[status(thm)],[c_638,c_537]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_679,plain,
% 1.61/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_47,X1_47))
% 1.61/0.99      | k1_relset_1(X0_47,X1_47,sK2) = k1_relat_1(sK2) ),
% 1.61/0.99      inference(demodulation,[status(thm)],[c_672,c_535]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_12,negated_conjecture,
% 1.61/0.99      ( ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 1.61/0.99      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 1.61/0.99      | ~ v1_funct_1(k2_funct_1(sK2))
% 1.61/0.99      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_15,negated_conjecture,
% 1.61/0.99      ( v1_funct_1(sK2) ),
% 1.61/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_252,plain,
% 1.61/0.99      ( ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 1.61/0.99      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 1.61/0.99      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/0.99      | k2_funct_1(sK2) != sK2 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_15]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_400,plain,
% 1.61/0.99      ( ~ v1_funct_2(k2_funct_1(sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 1.61/0.99      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/0.99      | k2_funct_1(sK2) != sK2
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_252,c_13]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_460,plain,
% 1.61/0.99      ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/0.99      | k2_funct_1(sK2) != sK2
% 1.61/0.99      | u1_struct_0(sK1) != u1_struct_0(sK0)
% 1.61/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_400,c_14]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_534,plain,
% 1.61/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
% 1.61/0.99      | k2_funct_1(sK2) != sK2
% 1.61/0.99      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/0.99      | u1_struct_0(sK1) != u1_struct_0(sK0) ),
% 1.61/0.99      inference(subtyping,[status(esa)],[c_460]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_678,plain,
% 1.61/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),k1_relat_1(sK2))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),u1_struct_0(sK1)))
% 1.61/0.99      | k2_funct_1(sK2) != sK2
% 1.61/0.99      | k2_relat_1(k2_funct_1(sK2)) != k1_relat_1(sK2)
% 1.61/0.99      | u1_struct_0(sK1) != k1_relat_1(sK2) ),
% 1.61/0.99      inference(demodulation,[status(thm)],[c_672,c_534]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_18,negated_conjecture,
% 1.61/0.99      ( l1_orders_2(sK0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_241,plain,
% 1.61/0.99      ( l1_struct_0(X0) | sK0 != X0 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_18]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_242,plain,
% 1.61/0.99      ( l1_struct_0(sK0) ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_241]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_280,plain,
% 1.61/0.99      ( v2_struct_0(X0) | u1_struct_0(X0) != k1_xboole_0 | sK0 != X0 ),
% 1.61/0.99      inference(resolution_lifted,[status(thm)],[c_216,c_242]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_281,plain,
% 1.61/0.99      ( v2_struct_0(sK0) | u1_struct_0(sK0) != k1_xboole_0 ),
% 1.61/0.99      inference(unflattening,[status(thm)],[c_280]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_19,negated_conjecture,
% 1.61/0.99      ( ~ v2_struct_0(sK0) ),
% 1.61/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_283,plain,
% 1.61/0.99      ( u1_struct_0(sK0) != k1_xboole_0 ),
% 1.61/0.99      inference(global_propositional_subsumption,[status(thm)],[c_281,c_19]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_536,plain,
% 1.61/0.99      ( u1_struct_0(sK0) != k1_xboole_0 ),
% 1.61/0.99      inference(subtyping,[status(esa)],[c_283]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_677,plain,
% 1.61/0.99      ( k1_relat_1(sK2) != k1_xboole_0 ),
% 1.61/0.99      inference(demodulation,[status(thm)],[c_672,c_536]) ).
% 1.61/0.99  
% 1.61/0.99  cnf(c_676,plain,
% 1.61/0.99      ( k1_relset_1(k1_relat_1(sK2),u1_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
% 1.61/0.99      inference(demodulation,[status(thm)],[c_672,c_596]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_7,plain,
% 1.61/1.00      ( v1_funct_2(X0,X1,X2)
% 1.61/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.61/1.00      | k1_relset_1(X1,X2,X0) != X1
% 1.61/1.00      | k1_xboole_0 = X2 ),
% 1.61/1.00      inference(cnf_transformation,[],[f35]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_308,plain,
% 1.61/1.00      ( v1_funct_2(X0,X1,X2)
% 1.61/1.00      | k1_relset_1(X1,X2,X0) != X1
% 1.61/1.00      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.61/1.00      | sK2 != X0
% 1.61/1.00      | k1_xboole_0 = X2 ),
% 1.61/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_13]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_309,plain,
% 1.61/1.00      ( v1_funct_2(sK2,X0,X1)
% 1.61/1.00      | k1_relset_1(X0,X1,sK2) != X0
% 1.61/1.00      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.61/1.00      | k1_xboole_0 = X1 ),
% 1.61/1.00      inference(unflattening,[status(thm)],[c_308]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_473,plain,
% 1.61/1.00      ( k1_relset_1(X0,X1,sK2) != X0
% 1.61/1.00      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/1.00      | k2_funct_1(sK2) != sK2
% 1.61/1.00      | u1_struct_0(sK1) != X0
% 1.61/1.00      | u1_struct_0(sK0) != X1
% 1.61/1.00      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.61/1.00      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
% 1.61/1.00      | k1_xboole_0 = X1 ),
% 1.61/1.00      inference(resolution_lifted,[status(thm)],[c_400,c_309]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_474,plain,
% 1.61/1.00      ( k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
% 1.61/1.00      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/1.00      | k2_funct_1(sK2) != sK2
% 1.61/1.00      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
% 1.61/1.00      | k1_xboole_0 = u1_struct_0(sK0) ),
% 1.61/1.00      inference(unflattening,[status(thm)],[c_473]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_533,plain,
% 1.61/1.00      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
% 1.61/1.00      | k2_funct_1(sK2) != sK2
% 1.61/1.00      | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
% 1.61/1.00      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/1.00      | k1_xboole_0 = u1_struct_0(sK0) ),
% 1.61/1.00      inference(subtyping,[status(esa)],[c_474]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_542,plain,
% 1.61/1.00      ( X0_47 != X1_47 | X2_47 != X1_47 | X2_47 = X0_47 ),
% 1.61/1.00      theory(equality) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_603,plain,
% 1.61/1.00      ( u1_struct_0(sK0) != X0_47
% 1.61/1.00      | u1_struct_0(sK0) = k1_xboole_0
% 1.61/1.00      | k1_xboole_0 != X0_47 ),
% 1.61/1.00      inference(instantiation,[status(thm)],[c_542]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_612,plain,
% 1.61/1.00      ( u1_struct_0(sK0) != u1_struct_0(sK0)
% 1.61/1.00      | u1_struct_0(sK0) = k1_xboole_0
% 1.61/1.00      | k1_xboole_0 != u1_struct_0(sK0) ),
% 1.61/1.00      inference(instantiation,[status(thm)],[c_603]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_538,plain,( X0_47 = X0_47 ),theory(equality) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_613,plain,
% 1.61/1.00      ( u1_struct_0(sK0) = u1_struct_0(sK0) ),
% 1.61/1.00      inference(instantiation,[status(thm)],[c_538]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_666,plain,
% 1.61/1.00      ( k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0)
% 1.61/1.00      | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
% 1.61/1.00      | k2_funct_1(sK2) != sK2
% 1.61/1.00      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
% 1.61/1.00      inference(global_propositional_subsumption,
% 1.61/1.00                [status(thm)],
% 1.61/1.00                [c_533,c_536,c_612,c_613]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_667,plain,
% 1.61/1.00      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
% 1.61/1.00      | k2_funct_1(sK2) != sK2
% 1.61/1.00      | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK2) != u1_struct_0(sK1)
% 1.61/1.00      | k2_relat_1(k2_funct_1(sK2)) != u1_struct_0(sK0) ),
% 1.61/1.00      inference(renaming,[status(thm)],[c_666]) ).
% 1.61/1.00  
% 1.61/1.00  cnf(c_675,plain,
% 1.61/1.00      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),k1_relat_1(sK2))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),u1_struct_0(sK1)))
% 1.61/1.00      | k2_funct_1(sK2) != sK2
% 1.61/1.00      | k1_relset_1(u1_struct_0(sK1),k1_relat_1(sK2),sK2) != u1_struct_0(sK1)
% 1.61/1.00      | k2_relat_1(k2_funct_1(sK2)) != k1_relat_1(sK2) ),
% 1.61/1.00      inference(demodulation,[status(thm)],[c_672,c_667]) ).
% 1.61/1.00  
% 1.61/1.00  
% 1.61/1.00  % SZS output end Saturation for theBenchmark.p
% 1.61/1.00  
% 1.61/1.00  ------                               Statistics
% 1.61/1.00  
% 1.61/1.00  ------ General
% 1.61/1.00  
% 1.61/1.00  abstr_ref_over_cycles:                  0
% 1.61/1.00  abstr_ref_under_cycles:                 0
% 1.61/1.00  gc_basic_clause_elim:                   0
% 1.61/1.00  forced_gc_time:                         0
% 1.61/1.00  parsing_time:                           0.008
% 1.61/1.00  unif_index_cands_time:                  0.
% 1.61/1.00  unif_index_add_time:                    0.
% 1.61/1.00  orderings_time:                         0.
% 1.61/1.00  out_proof_time:                         0.
% 1.61/1.00  total_time:                             0.062
% 1.61/1.00  num_of_symbols:                         52
% 1.61/1.00  num_of_terms:                           950
% 1.61/1.00  
% 1.61/1.00  ------ Preprocessing
% 1.61/1.00  
% 1.61/1.00  num_of_splits:                          0
% 1.61/1.00  num_of_split_atoms:                     0
% 1.61/1.00  num_of_reused_defs:                     0
% 1.61/1.00  num_eq_ax_congr_red:                    5
% 1.61/1.00  num_of_sem_filtered_clauses:            2
% 1.61/1.00  num_of_subtypes:                        5
% 1.61/1.00  monotx_restored_types:                  0
% 1.61/1.00  sat_num_of_epr_types:                   0
% 1.61/1.00  sat_num_of_non_cyclic_types:            0
% 1.61/1.00  sat_guarded_non_collapsed_types:        0
% 1.61/1.00  num_pure_diseq_elim:                    0
% 1.61/1.00  simp_replaced_by:                       0
% 1.61/1.00  res_preprocessed:                       45
% 1.61/1.00  prep_upred:                             0
% 1.61/1.00  prep_unflattend:                        31
% 1.61/1.00  smt_new_axioms:                         0
% 1.61/1.00  pred_elim_cands:                        0
% 1.61/1.00  pred_elim:                              7
% 1.61/1.00  pred_elim_cl:                           12
% 1.61/1.00  pred_elim_cycles:                       8
% 1.61/1.00  merged_defs:                            0
% 1.61/1.00  merged_defs_ncl:                        0
% 1.61/1.00  bin_hyper_res:                          0
% 1.61/1.00  prep_cycles:                            3
% 1.61/1.00  pred_elim_time:                         0.006
% 1.61/1.00  splitting_time:                         0.
% 1.61/1.00  sem_filter_time:                        0.
% 1.61/1.00  monotx_time:                            0.
% 1.61/1.00  subtype_inf_time:                       0.
% 1.61/1.00  
% 1.61/1.00  ------ Problem properties
% 1.61/1.00  
% 1.61/1.00  clauses:                                6
% 1.61/1.00  conjectures:                            0
% 1.61/1.00  epr:                                    0
% 1.61/1.00  horn:                                   5
% 1.61/1.00  ground:                                 5
% 1.61/1.00  unary:                                  2
% 1.61/1.00  binary:                                 2
% 1.61/1.00  lits:                                   15
% 1.61/1.00  lits_eq:                                15
% 1.61/1.00  fd_pure:                                0
% 1.61/1.00  fd_pseudo:                              0
% 1.61/1.00  fd_cond:                                0
% 1.61/1.00  fd_pseudo_cond:                         0
% 1.61/1.00  ac_symbols:                             0
% 1.61/1.00  
% 1.61/1.00  ------ Propositional Solver
% 1.61/1.00  
% 1.61/1.00  prop_solver_calls:                      22
% 1.61/1.00  prop_fast_solver_calls:                 293
% 1.61/1.00  smt_solver_calls:                       0
% 1.61/1.00  smt_fast_solver_calls:                  0
% 1.61/1.00  prop_num_of_clauses:                    220
% 1.61/1.00  prop_preprocess_simplified:             1069
% 1.61/1.00  prop_fo_subsumed:                       4
% 1.61/1.00  prop_solver_time:                       0.
% 1.61/1.00  smt_solver_time:                        0.
% 1.61/1.00  smt_fast_solver_time:                   0.
% 1.61/1.00  prop_fast_solver_time:                  0.
% 1.61/1.00  prop_unsat_core_time:                   0.
% 1.61/1.00  
% 1.61/1.00  ------ QBF
% 1.61/1.00  
% 1.61/1.00  qbf_q_res:                              0
% 1.61/1.00  qbf_num_tautologies:                    0
% 1.61/1.00  qbf_prep_cycles:                        0
% 1.61/1.00  
% 1.61/1.00  ------ BMC1
% 1.61/1.00  
% 1.61/1.00  bmc1_current_bound:                     -1
% 1.61/1.00  bmc1_last_solved_bound:                 -1
% 1.61/1.00  bmc1_unsat_core_size:                   -1
% 1.61/1.00  bmc1_unsat_core_parents_size:           -1
% 1.61/1.00  bmc1_merge_next_fun:                    0
% 1.61/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.61/1.00  
% 1.61/1.00  ------ Instantiation
% 1.61/1.00  
% 1.61/1.00  inst_num_of_clauses:                    79
% 1.61/1.00  inst_num_in_passive:                    1
% 1.61/1.00  inst_num_in_active:                     66
% 1.61/1.00  inst_num_in_unprocessed:                12
% 1.61/1.00  inst_num_of_loops:                      70
% 1.61/1.00  inst_num_of_learning_restarts:          0
% 1.61/1.00  inst_num_moves_active_passive:          1
% 1.61/1.00  inst_lit_activity:                      0
% 1.61/1.00  inst_lit_activity_moves:                0
% 1.61/1.00  inst_num_tautologies:                   0
% 1.61/1.00  inst_num_prop_implied:                  0
% 1.61/1.00  inst_num_existing_simplified:           0
% 1.61/1.00  inst_num_eq_res_simplified:             0
% 1.61/1.00  inst_num_child_elim:                    0
% 1.61/1.00  inst_num_of_dismatching_blockings:      7
% 1.61/1.00  inst_num_of_non_proper_insts:           79
% 1.61/1.00  inst_num_of_duplicates:                 0
% 1.61/1.00  inst_inst_num_from_inst_to_res:         0
% 1.61/1.00  inst_dismatching_checking_time:         0.
% 1.61/1.00  
% 1.61/1.00  ------ Resolution
% 1.61/1.00  
% 1.61/1.00  res_num_of_clauses:                     0
% 1.61/1.00  res_num_in_passive:                     0
% 1.61/1.00  res_num_in_active:                      0
% 1.61/1.00  res_num_of_loops:                       48
% 1.61/1.00  res_forward_subset_subsumed:            29
% 1.61/1.00  res_backward_subset_subsumed:           0
% 1.61/1.00  res_forward_subsumed:                   0
% 1.61/1.00  res_backward_subsumed:                  0
% 1.61/1.00  res_forward_subsumption_resolution:     0
% 1.61/1.00  res_backward_subsumption_resolution:    0
% 1.61/1.00  res_clause_to_clause_subsumption:       20
% 1.61/1.00  res_orphan_elimination:                 0
% 1.61/1.00  res_tautology_del:                      27
% 1.61/1.00  res_num_eq_res_simplified:              0
% 1.61/1.00  res_num_sel_changes:                    0
% 1.61/1.00  res_moves_from_active_to_pass:          0
% 1.61/1.00  
% 1.61/1.00  ------ Superposition
% 1.61/1.00  
% 1.61/1.00  sup_time_total:                         0.
% 1.61/1.00  sup_time_generating:                    0.
% 1.61/1.00  sup_time_sim_full:                      0.
% 1.61/1.00  sup_time_sim_immed:                     0.
% 1.61/1.00  
% 1.61/1.00  sup_num_of_clauses:                     7
% 1.61/1.00  sup_num_in_active:                      7
% 1.61/1.00  sup_num_in_passive:                     0
% 1.61/1.00  sup_num_of_loops:                       13
% 1.61/1.00  sup_fw_superposition:                   0
% 1.61/1.00  sup_bw_superposition:                   0
% 1.61/1.00  sup_immediate_simplified:               0
% 1.61/1.00  sup_given_eliminated:                   0
% 1.61/1.00  comparisons_done:                       0
% 1.61/1.00  comparisons_avoided:                    0
% 1.61/1.00  
% 1.61/1.00  ------ Simplifications
% 1.61/1.00  
% 1.61/1.00  
% 1.61/1.00  sim_fw_subset_subsumed:                 0
% 1.61/1.00  sim_bw_subset_subsumed:                 0
% 1.61/1.00  sim_fw_subsumed:                        0
% 1.61/1.00  sim_bw_subsumed:                        0
% 1.61/1.00  sim_fw_subsumption_res:                 0
% 1.61/1.00  sim_bw_subsumption_res:                 0
% 1.61/1.00  sim_tautology_del:                      0
% 1.61/1.00  sim_eq_tautology_del:                   0
% 1.61/1.00  sim_eq_res_simp:                        0
% 1.61/1.00  sim_fw_demodulated:                     0
% 1.61/1.00  sim_bw_demodulated:                     6
% 1.61/1.00  sim_light_normalised:                   0
% 1.61/1.00  sim_joinable_taut:                      0
% 1.61/1.00  sim_joinable_simp:                      0
% 1.61/1.00  sim_ac_normalised:                      0
% 1.61/1.00  sim_smt_subsumption:                    0
% 1.61/1.00  
%------------------------------------------------------------------------------
