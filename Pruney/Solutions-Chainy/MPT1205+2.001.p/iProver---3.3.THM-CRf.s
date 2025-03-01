%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:16 EST 2020

% Result     : Theorem 1.90s
% Output     : CNFRefutation 1.90s
% Verified   : 
% Statistics : Number of formulae       :  142 ( 606 expanded)
%              Number of clauses        :   86 ( 174 expanded)
%              Number of leaves         :   14 ( 146 expanded)
%              Depth                    :   22
%              Number of atoms          :  620 (2956 expanded)
%              Number of equality atoms :  156 ( 553 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   12 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,conjecture,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v13_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => k3_lattices(X0,k5_lattices(X0),X1) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ( l3_lattices(X0)
          & v13_lattices(X0)
          & v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => k3_lattices(X0,k5_lattices(X0),X1) = X1 ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k3_lattices(X0,k5_lattices(X0),X1) != X1
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v13_lattices(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f30,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k3_lattices(X0,k5_lattices(X0),X1) != X1
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v13_lattices(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k3_lattices(X0,k5_lattices(X0),X1) != X1
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( k3_lattices(X0,k5_lattices(X0),sK2) != sK2
        & m1_subset_1(sK2,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k3_lattices(X0,k5_lattices(X0),X1) != X1
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l3_lattices(X0)
        & v13_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( k3_lattices(sK1,k5_lattices(sK1),X1) != X1
          & m1_subset_1(X1,u1_struct_0(sK1)) )
      & l3_lattices(sK1)
      & v13_lattices(sK1)
      & v10_lattices(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2
    & m1_subset_1(sK2,u1_struct_0(sK1))
    & l3_lattices(sK1)
    & v13_lattices(sK1)
    & v10_lattices(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f30,f37,f36])).

fof(f59,plain,(
    m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f38])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l1_lattices(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f21,plain,(
    ! [X0] :
      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f49,plain,(
    ! [X0] :
      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f55,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f58,plain,(
    l3_lattices(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( l2_lattices(X0)
        & l1_lattices(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ( l2_lattices(X0)
        & l1_lattices(X0) )
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f50,plain,(
    ! [X0] :
      ( l1_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f56,plain,(
    v10_lattices(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v7_lattices(X0)
          & v6_lattices(X0)
          & v5_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v8_lattices(X0)
          & v7_lattices(X0)
          & v6_lattices(X0)
          & v5_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f1])).

fof(f12,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v8_lattices(X0)
          & v6_lattices(X0)
          & v5_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f13,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v8_lattices(X0)
          & v6_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f14,plain,(
    ! [X0] :
      ( ( v8_lattices(X0)
        & v6_lattices(X0)
        & v4_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f15,plain,(
    ! [X0] :
      ( ( v8_lattices(X0)
        & v6_lattices(X0)
        & v4_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(flattening,[],[f14])).

fof(f41,plain,(
    ! [X0] :
      ( v6_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v13_lattices(X0)
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ( k5_lattices(X0) = X1
            <=> ! [X2] :
                  ( m1_subset_1(X2,u1_struct_0(X0))
                 => ( k2_lattices(X0,X2,X1) = X1
                    & k2_lattices(X0,X1,X2) = X1 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k5_lattices(X0) = X1
          <=> ! [X2] :
                ( ( k2_lattices(X0,X2,X1) = X1
                  & k2_lattices(X0,X1,X2) = X1 )
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k5_lattices(X0) = X1
          <=> ! [X2] :
                ( ( k2_lattices(X0,X2,X1) = X1
                  & k2_lattices(X0,X1,X2) = X1 )
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k5_lattices(X0) = X1
              | ? [X2] :
                  ( ( k2_lattices(X0,X2,X1) != X1
                    | k2_lattices(X0,X1,X2) != X1 )
                  & m1_subset_1(X2,u1_struct_0(X0)) ) )
            & ( ! [X2] :
                  ( ( k2_lattices(X0,X2,X1) = X1
                    & k2_lattices(X0,X1,X2) = X1 )
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | k5_lattices(X0) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k5_lattices(X0) = X1
              | ? [X2] :
                  ( ( k2_lattices(X0,X2,X1) != X1
                    | k2_lattices(X0,X1,X2) != X1 )
                  & m1_subset_1(X2,u1_struct_0(X0)) ) )
            & ( ! [X3] :
                  ( ( k2_lattices(X0,X3,X1) = X1
                    & k2_lattices(X0,X1,X3) = X1 )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | k5_lattices(X0) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f31])).

fof(f33,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( k2_lattices(X0,X2,X1) != X1
            | k2_lattices(X0,X1,X2) != X1 )
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( ( k2_lattices(X0,sK0(X0,X1),X1) != X1
          | k2_lattices(X0,X1,sK0(X0,X1)) != X1 )
        & m1_subset_1(sK0(X0,X1),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k5_lattices(X0) = X1
              | ( ( k2_lattices(X0,sK0(X0,X1),X1) != X1
                  | k2_lattices(X0,X1,sK0(X0,X1)) != X1 )
                & m1_subset_1(sK0(X0,X1),u1_struct_0(X0)) ) )
            & ( ! [X3] :
                  ( ( k2_lattices(X0,X3,X1) = X1
                    & k2_lattices(X0,X1,X3) = X1 )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | k5_lattices(X0) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f32,f33])).

fof(f44,plain,(
    ! [X0,X3,X1] :
      ( k2_lattices(X0,X3,X1) = X1
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | k5_lattices(X0) != X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f61,plain,(
    ! [X0,X3] :
      ( k5_lattices(X0) = k2_lattices(X0,X3,k5_lattices(X0))
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ v13_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f44])).

fof(f57,plain,(
    v13_lattices(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f42,plain,(
    ! [X0] :
      ( v8_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => r1_lattices(X0,k4_lattices(X0,X1,X2),X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f51,plain,(
    ! [X0] :
      ( l2_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f3,axiom,(
    ! [X0] :
      ( ( l2_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_lattices(X0,X1,X2)
                  | k1_lattices(X0,X1,X2) != X2 )
                & ( k1_lattices(X0,X1,X2) = X2
                  | ~ r1_lattices(X0,X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k1_lattices(X0,X1,X2) = X2
      | ~ r1_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f40,plain,(
    ! [X0] :
      ( v4_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l2_lattices(X0)
        & v4_lattices(X0)
        & ~ v2_struct_0(X0) )
     => k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | ~ v4_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | ~ v4_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | ~ v4_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f60,plain,(
    k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_748,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_920,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_748])).

cnf(c_10,plain,
    ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
    | ~ l1_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_21,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_660,plain,
    ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
    | ~ l1_lattices(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_21])).

cnf(c_661,plain,
    ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
    | ~ l1_lattices(sK1) ),
    inference(unflattening,[status(thm)],[c_660])).

cnf(c_18,negated_conjecture,
    ( l3_lattices(sK1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_12,plain,
    ( l1_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_37,plain,
    ( l1_lattices(sK1)
    | ~ l3_lattices(sK1) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_43,plain,
    ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
    | ~ l1_lattices(sK1)
    | v2_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_663,plain,
    ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_661,c_21,c_18,c_37,c_43])).

cnf(c_740,plain,
    ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_663])).

cnf(c_928,plain,
    ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_740])).

cnf(c_20,negated_conjecture,
    ( v10_lattices(sK1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1,plain,
    ( v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_lattices(X1)
    | ~ v6_lattices(X1)
    | v2_struct_0(X1)
    | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_302,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_lattices(X1)
    | ~ l3_lattices(X3)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ v10_lattices(X3)
    | X1 != X3
    | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
    inference(resolution_lifted,[status(thm)],[c_1,c_14])).

cnf(c_303,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_lattices(X1)
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
    inference(unflattening,[status(thm)],[c_302])).

cnf(c_321,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_303,c_12])).

cnf(c_419,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_321])).

cnf(c_420,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ l3_lattices(sK1)
    | v2_struct_0(sK1)
    | k4_lattices(sK1,X1,X0) = k2_lattices(sK1,X1,X0) ),
    inference(unflattening,[status(thm)],[c_419])).

cnf(c_424,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | k4_lattices(sK1,X1,X0) = k2_lattices(sK1,X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_420,c_21,c_18])).

cnf(c_425,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | k4_lattices(sK1,X0,X1) = k2_lattices(sK1,X0,X1) ),
    inference(renaming,[status(thm)],[c_424])).

cnf(c_747,plain,
    ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK1))
    | k4_lattices(sK1,X0_48,X1_48) = k2_lattices(sK1,X0_48,X1_48) ),
    inference(subtyping,[status(esa)],[c_425])).

cnf(c_921,plain,
    ( k4_lattices(sK1,X0_48,X1_48) = k2_lattices(sK1,X0_48,X1_48)
    | m1_subset_1(X1_48,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_747])).

cnf(c_1139,plain,
    ( k4_lattices(sK1,X0_48,k5_lattices(sK1)) = k2_lattices(sK1,X0_48,k5_lattices(sK1))
    | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_928,c_921])).

cnf(c_1658,plain,
    ( k4_lattices(sK1,sK2,k5_lattices(sK1)) = k2_lattices(sK1,sK2,k5_lattices(sK1)) ),
    inference(superposition,[status(thm)],[c_920,c_1139])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(k5_lattices(X1),u1_struct_0(X1))
    | ~ l1_lattices(X1)
    | ~ v13_lattices(X1)
    | v2_struct_0(X1)
    | k2_lattices(X1,X0,k5_lattices(X1)) = k5_lattices(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_19,negated_conjecture,
    ( v13_lattices(sK1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_582,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(k5_lattices(X1),u1_struct_0(X1))
    | ~ l1_lattices(X1)
    | v2_struct_0(X1)
    | k2_lattices(X1,X0,k5_lattices(X1)) = k5_lattices(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_19])).

cnf(c_583,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
    | ~ l1_lattices(sK1)
    | v2_struct_0(sK1)
    | k2_lattices(sK1,X0,k5_lattices(sK1)) = k5_lattices(sK1) ),
    inference(unflattening,[status(thm)],[c_582])).

cnf(c_587,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | k2_lattices(sK1,X0,k5_lattices(sK1)) = k5_lattices(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_583,c_21,c_18,c_37,c_43])).

cnf(c_743,plain,
    ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
    | k2_lattices(sK1,X0_48,k5_lattices(sK1)) = k5_lattices(sK1) ),
    inference(subtyping,[status(esa)],[c_587])).

cnf(c_925,plain,
    ( k2_lattices(sK1,X0_48,k5_lattices(sK1)) = k5_lattices(sK1)
    | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_743])).

cnf(c_1070,plain,
    ( k2_lattices(sK1,sK2,k5_lattices(sK1)) = k5_lattices(sK1) ),
    inference(superposition,[status(thm)],[c_920,c_925])).

cnf(c_1671,plain,
    ( k4_lattices(sK1,sK2,k5_lattices(sK1)) = k5_lattices(sK1) ),
    inference(light_normalisation,[status(thm)],[c_1658,c_1070])).

cnf(c_0,plain,
    ( ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | v8_lattices(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_15,plain,
    ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v8_lattices(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_266,plain,
    ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(resolution,[status(thm)],[c_0,c_15])).

cnf(c_270,plain,
    ( ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_266,c_1])).

cnf(c_271,plain,
    ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(renaming,[status(thm)],[c_270])).

cnf(c_398,plain,
    ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_271,c_20])).

cnf(c_399,plain,
    ( r1_lattices(sK1,k4_lattices(sK1,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ l3_lattices(sK1)
    | v2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_398])).

cnf(c_403,plain,
    ( r1_lattices(sK1,k4_lattices(sK1,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_399,c_21,c_18])).

cnf(c_11,plain,
    ( l2_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_9,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l2_lattices(X0)
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) = X2 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_338,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) = X2 ),
    inference(resolution,[status(thm)],[c_11,c_9])).

cnf(c_497,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) = X2
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_338,c_18])).

cnf(c_498,plain,
    ( ~ r1_lattices(sK1,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | v2_struct_0(sK1)
    | k1_lattices(sK1,X0,X1) = X1 ),
    inference(unflattening,[status(thm)],[c_497])).

cnf(c_502,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ r1_lattices(sK1,X0,X1)
    | k1_lattices(sK1,X0,X1) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_498,c_21])).

cnf(c_503,plain,
    ( ~ r1_lattices(sK1,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | k1_lattices(sK1,X0,X1) = X1 ),
    inference(renaming,[status(thm)],[c_502])).

cnf(c_541,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X2,u1_struct_0(sK1))
    | ~ m1_subset_1(X3,u1_struct_0(sK1))
    | X3 != X2
    | k4_lattices(sK1,X2,X1) != X0
    | k1_lattices(sK1,X0,X3) = X3
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_403,c_503])).

cnf(c_542,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(k4_lattices(sK1,X0,X1),u1_struct_0(sK1))
    | k1_lattices(sK1,k4_lattices(sK1,X0,X1),X0) = X0 ),
    inference(unflattening,[status(thm)],[c_541])).

cnf(c_745,plain,
    ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK1))
    | ~ m1_subset_1(k4_lattices(sK1,X0_48,X1_48),u1_struct_0(sK1))
    | k1_lattices(sK1,k4_lattices(sK1,X0_48,X1_48),X0_48) = X0_48 ),
    inference(subtyping,[status(esa)],[c_542])).

cnf(c_923,plain,
    ( k1_lattices(sK1,k4_lattices(sK1,X0_48,X1_48),X0_48) = X0_48
    | m1_subset_1(X1_48,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k4_lattices(sK1,X0_48,X1_48),u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_745])).

cnf(c_1697,plain,
    ( k1_lattices(sK1,k4_lattices(sK1,sK2,k5_lattices(sK1)),sK2) = sK2
    | m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1671,c_923])).

cnf(c_1709,plain,
    ( k1_lattices(sK1,k5_lattices(sK1),sK2) = sK2
    | m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1697,c_1671])).

cnf(c_752,plain,
    ( X0_48 != X1_48
    | X2_48 != X1_48
    | X2_48 = X0_48 ),
    theory(equality)).

cnf(c_1042,plain,
    ( k1_lattices(sK1,k5_lattices(sK1),sK2) != X0_48
    | sK2 != X0_48
    | sK2 = k1_lattices(sK1,k5_lattices(sK1),sK2) ),
    inference(instantiation,[status(thm)],[c_752])).

cnf(c_1043,plain,
    ( k1_lattices(sK1,k5_lattices(sK1),sK2) != sK2
    | sK2 = k1_lattices(sK1,k5_lattices(sK1),sK2)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1042])).

cnf(c_2,plain,
    ( v4_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l2_lattices(X1)
    | ~ v4_lattices(X1)
    | v2_struct_0(X1)
    | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_230,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l2_lattices(X1)
    | ~ l3_lattices(X3)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ v10_lattices(X3)
    | X1 != X3
    | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
    inference(resolution_lifted,[status(thm)],[c_2,c_13])).

cnf(c_231,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l2_lattices(X1)
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
    inference(unflattening,[status(thm)],[c_230])).

cnf(c_249,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_231,c_11])).

cnf(c_440,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_249])).

cnf(c_441,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ l3_lattices(sK1)
    | v2_struct_0(sK1)
    | k3_lattices(sK1,X1,X0) = k1_lattices(sK1,X1,X0) ),
    inference(unflattening,[status(thm)],[c_440])).

cnf(c_445,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | k3_lattices(sK1,X1,X0) = k1_lattices(sK1,X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_441,c_21,c_18])).

cnf(c_446,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | k3_lattices(sK1,X0,X1) = k1_lattices(sK1,X0,X1) ),
    inference(renaming,[status(thm)],[c_445])).

cnf(c_746,plain,
    ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK1))
    | k3_lattices(sK1,X0_48,X1_48) = k1_lattices(sK1,X0_48,X1_48) ),
    inference(subtyping,[status(esa)],[c_446])).

cnf(c_1007,plain,
    ( ~ m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | k3_lattices(sK1,k5_lattices(sK1),sK2) = k1_lattices(sK1,k5_lattices(sK1),sK2) ),
    inference(instantiation,[status(thm)],[c_746])).

cnf(c_999,plain,
    ( k3_lattices(sK1,k5_lattices(sK1),sK2) != X0_48
    | k3_lattices(sK1,k5_lattices(sK1),sK2) = sK2
    | sK2 != X0_48 ),
    inference(instantiation,[status(thm)],[c_752])).

cnf(c_1006,plain,
    ( k3_lattices(sK1,k5_lattices(sK1),sK2) != k1_lattices(sK1,k5_lattices(sK1),sK2)
    | k3_lattices(sK1,k5_lattices(sK1),sK2) = sK2
    | sK2 != k1_lattices(sK1,k5_lattices(sK1),sK2) ),
    inference(instantiation,[status(thm)],[c_999])).

cnf(c_16,negated_conjecture,
    ( k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_749,negated_conjecture,
    ( k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2 ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_751,plain,
    ( X0_48 = X0_48 ),
    theory(equality)).

cnf(c_762,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_751])).

cnf(c_42,plain,
    ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) = iProver_top
    | l1_lattices(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_44,plain,
    ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) = iProver_top
    | l1_lattices(sK1) != iProver_top
    | v2_struct_0(sK1) = iProver_top ),
    inference(instantiation,[status(thm)],[c_42])).

cnf(c_36,plain,
    ( l1_lattices(X0) = iProver_top
    | l3_lattices(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_38,plain,
    ( l1_lattices(sK1) = iProver_top
    | l3_lattices(sK1) != iProver_top ),
    inference(instantiation,[status(thm)],[c_36])).

cnf(c_26,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_25,plain,
    ( l3_lattices(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_22,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1709,c_1043,c_1007,c_1006,c_749,c_762,c_44,c_43,c_38,c_37,c_26,c_17,c_25,c_18,c_22,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.32  % Computer   : n017.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % WCLimit    : 600
% 0.12/0.32  % DateTime   : Tue Dec  1 18:13:46 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  % Running in FOF mode
% 1.74/0.96  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.74/0.96  
% 1.74/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.74/0.96  
% 1.74/0.96  ------  iProver source info
% 1.74/0.96  
% 1.74/0.96  git: date: 2020-06-30 10:37:57 +0100
% 1.74/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.74/0.96  git: non_committed_changes: false
% 1.74/0.96  git: last_make_outside_of_git: false
% 1.74/0.96  
% 1.74/0.96  ------ 
% 1.74/0.96  
% 1.74/0.96  ------ Input Options
% 1.74/0.96  
% 1.74/0.96  --out_options                           all
% 1.74/0.96  --tptp_safe_out                         true
% 1.74/0.96  --problem_path                          ""
% 1.74/0.96  --include_path                          ""
% 1.74/0.96  --clausifier                            res/vclausify_rel
% 1.74/0.96  --clausifier_options                    --mode clausify
% 1.74/0.96  --stdin                                 false
% 1.74/0.96  --stats_out                             all
% 1.74/0.96  
% 1.74/0.96  ------ General Options
% 1.74/0.96  
% 1.74/0.96  --fof                                   false
% 1.74/0.96  --time_out_real                         305.
% 1.74/0.96  --time_out_virtual                      -1.
% 1.74/0.96  --symbol_type_check                     false
% 1.74/0.96  --clausify_out                          false
% 1.74/0.96  --sig_cnt_out                           false
% 1.74/0.96  --trig_cnt_out                          false
% 1.74/0.96  --trig_cnt_out_tolerance                1.
% 1.74/0.96  --trig_cnt_out_sk_spl                   false
% 1.74/0.96  --abstr_cl_out                          false
% 1.74/0.96  
% 1.74/0.96  ------ Global Options
% 1.74/0.96  
% 1.74/0.96  --schedule                              default
% 1.74/0.96  --add_important_lit                     false
% 1.74/0.96  --prop_solver_per_cl                    1000
% 1.74/0.96  --min_unsat_core                        false
% 1.74/0.96  --soft_assumptions                      false
% 1.74/0.96  --soft_lemma_size                       3
% 1.74/0.96  --prop_impl_unit_size                   0
% 1.74/0.96  --prop_impl_unit                        []
% 1.74/0.96  --share_sel_clauses                     true
% 1.74/0.96  --reset_solvers                         false
% 1.74/0.96  --bc_imp_inh                            [conj_cone]
% 1.74/0.96  --conj_cone_tolerance                   3.
% 1.74/0.96  --extra_neg_conj                        none
% 1.74/0.96  --large_theory_mode                     true
% 1.74/0.96  --prolific_symb_bound                   200
% 1.74/0.96  --lt_threshold                          2000
% 1.74/0.96  --clause_weak_htbl                      true
% 1.74/0.96  --gc_record_bc_elim                     false
% 1.74/0.96  
% 1.74/0.96  ------ Preprocessing Options
% 1.74/0.96  
% 1.74/0.96  --preprocessing_flag                    true
% 1.74/0.96  --time_out_prep_mult                    0.1
% 1.74/0.96  --splitting_mode                        input
% 1.74/0.96  --splitting_grd                         true
% 1.74/0.96  --splitting_cvd                         false
% 1.74/0.96  --splitting_cvd_svl                     false
% 1.74/0.96  --splitting_nvd                         32
% 1.74/0.96  --sub_typing                            true
% 1.74/0.96  --prep_gs_sim                           true
% 1.74/0.96  --prep_unflatten                        true
% 1.74/0.96  --prep_res_sim                          true
% 1.74/0.96  --prep_upred                            true
% 1.74/0.96  --prep_sem_filter                       exhaustive
% 1.74/0.96  --prep_sem_filter_out                   false
% 1.74/0.96  --pred_elim                             true
% 1.74/0.96  --res_sim_input                         true
% 1.74/0.96  --eq_ax_congr_red                       true
% 1.74/0.96  --pure_diseq_elim                       true
% 1.74/0.96  --brand_transform                       false
% 1.74/0.96  --non_eq_to_eq                          false
% 1.74/0.96  --prep_def_merge                        true
% 1.74/0.96  --prep_def_merge_prop_impl              false
% 1.74/0.96  --prep_def_merge_mbd                    true
% 1.74/0.96  --prep_def_merge_tr_red                 false
% 1.74/0.96  --prep_def_merge_tr_cl                  false
% 1.74/0.96  --smt_preprocessing                     true
% 1.74/0.96  --smt_ac_axioms                         fast
% 1.74/0.96  --preprocessed_out                      false
% 1.74/0.96  --preprocessed_stats                    false
% 1.74/0.96  
% 1.74/0.96  ------ Abstraction refinement Options
% 1.74/0.96  
% 1.74/0.96  --abstr_ref                             []
% 1.74/0.96  --abstr_ref_prep                        false
% 1.74/0.96  --abstr_ref_until_sat                   false
% 1.74/0.96  --abstr_ref_sig_restrict                funpre
% 1.74/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 1.74/0.96  --abstr_ref_under                       []
% 1.74/0.96  
% 1.74/0.96  ------ SAT Options
% 1.74/0.96  
% 1.74/0.96  --sat_mode                              false
% 1.74/0.96  --sat_fm_restart_options                ""
% 1.74/0.96  --sat_gr_def                            false
% 1.74/0.96  --sat_epr_types                         true
% 1.74/0.96  --sat_non_cyclic_types                  false
% 1.74/0.96  --sat_finite_models                     false
% 1.74/0.96  --sat_fm_lemmas                         false
% 1.74/0.96  --sat_fm_prep                           false
% 1.74/0.96  --sat_fm_uc_incr                        true
% 1.74/0.96  --sat_out_model                         small
% 1.74/0.96  --sat_out_clauses                       false
% 1.74/0.96  
% 1.74/0.96  ------ QBF Options
% 1.74/0.96  
% 1.74/0.96  --qbf_mode                              false
% 1.74/0.96  --qbf_elim_univ                         false
% 1.74/0.96  --qbf_dom_inst                          none
% 1.74/0.96  --qbf_dom_pre_inst                      false
% 1.74/0.96  --qbf_sk_in                             false
% 1.74/0.96  --qbf_pred_elim                         true
% 1.74/0.96  --qbf_split                             512
% 1.74/0.96  
% 1.74/0.96  ------ BMC1 Options
% 1.74/0.96  
% 1.74/0.96  --bmc1_incremental                      false
% 1.74/0.96  --bmc1_axioms                           reachable_all
% 1.74/0.96  --bmc1_min_bound                        0
% 1.74/0.96  --bmc1_max_bound                        -1
% 1.74/0.96  --bmc1_max_bound_default                -1
% 1.74/0.96  --bmc1_symbol_reachability              true
% 1.74/0.96  --bmc1_property_lemmas                  false
% 1.74/0.96  --bmc1_k_induction                      false
% 1.74/0.96  --bmc1_non_equiv_states                 false
% 1.74/0.96  --bmc1_deadlock                         false
% 1.74/0.96  --bmc1_ucm                              false
% 1.74/0.96  --bmc1_add_unsat_core                   none
% 1.90/0.96  --bmc1_unsat_core_children              false
% 1.90/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 1.90/0.96  --bmc1_out_stat                         full
% 1.90/0.96  --bmc1_ground_init                      false
% 1.90/0.96  --bmc1_pre_inst_next_state              false
% 1.90/0.96  --bmc1_pre_inst_state                   false
% 1.90/0.96  --bmc1_pre_inst_reach_state             false
% 1.90/0.96  --bmc1_out_unsat_core                   false
% 1.90/0.96  --bmc1_aig_witness_out                  false
% 1.90/0.96  --bmc1_verbose                          false
% 1.90/0.96  --bmc1_dump_clauses_tptp                false
% 1.90/0.96  --bmc1_dump_unsat_core_tptp             false
% 1.90/0.96  --bmc1_dump_file                        -
% 1.90/0.96  --bmc1_ucm_expand_uc_limit              128
% 1.90/0.96  --bmc1_ucm_n_expand_iterations          6
% 1.90/0.96  --bmc1_ucm_extend_mode                  1
% 1.90/0.96  --bmc1_ucm_init_mode                    2
% 1.90/0.96  --bmc1_ucm_cone_mode                    none
% 1.90/0.96  --bmc1_ucm_reduced_relation_type        0
% 1.90/0.96  --bmc1_ucm_relax_model                  4
% 1.90/0.96  --bmc1_ucm_full_tr_after_sat            true
% 1.90/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 1.90/0.96  --bmc1_ucm_layered_model                none
% 1.90/0.96  --bmc1_ucm_max_lemma_size               10
% 1.90/0.96  
% 1.90/0.96  ------ AIG Options
% 1.90/0.96  
% 1.90/0.96  --aig_mode                              false
% 1.90/0.96  
% 1.90/0.96  ------ Instantiation Options
% 1.90/0.96  
% 1.90/0.96  --instantiation_flag                    true
% 1.90/0.96  --inst_sos_flag                         false
% 1.90/0.96  --inst_sos_phase                        true
% 1.90/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.90/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.90/0.96  --inst_lit_sel_side                     num_symb
% 1.90/0.96  --inst_solver_per_active                1400
% 1.90/0.96  --inst_solver_calls_frac                1.
% 1.90/0.96  --inst_passive_queue_type               priority_queues
% 1.90/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.90/0.96  --inst_passive_queues_freq              [25;2]
% 1.90/0.96  --inst_dismatching                      true
% 1.90/0.96  --inst_eager_unprocessed_to_passive     true
% 1.90/0.96  --inst_prop_sim_given                   true
% 1.90/0.96  --inst_prop_sim_new                     false
% 1.90/0.96  --inst_subs_new                         false
% 1.90/0.96  --inst_eq_res_simp                      false
% 1.90/0.96  --inst_subs_given                       false
% 1.90/0.96  --inst_orphan_elimination               true
% 1.90/0.96  --inst_learning_loop_flag               true
% 1.90/0.96  --inst_learning_start                   3000
% 1.90/0.96  --inst_learning_factor                  2
% 1.90/0.96  --inst_start_prop_sim_after_learn       3
% 1.90/0.96  --inst_sel_renew                        solver
% 1.90/0.96  --inst_lit_activity_flag                true
% 1.90/0.96  --inst_restr_to_given                   false
% 1.90/0.96  --inst_activity_threshold               500
% 1.90/0.96  --inst_out_proof                        true
% 1.90/0.96  
% 1.90/0.96  ------ Resolution Options
% 1.90/0.96  
% 1.90/0.96  --resolution_flag                       true
% 1.90/0.96  --res_lit_sel                           adaptive
% 1.90/0.96  --res_lit_sel_side                      none
% 1.90/0.96  --res_ordering                          kbo
% 1.90/0.96  --res_to_prop_solver                    active
% 1.90/0.96  --res_prop_simpl_new                    false
% 1.90/0.96  --res_prop_simpl_given                  true
% 1.90/0.96  --res_passive_queue_type                priority_queues
% 1.90/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.90/0.96  --res_passive_queues_freq               [15;5]
% 1.90/0.96  --res_forward_subs                      full
% 1.90/0.96  --res_backward_subs                     full
% 1.90/0.96  --res_forward_subs_resolution           true
% 1.90/0.96  --res_backward_subs_resolution          true
% 1.90/0.96  --res_orphan_elimination                true
% 1.90/0.96  --res_time_limit                        2.
% 1.90/0.96  --res_out_proof                         true
% 1.90/0.96  
% 1.90/0.96  ------ Superposition Options
% 1.90/0.96  
% 1.90/0.96  --superposition_flag                    true
% 1.90/0.96  --sup_passive_queue_type                priority_queues
% 1.90/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.90/0.96  --sup_passive_queues_freq               [8;1;4]
% 1.90/0.96  --demod_completeness_check              fast
% 1.90/0.96  --demod_use_ground                      true
% 1.90/0.96  --sup_to_prop_solver                    passive
% 1.90/0.96  --sup_prop_simpl_new                    true
% 1.90/0.96  --sup_prop_simpl_given                  true
% 1.90/0.96  --sup_fun_splitting                     false
% 1.90/0.96  --sup_smt_interval                      50000
% 1.90/0.96  
% 1.90/0.96  ------ Superposition Simplification Setup
% 1.90/0.96  
% 1.90/0.96  --sup_indices_passive                   []
% 1.90/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 1.90/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/0.96  --sup_full_bw                           [BwDemod]
% 1.90/0.96  --sup_immed_triv                        [TrivRules]
% 1.90/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.90/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/0.96  --sup_immed_bw_main                     []
% 1.90/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 1.90/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/0.96  
% 1.90/0.96  ------ Combination Options
% 1.90/0.96  
% 1.90/0.96  --comb_res_mult                         3
% 1.90/0.96  --comb_sup_mult                         2
% 1.90/0.96  --comb_inst_mult                        10
% 1.90/0.96  
% 1.90/0.96  ------ Debug Options
% 1.90/0.96  
% 1.90/0.96  --dbg_backtrace                         false
% 1.90/0.96  --dbg_dump_prop_clauses                 false
% 1.90/0.96  --dbg_dump_prop_clauses_file            -
% 1.90/0.96  --dbg_out_stat                          false
% 1.90/0.96  ------ Parsing...
% 1.90/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.90/0.96  
% 1.90/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 1.90/0.96  
% 1.90/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.90/0.96  
% 1.90/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.90/0.96  ------ Proving...
% 1.90/0.96  ------ Problem Properties 
% 1.90/0.96  
% 1.90/0.96  
% 1.90/0.96  clauses                                 10
% 1.90/0.96  conjectures                             2
% 1.90/0.96  EPR                                     0
% 1.90/0.96  Horn                                    9
% 1.90/0.96  unary                                   3
% 1.90/0.96  binary                                  2
% 1.90/0.96  lits                                    24
% 1.90/0.96  lits eq                                 10
% 1.90/0.96  fd_pure                                 0
% 1.90/0.96  fd_pseudo                               0
% 1.90/0.96  fd_cond                                 2
% 1.90/0.96  fd_pseudo_cond                          0
% 1.90/0.96  AC symbols                              0
% 1.90/0.96  
% 1.90/0.96  ------ Schedule dynamic 5 is on 
% 1.90/0.96  
% 1.90/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.90/0.96  
% 1.90/0.96  
% 1.90/0.96  ------ 
% 1.90/0.96  Current options:
% 1.90/0.96  ------ 
% 1.90/0.96  
% 1.90/0.96  ------ Input Options
% 1.90/0.96  
% 1.90/0.96  --out_options                           all
% 1.90/0.96  --tptp_safe_out                         true
% 1.90/0.96  --problem_path                          ""
% 1.90/0.96  --include_path                          ""
% 1.90/0.96  --clausifier                            res/vclausify_rel
% 1.90/0.96  --clausifier_options                    --mode clausify
% 1.90/0.96  --stdin                                 false
% 1.90/0.96  --stats_out                             all
% 1.90/0.96  
% 1.90/0.96  ------ General Options
% 1.90/0.96  
% 1.90/0.96  --fof                                   false
% 1.90/0.96  --time_out_real                         305.
% 1.90/0.96  --time_out_virtual                      -1.
% 1.90/0.96  --symbol_type_check                     false
% 1.90/0.96  --clausify_out                          false
% 1.90/0.96  --sig_cnt_out                           false
% 1.90/0.96  --trig_cnt_out                          false
% 1.90/0.96  --trig_cnt_out_tolerance                1.
% 1.90/0.96  --trig_cnt_out_sk_spl                   false
% 1.90/0.96  --abstr_cl_out                          false
% 1.90/0.96  
% 1.90/0.96  ------ Global Options
% 1.90/0.96  
% 1.90/0.96  --schedule                              default
% 1.90/0.96  --add_important_lit                     false
% 1.90/0.96  --prop_solver_per_cl                    1000
% 1.90/0.96  --min_unsat_core                        false
% 1.90/0.96  --soft_assumptions                      false
% 1.90/0.96  --soft_lemma_size                       3
% 1.90/0.96  --prop_impl_unit_size                   0
% 1.90/0.96  --prop_impl_unit                        []
% 1.90/0.96  --share_sel_clauses                     true
% 1.90/0.96  --reset_solvers                         false
% 1.90/0.96  --bc_imp_inh                            [conj_cone]
% 1.90/0.96  --conj_cone_tolerance                   3.
% 1.90/0.96  --extra_neg_conj                        none
% 1.90/0.96  --large_theory_mode                     true
% 1.90/0.96  --prolific_symb_bound                   200
% 1.90/0.96  --lt_threshold                          2000
% 1.90/0.96  --clause_weak_htbl                      true
% 1.90/0.96  --gc_record_bc_elim                     false
% 1.90/0.96  
% 1.90/0.96  ------ Preprocessing Options
% 1.90/0.96  
% 1.90/0.96  --preprocessing_flag                    true
% 1.90/0.96  --time_out_prep_mult                    0.1
% 1.90/0.96  --splitting_mode                        input
% 1.90/0.96  --splitting_grd                         true
% 1.90/0.96  --splitting_cvd                         false
% 1.90/0.96  --splitting_cvd_svl                     false
% 1.90/0.96  --splitting_nvd                         32
% 1.90/0.96  --sub_typing                            true
% 1.90/0.96  --prep_gs_sim                           true
% 1.90/0.96  --prep_unflatten                        true
% 1.90/0.96  --prep_res_sim                          true
% 1.90/0.96  --prep_upred                            true
% 1.90/0.96  --prep_sem_filter                       exhaustive
% 1.90/0.96  --prep_sem_filter_out                   false
% 1.90/0.96  --pred_elim                             true
% 1.90/0.96  --res_sim_input                         true
% 1.90/0.96  --eq_ax_congr_red                       true
% 1.90/0.96  --pure_diseq_elim                       true
% 1.90/0.96  --brand_transform                       false
% 1.90/0.96  --non_eq_to_eq                          false
% 1.90/0.96  --prep_def_merge                        true
% 1.90/0.96  --prep_def_merge_prop_impl              false
% 1.90/0.96  --prep_def_merge_mbd                    true
% 1.90/0.96  --prep_def_merge_tr_red                 false
% 1.90/0.96  --prep_def_merge_tr_cl                  false
% 1.90/0.96  --smt_preprocessing                     true
% 1.90/0.96  --smt_ac_axioms                         fast
% 1.90/0.96  --preprocessed_out                      false
% 1.90/0.96  --preprocessed_stats                    false
% 1.90/0.96  
% 1.90/0.96  ------ Abstraction refinement Options
% 1.90/0.96  
% 1.90/0.96  --abstr_ref                             []
% 1.90/0.96  --abstr_ref_prep                        false
% 1.90/0.96  --abstr_ref_until_sat                   false
% 1.90/0.96  --abstr_ref_sig_restrict                funpre
% 1.90/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 1.90/0.96  --abstr_ref_under                       []
% 1.90/0.96  
% 1.90/0.96  ------ SAT Options
% 1.90/0.96  
% 1.90/0.96  --sat_mode                              false
% 1.90/0.96  --sat_fm_restart_options                ""
% 1.90/0.96  --sat_gr_def                            false
% 1.90/0.96  --sat_epr_types                         true
% 1.90/0.96  --sat_non_cyclic_types                  false
% 1.90/0.96  --sat_finite_models                     false
% 1.90/0.96  --sat_fm_lemmas                         false
% 1.90/0.96  --sat_fm_prep                           false
% 1.90/0.96  --sat_fm_uc_incr                        true
% 1.90/0.96  --sat_out_model                         small
% 1.90/0.96  --sat_out_clauses                       false
% 1.90/0.96  
% 1.90/0.96  ------ QBF Options
% 1.90/0.96  
% 1.90/0.96  --qbf_mode                              false
% 1.90/0.96  --qbf_elim_univ                         false
% 1.90/0.96  --qbf_dom_inst                          none
% 1.90/0.96  --qbf_dom_pre_inst                      false
% 1.90/0.96  --qbf_sk_in                             false
% 1.90/0.96  --qbf_pred_elim                         true
% 1.90/0.96  --qbf_split                             512
% 1.90/0.96  
% 1.90/0.96  ------ BMC1 Options
% 1.90/0.96  
% 1.90/0.96  --bmc1_incremental                      false
% 1.90/0.96  --bmc1_axioms                           reachable_all
% 1.90/0.96  --bmc1_min_bound                        0
% 1.90/0.96  --bmc1_max_bound                        -1
% 1.90/0.96  --bmc1_max_bound_default                -1
% 1.90/0.96  --bmc1_symbol_reachability              true
% 1.90/0.96  --bmc1_property_lemmas                  false
% 1.90/0.96  --bmc1_k_induction                      false
% 1.90/0.96  --bmc1_non_equiv_states                 false
% 1.90/0.96  --bmc1_deadlock                         false
% 1.90/0.96  --bmc1_ucm                              false
% 1.90/0.96  --bmc1_add_unsat_core                   none
% 1.90/0.96  --bmc1_unsat_core_children              false
% 1.90/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 1.90/0.96  --bmc1_out_stat                         full
% 1.90/0.96  --bmc1_ground_init                      false
% 1.90/0.96  --bmc1_pre_inst_next_state              false
% 1.90/0.96  --bmc1_pre_inst_state                   false
% 1.90/0.96  --bmc1_pre_inst_reach_state             false
% 1.90/0.96  --bmc1_out_unsat_core                   false
% 1.90/0.96  --bmc1_aig_witness_out                  false
% 1.90/0.96  --bmc1_verbose                          false
% 1.90/0.96  --bmc1_dump_clauses_tptp                false
% 1.90/0.96  --bmc1_dump_unsat_core_tptp             false
% 1.90/0.96  --bmc1_dump_file                        -
% 1.90/0.96  --bmc1_ucm_expand_uc_limit              128
% 1.90/0.96  --bmc1_ucm_n_expand_iterations          6
% 1.90/0.96  --bmc1_ucm_extend_mode                  1
% 1.90/0.96  --bmc1_ucm_init_mode                    2
% 1.90/0.96  --bmc1_ucm_cone_mode                    none
% 1.90/0.96  --bmc1_ucm_reduced_relation_type        0
% 1.90/0.96  --bmc1_ucm_relax_model                  4
% 1.90/0.96  --bmc1_ucm_full_tr_after_sat            true
% 1.90/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 1.90/0.96  --bmc1_ucm_layered_model                none
% 1.90/0.96  --bmc1_ucm_max_lemma_size               10
% 1.90/0.96  
% 1.90/0.96  ------ AIG Options
% 1.90/0.96  
% 1.90/0.96  --aig_mode                              false
% 1.90/0.96  
% 1.90/0.96  ------ Instantiation Options
% 1.90/0.96  
% 1.90/0.96  --instantiation_flag                    true
% 1.90/0.96  --inst_sos_flag                         false
% 1.90/0.96  --inst_sos_phase                        true
% 1.90/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.90/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.90/0.96  --inst_lit_sel_side                     none
% 1.90/0.96  --inst_solver_per_active                1400
% 1.90/0.96  --inst_solver_calls_frac                1.
% 1.90/0.96  --inst_passive_queue_type               priority_queues
% 1.90/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.90/0.96  --inst_passive_queues_freq              [25;2]
% 1.90/0.96  --inst_dismatching                      true
% 1.90/0.96  --inst_eager_unprocessed_to_passive     true
% 1.90/0.96  --inst_prop_sim_given                   true
% 1.90/0.96  --inst_prop_sim_new                     false
% 1.90/0.96  --inst_subs_new                         false
% 1.90/0.96  --inst_eq_res_simp                      false
% 1.90/0.96  --inst_subs_given                       false
% 1.90/0.96  --inst_orphan_elimination               true
% 1.90/0.96  --inst_learning_loop_flag               true
% 1.90/0.96  --inst_learning_start                   3000
% 1.90/0.96  --inst_learning_factor                  2
% 1.90/0.96  --inst_start_prop_sim_after_learn       3
% 1.90/0.96  --inst_sel_renew                        solver
% 1.90/0.96  --inst_lit_activity_flag                true
% 1.90/0.96  --inst_restr_to_given                   false
% 1.90/0.96  --inst_activity_threshold               500
% 1.90/0.96  --inst_out_proof                        true
% 1.90/0.96  
% 1.90/0.96  ------ Resolution Options
% 1.90/0.96  
% 1.90/0.96  --resolution_flag                       false
% 1.90/0.96  --res_lit_sel                           adaptive
% 1.90/0.96  --res_lit_sel_side                      none
% 1.90/0.97  --res_ordering                          kbo
% 1.90/0.97  --res_to_prop_solver                    active
% 1.90/0.97  --res_prop_simpl_new                    false
% 1.90/0.97  --res_prop_simpl_given                  true
% 1.90/0.97  --res_passive_queue_type                priority_queues
% 1.90/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.90/0.97  --res_passive_queues_freq               [15;5]
% 1.90/0.97  --res_forward_subs                      full
% 1.90/0.97  --res_backward_subs                     full
% 1.90/0.97  --res_forward_subs_resolution           true
% 1.90/0.97  --res_backward_subs_resolution          true
% 1.90/0.97  --res_orphan_elimination                true
% 1.90/0.97  --res_time_limit                        2.
% 1.90/0.97  --res_out_proof                         true
% 1.90/0.97  
% 1.90/0.97  ------ Superposition Options
% 1.90/0.97  
% 1.90/0.97  --superposition_flag                    true
% 1.90/0.97  --sup_passive_queue_type                priority_queues
% 1.90/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.90/0.97  --sup_passive_queues_freq               [8;1;4]
% 1.90/0.97  --demod_completeness_check              fast
% 1.90/0.97  --demod_use_ground                      true
% 1.90/0.97  --sup_to_prop_solver                    passive
% 1.90/0.97  --sup_prop_simpl_new                    true
% 1.90/0.97  --sup_prop_simpl_given                  true
% 1.90/0.97  --sup_fun_splitting                     false
% 1.90/0.97  --sup_smt_interval                      50000
% 1.90/0.97  
% 1.90/0.97  ------ Superposition Simplification Setup
% 1.90/0.97  
% 1.90/0.97  --sup_indices_passive                   []
% 1.90/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 1.90/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/0.97  --sup_full_bw                           [BwDemod]
% 1.90/0.97  --sup_immed_triv                        [TrivRules]
% 1.90/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.90/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/0.97  --sup_immed_bw_main                     []
% 1.90/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 1.90/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/0.97  
% 1.90/0.97  ------ Combination Options
% 1.90/0.97  
% 1.90/0.97  --comb_res_mult                         3
% 1.90/0.97  --comb_sup_mult                         2
% 1.90/0.97  --comb_inst_mult                        10
% 1.90/0.97  
% 1.90/0.97  ------ Debug Options
% 1.90/0.97  
% 1.90/0.97  --dbg_backtrace                         false
% 1.90/0.97  --dbg_dump_prop_clauses                 false
% 1.90/0.97  --dbg_dump_prop_clauses_file            -
% 1.90/0.97  --dbg_out_stat                          false
% 1.90/0.97  
% 1.90/0.97  
% 1.90/0.97  
% 1.90/0.97  
% 1.90/0.97  ------ Proving...
% 1.90/0.97  
% 1.90/0.97  
% 1.90/0.97  % SZS status Theorem for theBenchmark.p
% 1.90/0.97  
% 1.90/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 1.90/0.97  
% 1.90/0.97  fof(f9,conjecture,(
% 1.90/0.97    ! [X0] : ((l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => k3_lattices(X0,k5_lattices(X0),X1) = X1))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f10,negated_conjecture,(
% 1.90/0.97    ~! [X0] : ((l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => k3_lattices(X0,k5_lattices(X0),X1) = X1))),
% 1.90/0.97    inference(negated_conjecture,[],[f9])).
% 1.90/0.97  
% 1.90/0.97  fof(f29,plain,(
% 1.90/0.97    ? [X0] : (? [X1] : (k3_lattices(X0,k5_lattices(X0),X1) != X1 & m1_subset_1(X1,u1_struct_0(X0))) & (l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f10])).
% 1.90/0.97  
% 1.90/0.97  fof(f30,plain,(
% 1.90/0.97    ? [X0] : (? [X1] : (k3_lattices(X0,k5_lattices(X0),X1) != X1 & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f29])).
% 1.90/0.97  
% 1.90/0.97  fof(f37,plain,(
% 1.90/0.97    ( ! [X0] : (? [X1] : (k3_lattices(X0,k5_lattices(X0),X1) != X1 & m1_subset_1(X1,u1_struct_0(X0))) => (k3_lattices(X0,k5_lattices(X0),sK2) != sK2 & m1_subset_1(sK2,u1_struct_0(X0)))) )),
% 1.90/0.97    introduced(choice_axiom,[])).
% 1.90/0.97  
% 1.90/0.97  fof(f36,plain,(
% 1.90/0.97    ? [X0] : (? [X1] : (k3_lattices(X0,k5_lattices(X0),X1) != X1 & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (? [X1] : (k3_lattices(sK1,k5_lattices(sK1),X1) != X1 & m1_subset_1(X1,u1_struct_0(sK1))) & l3_lattices(sK1) & v13_lattices(sK1) & v10_lattices(sK1) & ~v2_struct_0(sK1))),
% 1.90/0.97    introduced(choice_axiom,[])).
% 1.90/0.97  
% 1.90/0.97  fof(f38,plain,(
% 1.90/0.97    (k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2 & m1_subset_1(sK2,u1_struct_0(sK1))) & l3_lattices(sK1) & v13_lattices(sK1) & v10_lattices(sK1) & ~v2_struct_0(sK1)),
% 1.90/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f30,f37,f36])).
% 1.90/0.97  
% 1.90/0.97  fof(f59,plain,(
% 1.90/0.97    m1_subset_1(sK2,u1_struct_0(sK1))),
% 1.90/0.97    inference(cnf_transformation,[],[f38])).
% 1.90/0.97  
% 1.90/0.97  fof(f4,axiom,(
% 1.90/0.97    ! [X0] : ((l1_lattices(X0) & ~v2_struct_0(X0)) => m1_subset_1(k5_lattices(X0),u1_struct_0(X0)))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f20,plain,(
% 1.90/0.97    ! [X0] : (m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | (~l1_lattices(X0) | v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f4])).
% 1.90/0.97  
% 1.90/0.97  fof(f21,plain,(
% 1.90/0.97    ! [X0] : (m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f20])).
% 1.90/0.97  
% 1.90/0.97  fof(f49,plain,(
% 1.90/0.97    ( ! [X0] : (m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | ~l1_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f21])).
% 1.90/0.97  
% 1.90/0.97  fof(f55,plain,(
% 1.90/0.97    ~v2_struct_0(sK1)),
% 1.90/0.97    inference(cnf_transformation,[],[f38])).
% 1.90/0.97  
% 1.90/0.97  fof(f58,plain,(
% 1.90/0.97    l3_lattices(sK1)),
% 1.90/0.97    inference(cnf_transformation,[],[f38])).
% 1.90/0.97  
% 1.90/0.97  fof(f5,axiom,(
% 1.90/0.97    ! [X0] : (l3_lattices(X0) => (l2_lattices(X0) & l1_lattices(X0)))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f22,plain,(
% 1.90/0.97    ! [X0] : ((l2_lattices(X0) & l1_lattices(X0)) | ~l3_lattices(X0))),
% 1.90/0.97    inference(ennf_transformation,[],[f5])).
% 1.90/0.97  
% 1.90/0.97  fof(f50,plain,(
% 1.90/0.97    ( ! [X0] : (l1_lattices(X0) | ~l3_lattices(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f22])).
% 1.90/0.97  
% 1.90/0.97  fof(f56,plain,(
% 1.90/0.97    v10_lattices(sK1)),
% 1.90/0.97    inference(cnf_transformation,[],[f38])).
% 1.90/0.97  
% 1.90/0.97  fof(f1,axiom,(
% 1.90/0.97    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v7_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f11,plain,(
% 1.90/0.97    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v8_lattices(X0) & v7_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.90/0.97    inference(pure_predicate_removal,[],[f1])).
% 1.90/0.97  
% 1.90/0.97  fof(f12,plain,(
% 1.90/0.97    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v8_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.90/0.97    inference(pure_predicate_removal,[],[f11])).
% 1.90/0.97  
% 1.90/0.97  fof(f13,plain,(
% 1.90/0.97    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.90/0.97    inference(pure_predicate_removal,[],[f12])).
% 1.90/0.97  
% 1.90/0.97  fof(f14,plain,(
% 1.90/0.97    ! [X0] : (((v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0)) | (~v10_lattices(X0) | v2_struct_0(X0))) | ~l3_lattices(X0))),
% 1.90/0.97    inference(ennf_transformation,[],[f13])).
% 1.90/0.97  
% 1.90/0.97  fof(f15,plain,(
% 1.90/0.97    ! [X0] : ((v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0)) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0))),
% 1.90/0.97    inference(flattening,[],[f14])).
% 1.90/0.97  
% 1.90/0.97  fof(f41,plain,(
% 1.90/0.97    ( ! [X0] : (v6_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f15])).
% 1.90/0.97  
% 1.90/0.97  fof(f7,axiom,(
% 1.90/0.97    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l1_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) => k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f25,plain,(
% 1.90/0.97    ! [X0,X1,X2] : (k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f7])).
% 1.90/0.97  
% 1.90/0.97  fof(f26,plain,(
% 1.90/0.97    ! [X0,X1,X2] : (k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f25])).
% 1.90/0.97  
% 1.90/0.97  fof(f53,plain,(
% 1.90/0.97    ( ! [X2,X0,X1] : (k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f26])).
% 1.90/0.97  
% 1.90/0.97  fof(f2,axiom,(
% 1.90/0.97    ! [X0] : ((l1_lattices(X0) & ~v2_struct_0(X0)) => (v13_lattices(X0) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (k5_lattices(X0) = X1 <=> ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k2_lattices(X0,X2,X1) = X1 & k2_lattices(X0,X1,X2) = X1))))))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f16,plain,(
% 1.90/0.97    ! [X0] : ((! [X1] : ((k5_lattices(X0) = X1 <=> ! [X2] : ((k2_lattices(X0,X2,X1) = X1 & k2_lattices(X0,X1,X2) = X1) | ~m1_subset_1(X2,u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v13_lattices(X0)) | (~l1_lattices(X0) | v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f2])).
% 1.90/0.97  
% 1.90/0.97  fof(f17,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : ((k5_lattices(X0) = X1 <=> ! [X2] : ((k2_lattices(X0,X2,X1) = X1 & k2_lattices(X0,X1,X2) = X1) | ~m1_subset_1(X2,u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v13_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f16])).
% 1.90/0.97  
% 1.90/0.97  fof(f31,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (((k5_lattices(X0) = X1 | ? [X2] : ((k2_lattices(X0,X2,X1) != X1 | k2_lattices(X0,X1,X2) != X1) & m1_subset_1(X2,u1_struct_0(X0)))) & (! [X2] : ((k2_lattices(X0,X2,X1) = X1 & k2_lattices(X0,X1,X2) = X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | k5_lattices(X0) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v13_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(nnf_transformation,[],[f17])).
% 1.90/0.97  
% 1.90/0.97  fof(f32,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (((k5_lattices(X0) = X1 | ? [X2] : ((k2_lattices(X0,X2,X1) != X1 | k2_lattices(X0,X1,X2) != X1) & m1_subset_1(X2,u1_struct_0(X0)))) & (! [X3] : ((k2_lattices(X0,X3,X1) = X1 & k2_lattices(X0,X1,X3) = X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | k5_lattices(X0) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v13_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(rectify,[],[f31])).
% 1.90/0.97  
% 1.90/0.97  fof(f33,plain,(
% 1.90/0.97    ! [X1,X0] : (? [X2] : ((k2_lattices(X0,X2,X1) != X1 | k2_lattices(X0,X1,X2) != X1) & m1_subset_1(X2,u1_struct_0(X0))) => ((k2_lattices(X0,sK0(X0,X1),X1) != X1 | k2_lattices(X0,X1,sK0(X0,X1)) != X1) & m1_subset_1(sK0(X0,X1),u1_struct_0(X0))))),
% 1.90/0.97    introduced(choice_axiom,[])).
% 1.90/0.97  
% 1.90/0.97  fof(f34,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (((k5_lattices(X0) = X1 | ((k2_lattices(X0,sK0(X0,X1),X1) != X1 | k2_lattices(X0,X1,sK0(X0,X1)) != X1) & m1_subset_1(sK0(X0,X1),u1_struct_0(X0)))) & (! [X3] : ((k2_lattices(X0,X3,X1) = X1 & k2_lattices(X0,X1,X3) = X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | k5_lattices(X0) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v13_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f32,f33])).
% 1.90/0.97  
% 1.90/0.97  fof(f44,plain,(
% 1.90/0.97    ( ! [X0,X3,X1] : (k2_lattices(X0,X3,X1) = X1 | ~m1_subset_1(X3,u1_struct_0(X0)) | k5_lattices(X0) != X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~v13_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f34])).
% 1.90/0.97  
% 1.90/0.97  fof(f61,plain,(
% 1.90/0.97    ( ! [X0,X3] : (k5_lattices(X0) = k2_lattices(X0,X3,k5_lattices(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | ~v13_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(equality_resolution,[],[f44])).
% 1.90/0.97  
% 1.90/0.97  fof(f57,plain,(
% 1.90/0.97    v13_lattices(sK1)),
% 1.90/0.97    inference(cnf_transformation,[],[f38])).
% 1.90/0.97  
% 1.90/0.97  fof(f42,plain,(
% 1.90/0.97    ( ! [X0] : (v8_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f15])).
% 1.90/0.97  
% 1.90/0.97  fof(f8,axiom,(
% 1.90/0.97    ! [X0] : ((l3_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => r1_lattices(X0,k4_lattices(X0,X1,X2),X1))))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f27,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (! [X2] : (r1_lattices(X0,k4_lattices(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f8])).
% 1.90/0.97  
% 1.90/0.97  fof(f28,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (! [X2] : (r1_lattices(X0,k4_lattices(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f27])).
% 1.90/0.97  
% 1.90/0.97  fof(f54,plain,(
% 1.90/0.97    ( ! [X2,X0,X1] : (r1_lattices(X0,k4_lattices(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f28])).
% 1.90/0.97  
% 1.90/0.97  fof(f51,plain,(
% 1.90/0.97    ( ! [X0] : (l2_lattices(X0) | ~l3_lattices(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f22])).
% 1.90/0.97  
% 1.90/0.97  fof(f3,axiom,(
% 1.90/0.97    ! [X0] : ((l2_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2))))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f18,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (! [X2] : ((r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l2_lattices(X0) | v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f3])).
% 1.90/0.97  
% 1.90/0.97  fof(f19,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (! [X2] : ((r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l2_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f18])).
% 1.90/0.97  
% 1.90/0.97  fof(f35,plain,(
% 1.90/0.97    ! [X0] : (! [X1] : (! [X2] : (((r1_lattices(X0,X1,X2) | k1_lattices(X0,X1,X2) != X2) & (k1_lattices(X0,X1,X2) = X2 | ~r1_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l2_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(nnf_transformation,[],[f19])).
% 1.90/0.97  
% 1.90/0.97  fof(f47,plain,(
% 1.90/0.97    ( ! [X2,X0,X1] : (k1_lattices(X0,X1,X2) = X2 | ~r1_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f35])).
% 1.90/0.97  
% 1.90/0.97  fof(f40,plain,(
% 1.90/0.97    ( ! [X0] : (v4_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f15])).
% 1.90/0.97  
% 1.90/0.97  fof(f6,axiom,(
% 1.90/0.97    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l2_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0)) => k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2))),
% 1.90/0.97    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.90/0.97  
% 1.90/0.97  fof(f23,plain,(
% 1.90/0.97    ! [X0,X1,X2] : (k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | ~v4_lattices(X0) | v2_struct_0(X0)))),
% 1.90/0.97    inference(ennf_transformation,[],[f6])).
% 1.90/0.97  
% 1.90/0.97  fof(f24,plain,(
% 1.90/0.97    ! [X0,X1,X2] : (k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | ~v4_lattices(X0) | v2_struct_0(X0))),
% 1.90/0.97    inference(flattening,[],[f23])).
% 1.90/0.97  
% 1.90/0.97  fof(f52,plain,(
% 1.90/0.97    ( ! [X2,X0,X1] : (k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | ~v4_lattices(X0) | v2_struct_0(X0)) )),
% 1.90/0.97    inference(cnf_transformation,[],[f24])).
% 1.90/0.97  
% 1.90/0.97  fof(f60,plain,(
% 1.90/0.97    k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2),
% 1.90/0.97    inference(cnf_transformation,[],[f38])).
% 1.90/0.97  
% 1.90/0.97  cnf(c_17,negated_conjecture,
% 1.90/0.97      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.90/0.97      inference(cnf_transformation,[],[f59]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_748,negated_conjecture,
% 1.90/0.97      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_17]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_920,plain,
% 1.90/0.97      ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_748]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_10,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
% 1.90/0.97      | ~ l1_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f49]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_21,negated_conjecture,
% 1.90/0.97      ( ~ v2_struct_0(sK1) ),
% 1.90/0.97      inference(cnf_transformation,[],[f55]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_660,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
% 1.90/0.97      | ~ l1_lattices(X0)
% 1.90/0.97      | sK1 != X0 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_10,c_21]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_661,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
% 1.90/0.97      | ~ l1_lattices(sK1) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_660]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_18,negated_conjecture,
% 1.90/0.97      ( l3_lattices(sK1) ),
% 1.90/0.97      inference(cnf_transformation,[],[f58]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_12,plain,
% 1.90/0.97      ( l1_lattices(X0) | ~ l3_lattices(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f50]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_37,plain,
% 1.90/0.97      ( l1_lattices(sK1) | ~ l3_lattices(sK1) ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_12]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_43,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
% 1.90/0.97      | ~ l1_lattices(sK1)
% 1.90/0.97      | v2_struct_0(sK1) ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_10]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_663,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_661,c_21,c_18,c_37,c_43]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_740,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_663]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_928,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) = iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_740]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_20,negated_conjecture,
% 1.90/0.97      ( v10_lattices(sK1) ),
% 1.90/0.97      inference(cnf_transformation,[],[f56]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1,plain,
% 1.90/0.97      ( v6_lattices(X0)
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v10_lattices(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f41]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_14,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l1_lattices(X1)
% 1.90/0.97      | ~ v6_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(cnf_transformation,[],[f53]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_302,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l1_lattices(X1)
% 1.90/0.97      | ~ l3_lattices(X3)
% 1.90/0.97      | v2_struct_0(X3)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | ~ v10_lattices(X3)
% 1.90/0.97      | X1 != X3
% 1.90/0.97      | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_1,c_14]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_303,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l1_lattices(X1)
% 1.90/0.97      | ~ l3_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | ~ v10_lattices(X1)
% 1.90/0.97      | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_302]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_321,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l3_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | ~ v10_lattices(X1)
% 1.90/0.97      | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(forward_subsumption_resolution,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_303,c_12]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_419,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l3_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | k4_lattices(X1,X0,X2) = k2_lattices(X1,X0,X2)
% 1.90/0.97      | sK1 != X1 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_20,c_321]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_420,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ l3_lattices(sK1)
% 1.90/0.97      | v2_struct_0(sK1)
% 1.90/0.97      | k4_lattices(sK1,X1,X0) = k2_lattices(sK1,X1,X0) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_419]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_424,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | k4_lattices(sK1,X1,X0) = k2_lattices(sK1,X1,X0) ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_420,c_21,c_18]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_425,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | k4_lattices(sK1,X0,X1) = k2_lattices(sK1,X0,X1) ),
% 1.90/0.97      inference(renaming,[status(thm)],[c_424]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_747,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1_48,u1_struct_0(sK1))
% 1.90/0.97      | k4_lattices(sK1,X0_48,X1_48) = k2_lattices(sK1,X0_48,X1_48) ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_425]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_921,plain,
% 1.90/0.97      ( k4_lattices(sK1,X0_48,X1_48) = k2_lattices(sK1,X0_48,X1_48)
% 1.90/0.97      | m1_subset_1(X1_48,u1_struct_0(sK1)) != iProver_top
% 1.90/0.97      | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_747]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1139,plain,
% 1.90/0.97      ( k4_lattices(sK1,X0_48,k5_lattices(sK1)) = k2_lattices(sK1,X0_48,k5_lattices(sK1))
% 1.90/0.97      | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top ),
% 1.90/0.97      inference(superposition,[status(thm)],[c_928,c_921]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1658,plain,
% 1.90/0.97      ( k4_lattices(sK1,sK2,k5_lattices(sK1)) = k2_lattices(sK1,sK2,k5_lattices(sK1)) ),
% 1.90/0.97      inference(superposition,[status(thm)],[c_920,c_1139]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_6,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(k5_lattices(X1),u1_struct_0(X1))
% 1.90/0.97      | ~ l1_lattices(X1)
% 1.90/0.97      | ~ v13_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | k2_lattices(X1,X0,k5_lattices(X1)) = k5_lattices(X1) ),
% 1.90/0.97      inference(cnf_transformation,[],[f61]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_19,negated_conjecture,
% 1.90/0.97      ( v13_lattices(sK1) ),
% 1.90/0.97      inference(cnf_transformation,[],[f57]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_582,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(k5_lattices(X1),u1_struct_0(X1))
% 1.90/0.97      | ~ l1_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | k2_lattices(X1,X0,k5_lattices(X1)) = k5_lattices(X1)
% 1.90/0.97      | sK1 != X1 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_6,c_19]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_583,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
% 1.90/0.97      | ~ l1_lattices(sK1)
% 1.90/0.97      | v2_struct_0(sK1)
% 1.90/0.97      | k2_lattices(sK1,X0,k5_lattices(sK1)) = k5_lattices(sK1) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_582]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_587,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | k2_lattices(sK1,X0,k5_lattices(sK1)) = k5_lattices(sK1) ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_583,c_21,c_18,c_37,c_43]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_743,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
% 1.90/0.97      | k2_lattices(sK1,X0_48,k5_lattices(sK1)) = k5_lattices(sK1) ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_587]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_925,plain,
% 1.90/0.97      ( k2_lattices(sK1,X0_48,k5_lattices(sK1)) = k5_lattices(sK1)
% 1.90/0.97      | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_743]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1070,plain,
% 1.90/0.97      ( k2_lattices(sK1,sK2,k5_lattices(sK1)) = k5_lattices(sK1) ),
% 1.90/0.97      inference(superposition,[status(thm)],[c_920,c_925]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1671,plain,
% 1.90/0.97      ( k4_lattices(sK1,sK2,k5_lattices(sK1)) = k5_lattices(sK1) ),
% 1.90/0.97      inference(light_normalisation,[status(thm)],[c_1658,c_1070]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_0,plain,
% 1.90/0.97      ( ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v10_lattices(X0)
% 1.90/0.97      | v8_lattices(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f42]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_15,plain,
% 1.90/0.97      ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ v6_lattices(X0)
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v8_lattices(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f54]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_266,plain,
% 1.90/0.97      ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ v6_lattices(X0)
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v10_lattices(X0) ),
% 1.90/0.97      inference(resolution,[status(thm)],[c_0,c_15]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_270,plain,
% 1.90/0.97      ( ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v10_lattices(X0) ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_266,c_1]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_271,plain,
% 1.90/0.97      ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v10_lattices(X0) ),
% 1.90/0.97      inference(renaming,[status(thm)],[c_270]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_398,plain,
% 1.90/0.97      ( r1_lattices(X0,k4_lattices(X0,X1,X2),X1)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | sK1 != X0 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_271,c_20]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_399,plain,
% 1.90/0.97      ( r1_lattices(sK1,k4_lattices(sK1,X0,X1),X0)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ l3_lattices(sK1)
% 1.90/0.97      | v2_struct_0(sK1) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_398]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_403,plain,
% 1.90/0.97      ( r1_lattices(sK1,k4_lattices(sK1,X0,X1),X0)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_399,c_21,c_18]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_11,plain,
% 1.90/0.97      ( l2_lattices(X0) | ~ l3_lattices(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f51]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_9,plain,
% 1.90/0.97      ( ~ r1_lattices(X0,X1,X2)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ l2_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | k1_lattices(X0,X1,X2) = X2 ),
% 1.90/0.97      inference(cnf_transformation,[],[f47]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_338,plain,
% 1.90/0.97      ( ~ r1_lattices(X0,X1,X2)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | k1_lattices(X0,X1,X2) = X2 ),
% 1.90/0.97      inference(resolution,[status(thm)],[c_11,c_9]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_497,plain,
% 1.90/0.97      ( ~ r1_lattices(X0,X1,X2)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | k1_lattices(X0,X1,X2) = X2
% 1.90/0.97      | sK1 != X0 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_338,c_18]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_498,plain,
% 1.90/0.97      ( ~ r1_lattices(sK1,X0,X1)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | v2_struct_0(sK1)
% 1.90/0.97      | k1_lattices(sK1,X0,X1) = X1 ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_497]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_502,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ r1_lattices(sK1,X0,X1)
% 1.90/0.97      | k1_lattices(sK1,X0,X1) = X1 ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_498,c_21]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_503,plain,
% 1.90/0.97      ( ~ r1_lattices(sK1,X0,X1)
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | k1_lattices(sK1,X0,X1) = X1 ),
% 1.90/0.97      inference(renaming,[status(thm)],[c_502]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_541,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X3,u1_struct_0(sK1))
% 1.90/0.97      | X3 != X2
% 1.90/0.97      | k4_lattices(sK1,X2,X1) != X0
% 1.90/0.97      | k1_lattices(sK1,X0,X3) = X3
% 1.90/0.97      | sK1 != sK1 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_403,c_503]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_542,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(k4_lattices(sK1,X0,X1),u1_struct_0(sK1))
% 1.90/0.97      | k1_lattices(sK1,k4_lattices(sK1,X0,X1),X0) = X0 ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_541]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_745,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1_48,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(k4_lattices(sK1,X0_48,X1_48),u1_struct_0(sK1))
% 1.90/0.97      | k1_lattices(sK1,k4_lattices(sK1,X0_48,X1_48),X0_48) = X0_48 ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_542]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_923,plain,
% 1.90/0.97      ( k1_lattices(sK1,k4_lattices(sK1,X0_48,X1_48),X0_48) = X0_48
% 1.90/0.97      | m1_subset_1(X1_48,u1_struct_0(sK1)) != iProver_top
% 1.90/0.97      | m1_subset_1(X0_48,u1_struct_0(sK1)) != iProver_top
% 1.90/0.97      | m1_subset_1(k4_lattices(sK1,X0_48,X1_48),u1_struct_0(sK1)) != iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_745]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1697,plain,
% 1.90/0.97      ( k1_lattices(sK1,k4_lattices(sK1,sK2,k5_lattices(sK1)),sK2) = sK2
% 1.90/0.97      | m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) != iProver_top
% 1.90/0.97      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 1.90/0.97      inference(superposition,[status(thm)],[c_1671,c_923]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1709,plain,
% 1.90/0.97      ( k1_lattices(sK1,k5_lattices(sK1),sK2) = sK2
% 1.90/0.97      | m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) != iProver_top
% 1.90/0.97      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 1.90/0.97      inference(light_normalisation,[status(thm)],[c_1697,c_1671]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_752,plain,
% 1.90/0.97      ( X0_48 != X1_48 | X2_48 != X1_48 | X2_48 = X0_48 ),
% 1.90/0.97      theory(equality) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1042,plain,
% 1.90/0.97      ( k1_lattices(sK1,k5_lattices(sK1),sK2) != X0_48
% 1.90/0.97      | sK2 != X0_48
% 1.90/0.97      | sK2 = k1_lattices(sK1,k5_lattices(sK1),sK2) ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_752]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1043,plain,
% 1.90/0.97      ( k1_lattices(sK1,k5_lattices(sK1),sK2) != sK2
% 1.90/0.97      | sK2 = k1_lattices(sK1,k5_lattices(sK1),sK2)
% 1.90/0.97      | sK2 != sK2 ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_1042]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_2,plain,
% 1.90/0.97      ( v4_lattices(X0)
% 1.90/0.97      | ~ l3_lattices(X0)
% 1.90/0.97      | v2_struct_0(X0)
% 1.90/0.97      | ~ v10_lattices(X0) ),
% 1.90/0.97      inference(cnf_transformation,[],[f40]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_13,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l2_lattices(X1)
% 1.90/0.97      | ~ v4_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(cnf_transformation,[],[f52]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_230,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l2_lattices(X1)
% 1.90/0.97      | ~ l3_lattices(X3)
% 1.90/0.97      | v2_struct_0(X3)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | ~ v10_lattices(X3)
% 1.90/0.97      | X1 != X3
% 1.90/0.97      | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_2,c_13]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_231,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l2_lattices(X1)
% 1.90/0.97      | ~ l3_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | ~ v10_lattices(X1)
% 1.90/0.97      | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_230]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_249,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l3_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | ~ v10_lattices(X1)
% 1.90/0.97      | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2) ),
% 1.90/0.97      inference(forward_subsumption_resolution,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_231,c_11]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_440,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.90/0.97      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.90/0.97      | ~ l3_lattices(X1)
% 1.90/0.97      | v2_struct_0(X1)
% 1.90/0.97      | k3_lattices(X1,X0,X2) = k1_lattices(X1,X0,X2)
% 1.90/0.97      | sK1 != X1 ),
% 1.90/0.97      inference(resolution_lifted,[status(thm)],[c_20,c_249]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_441,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | ~ l3_lattices(sK1)
% 1.90/0.97      | v2_struct_0(sK1)
% 1.90/0.97      | k3_lattices(sK1,X1,X0) = k1_lattices(sK1,X1,X0) ),
% 1.90/0.97      inference(unflattening,[status(thm)],[c_440]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_445,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | k3_lattices(sK1,X1,X0) = k1_lattices(sK1,X1,X0) ),
% 1.90/0.97      inference(global_propositional_subsumption,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_441,c_21,c_18]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_446,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.90/0.97      | k3_lattices(sK1,X0,X1) = k1_lattices(sK1,X0,X1) ),
% 1.90/0.97      inference(renaming,[status(thm)],[c_445]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_746,plain,
% 1.90/0.97      ( ~ m1_subset_1(X0_48,u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(X1_48,u1_struct_0(sK1))
% 1.90/0.97      | k3_lattices(sK1,X0_48,X1_48) = k1_lattices(sK1,X0_48,X1_48) ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_446]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1007,plain,
% 1.90/0.97      ( ~ m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1))
% 1.90/0.97      | ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 1.90/0.97      | k3_lattices(sK1,k5_lattices(sK1),sK2) = k1_lattices(sK1,k5_lattices(sK1),sK2) ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_746]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_999,plain,
% 1.90/0.97      ( k3_lattices(sK1,k5_lattices(sK1),sK2) != X0_48
% 1.90/0.97      | k3_lattices(sK1,k5_lattices(sK1),sK2) = sK2
% 1.90/0.97      | sK2 != X0_48 ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_752]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_1006,plain,
% 1.90/0.97      ( k3_lattices(sK1,k5_lattices(sK1),sK2) != k1_lattices(sK1,k5_lattices(sK1),sK2)
% 1.90/0.97      | k3_lattices(sK1,k5_lattices(sK1),sK2) = sK2
% 1.90/0.97      | sK2 != k1_lattices(sK1,k5_lattices(sK1),sK2) ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_999]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_16,negated_conjecture,
% 1.90/0.97      ( k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2 ),
% 1.90/0.97      inference(cnf_transformation,[],[f60]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_749,negated_conjecture,
% 1.90/0.97      ( k3_lattices(sK1,k5_lattices(sK1),sK2) != sK2 ),
% 1.90/0.97      inference(subtyping,[status(esa)],[c_16]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_751,plain,( X0_48 = X0_48 ),theory(equality) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_762,plain,
% 1.90/0.97      ( sK2 = sK2 ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_751]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_42,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) = iProver_top
% 1.90/0.97      | l1_lattices(X0) != iProver_top
% 1.90/0.97      | v2_struct_0(X0) = iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_44,plain,
% 1.90/0.97      ( m1_subset_1(k5_lattices(sK1),u1_struct_0(sK1)) = iProver_top
% 1.90/0.97      | l1_lattices(sK1) != iProver_top
% 1.90/0.97      | v2_struct_0(sK1) = iProver_top ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_42]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_36,plain,
% 1.90/0.97      ( l1_lattices(X0) = iProver_top | l3_lattices(X0) != iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_38,plain,
% 1.90/0.97      ( l1_lattices(sK1) = iProver_top
% 1.90/0.97      | l3_lattices(sK1) != iProver_top ),
% 1.90/0.97      inference(instantiation,[status(thm)],[c_36]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_26,plain,
% 1.90/0.97      ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_25,plain,
% 1.90/0.97      ( l3_lattices(sK1) = iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(c_22,plain,
% 1.90/0.97      ( v2_struct_0(sK1) != iProver_top ),
% 1.90/0.97      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.90/0.97  
% 1.90/0.97  cnf(contradiction,plain,
% 1.90/0.97      ( $false ),
% 1.90/0.97      inference(minisat,
% 1.90/0.97                [status(thm)],
% 1.90/0.97                [c_1709,c_1043,c_1007,c_1006,c_749,c_762,c_44,c_43,c_38,
% 1.90/0.97                 c_37,c_26,c_17,c_25,c_18,c_22,c_21]) ).
% 1.90/0.97  
% 1.90/0.97  
% 1.90/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 1.90/0.97  
% 1.90/0.97  ------                               Statistics
% 1.90/0.97  
% 1.90/0.97  ------ General
% 1.90/0.97  
% 1.90/0.97  abstr_ref_over_cycles:                  0
% 1.90/0.97  abstr_ref_under_cycles:                 0
% 1.90/0.97  gc_basic_clause_elim:                   0
% 1.90/0.97  forced_gc_time:                         0
% 1.90/0.97  parsing_time:                           0.01
% 1.90/0.97  unif_index_cands_time:                  0.
% 1.90/0.97  unif_index_add_time:                    0.
% 1.90/0.97  orderings_time:                         0.
% 1.90/0.97  out_proof_time:                         0.016
% 1.90/0.97  total_time:                             0.096
% 1.90/0.97  num_of_symbols:                         51
% 1.90/0.97  num_of_terms:                           1658
% 1.90/0.97  
% 1.90/0.97  ------ Preprocessing
% 1.90/0.97  
% 1.90/0.97  num_of_splits:                          0
% 1.90/0.97  num_of_split_atoms:                     0
% 1.90/0.97  num_of_reused_defs:                     0
% 1.90/0.97  num_eq_ax_congr_red:                    32
% 1.90/0.97  num_of_sem_filtered_clauses:            1
% 1.90/0.97  num_of_subtypes:                        3
% 1.90/0.97  monotx_restored_types:                  0
% 1.90/0.97  sat_num_of_epr_types:                   0
% 1.90/0.97  sat_num_of_non_cyclic_types:            0
% 1.90/0.97  sat_guarded_non_collapsed_types:        1
% 1.90/0.97  num_pure_diseq_elim:                    0
% 1.90/0.97  simp_replaced_by:                       0
% 1.90/0.97  res_preprocessed:                       64
% 1.90/0.97  prep_upred:                             0
% 1.90/0.97  prep_unflattend:                        15
% 1.90/0.97  smt_new_axioms:                         0
% 1.90/0.97  pred_elim_cands:                        1
% 1.90/0.97  pred_elim:                              10
% 1.90/0.97  pred_elim_cl:                           11
% 1.90/0.97  pred_elim_cycles:                       12
% 1.90/0.97  merged_defs:                            0
% 1.90/0.97  merged_defs_ncl:                        0
% 1.90/0.97  bin_hyper_res:                          0
% 1.90/0.97  prep_cycles:                            4
% 1.90/0.97  pred_elim_time:                         0.008
% 1.90/0.97  splitting_time:                         0.
% 1.90/0.97  sem_filter_time:                        0.
% 1.90/0.97  monotx_time:                            0.
% 1.90/0.97  subtype_inf_time:                       0.
% 1.90/0.97  
% 1.90/0.97  ------ Problem properties
% 1.90/0.97  
% 1.90/0.97  clauses:                                10
% 1.90/0.97  conjectures:                            2
% 1.90/0.97  epr:                                    0
% 1.90/0.97  horn:                                   9
% 1.90/0.97  ground:                                 3
% 1.90/0.97  unary:                                  3
% 1.90/0.97  binary:                                 2
% 1.90/0.97  lits:                                   24
% 1.90/0.97  lits_eq:                                10
% 1.90/0.97  fd_pure:                                0
% 1.90/0.97  fd_pseudo:                              0
% 1.90/0.97  fd_cond:                                2
% 1.90/0.97  fd_pseudo_cond:                         0
% 1.90/0.97  ac_symbols:                             0
% 1.90/0.97  
% 1.90/0.97  ------ Propositional Solver
% 1.90/0.97  
% 1.90/0.97  prop_solver_calls:                      27
% 1.90/0.97  prop_fast_solver_calls:                 528
% 1.90/0.97  smt_solver_calls:                       0
% 1.90/0.97  smt_fast_solver_calls:                  0
% 1.90/0.97  prop_num_of_clauses:                    553
% 1.90/0.97  prop_preprocess_simplified:             2162
% 1.90/0.97  prop_fo_subsumed:                       20
% 1.90/0.97  prop_solver_time:                       0.
% 1.90/0.97  smt_solver_time:                        0.
% 1.90/0.97  smt_fast_solver_time:                   0.
% 1.90/0.97  prop_fast_solver_time:                  0.
% 1.90/0.97  prop_unsat_core_time:                   0.
% 1.90/0.97  
% 1.90/0.97  ------ QBF
% 1.90/0.97  
% 1.90/0.97  qbf_q_res:                              0
% 1.90/0.97  qbf_num_tautologies:                    0
% 1.90/0.97  qbf_prep_cycles:                        0
% 1.90/0.97  
% 1.90/0.97  ------ BMC1
% 1.90/0.97  
% 1.90/0.97  bmc1_current_bound:                     -1
% 1.90/0.97  bmc1_last_solved_bound:                 -1
% 1.90/0.97  bmc1_unsat_core_size:                   -1
% 1.90/0.97  bmc1_unsat_core_parents_size:           -1
% 1.90/0.97  bmc1_merge_next_fun:                    0
% 1.90/0.97  bmc1_unsat_core_clauses_time:           0.
% 1.90/0.97  
% 1.90/0.97  ------ Instantiation
% 1.90/0.97  
% 1.90/0.97  inst_num_of_clauses:                    171
% 1.90/0.97  inst_num_in_passive:                    49
% 1.90/0.97  inst_num_in_active:                     101
% 1.90/0.97  inst_num_in_unprocessed:                22
% 1.90/0.97  inst_num_of_loops:                      110
% 1.90/0.97  inst_num_of_learning_restarts:          0
% 1.90/0.97  inst_num_moves_active_passive:          5
% 1.90/0.97  inst_lit_activity:                      0
% 1.90/0.97  inst_lit_activity_moves:                0
% 1.90/0.97  inst_num_tautologies:                   0
% 1.90/0.97  inst_num_prop_implied:                  0
% 1.90/0.97  inst_num_existing_simplified:           0
% 1.90/0.97  inst_num_eq_res_simplified:             0
% 1.90/0.97  inst_num_child_elim:                    0
% 1.90/0.97  inst_num_of_dismatching_blockings:      51
% 1.90/0.97  inst_num_of_non_proper_insts:           173
% 1.90/0.97  inst_num_of_duplicates:                 0
% 1.90/0.97  inst_inst_num_from_inst_to_res:         0
% 1.90/0.97  inst_dismatching_checking_time:         0.
% 1.90/0.97  
% 1.90/0.97  ------ Resolution
% 1.90/0.97  
% 1.90/0.97  res_num_of_clauses:                     0
% 1.90/0.97  res_num_in_passive:                     0
% 1.90/0.97  res_num_in_active:                      0
% 1.90/0.97  res_num_of_loops:                       68
% 1.90/0.97  res_forward_subset_subsumed:            15
% 1.90/0.97  res_backward_subset_subsumed:           2
% 1.90/0.97  res_forward_subsumed:                   0
% 1.90/0.97  res_backward_subsumed:                  0
% 1.90/0.97  res_forward_subsumption_resolution:     2
% 1.90/0.97  res_backward_subsumption_resolution:    0
% 1.90/0.97  res_clause_to_clause_subsumption:       74
% 1.90/0.97  res_orphan_elimination:                 0
% 1.90/0.97  res_tautology_del:                      35
% 1.90/0.97  res_num_eq_res_simplified:              0
% 1.90/0.97  res_num_sel_changes:                    0
% 1.90/0.97  res_moves_from_active_to_pass:          0
% 1.90/0.97  
% 1.90/0.97  ------ Superposition
% 1.90/0.97  
% 1.90/0.97  sup_time_total:                         0.
% 1.90/0.97  sup_time_generating:                    0.
% 1.90/0.97  sup_time_sim_full:                      0.
% 1.90/0.97  sup_time_sim_immed:                     0.
% 1.90/0.97  
% 1.90/0.97  sup_num_of_clauses:                     32
% 1.90/0.97  sup_num_in_active:                      21
% 1.90/0.97  sup_num_in_passive:                     11
% 1.90/0.97  sup_num_of_loops:                       21
% 1.90/0.97  sup_fw_superposition:                   18
% 1.90/0.97  sup_bw_superposition:                   6
% 1.90/0.97  sup_immediate_simplified:               6
% 1.90/0.97  sup_given_eliminated:                   0
% 1.90/0.97  comparisons_done:                       0
% 1.90/0.97  comparisons_avoided:                    0
% 1.90/0.97  
% 1.90/0.97  ------ Simplifications
% 1.90/0.97  
% 1.90/0.97  
% 1.90/0.97  sim_fw_subset_subsumed:                 0
% 1.90/0.97  sim_bw_subset_subsumed:                 0
% 1.90/0.97  sim_fw_subsumed:                        0
% 1.90/0.97  sim_bw_subsumed:                        0
% 1.90/0.97  sim_fw_subsumption_res:                 0
% 1.90/0.97  sim_bw_subsumption_res:                 0
% 1.90/0.97  sim_tautology_del:                      0
% 1.90/0.97  sim_eq_tautology_del:                   0
% 1.90/0.97  sim_eq_res_simp:                        0
% 1.90/0.97  sim_fw_demodulated:                     0
% 1.90/0.97  sim_bw_demodulated:                     1
% 1.90/0.97  sim_light_normalised:                   6
% 1.90/0.97  sim_joinable_taut:                      0
% 1.90/0.97  sim_joinable_simp:                      0
% 1.90/0.97  sim_ac_normalised:                      0
% 1.90/0.97  sim_smt_subsumption:                    0
% 1.90/0.97  
%------------------------------------------------------------------------------
