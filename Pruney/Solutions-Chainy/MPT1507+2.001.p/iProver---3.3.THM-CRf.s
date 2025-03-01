%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:19:12 EST 2020

% Result     : Theorem 2.75s
% Output     : CNFRefutation 2.75s
% Verified   : 
% Statistics : Number of formulae       :  183 (1297 expanded)
%              Number of clauses        :  108 ( 307 expanded)
%              Number of leaves         :   18 ( 366 expanded)
%              Depth                    :   25
%              Number of atoms          :  913 (8543 expanded)
%              Number of equality atoms :  152 (1111 expanded)
%              Maximal formula depth    :   16 (   6 average)
%              Maximal clause size      :   17 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f29,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f78,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f10,conjecture,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v4_lattice3(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( ( r4_lattice3(X0,X1,X2)
                & r2_hidden(X1,X2) )
             => k15_lattice3(X0,X2) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ( l3_lattices(X0)
          & v4_lattice3(X0)
          & v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( ( r4_lattice3(X0,X1,X2)
                  & r2_hidden(X1,X2) )
               => k15_lattice3(X0,X2) = X1 ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k15_lattice3(X0,X2) != X1
              & r4_lattice3(X0,X1,X2)
              & r2_hidden(X1,X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v4_lattice3(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k15_lattice3(X0,X2) != X1
              & r4_lattice3(X0,X1,X2)
              & r2_hidden(X1,X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v4_lattice3(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f53,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( k15_lattice3(X0,X2) != X1
          & r4_lattice3(X0,X1,X2)
          & r2_hidden(X1,X2) )
     => ( k15_lattice3(X0,sK7) != X1
        & r4_lattice3(X0,X1,sK7)
        & r2_hidden(X1,sK7) ) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k15_lattice3(X0,X2) != X1
              & r4_lattice3(X0,X1,X2)
              & r2_hidden(X1,X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k15_lattice3(X0,X2) != sK6
            & r4_lattice3(X0,sK6,X2)
            & r2_hidden(sK6,X2) )
        & m1_subset_1(sK6,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( k15_lattice3(X0,X2) != X1
                & r4_lattice3(X0,X1,X2)
                & r2_hidden(X1,X2) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l3_lattices(X0)
        & v4_lattice3(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( k15_lattice3(sK5,X2) != X1
              & r4_lattice3(sK5,X1,X2)
              & r2_hidden(X1,X2) )
          & m1_subset_1(X1,u1_struct_0(sK5)) )
      & l3_lattices(sK5)
      & v4_lattice3(sK5)
      & v10_lattices(sK5)
      & ~ v2_struct_0(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f54,plain,
    ( k15_lattice3(sK5,sK7) != sK6
    & r4_lattice3(sK5,sK6,sK7)
    & r2_hidden(sK6,sK7)
    & m1_subset_1(sK6,u1_struct_0(sK5))
    & l3_lattices(sK5)
    & v4_lattice3(sK5)
    & v10_lattices(sK5)
    & ~ v2_struct_0(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7])],[f33,f53,f52,f51])).

fof(f81,plain,(
    ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f54])).

fof(f84,plain,(
    l3_lattices(sK5) ),
    inference(cnf_transformation,[],[f54])).

fof(f85,plain,(
    m1_subset_1(sK6,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f54])).

fof(f4,axiom,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( l2_lattices(X0)
        & l1_lattices(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ( l2_lattices(X0)
        & l1_lattices(X0) )
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f65,plain,(
    ! [X0] :
      ( l1_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v6_lattices(X0)
      <=> ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( v6_lattices(X0)
      <=> ! [X1] :
            ( ! [X2] :
                ( k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ m1_subset_1(X1,u1_struct_0(X0)) ) )
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X0] :
      ( ( v6_lattices(X0)
      <=> ! [X1] :
            ( ! [X2] :
                ( k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ m1_subset_1(X1,u1_struct_0(X0)) ) )
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f46,plain,(
    ! [X0] :
      ( ( ( v6_lattices(X0)
          | ? [X1] :
              ( ? [X2] :
                  ( k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1)
                  & m1_subset_1(X2,u1_struct_0(X0)) )
              & m1_subset_1(X1,u1_struct_0(X0)) ) )
        & ( ! [X1] :
              ( ! [X2] :
                  ( k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1)
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | ~ m1_subset_1(X1,u1_struct_0(X0)) )
          | ~ v6_lattices(X0) ) )
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f47,plain,(
    ! [X0] :
      ( ( ( v6_lattices(X0)
          | ? [X1] :
              ( ? [X2] :
                  ( k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1)
                  & m1_subset_1(X2,u1_struct_0(X0)) )
              & m1_subset_1(X1,u1_struct_0(X0)) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( k2_lattices(X0,X3,X4) = k2_lattices(X0,X4,X3)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ v6_lattices(X0) ) )
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f46])).

fof(f49,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1)
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( k2_lattices(X0,X1,sK4(X0)) != k2_lattices(X0,sK4(X0),X1)
        & m1_subset_1(sK4(X0),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1)
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k2_lattices(X0,X2,sK3(X0)) != k2_lattices(X0,sK3(X0),X2)
            & m1_subset_1(X2,u1_struct_0(X0)) )
        & m1_subset_1(sK3(X0),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,(
    ! [X0] :
      ( ( ( v6_lattices(X0)
          | ( k2_lattices(X0,sK3(X0),sK4(X0)) != k2_lattices(X0,sK4(X0),sK3(X0))
            & m1_subset_1(sK4(X0),u1_struct_0(X0))
            & m1_subset_1(sK3(X0),u1_struct_0(X0)) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( k2_lattices(X0,X3,X4) = k2_lattices(X0,X4,X3)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ v6_lattices(X0) ) )
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f47,f49,f48])).

fof(f74,plain,(
    ! [X4,X0,X3] :
      ( k2_lattices(X0,X3,X4) = k2_lattices(X0,X4,X3)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ v6_lattices(X0)
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f50])).

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

fof(f12,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & v5_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f1])).

fof(f13,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f14,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f13])).

fof(f15,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f16,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(flattening,[],[f15])).

fof(f56,plain,(
    ! [X0] :
      ( v6_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f82,plain,(
    v10_lattices(sK5) ),
    inference(cnf_transformation,[],[f54])).

fof(f87,plain,(
    r4_lattice3(sK5,sK6,sK7) ),
    inference(cnf_transformation,[],[f54])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( ( l3_lattices(X0)
          & v4_lattice3(X0)
          & v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1,X2] :
            ( m1_subset_1(X2,u1_struct_0(X0))
           => ( k15_lattice3(X0,X1) = X2
            <=> ( ! [X3] :
                    ( m1_subset_1(X3,u1_struct_0(X0))
                   => ( r4_lattice3(X0,X3,X1)
                     => r1_lattices(X0,X2,X3) ) )
                & r4_lattice3(X0,X2,X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k15_lattice3(X0,X1) = X2
          <=> ( ! [X3] :
                  ( r1_lattices(X0,X2,X3)
                  | ~ r4_lattice3(X0,X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & r4_lattice3(X0,X2,X1) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k15_lattice3(X0,X1) = X2
          <=> ( ! [X3] :
                  ( r1_lattices(X0,X2,X3)
                  | ~ r4_lattice3(X0,X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & r4_lattice3(X0,X2,X1) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k15_lattice3(X0,X1) = X2
              | ? [X3] :
                  ( ~ r1_lattices(X0,X2,X3)
                  & r4_lattice3(X0,X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,X1) )
            & ( ( ! [X3] :
                    ( r1_lattices(X0,X2,X3)
                    | ~ r4_lattice3(X0,X3,X1)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                & r4_lattice3(X0,X2,X1) )
              | k15_lattice3(X0,X1) != X2 ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k15_lattice3(X0,X1) = X2
              | ? [X3] :
                  ( ~ r1_lattices(X0,X2,X3)
                  & r4_lattice3(X0,X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,X1) )
            & ( ( ! [X3] :
                    ( r1_lattices(X0,X2,X3)
                    | ~ r4_lattice3(X0,X3,X1)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                & r4_lattice3(X0,X2,X1) )
              | k15_lattice3(X0,X1) != X2 ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f41])).

fof(f43,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k15_lattice3(X0,X1) = X2
              | ? [X3] :
                  ( ~ r1_lattices(X0,X2,X3)
                  & r4_lattice3(X0,X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,X1) )
            & ( ( ! [X4] :
                    ( r1_lattices(X0,X2,X4)
                    | ~ r4_lattice3(X0,X4,X1)
                    | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                & r4_lattice3(X0,X2,X1) )
              | k15_lattice3(X0,X1) != X2 ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f42])).

fof(f44,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_lattices(X0,X2,X3)
          & r4_lattice3(X0,X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_lattices(X0,X2,sK2(X0,X1,X2))
        & r4_lattice3(X0,sK2(X0,X1,X2),X1)
        & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k15_lattice3(X0,X1) = X2
              | ( ~ r1_lattices(X0,X2,sK2(X0,X1,X2))
                & r4_lattice3(X0,sK2(X0,X1,X2),X1)
                & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,X1) )
            & ( ( ! [X4] :
                    ( r1_lattices(X0,X2,X4)
                    | ~ r4_lattice3(X0,X4,X1)
                    | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                & r4_lattice3(X0,X2,X1) )
              | k15_lattice3(X0,X1) != X2 ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f43,f44])).

fof(f70,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_lattices(X0,X2,X4)
      | ~ r4_lattice3(X0,X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | k15_lattice3(X0,X1) != X2
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f89,plain,(
    ! [X4,X0,X1] :
      ( r1_lattices(X0,k15_lattice3(X0,X1),X4)
      | ~ r4_lattice3(X0,X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f70])).

fof(f83,plain,(
    v4_lattice3(sK5) ),
    inference(cnf_transformation,[],[f54])).

fof(f66,plain,(
    ! [X0] :
      ( l2_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f2,axiom,(
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

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

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
    inference(flattening,[],[f17])).

fof(f34,plain,(
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
    inference(nnf_transformation,[],[f18])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( k1_lattices(X0,X1,X2) = X2
      | ~ r1_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f3,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v9_lattices(X0)
      <=> ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
      <=> ! [X1] :
            ( ! [X2] :
                ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ m1_subset_1(X1,u1_struct_0(X0)) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f20,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
      <=> ! [X1] :
            ( ! [X2] :
                ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ m1_subset_1(X1,u1_struct_0(X0)) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f35,plain,(
    ! [X0] :
      ( ( ( v9_lattices(X0)
          | ? [X1] :
              ( ? [X2] :
                  ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
                  & m1_subset_1(X2,u1_struct_0(X0)) )
              & m1_subset_1(X1,u1_struct_0(X0)) ) )
        & ( ! [X1] :
              ( ! [X2] :
                  ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | ~ m1_subset_1(X1,u1_struct_0(X0)) )
          | ~ v9_lattices(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f36,plain,(
    ! [X0] :
      ( ( ( v9_lattices(X0)
          | ? [X1] :
              ( ? [X2] :
                  ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
                  & m1_subset_1(X2,u1_struct_0(X0)) )
              & m1_subset_1(X1,u1_struct_0(X0)) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ v9_lattices(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f35])).

fof(f38,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( k2_lattices(X0,X1,k1_lattices(X0,X1,sK1(X0))) != X1
        & m1_subset_1(sK1(X0),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k2_lattices(X0,sK0(X0),k1_lattices(X0,sK0(X0),X2)) != sK0(X0)
            & m1_subset_1(X2,u1_struct_0(X0)) )
        & m1_subset_1(sK0(X0),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0] :
      ( ( ( v9_lattices(X0)
          | ( k2_lattices(X0,sK0(X0),k1_lattices(X0,sK0(X0),sK1(X0))) != sK0(X0)
            & m1_subset_1(sK1(X0),u1_struct_0(X0))
            & m1_subset_1(sK0(X0),u1_struct_0(X0)) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ v9_lattices(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f36,f38,f37])).

fof(f61,plain,(
    ! [X4,X0,X3] :
      ( k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ v9_lattices(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f58,plain,(
    ! [X0] :
      ( v9_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f57,plain,(
    ! [X0] :
      ( v8_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l3_lattices(X0)
        & v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( r3_lattices(X0,X1,X2)
      <=> r1_lattices(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( r3_lattices(X0,X1,X2)
      <=> r1_lattices(X0,X1,X2) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( r3_lattices(X0,X1,X2)
      <=> r1_lattices(X0,X1,X2) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ( ( r3_lattices(X0,X1,X2)
          | ~ r1_lattices(X0,X1,X2) )
        & ( r1_lattices(X0,X1,X2)
          | ~ r3_lattices(X0,X1,X2) ) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( r1_lattices(X0,X1,X2)
      | ~ r3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v4_lattice3(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( r2_hidden(X1,X2)
             => ( r3_lattices(X0,k16_lattice3(X0,X2),X1)
                & r3_lattices(X0,X1,k15_lattice3(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattices(X0,k16_lattice3(X0,X2),X1)
                & r3_lattices(X0,X1,k15_lattice3(X0,X2)) )
              | ~ r2_hidden(X1,X2) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattices(X0,k16_lattice3(X0,X2),X1)
                & r3_lattices(X0,X1,k15_lattice3(X0,X2)) )
              | ~ r2_hidden(X1,X2) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( r3_lattices(X0,X1,k15_lattice3(X0,X2))
      | ~ r2_hidden(X1,X2)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f86,plain,(
    r2_hidden(sK6,sK7) ),
    inference(cnf_transformation,[],[f54])).

fof(f88,plain,(
    k15_lattice3(sK5,sK7) != sK6 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_23,plain,
    ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_33,negated_conjecture,
    ( ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1437,plain,
    ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_33])).

cnf(c_1438,plain,
    ( m1_subset_1(k15_lattice3(sK5,X0),u1_struct_0(sK5))
    | ~ l3_lattices(sK5) ),
    inference(unflattening,[status(thm)],[c_1437])).

cnf(c_30,negated_conjecture,
    ( l3_lattices(sK5) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_1442,plain,
    ( m1_subset_1(k15_lattice3(sK5,X0),u1_struct_0(sK5)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1438,c_30])).

cnf(c_1900,plain,
    ( m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) ),
    inference(subtyping,[status(esa)],[c_1442])).

cnf(c_2196,plain,
    ( m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1900])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK6,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1911,negated_conjecture,
    ( m1_subset_1(sK6,u1_struct_0(sK5)) ),
    inference(subtyping,[status(esa)],[c_29])).

cnf(c_2185,plain,
    ( m1_subset_1(sK6,u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1911])).

cnf(c_11,plain,
    ( l1_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_lattices(X1)
    | ~ v6_lattices(X1)
    | v2_struct_0(X1)
    | k2_lattices(X1,X0,X2) = k2_lattices(X1,X2,X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_540,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | ~ l3_lattices(X3)
    | v2_struct_0(X1)
    | X1 != X3
    | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2) ),
    inference(resolution_lifted,[status(thm)],[c_11,c_22])).

cnf(c_541,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2) ),
    inference(unflattening,[status(thm)],[c_540])).

cnf(c_1458,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | ~ l3_lattices(X1)
    | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2)
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_541,c_33])).

cnf(c_1459,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ v6_lattices(sK5)
    | ~ l3_lattices(sK5)
    | k2_lattices(sK5,X1,X0) = k2_lattices(sK5,X0,X1) ),
    inference(unflattening,[status(thm)],[c_1458])).

cnf(c_2,plain,
    ( v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_32,negated_conjecture,
    ( v10_lattices(sK5) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1141,plain,
    ( v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_32])).

cnf(c_1142,plain,
    ( v6_lattices(sK5)
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5) ),
    inference(unflattening,[status(thm)],[c_1141])).

cnf(c_109,plain,
    ( v6_lattices(sK5)
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | ~ v10_lattices(sK5) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1144,plain,
    ( v6_lattices(sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1142,c_33,c_32,c_30,c_109])).

cnf(c_1341,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2)
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_541,c_1144])).

cnf(c_1342,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | k2_lattices(sK5,X1,X0) = k2_lattices(sK5,X0,X1) ),
    inference(unflattening,[status(thm)],[c_1341])).

cnf(c_1462,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | k2_lattices(sK5,X1,X0) = k2_lattices(sK5,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1459,c_33,c_30,c_1342])).

cnf(c_1463,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | k2_lattices(sK5,X0,X1) = k2_lattices(sK5,X1,X0) ),
    inference(renaming,[status(thm)],[c_1462])).

cnf(c_1903,plain,
    ( ~ m1_subset_1(X0_56,u1_struct_0(sK5))
    | ~ m1_subset_1(X1_56,u1_struct_0(sK5))
    | k2_lattices(sK5,X0_56,X1_56) = k2_lattices(sK5,X1_56,X0_56) ),
    inference(subtyping,[status(esa)],[c_1463])).

cnf(c_2193,plain,
    ( k2_lattices(sK5,X0_56,X1_56) = k2_lattices(sK5,X1_56,X0_56)
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(X1_56,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1903])).

cnf(c_2767,plain,
    ( k2_lattices(sK5,X0_56,sK6) = k2_lattices(sK5,sK6,X0_56)
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2185,c_2193])).

cnf(c_2896,plain,
    ( k2_lattices(sK5,sK6,k15_lattice3(sK5,X0_57)) = k2_lattices(sK5,k15_lattice3(sK5,X0_57),sK6) ),
    inference(superposition,[status(thm)],[c_2196,c_2767])).

cnf(c_27,negated_conjecture,
    ( r4_lattice3(sK5,sK6,sK7) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1912,negated_conjecture,
    ( r4_lattice3(sK5,sK6,sK7) ),
    inference(subtyping,[status(esa)],[c_27])).

cnf(c_2184,plain,
    ( r4_lattice3(sK5,sK6,sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1912])).

cnf(c_17,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | r1_lattices(X0,k15_lattice3(X0,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k15_lattice3(X0,X2),u1_struct_0(X0))
    | ~ v4_lattice3(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_31,negated_conjecture,
    ( v4_lattice3(sK5) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1018,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | r1_lattices(X0,k15_lattice3(X0,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k15_lattice3(X0,X2),u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_31])).

cnf(c_1019,plain,
    ( ~ r4_lattice3(sK5,X0,X1)
    | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(k15_lattice3(sK5,X1),u1_struct_0(sK5))
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | ~ v10_lattices(sK5) ),
    inference(unflattening,[status(thm)],[c_1018])).

cnf(c_1023,plain,
    ( ~ m1_subset_1(k15_lattice3(sK5,X1),u1_struct_0(sK5))
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
    | ~ r4_lattice3(sK5,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1019,c_33,c_32,c_30])).

cnf(c_1024,plain,
    ( ~ r4_lattice3(sK5,X0,X1)
    | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(k15_lattice3(sK5,X1),u1_struct_0(sK5)) ),
    inference(renaming,[status(thm)],[c_1023])).

cnf(c_1514,plain,
    ( ~ r4_lattice3(sK5,X0,X1)
    | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK5)) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_1442,c_1024])).

cnf(c_1899,plain,
    ( ~ r4_lattice3(sK5,X0_56,X0_57)
    | r1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56)
    | ~ m1_subset_1(X0_56,u1_struct_0(sK5)) ),
    inference(subtyping,[status(esa)],[c_1514])).

cnf(c_2197,plain,
    ( r4_lattice3(sK5,X0_56,X0_57) != iProver_top
    | r1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = iProver_top
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1899])).

cnf(c_10,plain,
    ( l2_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_5,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l2_lattices(X0)
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) = X2 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_367,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) = X2 ),
    inference(resolution,[status(thm)],[c_10,c_5])).

cnf(c_1413,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | k1_lattices(X0,X1,X2) = X2
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_367,c_33])).

cnf(c_1414,plain,
    ( ~ r1_lattices(sK5,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ l3_lattices(sK5)
    | k1_lattices(sK5,X0,X1) = X1 ),
    inference(unflattening,[status(thm)],[c_1413])).

cnf(c_1418,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ r1_lattices(sK5,X0,X1)
    | k1_lattices(sK5,X0,X1) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1414,c_30])).

cnf(c_1419,plain,
    ( ~ r1_lattices(sK5,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | k1_lattices(sK5,X0,X1) = X1 ),
    inference(renaming,[status(thm)],[c_1418])).

cnf(c_1901,plain,
    ( ~ r1_lattices(sK5,X0_56,X1_56)
    | ~ m1_subset_1(X0_56,u1_struct_0(sK5))
    | ~ m1_subset_1(X1_56,u1_struct_0(sK5))
    | k1_lattices(sK5,X0_56,X1_56) = X1_56 ),
    inference(subtyping,[status(esa)],[c_1419])).

cnf(c_2195,plain,
    ( k1_lattices(sK5,X0_56,X1_56) = X1_56
    | r1_lattices(sK5,X0_56,X1_56) != iProver_top
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(X1_56,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1901])).

cnf(c_3342,plain,
    ( k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56
    | r4_lattice3(sK5,X0_56,X0_57) != iProver_top
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2197,c_2195])).

cnf(c_1955,plain,
    ( m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1900])).

cnf(c_4244,plain,
    ( m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
    | r4_lattice3(sK5,X0_56,X0_57) != iProver_top
    | k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3342,c_1955])).

cnf(c_4245,plain,
    ( k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56
    | r4_lattice3(sK5,X0_56,X0_57) != iProver_top
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_4244])).

cnf(c_4253,plain,
    ( k1_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = sK6
    | m1_subset_1(sK6,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2184,c_4245])).

cnf(c_1956,plain,
    ( m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5)) ),
    inference(instantiation,[status(thm)],[c_1900])).

cnf(c_1959,plain,
    ( ~ r4_lattice3(sK5,sK6,sK7)
    | r1_lattices(sK5,k15_lattice3(sK5,sK7),sK6)
    | ~ m1_subset_1(sK6,u1_struct_0(sK5)) ),
    inference(instantiation,[status(thm)],[c_1899])).

cnf(c_2309,plain,
    ( ~ r1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56)
    | ~ m1_subset_1(X0_56,u1_struct_0(sK5))
    | ~ m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5))
    | k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56 ),
    inference(instantiation,[status(thm)],[c_1901])).

cnf(c_2311,plain,
    ( ~ r1_lattices(sK5,k15_lattice3(sK5,sK7),sK6)
    | ~ m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5))
    | ~ m1_subset_1(sK6,u1_struct_0(sK5))
    | k1_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = sK6 ),
    inference(instantiation,[status(thm)],[c_2309])).

cnf(c_4282,plain,
    ( k1_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = sK6 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4253,c_29,c_27,c_1956,c_1959,c_2311])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v9_lattices(X1)
    | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1476,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | ~ v9_lattices(X1)
    | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_33])).

cnf(c_1477,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ l3_lattices(sK5)
    | ~ v9_lattices(sK5)
    | k2_lattices(sK5,X1,k1_lattices(sK5,X1,X0)) = X1 ),
    inference(unflattening,[status(thm)],[c_1476])).

cnf(c_0,plain,
    ( ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | v9_lattices(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1152,plain,
    ( ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | v9_lattices(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_32])).

cnf(c_1153,plain,
    ( ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | v9_lattices(sK5) ),
    inference(unflattening,[status(thm)],[c_1152])).

cnf(c_115,plain,
    ( ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | ~ v10_lattices(sK5)
    | v9_lattices(sK5) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1155,plain,
    ( v9_lattices(sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1153,c_33,c_32,c_30,c_115])).

cnf(c_1233,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_1155])).

cnf(c_1234,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | k2_lattices(sK5,X1,k1_lattices(sK5,X1,X0)) = X1 ),
    inference(unflattening,[status(thm)],[c_1233])).

cnf(c_1481,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | k2_lattices(sK5,X1,k1_lattices(sK5,X1,X0)) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1477,c_33,c_30,c_1234])).

cnf(c_1482,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | k2_lattices(sK5,X0,k1_lattices(sK5,X0,X1)) = X0 ),
    inference(renaming,[status(thm)],[c_1481])).

cnf(c_1904,plain,
    ( ~ m1_subset_1(X0_56,u1_struct_0(sK5))
    | ~ m1_subset_1(X1_56,u1_struct_0(sK5))
    | k2_lattices(sK5,X0_56,k1_lattices(sK5,X0_56,X1_56)) = X0_56 ),
    inference(subtyping,[status(esa)],[c_1482])).

cnf(c_2192,plain,
    ( k2_lattices(sK5,X0_56,k1_lattices(sK5,X0_56,X1_56)) = X0_56
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(X1_56,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1904])).

cnf(c_2487,plain,
    ( k2_lattices(sK5,k15_lattice3(sK5,X0_57),k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56)) = k15_lattice3(sK5,X0_57)
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2196,c_2192])).

cnf(c_3936,plain,
    ( k2_lattices(sK5,k15_lattice3(sK5,X0_57),k1_lattices(sK5,k15_lattice3(sK5,X0_57),sK6)) = k15_lattice3(sK5,X0_57) ),
    inference(superposition,[status(thm)],[c_2185,c_2487])).

cnf(c_4286,plain,
    ( k2_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = k15_lattice3(sK5,sK7) ),
    inference(superposition,[status(thm)],[c_4282,c_3936])).

cnf(c_4664,plain,
    ( k2_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7) ),
    inference(superposition,[status(thm)],[c_2896,c_4286])).

cnf(c_1,plain,
    ( v8_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_13,plain,
    ( ~ r3_lattices(X0,X1,X2)
    | r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v9_lattices(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_586,plain,
    ( ~ r3_lattices(X0,X1,X2)
    | r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | ~ v9_lattices(X0) ),
    inference(resolution,[status(thm)],[c_1,c_13])).

cnf(c_590,plain,
    ( ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ r3_lattices(X0,X1,X2)
    | r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_586,c_13,c_2,c_1,c_0])).

cnf(c_591,plain,
    ( ~ r3_lattices(X0,X1,X2)
    | r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(renaming,[status(thm)],[c_590])).

cnf(c_25,plain,
    ( r3_lattices(X0,X1,k15_lattice3(X0,X2))
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v4_lattice3(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_28,negated_conjecture,
    ( r2_hidden(sK6,sK7) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_427,plain,
    ( r3_lattices(X0,X1,k15_lattice3(X0,X2))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v4_lattice3(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | sK6 != X1
    | sK7 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_28])).

cnf(c_428,plain,
    ( r3_lattices(X0,sK6,k15_lattice3(X0,sK7))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ v4_lattice3(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(unflattening,[status(thm)],[c_427])).

cnf(c_907,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(X3))
    | ~ v4_lattice3(X3)
    | ~ l3_lattices(X0)
    | ~ l3_lattices(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | ~ v10_lattices(X0)
    | ~ v10_lattices(X3)
    | X3 != X0
    | k15_lattice3(X3,sK7) != X2
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_591,c_428])).

cnf(c_908,plain,
    ( r1_lattices(X0,sK6,k15_lattice3(X0,sK7))
    | ~ m1_subset_1(k15_lattice3(X0,sK7),u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ v4_lattice3(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(unflattening,[status(thm)],[c_907])).

cnf(c_926,plain,
    ( r1_lattices(X0,sK6,k15_lattice3(X0,sK7))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ v4_lattice3(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_908,c_23])).

cnf(c_992,plain,
    ( r1_lattices(X0,sK6,k15_lattice3(X0,sK7))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_926,c_31])).

cnf(c_993,plain,
    ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7))
    | ~ m1_subset_1(sK6,u1_struct_0(sK5))
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | ~ v10_lattices(sK5) ),
    inference(unflattening,[status(thm)],[c_992])).

cnf(c_934,plain,
    ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7))
    | ~ m1_subset_1(sK6,u1_struct_0(sK5))
    | ~ v4_lattice3(sK5)
    | ~ l3_lattices(sK5)
    | v2_struct_0(sK5)
    | ~ v10_lattices(sK5) ),
    inference(instantiation,[status(thm)],[c_926])).

cnf(c_995,plain,
    ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_993,c_33,c_32,c_31,c_30,c_29,c_934])).

cnf(c_1909,plain,
    ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) ),
    inference(subtyping,[status(esa)],[c_995])).

cnf(c_2187,plain,
    ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1909])).

cnf(c_3015,plain,
    ( k1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7)
    | m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK6,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2187,c_2195])).

cnf(c_2303,plain,
    ( ~ r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7))
    | ~ m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5))
    | ~ m1_subset_1(sK6,u1_struct_0(sK5))
    | k1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7) ),
    inference(instantiation,[status(thm)],[c_1901])).

cnf(c_4130,plain,
    ( k1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3015,c_33,c_32,c_31,c_30,c_29,c_934,c_1956,c_2303])).

cnf(c_2486,plain,
    ( k2_lattices(sK5,sK6,k1_lattices(sK5,sK6,X0_56)) = sK6
    | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2185,c_2192])).

cnf(c_2580,plain,
    ( k2_lattices(sK5,sK6,k1_lattices(sK5,sK6,k15_lattice3(sK5,X0_57))) = sK6 ),
    inference(superposition,[status(thm)],[c_2196,c_2486])).

cnf(c_4134,plain,
    ( k2_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = sK6 ),
    inference(superposition,[status(thm)],[c_4130,c_2580])).

cnf(c_5545,plain,
    ( k15_lattice3(sK5,sK7) = sK6 ),
    inference(light_normalisation,[status(thm)],[c_4664,c_4134])).

cnf(c_26,negated_conjecture,
    ( k15_lattice3(sK5,sK7) != sK6 ),
    inference(cnf_transformation,[],[f88])).

cnf(c_1913,negated_conjecture,
    ( k15_lattice3(sK5,sK7) != sK6 ),
    inference(subtyping,[status(esa)],[c_26])).

cnf(c_5547,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5545,c_1913])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n011.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:38:12 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.75/1.05  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.75/1.05  
% 2.75/1.05  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.75/1.05  
% 2.75/1.05  ------  iProver source info
% 2.75/1.05  
% 2.75/1.05  git: date: 2020-06-30 10:37:57 +0100
% 2.75/1.05  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.75/1.05  git: non_committed_changes: false
% 2.75/1.05  git: last_make_outside_of_git: false
% 2.75/1.05  
% 2.75/1.05  ------ 
% 2.75/1.05  
% 2.75/1.05  ------ Input Options
% 2.75/1.05  
% 2.75/1.05  --out_options                           all
% 2.75/1.05  --tptp_safe_out                         true
% 2.75/1.05  --problem_path                          ""
% 2.75/1.05  --include_path                          ""
% 2.75/1.05  --clausifier                            res/vclausify_rel
% 2.75/1.05  --clausifier_options                    --mode clausify
% 2.75/1.05  --stdin                                 false
% 2.75/1.05  --stats_out                             all
% 2.75/1.05  
% 2.75/1.05  ------ General Options
% 2.75/1.05  
% 2.75/1.05  --fof                                   false
% 2.75/1.05  --time_out_real                         305.
% 2.75/1.05  --time_out_virtual                      -1.
% 2.75/1.05  --symbol_type_check                     false
% 2.75/1.05  --clausify_out                          false
% 2.75/1.05  --sig_cnt_out                           false
% 2.75/1.05  --trig_cnt_out                          false
% 2.75/1.05  --trig_cnt_out_tolerance                1.
% 2.75/1.05  --trig_cnt_out_sk_spl                   false
% 2.75/1.05  --abstr_cl_out                          false
% 2.75/1.05  
% 2.75/1.05  ------ Global Options
% 2.75/1.05  
% 2.75/1.05  --schedule                              default
% 2.75/1.05  --add_important_lit                     false
% 2.75/1.05  --prop_solver_per_cl                    1000
% 2.75/1.05  --min_unsat_core                        false
% 2.75/1.05  --soft_assumptions                      false
% 2.75/1.05  --soft_lemma_size                       3
% 2.75/1.05  --prop_impl_unit_size                   0
% 2.75/1.05  --prop_impl_unit                        []
% 2.75/1.05  --share_sel_clauses                     true
% 2.75/1.05  --reset_solvers                         false
% 2.75/1.05  --bc_imp_inh                            [conj_cone]
% 2.75/1.05  --conj_cone_tolerance                   3.
% 2.75/1.05  --extra_neg_conj                        none
% 2.75/1.05  --large_theory_mode                     true
% 2.75/1.05  --prolific_symb_bound                   200
% 2.75/1.05  --lt_threshold                          2000
% 2.75/1.05  --clause_weak_htbl                      true
% 2.75/1.05  --gc_record_bc_elim                     false
% 2.75/1.05  
% 2.75/1.05  ------ Preprocessing Options
% 2.75/1.05  
% 2.75/1.05  --preprocessing_flag                    true
% 2.75/1.05  --time_out_prep_mult                    0.1
% 2.75/1.05  --splitting_mode                        input
% 2.75/1.05  --splitting_grd                         true
% 2.75/1.05  --splitting_cvd                         false
% 2.75/1.05  --splitting_cvd_svl                     false
% 2.75/1.05  --splitting_nvd                         32
% 2.75/1.05  --sub_typing                            true
% 2.75/1.05  --prep_gs_sim                           true
% 2.75/1.05  --prep_unflatten                        true
% 2.75/1.05  --prep_res_sim                          true
% 2.75/1.05  --prep_upred                            true
% 2.75/1.05  --prep_sem_filter                       exhaustive
% 2.75/1.05  --prep_sem_filter_out                   false
% 2.75/1.05  --pred_elim                             true
% 2.75/1.05  --res_sim_input                         true
% 2.75/1.05  --eq_ax_congr_red                       true
% 2.75/1.05  --pure_diseq_elim                       true
% 2.75/1.05  --brand_transform                       false
% 2.75/1.05  --non_eq_to_eq                          false
% 2.75/1.05  --prep_def_merge                        true
% 2.75/1.05  --prep_def_merge_prop_impl              false
% 2.75/1.05  --prep_def_merge_mbd                    true
% 2.75/1.05  --prep_def_merge_tr_red                 false
% 2.75/1.05  --prep_def_merge_tr_cl                  false
% 2.75/1.05  --smt_preprocessing                     true
% 2.75/1.05  --smt_ac_axioms                         fast
% 2.75/1.05  --preprocessed_out                      false
% 2.75/1.05  --preprocessed_stats                    false
% 2.75/1.05  
% 2.75/1.05  ------ Abstraction refinement Options
% 2.75/1.05  
% 2.75/1.05  --abstr_ref                             []
% 2.75/1.05  --abstr_ref_prep                        false
% 2.75/1.05  --abstr_ref_until_sat                   false
% 2.75/1.05  --abstr_ref_sig_restrict                funpre
% 2.75/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 2.75/1.05  --abstr_ref_under                       []
% 2.75/1.05  
% 2.75/1.05  ------ SAT Options
% 2.75/1.05  
% 2.75/1.05  --sat_mode                              false
% 2.75/1.05  --sat_fm_restart_options                ""
% 2.75/1.05  --sat_gr_def                            false
% 2.75/1.05  --sat_epr_types                         true
% 2.75/1.05  --sat_non_cyclic_types                  false
% 2.75/1.05  --sat_finite_models                     false
% 2.75/1.05  --sat_fm_lemmas                         false
% 2.75/1.05  --sat_fm_prep                           false
% 2.75/1.05  --sat_fm_uc_incr                        true
% 2.75/1.05  --sat_out_model                         small
% 2.75/1.05  --sat_out_clauses                       false
% 2.75/1.05  
% 2.75/1.05  ------ QBF Options
% 2.75/1.05  
% 2.75/1.05  --qbf_mode                              false
% 2.75/1.05  --qbf_elim_univ                         false
% 2.75/1.05  --qbf_dom_inst                          none
% 2.75/1.05  --qbf_dom_pre_inst                      false
% 2.75/1.05  --qbf_sk_in                             false
% 2.75/1.05  --qbf_pred_elim                         true
% 2.75/1.05  --qbf_split                             512
% 2.75/1.05  
% 2.75/1.05  ------ BMC1 Options
% 2.75/1.05  
% 2.75/1.05  --bmc1_incremental                      false
% 2.75/1.05  --bmc1_axioms                           reachable_all
% 2.75/1.05  --bmc1_min_bound                        0
% 2.75/1.05  --bmc1_max_bound                        -1
% 2.75/1.05  --bmc1_max_bound_default                -1
% 2.75/1.05  --bmc1_symbol_reachability              true
% 2.75/1.05  --bmc1_property_lemmas                  false
% 2.75/1.05  --bmc1_k_induction                      false
% 2.75/1.05  --bmc1_non_equiv_states                 false
% 2.75/1.05  --bmc1_deadlock                         false
% 2.75/1.05  --bmc1_ucm                              false
% 2.75/1.05  --bmc1_add_unsat_core                   none
% 2.75/1.05  --bmc1_unsat_core_children              false
% 2.75/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 2.75/1.05  --bmc1_out_stat                         full
% 2.75/1.05  --bmc1_ground_init                      false
% 2.75/1.05  --bmc1_pre_inst_next_state              false
% 2.75/1.05  --bmc1_pre_inst_state                   false
% 2.75/1.05  --bmc1_pre_inst_reach_state             false
% 2.75/1.05  --bmc1_out_unsat_core                   false
% 2.75/1.05  --bmc1_aig_witness_out                  false
% 2.75/1.05  --bmc1_verbose                          false
% 2.75/1.05  --bmc1_dump_clauses_tptp                false
% 2.75/1.05  --bmc1_dump_unsat_core_tptp             false
% 2.75/1.05  --bmc1_dump_file                        -
% 2.75/1.05  --bmc1_ucm_expand_uc_limit              128
% 2.75/1.05  --bmc1_ucm_n_expand_iterations          6
% 2.75/1.05  --bmc1_ucm_extend_mode                  1
% 2.75/1.05  --bmc1_ucm_init_mode                    2
% 2.75/1.05  --bmc1_ucm_cone_mode                    none
% 2.75/1.05  --bmc1_ucm_reduced_relation_type        0
% 2.75/1.05  --bmc1_ucm_relax_model                  4
% 2.75/1.05  --bmc1_ucm_full_tr_after_sat            true
% 2.75/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 2.75/1.05  --bmc1_ucm_layered_model                none
% 2.75/1.05  --bmc1_ucm_max_lemma_size               10
% 2.75/1.05  
% 2.75/1.05  ------ AIG Options
% 2.75/1.05  
% 2.75/1.05  --aig_mode                              false
% 2.75/1.05  
% 2.75/1.05  ------ Instantiation Options
% 2.75/1.05  
% 2.75/1.05  --instantiation_flag                    true
% 2.75/1.05  --inst_sos_flag                         false
% 2.75/1.05  --inst_sos_phase                        true
% 2.75/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.75/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.75/1.05  --inst_lit_sel_side                     num_symb
% 2.75/1.05  --inst_solver_per_active                1400
% 2.75/1.05  --inst_solver_calls_frac                1.
% 2.75/1.05  --inst_passive_queue_type               priority_queues
% 2.75/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.75/1.05  --inst_passive_queues_freq              [25;2]
% 2.75/1.05  --inst_dismatching                      true
% 2.75/1.05  --inst_eager_unprocessed_to_passive     true
% 2.75/1.05  --inst_prop_sim_given                   true
% 2.75/1.05  --inst_prop_sim_new                     false
% 2.75/1.05  --inst_subs_new                         false
% 2.75/1.05  --inst_eq_res_simp                      false
% 2.75/1.05  --inst_subs_given                       false
% 2.75/1.05  --inst_orphan_elimination               true
% 2.75/1.05  --inst_learning_loop_flag               true
% 2.75/1.05  --inst_learning_start                   3000
% 2.75/1.05  --inst_learning_factor                  2
% 2.75/1.05  --inst_start_prop_sim_after_learn       3
% 2.75/1.05  --inst_sel_renew                        solver
% 2.75/1.05  --inst_lit_activity_flag                true
% 2.75/1.05  --inst_restr_to_given                   false
% 2.75/1.05  --inst_activity_threshold               500
% 2.75/1.05  --inst_out_proof                        true
% 2.75/1.05  
% 2.75/1.05  ------ Resolution Options
% 2.75/1.05  
% 2.75/1.05  --resolution_flag                       true
% 2.75/1.05  --res_lit_sel                           adaptive
% 2.75/1.05  --res_lit_sel_side                      none
% 2.75/1.05  --res_ordering                          kbo
% 2.75/1.05  --res_to_prop_solver                    active
% 2.75/1.05  --res_prop_simpl_new                    false
% 2.75/1.05  --res_prop_simpl_given                  true
% 2.75/1.05  --res_passive_queue_type                priority_queues
% 2.75/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.75/1.05  --res_passive_queues_freq               [15;5]
% 2.75/1.05  --res_forward_subs                      full
% 2.75/1.05  --res_backward_subs                     full
% 2.75/1.05  --res_forward_subs_resolution           true
% 2.75/1.05  --res_backward_subs_resolution          true
% 2.75/1.05  --res_orphan_elimination                true
% 2.75/1.05  --res_time_limit                        2.
% 2.75/1.05  --res_out_proof                         true
% 2.75/1.05  
% 2.75/1.05  ------ Superposition Options
% 2.75/1.05  
% 2.75/1.05  --superposition_flag                    true
% 2.75/1.05  --sup_passive_queue_type                priority_queues
% 2.75/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.75/1.05  --sup_passive_queues_freq               [8;1;4]
% 2.75/1.05  --demod_completeness_check              fast
% 2.75/1.05  --demod_use_ground                      true
% 2.75/1.05  --sup_to_prop_solver                    passive
% 2.75/1.05  --sup_prop_simpl_new                    true
% 2.75/1.05  --sup_prop_simpl_given                  true
% 2.75/1.05  --sup_fun_splitting                     false
% 2.75/1.05  --sup_smt_interval                      50000
% 2.75/1.05  
% 2.75/1.05  ------ Superposition Simplification Setup
% 2.75/1.05  
% 2.75/1.05  --sup_indices_passive                   []
% 2.75/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.75/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.75/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.75/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 2.75/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.75/1.05  --sup_full_bw                           [BwDemod]
% 2.75/1.05  --sup_immed_triv                        [TrivRules]
% 2.75/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.75/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.75/1.05  --sup_immed_bw_main                     []
% 2.75/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.75/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 2.75/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.75/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.75/1.05  
% 2.75/1.05  ------ Combination Options
% 2.75/1.05  
% 2.75/1.05  --comb_res_mult                         3
% 2.75/1.05  --comb_sup_mult                         2
% 2.75/1.05  --comb_inst_mult                        10
% 2.75/1.05  
% 2.75/1.05  ------ Debug Options
% 2.75/1.05  
% 2.75/1.05  --dbg_backtrace                         false
% 2.75/1.05  --dbg_dump_prop_clauses                 false
% 2.75/1.05  --dbg_dump_prop_clauses_file            -
% 2.75/1.05  --dbg_out_stat                          false
% 2.75/1.05  ------ Parsing...
% 2.75/1.05  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.75/1.05  
% 2.75/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 2.75/1.05  
% 2.75/1.05  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.75/1.05  
% 2.75/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.75/1.05  ------ Proving...
% 2.75/1.05  ------ Problem Properties 
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  clauses                                 15
% 2.75/1.05  conjectures                             3
% 2.75/1.05  EPR                                     1
% 2.75/1.05  Horn                                    13
% 2.75/1.05  unary                                   6
% 2.75/1.05  binary                                  1
% 2.75/1.05  lits                                    37
% 2.75/1.05  lits eq                                 8
% 2.75/1.05  fd_pure                                 0
% 2.75/1.05  fd_pseudo                               0
% 2.75/1.05  fd_cond                                 0
% 2.75/1.05  fd_pseudo_cond                          3
% 2.75/1.05  AC symbols                              0
% 2.75/1.05  
% 2.75/1.05  ------ Schedule dynamic 5 is on 
% 2.75/1.05  
% 2.75/1.05  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  ------ 
% 2.75/1.05  Current options:
% 2.75/1.05  ------ 
% 2.75/1.05  
% 2.75/1.05  ------ Input Options
% 2.75/1.05  
% 2.75/1.05  --out_options                           all
% 2.75/1.05  --tptp_safe_out                         true
% 2.75/1.05  --problem_path                          ""
% 2.75/1.05  --include_path                          ""
% 2.75/1.05  --clausifier                            res/vclausify_rel
% 2.75/1.05  --clausifier_options                    --mode clausify
% 2.75/1.05  --stdin                                 false
% 2.75/1.05  --stats_out                             all
% 2.75/1.05  
% 2.75/1.05  ------ General Options
% 2.75/1.05  
% 2.75/1.05  --fof                                   false
% 2.75/1.05  --time_out_real                         305.
% 2.75/1.05  --time_out_virtual                      -1.
% 2.75/1.05  --symbol_type_check                     false
% 2.75/1.05  --clausify_out                          false
% 2.75/1.05  --sig_cnt_out                           false
% 2.75/1.05  --trig_cnt_out                          false
% 2.75/1.05  --trig_cnt_out_tolerance                1.
% 2.75/1.05  --trig_cnt_out_sk_spl                   false
% 2.75/1.05  --abstr_cl_out                          false
% 2.75/1.05  
% 2.75/1.05  ------ Global Options
% 2.75/1.05  
% 2.75/1.05  --schedule                              default
% 2.75/1.05  --add_important_lit                     false
% 2.75/1.05  --prop_solver_per_cl                    1000
% 2.75/1.05  --min_unsat_core                        false
% 2.75/1.05  --soft_assumptions                      false
% 2.75/1.05  --soft_lemma_size                       3
% 2.75/1.05  --prop_impl_unit_size                   0
% 2.75/1.05  --prop_impl_unit                        []
% 2.75/1.05  --share_sel_clauses                     true
% 2.75/1.05  --reset_solvers                         false
% 2.75/1.05  --bc_imp_inh                            [conj_cone]
% 2.75/1.05  --conj_cone_tolerance                   3.
% 2.75/1.05  --extra_neg_conj                        none
% 2.75/1.05  --large_theory_mode                     true
% 2.75/1.05  --prolific_symb_bound                   200
% 2.75/1.05  --lt_threshold                          2000
% 2.75/1.05  --clause_weak_htbl                      true
% 2.75/1.05  --gc_record_bc_elim                     false
% 2.75/1.05  
% 2.75/1.05  ------ Preprocessing Options
% 2.75/1.05  
% 2.75/1.05  --preprocessing_flag                    true
% 2.75/1.05  --time_out_prep_mult                    0.1
% 2.75/1.05  --splitting_mode                        input
% 2.75/1.05  --splitting_grd                         true
% 2.75/1.05  --splitting_cvd                         false
% 2.75/1.05  --splitting_cvd_svl                     false
% 2.75/1.05  --splitting_nvd                         32
% 2.75/1.05  --sub_typing                            true
% 2.75/1.05  --prep_gs_sim                           true
% 2.75/1.05  --prep_unflatten                        true
% 2.75/1.05  --prep_res_sim                          true
% 2.75/1.05  --prep_upred                            true
% 2.75/1.05  --prep_sem_filter                       exhaustive
% 2.75/1.05  --prep_sem_filter_out                   false
% 2.75/1.05  --pred_elim                             true
% 2.75/1.05  --res_sim_input                         true
% 2.75/1.05  --eq_ax_congr_red                       true
% 2.75/1.05  --pure_diseq_elim                       true
% 2.75/1.05  --brand_transform                       false
% 2.75/1.05  --non_eq_to_eq                          false
% 2.75/1.05  --prep_def_merge                        true
% 2.75/1.05  --prep_def_merge_prop_impl              false
% 2.75/1.05  --prep_def_merge_mbd                    true
% 2.75/1.05  --prep_def_merge_tr_red                 false
% 2.75/1.05  --prep_def_merge_tr_cl                  false
% 2.75/1.05  --smt_preprocessing                     true
% 2.75/1.05  --smt_ac_axioms                         fast
% 2.75/1.05  --preprocessed_out                      false
% 2.75/1.05  --preprocessed_stats                    false
% 2.75/1.05  
% 2.75/1.05  ------ Abstraction refinement Options
% 2.75/1.05  
% 2.75/1.05  --abstr_ref                             []
% 2.75/1.05  --abstr_ref_prep                        false
% 2.75/1.05  --abstr_ref_until_sat                   false
% 2.75/1.05  --abstr_ref_sig_restrict                funpre
% 2.75/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 2.75/1.05  --abstr_ref_under                       []
% 2.75/1.05  
% 2.75/1.05  ------ SAT Options
% 2.75/1.05  
% 2.75/1.05  --sat_mode                              false
% 2.75/1.05  --sat_fm_restart_options                ""
% 2.75/1.05  --sat_gr_def                            false
% 2.75/1.05  --sat_epr_types                         true
% 2.75/1.05  --sat_non_cyclic_types                  false
% 2.75/1.05  --sat_finite_models                     false
% 2.75/1.05  --sat_fm_lemmas                         false
% 2.75/1.05  --sat_fm_prep                           false
% 2.75/1.05  --sat_fm_uc_incr                        true
% 2.75/1.05  --sat_out_model                         small
% 2.75/1.05  --sat_out_clauses                       false
% 2.75/1.05  
% 2.75/1.05  ------ QBF Options
% 2.75/1.05  
% 2.75/1.05  --qbf_mode                              false
% 2.75/1.05  --qbf_elim_univ                         false
% 2.75/1.05  --qbf_dom_inst                          none
% 2.75/1.05  --qbf_dom_pre_inst                      false
% 2.75/1.05  --qbf_sk_in                             false
% 2.75/1.05  --qbf_pred_elim                         true
% 2.75/1.05  --qbf_split                             512
% 2.75/1.05  
% 2.75/1.05  ------ BMC1 Options
% 2.75/1.05  
% 2.75/1.05  --bmc1_incremental                      false
% 2.75/1.05  --bmc1_axioms                           reachable_all
% 2.75/1.05  --bmc1_min_bound                        0
% 2.75/1.05  --bmc1_max_bound                        -1
% 2.75/1.05  --bmc1_max_bound_default                -1
% 2.75/1.05  --bmc1_symbol_reachability              true
% 2.75/1.05  --bmc1_property_lemmas                  false
% 2.75/1.05  --bmc1_k_induction                      false
% 2.75/1.05  --bmc1_non_equiv_states                 false
% 2.75/1.05  --bmc1_deadlock                         false
% 2.75/1.05  --bmc1_ucm                              false
% 2.75/1.05  --bmc1_add_unsat_core                   none
% 2.75/1.05  --bmc1_unsat_core_children              false
% 2.75/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 2.75/1.05  --bmc1_out_stat                         full
% 2.75/1.05  --bmc1_ground_init                      false
% 2.75/1.05  --bmc1_pre_inst_next_state              false
% 2.75/1.05  --bmc1_pre_inst_state                   false
% 2.75/1.05  --bmc1_pre_inst_reach_state             false
% 2.75/1.05  --bmc1_out_unsat_core                   false
% 2.75/1.05  --bmc1_aig_witness_out                  false
% 2.75/1.05  --bmc1_verbose                          false
% 2.75/1.05  --bmc1_dump_clauses_tptp                false
% 2.75/1.05  --bmc1_dump_unsat_core_tptp             false
% 2.75/1.05  --bmc1_dump_file                        -
% 2.75/1.05  --bmc1_ucm_expand_uc_limit              128
% 2.75/1.05  --bmc1_ucm_n_expand_iterations          6
% 2.75/1.05  --bmc1_ucm_extend_mode                  1
% 2.75/1.05  --bmc1_ucm_init_mode                    2
% 2.75/1.05  --bmc1_ucm_cone_mode                    none
% 2.75/1.05  --bmc1_ucm_reduced_relation_type        0
% 2.75/1.05  --bmc1_ucm_relax_model                  4
% 2.75/1.05  --bmc1_ucm_full_tr_after_sat            true
% 2.75/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 2.75/1.05  --bmc1_ucm_layered_model                none
% 2.75/1.05  --bmc1_ucm_max_lemma_size               10
% 2.75/1.05  
% 2.75/1.05  ------ AIG Options
% 2.75/1.05  
% 2.75/1.05  --aig_mode                              false
% 2.75/1.05  
% 2.75/1.05  ------ Instantiation Options
% 2.75/1.05  
% 2.75/1.05  --instantiation_flag                    true
% 2.75/1.05  --inst_sos_flag                         false
% 2.75/1.05  --inst_sos_phase                        true
% 2.75/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.75/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.75/1.05  --inst_lit_sel_side                     none
% 2.75/1.05  --inst_solver_per_active                1400
% 2.75/1.05  --inst_solver_calls_frac                1.
% 2.75/1.05  --inst_passive_queue_type               priority_queues
% 2.75/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.75/1.05  --inst_passive_queues_freq              [25;2]
% 2.75/1.05  --inst_dismatching                      true
% 2.75/1.05  --inst_eager_unprocessed_to_passive     true
% 2.75/1.05  --inst_prop_sim_given                   true
% 2.75/1.05  --inst_prop_sim_new                     false
% 2.75/1.05  --inst_subs_new                         false
% 2.75/1.05  --inst_eq_res_simp                      false
% 2.75/1.05  --inst_subs_given                       false
% 2.75/1.05  --inst_orphan_elimination               true
% 2.75/1.05  --inst_learning_loop_flag               true
% 2.75/1.05  --inst_learning_start                   3000
% 2.75/1.05  --inst_learning_factor                  2
% 2.75/1.05  --inst_start_prop_sim_after_learn       3
% 2.75/1.05  --inst_sel_renew                        solver
% 2.75/1.05  --inst_lit_activity_flag                true
% 2.75/1.05  --inst_restr_to_given                   false
% 2.75/1.05  --inst_activity_threshold               500
% 2.75/1.05  --inst_out_proof                        true
% 2.75/1.05  
% 2.75/1.05  ------ Resolution Options
% 2.75/1.05  
% 2.75/1.05  --resolution_flag                       false
% 2.75/1.05  --res_lit_sel                           adaptive
% 2.75/1.05  --res_lit_sel_side                      none
% 2.75/1.05  --res_ordering                          kbo
% 2.75/1.05  --res_to_prop_solver                    active
% 2.75/1.05  --res_prop_simpl_new                    false
% 2.75/1.05  --res_prop_simpl_given                  true
% 2.75/1.05  --res_passive_queue_type                priority_queues
% 2.75/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.75/1.05  --res_passive_queues_freq               [15;5]
% 2.75/1.05  --res_forward_subs                      full
% 2.75/1.05  --res_backward_subs                     full
% 2.75/1.05  --res_forward_subs_resolution           true
% 2.75/1.05  --res_backward_subs_resolution          true
% 2.75/1.05  --res_orphan_elimination                true
% 2.75/1.05  --res_time_limit                        2.
% 2.75/1.05  --res_out_proof                         true
% 2.75/1.05  
% 2.75/1.05  ------ Superposition Options
% 2.75/1.05  
% 2.75/1.05  --superposition_flag                    true
% 2.75/1.05  --sup_passive_queue_type                priority_queues
% 2.75/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.75/1.05  --sup_passive_queues_freq               [8;1;4]
% 2.75/1.05  --demod_completeness_check              fast
% 2.75/1.05  --demod_use_ground                      true
% 2.75/1.05  --sup_to_prop_solver                    passive
% 2.75/1.05  --sup_prop_simpl_new                    true
% 2.75/1.05  --sup_prop_simpl_given                  true
% 2.75/1.05  --sup_fun_splitting                     false
% 2.75/1.05  --sup_smt_interval                      50000
% 2.75/1.05  
% 2.75/1.05  ------ Superposition Simplification Setup
% 2.75/1.05  
% 2.75/1.05  --sup_indices_passive                   []
% 2.75/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.75/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.75/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.75/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 2.75/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.75/1.05  --sup_full_bw                           [BwDemod]
% 2.75/1.05  --sup_immed_triv                        [TrivRules]
% 2.75/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.75/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.75/1.05  --sup_immed_bw_main                     []
% 2.75/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.75/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 2.75/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.75/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.75/1.05  
% 2.75/1.05  ------ Combination Options
% 2.75/1.05  
% 2.75/1.05  --comb_res_mult                         3
% 2.75/1.05  --comb_sup_mult                         2
% 2.75/1.05  --comb_inst_mult                        10
% 2.75/1.05  
% 2.75/1.05  ------ Debug Options
% 2.75/1.05  
% 2.75/1.05  --dbg_backtrace                         false
% 2.75/1.05  --dbg_dump_prop_clauses                 false
% 2.75/1.05  --dbg_dump_prop_clauses_file            -
% 2.75/1.05  --dbg_out_stat                          false
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  ------ Proving...
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  % SZS status Theorem for theBenchmark.p
% 2.75/1.05  
% 2.75/1.05   Resolution empty clause
% 2.75/1.05  
% 2.75/1.05  % SZS output start CNFRefutation for theBenchmark.p
% 2.75/1.05  
% 2.75/1.05  fof(f8,axiom,(
% 2.75/1.05    ! [X0,X1] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0)))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f28,plain,(
% 2.75/1.05    ! [X0,X1] : (m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0)) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f8])).
% 2.75/1.05  
% 2.75/1.05  fof(f29,plain,(
% 2.75/1.05    ! [X0,X1] : (m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0)) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f28])).
% 2.75/1.05  
% 2.75/1.05  fof(f78,plain,(
% 2.75/1.05    ( ! [X0,X1] : (m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0)) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f29])).
% 2.75/1.05  
% 2.75/1.05  fof(f10,conjecture,(
% 2.75/1.05    ! [X0] : ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : ((r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2)) => k15_lattice3(X0,X2) = X1)))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f11,negated_conjecture,(
% 2.75/1.05    ~! [X0] : ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : ((r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2)) => k15_lattice3(X0,X2) = X1)))),
% 2.75/1.05    inference(negated_conjecture,[],[f10])).
% 2.75/1.05  
% 2.75/1.05  fof(f32,plain,(
% 2.75/1.05    ? [X0] : (? [X1] : (? [X2] : (k15_lattice3(X0,X2) != X1 & (r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2))) & m1_subset_1(X1,u1_struct_0(X0))) & (l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f11])).
% 2.75/1.05  
% 2.75/1.05  fof(f33,plain,(
% 2.75/1.05    ? [X0] : (? [X1] : (? [X2] : (k15_lattice3(X0,X2) != X1 & r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f32])).
% 2.75/1.05  
% 2.75/1.05  fof(f53,plain,(
% 2.75/1.05    ( ! [X0,X1] : (? [X2] : (k15_lattice3(X0,X2) != X1 & r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2)) => (k15_lattice3(X0,sK7) != X1 & r4_lattice3(X0,X1,sK7) & r2_hidden(X1,sK7))) )),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f52,plain,(
% 2.75/1.05    ( ! [X0] : (? [X1] : (? [X2] : (k15_lattice3(X0,X2) != X1 & r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (k15_lattice3(X0,X2) != sK6 & r4_lattice3(X0,sK6,X2) & r2_hidden(sK6,X2)) & m1_subset_1(sK6,u1_struct_0(X0)))) )),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f51,plain,(
% 2.75/1.05    ? [X0] : (? [X1] : (? [X2] : (k15_lattice3(X0,X2) != X1 & r4_lattice3(X0,X1,X2) & r2_hidden(X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (k15_lattice3(sK5,X2) != X1 & r4_lattice3(sK5,X1,X2) & r2_hidden(X1,X2)) & m1_subset_1(X1,u1_struct_0(sK5))) & l3_lattices(sK5) & v4_lattice3(sK5) & v10_lattices(sK5) & ~v2_struct_0(sK5))),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f54,plain,(
% 2.75/1.05    ((k15_lattice3(sK5,sK7) != sK6 & r4_lattice3(sK5,sK6,sK7) & r2_hidden(sK6,sK7)) & m1_subset_1(sK6,u1_struct_0(sK5))) & l3_lattices(sK5) & v4_lattice3(sK5) & v10_lattices(sK5) & ~v2_struct_0(sK5)),
% 2.75/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7])],[f33,f53,f52,f51])).
% 2.75/1.05  
% 2.75/1.05  fof(f81,plain,(
% 2.75/1.05    ~v2_struct_0(sK5)),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f84,plain,(
% 2.75/1.05    l3_lattices(sK5)),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f85,plain,(
% 2.75/1.05    m1_subset_1(sK6,u1_struct_0(sK5))),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f4,axiom,(
% 2.75/1.05    ! [X0] : (l3_lattices(X0) => (l2_lattices(X0) & l1_lattices(X0)))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f21,plain,(
% 2.75/1.05    ! [X0] : ((l2_lattices(X0) & l1_lattices(X0)) | ~l3_lattices(X0))),
% 2.75/1.05    inference(ennf_transformation,[],[f4])).
% 2.75/1.05  
% 2.75/1.05  fof(f65,plain,(
% 2.75/1.05    ( ! [X0] : (l1_lattices(X0) | ~l3_lattices(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f21])).
% 2.75/1.05  
% 2.75/1.05  fof(f7,axiom,(
% 2.75/1.05    ! [X0] : ((l1_lattices(X0) & ~v2_struct_0(X0)) => (v6_lattices(X0) <=> ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1)))))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f26,plain,(
% 2.75/1.05    ! [X0] : ((v6_lattices(X0) <=> ! [X1] : (! [X2] : (k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)))) | (~l1_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f7])).
% 2.75/1.05  
% 2.75/1.05  fof(f27,plain,(
% 2.75/1.05    ! [X0] : ((v6_lattices(X0) <=> ! [X1] : (! [X2] : (k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)))) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f26])).
% 2.75/1.05  
% 2.75/1.05  fof(f46,plain,(
% 2.75/1.05    ! [X0] : (((v6_lattices(X0) | ? [X1] : (? [X2] : (k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0)))) & (! [X1] : (! [X2] : (k2_lattices(X0,X1,X2) = k2_lattices(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v6_lattices(X0))) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(nnf_transformation,[],[f27])).
% 2.75/1.05  
% 2.75/1.05  fof(f47,plain,(
% 2.75/1.05    ! [X0] : (((v6_lattices(X0) | ? [X1] : (? [X2] : (k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0)))) & (! [X3] : (! [X4] : (k2_lattices(X0,X3,X4) = k2_lattices(X0,X4,X3) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~v6_lattices(X0))) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(rectify,[],[f46])).
% 2.75/1.05  
% 2.75/1.05  fof(f49,plain,(
% 2.75/1.05    ( ! [X1] : (! [X0] : (? [X2] : (k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0))) => (k2_lattices(X0,X1,sK4(X0)) != k2_lattices(X0,sK4(X0),X1) & m1_subset_1(sK4(X0),u1_struct_0(X0))))) )),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f48,plain,(
% 2.75/1.05    ! [X0] : (? [X1] : (? [X2] : (k2_lattices(X0,X1,X2) != k2_lattices(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (k2_lattices(X0,X2,sK3(X0)) != k2_lattices(X0,sK3(X0),X2) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(sK3(X0),u1_struct_0(X0))))),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f50,plain,(
% 2.75/1.05    ! [X0] : (((v6_lattices(X0) | ((k2_lattices(X0,sK3(X0),sK4(X0)) != k2_lattices(X0,sK4(X0),sK3(X0)) & m1_subset_1(sK4(X0),u1_struct_0(X0))) & m1_subset_1(sK3(X0),u1_struct_0(X0)))) & (! [X3] : (! [X4] : (k2_lattices(X0,X3,X4) = k2_lattices(X0,X4,X3) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~v6_lattices(X0))) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f47,f49,f48])).
% 2.75/1.05  
% 2.75/1.05  fof(f74,plain,(
% 2.75/1.05    ( ! [X4,X0,X3] : (k2_lattices(X0,X3,X4) = k2_lattices(X0,X4,X3) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v6_lattices(X0) | ~l1_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f50])).
% 2.75/1.05  
% 2.75/1.05  fof(f1,axiom,(
% 2.75/1.05    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v7_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f12,plain,(
% 2.75/1.05    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 2.75/1.05    inference(pure_predicate_removal,[],[f1])).
% 2.75/1.05  
% 2.75/1.05  fof(f13,plain,(
% 2.75/1.05    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 2.75/1.05    inference(pure_predicate_removal,[],[f12])).
% 2.75/1.05  
% 2.75/1.05  fof(f14,plain,(
% 2.75/1.05    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0))))),
% 2.75/1.05    inference(pure_predicate_removal,[],[f13])).
% 2.75/1.05  
% 2.75/1.05  fof(f15,plain,(
% 2.75/1.05    ! [X0] : (((v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) | (~v10_lattices(X0) | v2_struct_0(X0))) | ~l3_lattices(X0))),
% 2.75/1.05    inference(ennf_transformation,[],[f14])).
% 2.75/1.05  
% 2.75/1.05  fof(f16,plain,(
% 2.75/1.05    ! [X0] : ((v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0))),
% 2.75/1.05    inference(flattening,[],[f15])).
% 2.75/1.05  
% 2.75/1.05  fof(f56,plain,(
% 2.75/1.05    ( ! [X0] : (v6_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f16])).
% 2.75/1.05  
% 2.75/1.05  fof(f82,plain,(
% 2.75/1.05    v10_lattices(sK5)),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f87,plain,(
% 2.75/1.05    r4_lattice3(sK5,sK6,sK7)),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f6,axiom,(
% 2.75/1.05    ! [X0] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1,X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k15_lattice3(X0,X1) = X2 <=> (! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r4_lattice3(X0,X3,X1) => r1_lattices(X0,X2,X3))) & r4_lattice3(X0,X2,X1))))))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f24,plain,(
% 2.75/1.05    ! [X0] : ((! [X1,X2] : ((k15_lattice3(X0,X1) = X2 <=> (! [X3] : ((r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1))) | ~m1_subset_1(X2,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f6])).
% 2.75/1.05  
% 2.75/1.05  fof(f25,plain,(
% 2.75/1.05    ! [X0] : (! [X1,X2] : ((k15_lattice3(X0,X1) = X2 <=> (! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f24])).
% 2.75/1.05  
% 2.75/1.05  fof(f41,plain,(
% 2.75/1.05    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1))) & ((! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(nnf_transformation,[],[f25])).
% 2.75/1.05  
% 2.75/1.05  fof(f42,plain,(
% 2.75/1.05    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | ? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1)) & ((! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f41])).
% 2.75/1.05  
% 2.75/1.05  fof(f43,plain,(
% 2.75/1.05    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | ? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1)) & ((! [X4] : (r1_lattices(X0,X2,X4) | ~r4_lattice3(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(rectify,[],[f42])).
% 2.75/1.05  
% 2.75/1.05  fof(f44,plain,(
% 2.75/1.05    ! [X2,X1,X0] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_lattices(X0,X2,sK2(X0,X1,X2)) & r4_lattice3(X0,sK2(X0,X1,X2),X1) & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X0))))),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f45,plain,(
% 2.75/1.05    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | (~r1_lattices(X0,X2,sK2(X0,X1,X2)) & r4_lattice3(X0,sK2(X0,X1,X2),X1) & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1)) & ((! [X4] : (r1_lattices(X0,X2,X4) | ~r4_lattice3(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f43,f44])).
% 2.75/1.05  
% 2.75/1.05  fof(f70,plain,(
% 2.75/1.05    ( ! [X4,X2,X0,X1] : (r1_lattices(X0,X2,X4) | ~r4_lattice3(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | k15_lattice3(X0,X1) != X2 | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f45])).
% 2.75/1.05  
% 2.75/1.05  fof(f89,plain,(
% 2.75/1.05    ( ! [X4,X0,X1] : (r1_lattices(X0,k15_lattice3(X0,X1),X4) | ~r4_lattice3(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(equality_resolution,[],[f70])).
% 2.75/1.05  
% 2.75/1.05  fof(f83,plain,(
% 2.75/1.05    v4_lattice3(sK5)),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f66,plain,(
% 2.75/1.05    ( ! [X0] : (l2_lattices(X0) | ~l3_lattices(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f21])).
% 2.75/1.05  
% 2.75/1.05  fof(f2,axiom,(
% 2.75/1.05    ! [X0] : ((l2_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2))))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f17,plain,(
% 2.75/1.05    ! [X0] : (! [X1] : (! [X2] : ((r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l2_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f2])).
% 2.75/1.05  
% 2.75/1.05  fof(f18,plain,(
% 2.75/1.05    ! [X0] : (! [X1] : (! [X2] : ((r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l2_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f17])).
% 2.75/1.05  
% 2.75/1.05  fof(f34,plain,(
% 2.75/1.05    ! [X0] : (! [X1] : (! [X2] : (((r1_lattices(X0,X1,X2) | k1_lattices(X0,X1,X2) != X2) & (k1_lattices(X0,X1,X2) = X2 | ~r1_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l2_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(nnf_transformation,[],[f18])).
% 2.75/1.05  
% 2.75/1.05  fof(f59,plain,(
% 2.75/1.05    ( ! [X2,X0,X1] : (k1_lattices(X0,X1,X2) = X2 | ~r1_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f34])).
% 2.75/1.05  
% 2.75/1.05  fof(f3,axiom,(
% 2.75/1.05    ! [X0] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) <=> ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1))))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f19,plain,(
% 2.75/1.05    ! [X0] : ((v9_lattices(X0) <=> ! [X1] : (! [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1 | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)))) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f3])).
% 2.75/1.05  
% 2.75/1.05  fof(f20,plain,(
% 2.75/1.05    ! [X0] : ((v9_lattices(X0) <=> ! [X1] : (! [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1 | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f19])).
% 2.75/1.05  
% 2.75/1.05  fof(f35,plain,(
% 2.75/1.05    ! [X0] : (((v9_lattices(X0) | ? [X1] : (? [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1 & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0)))) & (! [X1] : (! [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1 | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~v9_lattices(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(nnf_transformation,[],[f20])).
% 2.75/1.05  
% 2.75/1.05  fof(f36,plain,(
% 2.75/1.05    ! [X0] : (((v9_lattices(X0) | ? [X1] : (? [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1 & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0)))) & (! [X3] : (! [X4] : (k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3 | ~m1_subset_1(X4,u1_struct_0(X0))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~v9_lattices(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(rectify,[],[f35])).
% 2.75/1.05  
% 2.75/1.05  fof(f38,plain,(
% 2.75/1.05    ( ! [X1] : (! [X0] : (? [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1 & m1_subset_1(X2,u1_struct_0(X0))) => (k2_lattices(X0,X1,k1_lattices(X0,X1,sK1(X0))) != X1 & m1_subset_1(sK1(X0),u1_struct_0(X0))))) )),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f37,plain,(
% 2.75/1.05    ! [X0] : (? [X1] : (? [X2] : (k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1 & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (k2_lattices(X0,sK0(X0),k1_lattices(X0,sK0(X0),X2)) != sK0(X0) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(sK0(X0),u1_struct_0(X0))))),
% 2.75/1.05    introduced(choice_axiom,[])).
% 2.75/1.05  
% 2.75/1.05  fof(f39,plain,(
% 2.75/1.05    ! [X0] : (((v9_lattices(X0) | ((k2_lattices(X0,sK0(X0),k1_lattices(X0,sK0(X0),sK1(X0))) != sK0(X0) & m1_subset_1(sK1(X0),u1_struct_0(X0))) & m1_subset_1(sK0(X0),u1_struct_0(X0)))) & (! [X3] : (! [X4] : (k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3 | ~m1_subset_1(X4,u1_struct_0(X0))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~v9_lattices(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f36,f38,f37])).
% 2.75/1.05  
% 2.75/1.05  fof(f61,plain,(
% 2.75/1.05    ( ! [X4,X0,X3] : (k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3 | ~m1_subset_1(X4,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v9_lattices(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f39])).
% 2.75/1.05  
% 2.75/1.05  fof(f58,plain,(
% 2.75/1.05    ( ! [X0] : (v9_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f16])).
% 2.75/1.05  
% 2.75/1.05  fof(f57,plain,(
% 2.75/1.05    ( ! [X0] : (v8_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f16])).
% 2.75/1.05  
% 2.75/1.05  fof(f5,axiom,(
% 2.75/1.05    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l3_lattices(X0) & v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) => (r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f22,plain,(
% 2.75/1.05    ! [X0,X1,X2] : ((r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f5])).
% 2.75/1.05  
% 2.75/1.05  fof(f23,plain,(
% 2.75/1.05    ! [X0,X1,X2] : ((r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f22])).
% 2.75/1.05  
% 2.75/1.05  fof(f40,plain,(
% 2.75/1.05    ! [X0,X1,X2] : (((r3_lattices(X0,X1,X2) | ~r1_lattices(X0,X1,X2)) & (r1_lattices(X0,X1,X2) | ~r3_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(nnf_transformation,[],[f23])).
% 2.75/1.05  
% 2.75/1.05  fof(f67,plain,(
% 2.75/1.05    ( ! [X2,X0,X1] : (r1_lattices(X0,X1,X2) | ~r3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f40])).
% 2.75/1.05  
% 2.75/1.05  fof(f9,axiom,(
% 2.75/1.05    ! [X0] : ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (r2_hidden(X1,X2) => (r3_lattices(X0,k16_lattice3(X0,X2),X1) & r3_lattices(X0,X1,k15_lattice3(X0,X2))))))),
% 2.75/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.75/1.05  
% 2.75/1.05  fof(f30,plain,(
% 2.75/1.05    ! [X0] : (! [X1] : (! [X2] : ((r3_lattices(X0,k16_lattice3(X0,X2),X1) & r3_lattices(X0,X1,k15_lattice3(X0,X2))) | ~r2_hidden(X1,X2)) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 2.75/1.05    inference(ennf_transformation,[],[f9])).
% 2.75/1.05  
% 2.75/1.05  fof(f31,plain,(
% 2.75/1.05    ! [X0] : (! [X1] : (! [X2] : ((r3_lattices(X0,k16_lattice3(X0,X2),X1) & r3_lattices(X0,X1,k15_lattice3(X0,X2))) | ~r2_hidden(X1,X2)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 2.75/1.05    inference(flattening,[],[f30])).
% 2.75/1.05  
% 2.75/1.05  fof(f79,plain,(
% 2.75/1.05    ( ! [X2,X0,X1] : (r3_lattices(X0,X1,k15_lattice3(X0,X2)) | ~r2_hidden(X1,X2) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 2.75/1.05    inference(cnf_transformation,[],[f31])).
% 2.75/1.05  
% 2.75/1.05  fof(f86,plain,(
% 2.75/1.05    r2_hidden(sK6,sK7)),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  fof(f88,plain,(
% 2.75/1.05    k15_lattice3(sK5,sK7) != sK6),
% 2.75/1.05    inference(cnf_transformation,[],[f54])).
% 2.75/1.05  
% 2.75/1.05  cnf(c_23,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f78]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_33,negated_conjecture,
% 2.75/1.05      ( ~ v2_struct_0(sK5) ),
% 2.75/1.05      inference(cnf_transformation,[],[f81]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1437,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(X0,X1),u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | sK5 != X0 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_23,c_33]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1438,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(sK5,X0),u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1437]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_30,negated_conjecture,
% 2.75/1.05      ( l3_lattices(sK5) ),
% 2.75/1.05      inference(cnf_transformation,[],[f84]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1442,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(sK5,X0),u1_struct_0(sK5)) ),
% 2.75/1.05      inference(global_propositional_subsumption,[status(thm)],[c_1438,c_30]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1900,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_1442]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2196,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) = iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1900]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_29,negated_conjecture,
% 2.75/1.05      ( m1_subset_1(sK6,u1_struct_0(sK5)) ),
% 2.75/1.05      inference(cnf_transformation,[],[f85]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1911,negated_conjecture,
% 2.75/1.05      ( m1_subset_1(sK6,u1_struct_0(sK5)) ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_29]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2185,plain,
% 2.75/1.05      ( m1_subset_1(sK6,u1_struct_0(sK5)) = iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1911]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_11,plain,
% 2.75/1.05      ( l1_lattices(X0) | ~ l3_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f65]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_22,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ l1_lattices(X1)
% 2.75/1.05      | ~ v6_lattices(X1)
% 2.75/1.05      | v2_struct_0(X1)
% 2.75/1.05      | k2_lattices(X1,X0,X2) = k2_lattices(X1,X2,X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f74]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_540,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ v6_lattices(X1)
% 2.75/1.05      | ~ l3_lattices(X3)
% 2.75/1.05      | v2_struct_0(X1)
% 2.75/1.05      | X1 != X3
% 2.75/1.05      | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2) ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_11,c_22]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_541,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ v6_lattices(X1)
% 2.75/1.05      | ~ l3_lattices(X1)
% 2.75/1.05      | v2_struct_0(X1)
% 2.75/1.05      | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_540]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1458,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ v6_lattices(X1)
% 2.75/1.05      | ~ l3_lattices(X1)
% 2.75/1.05      | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2)
% 2.75/1.05      | sK5 != X1 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_541,c_33]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1459,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ v6_lattices(sK5)
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | k2_lattices(sK5,X1,X0) = k2_lattices(sK5,X0,X1) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1458]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2,plain,
% 2.75/1.05      ( v6_lattices(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f56]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_32,negated_conjecture,
% 2.75/1.05      ( v10_lattices(sK5) ),
% 2.75/1.05      inference(cnf_transformation,[],[f82]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1141,plain,
% 2.75/1.05      ( v6_lattices(X0) | ~ l3_lattices(X0) | v2_struct_0(X0) | sK5 != X0 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_2,c_32]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1142,plain,
% 2.75/1.05      ( v6_lattices(sK5) | ~ l3_lattices(sK5) | v2_struct_0(sK5) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1141]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_109,plain,
% 2.75/1.05      ( v6_lattices(sK5)
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | ~ v10_lattices(sK5) ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_2]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1144,plain,
% 2.75/1.05      ( v6_lattices(sK5) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_1142,c_33,c_32,c_30,c_109]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1341,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ l3_lattices(X1)
% 2.75/1.05      | v2_struct_0(X1)
% 2.75/1.05      | k2_lattices(X1,X2,X0) = k2_lattices(X1,X0,X2)
% 2.75/1.05      | sK5 != X1 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_541,c_1144]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1342,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | k2_lattices(sK5,X1,X0) = k2_lattices(sK5,X0,X1) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1341]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1462,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | k2_lattices(sK5,X1,X0) = k2_lattices(sK5,X0,X1) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_1459,c_33,c_30,c_1342]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1463,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | k2_lattices(sK5,X0,X1) = k2_lattices(sK5,X1,X0) ),
% 2.75/1.05      inference(renaming,[status(thm)],[c_1462]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1903,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0_56,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1_56,u1_struct_0(sK5))
% 2.75/1.05      | k2_lattices(sK5,X0_56,X1_56) = k2_lattices(sK5,X1_56,X0_56) ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_1463]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2193,plain,
% 2.75/1.05      ( k2_lattices(sK5,X0_56,X1_56) = k2_lattices(sK5,X1_56,X0_56)
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
% 2.75/1.05      | m1_subset_1(X1_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1903]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2767,plain,
% 2.75/1.05      ( k2_lattices(sK5,X0_56,sK6) = k2_lattices(sK5,sK6,X0_56)
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2185,c_2193]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2896,plain,
% 2.75/1.05      ( k2_lattices(sK5,sK6,k15_lattice3(sK5,X0_57)) = k2_lattices(sK5,k15_lattice3(sK5,X0_57),sK6) ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2196,c_2767]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_27,negated_conjecture,
% 2.75/1.05      ( r4_lattice3(sK5,sK6,sK7) ),
% 2.75/1.05      inference(cnf_transformation,[],[f87]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1912,negated_conjecture,
% 2.75/1.05      ( r4_lattice3(sK5,sK6,sK7) ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_27]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2184,plain,
% 2.75/1.05      ( r4_lattice3(sK5,sK6,sK7) = iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1912]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_17,plain,
% 2.75/1.05      ( ~ r4_lattice3(X0,X1,X2)
% 2.75/1.05      | r1_lattices(X0,k15_lattice3(X0,X2),X1)
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(X0,X2),u1_struct_0(X0))
% 2.75/1.05      | ~ v4_lattice3(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f89]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_31,negated_conjecture,
% 2.75/1.05      ( v4_lattice3(sK5) ),
% 2.75/1.05      inference(cnf_transformation,[],[f83]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1018,plain,
% 2.75/1.05      ( ~ r4_lattice3(X0,X1,X2)
% 2.75/1.05      | r1_lattices(X0,k15_lattice3(X0,X2),X1)
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(X0,X2),u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0)
% 2.75/1.05      | sK5 != X0 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_17,c_31]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1019,plain,
% 2.75/1.05      ( ~ r4_lattice3(sK5,X0,X1)
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(sK5,X1),u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | ~ v10_lattices(sK5) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1018]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1023,plain,
% 2.75/1.05      ( ~ m1_subset_1(k15_lattice3(sK5,X1),u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
% 2.75/1.05      | ~ r4_lattice3(sK5,X0,X1) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_1019,c_33,c_32,c_30]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1024,plain,
% 2.75/1.05      ( ~ r4_lattice3(sK5,X0,X1)
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(sK5,X1),u1_struct_0(sK5)) ),
% 2.75/1.05      inference(renaming,[status(thm)],[c_1023]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1514,plain,
% 2.75/1.05      ( ~ r4_lattice3(sK5,X0,X1)
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,X1),X0)
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5)) ),
% 2.75/1.05      inference(backward_subsumption_resolution,[status(thm)],[c_1442,c_1024]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1899,plain,
% 2.75/1.05      ( ~ r4_lattice3(sK5,X0_56,X0_57)
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56)
% 2.75/1.05      | ~ m1_subset_1(X0_56,u1_struct_0(sK5)) ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_1514]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2197,plain,
% 2.75/1.05      ( r4_lattice3(sK5,X0_56,X0_57) != iProver_top
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = iProver_top
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1899]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_10,plain,
% 2.75/1.05      ( l2_lattices(X0) | ~ l3_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f66]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_5,plain,
% 2.75/1.05      ( ~ r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ l2_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | k1_lattices(X0,X1,X2) = X2 ),
% 2.75/1.05      inference(cnf_transformation,[],[f59]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_367,plain,
% 2.75/1.05      ( ~ r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | k1_lattices(X0,X1,X2) = X2 ),
% 2.75/1.05      inference(resolution,[status(thm)],[c_10,c_5]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1413,plain,
% 2.75/1.05      ( ~ r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | k1_lattices(X0,X1,X2) = X2
% 2.75/1.05      | sK5 != X0 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_367,c_33]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1414,plain,
% 2.75/1.05      ( ~ r1_lattices(sK5,X0,X1)
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | k1_lattices(sK5,X0,X1) = X1 ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1413]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1418,plain,
% 2.75/1.05      ( ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ r1_lattices(sK5,X0,X1)
% 2.75/1.05      | k1_lattices(sK5,X0,X1) = X1 ),
% 2.75/1.05      inference(global_propositional_subsumption,[status(thm)],[c_1414,c_30]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1419,plain,
% 2.75/1.05      ( ~ r1_lattices(sK5,X0,X1)
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | k1_lattices(sK5,X0,X1) = X1 ),
% 2.75/1.05      inference(renaming,[status(thm)],[c_1418]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1901,plain,
% 2.75/1.05      ( ~ r1_lattices(sK5,X0_56,X1_56)
% 2.75/1.05      | ~ m1_subset_1(X0_56,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1_56,u1_struct_0(sK5))
% 2.75/1.05      | k1_lattices(sK5,X0_56,X1_56) = X1_56 ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_1419]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2195,plain,
% 2.75/1.05      ( k1_lattices(sK5,X0_56,X1_56) = X1_56
% 2.75/1.05      | r1_lattices(sK5,X0_56,X1_56) != iProver_top
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
% 2.75/1.05      | m1_subset_1(X1_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1901]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_3342,plain,
% 2.75/1.05      ( k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56
% 2.75/1.05      | r4_lattice3(sK5,X0_56,X0_57) != iProver_top
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
% 2.75/1.05      | m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2197,c_2195]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1955,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5)) = iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1900]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4244,plain,
% 2.75/1.05      ( m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
% 2.75/1.05      | r4_lattice3(sK5,X0_56,X0_57) != iProver_top
% 2.75/1.05      | k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56 ),
% 2.75/1.05      inference(global_propositional_subsumption,[status(thm)],[c_3342,c_1955]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4245,plain,
% 2.75/1.05      ( k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56
% 2.75/1.05      | r4_lattice3(sK5,X0_56,X0_57) != iProver_top
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(renaming,[status(thm)],[c_4244]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4253,plain,
% 2.75/1.05      ( k1_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = sK6
% 2.75/1.05      | m1_subset_1(sK6,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2184,c_4245]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1956,plain,
% 2.75/1.05      ( m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5)) ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_1900]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1959,plain,
% 2.75/1.05      ( ~ r4_lattice3(sK5,sK6,sK7)
% 2.75/1.05      | r1_lattices(sK5,k15_lattice3(sK5,sK7),sK6)
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(sK5)) ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_1899]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2309,plain,
% 2.75/1.05      ( ~ r1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56)
% 2.75/1.05      | ~ m1_subset_1(X0_56,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(sK5,X0_57),u1_struct_0(sK5))
% 2.75/1.05      | k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56) = X0_56 ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_1901]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2311,plain,
% 2.75/1.05      ( ~ r1_lattices(sK5,k15_lattice3(sK5,sK7),sK6)
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(sK5))
% 2.75/1.05      | k1_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = sK6 ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_2309]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4282,plain,
% 2.75/1.05      ( k1_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = sK6 ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_4253,c_29,c_27,c_1956,c_1959,c_2311]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_9,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ l3_lattices(X1)
% 2.75/1.05      | v2_struct_0(X1)
% 2.75/1.05      | ~ v9_lattices(X1)
% 2.75/1.05      | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2 ),
% 2.75/1.05      inference(cnf_transformation,[],[f61]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1476,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ l3_lattices(X1)
% 2.75/1.05      | ~ v9_lattices(X1)
% 2.75/1.05      | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2
% 2.75/1.05      | sK5 != X1 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_9,c_33]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1477,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | ~ v9_lattices(sK5)
% 2.75/1.05      | k2_lattices(sK5,X1,k1_lattices(sK5,X1,X0)) = X1 ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1476]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_0,plain,
% 2.75/1.05      ( ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0)
% 2.75/1.05      | v9_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f58]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1152,plain,
% 2.75/1.05      ( ~ l3_lattices(X0) | v2_struct_0(X0) | v9_lattices(X0) | sK5 != X0 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_0,c_32]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1153,plain,
% 2.75/1.05      ( ~ l3_lattices(sK5) | v2_struct_0(sK5) | v9_lattices(sK5) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1152]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_115,plain,
% 2.75/1.05      ( ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | ~ v10_lattices(sK5)
% 2.75/1.05      | v9_lattices(sK5) ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_0]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1155,plain,
% 2.75/1.05      ( v9_lattices(sK5) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_1153,c_33,c_32,c_30,c_115]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1233,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.75/1.05      | ~ l3_lattices(X1)
% 2.75/1.05      | v2_struct_0(X1)
% 2.75/1.05      | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2
% 2.75/1.05      | sK5 != X1 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_9,c_1155]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1234,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | k2_lattices(sK5,X1,k1_lattices(sK5,X1,X0)) = X1 ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_1233]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1481,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | k2_lattices(sK5,X1,k1_lattices(sK5,X1,X0)) = X1 ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_1477,c_33,c_30,c_1234]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1482,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(sK5))
% 2.75/1.05      | k2_lattices(sK5,X0,k1_lattices(sK5,X0,X1)) = X0 ),
% 2.75/1.05      inference(renaming,[status(thm)],[c_1481]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1904,plain,
% 2.75/1.05      ( ~ m1_subset_1(X0_56,u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(X1_56,u1_struct_0(sK5))
% 2.75/1.05      | k2_lattices(sK5,X0_56,k1_lattices(sK5,X0_56,X1_56)) = X0_56 ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_1482]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2192,plain,
% 2.75/1.05      ( k2_lattices(sK5,X0_56,k1_lattices(sK5,X0_56,X1_56)) = X0_56
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top
% 2.75/1.05      | m1_subset_1(X1_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1904]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2487,plain,
% 2.75/1.05      ( k2_lattices(sK5,k15_lattice3(sK5,X0_57),k1_lattices(sK5,k15_lattice3(sK5,X0_57),X0_56)) = k15_lattice3(sK5,X0_57)
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2196,c_2192]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_3936,plain,
% 2.75/1.05      ( k2_lattices(sK5,k15_lattice3(sK5,X0_57),k1_lattices(sK5,k15_lattice3(sK5,X0_57),sK6)) = k15_lattice3(sK5,X0_57) ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2185,c_2487]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4286,plain,
% 2.75/1.05      ( k2_lattices(sK5,k15_lattice3(sK5,sK7),sK6) = k15_lattice3(sK5,sK7) ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_4282,c_3936]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4664,plain,
% 2.75/1.05      ( k2_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7) ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2896,c_4286]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1,plain,
% 2.75/1.05      ( v8_lattices(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f57]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_13,plain,
% 2.75/1.05      ( ~ r3_lattices(X0,X1,X2)
% 2.75/1.05      | r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ v6_lattices(X0)
% 2.75/1.05      | ~ v8_lattices(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v9_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f67]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_586,plain,
% 2.75/1.05      ( ~ r3_lattices(X0,X1,X2)
% 2.75/1.05      | r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ v6_lattices(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0)
% 2.75/1.05      | ~ v9_lattices(X0) ),
% 2.75/1.05      inference(resolution,[status(thm)],[c_1,c_13]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_590,plain,
% 2.75/1.05      ( ~ v10_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | ~ r3_lattices(X0,X1,X2)
% 2.75/1.05      | r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0)) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_586,c_13,c_2,c_1,c_0]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_591,plain,
% 2.75/1.05      ( ~ r3_lattices(X0,X1,X2)
% 2.75/1.05      | r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(renaming,[status(thm)],[c_590]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_25,plain,
% 2.75/1.05      ( r3_lattices(X0,X1,k15_lattice3(X0,X2))
% 2.75/1.05      | ~ r2_hidden(X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ v4_lattice3(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(cnf_transformation,[],[f79]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_28,negated_conjecture,
% 2.75/1.05      ( r2_hidden(sK6,sK7) ),
% 2.75/1.05      inference(cnf_transformation,[],[f86]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_427,plain,
% 2.75/1.05      ( r3_lattices(X0,X1,k15_lattice3(X0,X2))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ v4_lattice3(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0)
% 2.75/1.05      | sK6 != X1
% 2.75/1.05      | sK7 != X2 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_25,c_28]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_428,plain,
% 2.75/1.05      ( r3_lattices(X0,sK6,k15_lattice3(X0,sK7))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 2.75/1.05      | ~ v4_lattice3(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_427]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_907,plain,
% 2.75/1.05      ( r1_lattices(X0,X1,X2)
% 2.75/1.05      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(X3))
% 2.75/1.05      | ~ v4_lattice3(X3)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | ~ l3_lattices(X3)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | v2_struct_0(X3)
% 2.75/1.05      | ~ v10_lattices(X0)
% 2.75/1.05      | ~ v10_lattices(X3)
% 2.75/1.05      | X3 != X0
% 2.75/1.05      | k15_lattice3(X3,sK7) != X2
% 2.75/1.05      | sK6 != X1 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_591,c_428]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_908,plain,
% 2.75/1.05      ( r1_lattices(X0,sK6,k15_lattice3(X0,sK7))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(X0,sK7),u1_struct_0(X0))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 2.75/1.05      | ~ v4_lattice3(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_907]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_926,plain,
% 2.75/1.05      ( r1_lattices(X0,sK6,k15_lattice3(X0,sK7))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 2.75/1.05      | ~ v4_lattice3(X0)
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0) ),
% 2.75/1.05      inference(forward_subsumption_resolution,[status(thm)],[c_908,c_23]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_992,plain,
% 2.75/1.05      ( r1_lattices(X0,sK6,k15_lattice3(X0,sK7))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 2.75/1.05      | ~ l3_lattices(X0)
% 2.75/1.05      | v2_struct_0(X0)
% 2.75/1.05      | ~ v10_lattices(X0)
% 2.75/1.05      | sK5 != X0 ),
% 2.75/1.05      inference(resolution_lifted,[status(thm)],[c_926,c_31]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_993,plain,
% 2.75/1.05      ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(sK5))
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | ~ v10_lattices(sK5) ),
% 2.75/1.05      inference(unflattening,[status(thm)],[c_992]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_934,plain,
% 2.75/1.05      ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(sK5))
% 2.75/1.05      | ~ v4_lattice3(sK5)
% 2.75/1.05      | ~ l3_lattices(sK5)
% 2.75/1.05      | v2_struct_0(sK5)
% 2.75/1.05      | ~ v10_lattices(sK5) ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_926]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_995,plain,
% 2.75/1.05      ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_993,c_33,c_32,c_31,c_30,c_29,c_934]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1909,plain,
% 2.75/1.05      ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_995]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2187,plain,
% 2.75/1.05      ( r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = iProver_top ),
% 2.75/1.05      inference(predicate_to_equality,[status(thm)],[c_1909]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_3015,plain,
% 2.75/1.05      ( k1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7)
% 2.75/1.05      | m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5)) != iProver_top
% 2.75/1.05      | m1_subset_1(sK6,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2187,c_2195]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2303,plain,
% 2.75/1.05      ( ~ r1_lattices(sK5,sK6,k15_lattice3(sK5,sK7))
% 2.75/1.05      | ~ m1_subset_1(k15_lattice3(sK5,sK7),u1_struct_0(sK5))
% 2.75/1.05      | ~ m1_subset_1(sK6,u1_struct_0(sK5))
% 2.75/1.05      | k1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7) ),
% 2.75/1.05      inference(instantiation,[status(thm)],[c_1901]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4130,plain,
% 2.75/1.05      ( k1_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = k15_lattice3(sK5,sK7) ),
% 2.75/1.05      inference(global_propositional_subsumption,
% 2.75/1.05                [status(thm)],
% 2.75/1.05                [c_3015,c_33,c_32,c_31,c_30,c_29,c_934,c_1956,c_2303]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2486,plain,
% 2.75/1.05      ( k2_lattices(sK5,sK6,k1_lattices(sK5,sK6,X0_56)) = sK6
% 2.75/1.05      | m1_subset_1(X0_56,u1_struct_0(sK5)) != iProver_top ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2185,c_2192]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_2580,plain,
% 2.75/1.05      ( k2_lattices(sK5,sK6,k1_lattices(sK5,sK6,k15_lattice3(sK5,X0_57))) = sK6 ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_2196,c_2486]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_4134,plain,
% 2.75/1.05      ( k2_lattices(sK5,sK6,k15_lattice3(sK5,sK7)) = sK6 ),
% 2.75/1.05      inference(superposition,[status(thm)],[c_4130,c_2580]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_5545,plain,
% 2.75/1.05      ( k15_lattice3(sK5,sK7) = sK6 ),
% 2.75/1.05      inference(light_normalisation,[status(thm)],[c_4664,c_4134]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_26,negated_conjecture,
% 2.75/1.05      ( k15_lattice3(sK5,sK7) != sK6 ),
% 2.75/1.05      inference(cnf_transformation,[],[f88]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_1913,negated_conjecture,
% 2.75/1.05      ( k15_lattice3(sK5,sK7) != sK6 ),
% 2.75/1.05      inference(subtyping,[status(esa)],[c_26]) ).
% 2.75/1.05  
% 2.75/1.05  cnf(c_5547,plain,
% 2.75/1.05      ( $false ),
% 2.75/1.05      inference(forward_subsumption_resolution,[status(thm)],[c_5545,c_1913]) ).
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 2.75/1.05  
% 2.75/1.05  ------                               Statistics
% 2.75/1.05  
% 2.75/1.05  ------ General
% 2.75/1.05  
% 2.75/1.05  abstr_ref_over_cycles:                  0
% 2.75/1.05  abstr_ref_under_cycles:                 0
% 2.75/1.05  gc_basic_clause_elim:                   0
% 2.75/1.05  forced_gc_time:                         0
% 2.75/1.05  parsing_time:                           0.009
% 2.75/1.05  unif_index_cands_time:                  0.
% 2.75/1.05  unif_index_add_time:                    0.
% 2.75/1.05  orderings_time:                         0.
% 2.75/1.05  out_proof_time:                         0.01
% 2.75/1.05  total_time:                             0.207
% 2.75/1.05  num_of_symbols:                         59
% 2.75/1.05  num_of_terms:                           4763
% 2.75/1.05  
% 2.75/1.05  ------ Preprocessing
% 2.75/1.05  
% 2.75/1.05  num_of_splits:                          0
% 2.75/1.05  num_of_split_atoms:                     0
% 2.75/1.05  num_of_reused_defs:                     0
% 2.75/1.05  num_eq_ax_congr_red:                    40
% 2.75/1.05  num_of_sem_filtered_clauses:            1
% 2.75/1.05  num_of_subtypes:                        4
% 2.75/1.05  monotx_restored_types:                  0
% 2.75/1.05  sat_num_of_epr_types:                   0
% 2.75/1.05  sat_num_of_non_cyclic_types:            0
% 2.75/1.05  sat_guarded_non_collapsed_types:        1
% 2.75/1.05  num_pure_diseq_elim:                    0
% 2.75/1.05  simp_replaced_by:                       0
% 2.75/1.05  res_preprocessed:                       91
% 2.75/1.05  prep_upred:                             0
% 2.75/1.05  prep_unflattend:                        71
% 2.75/1.05  smt_new_axioms:                         0
% 2.75/1.05  pred_elim_cands:                        3
% 2.75/1.05  pred_elim:                              11
% 2.75/1.05  pred_elim_cl:                           18
% 2.75/1.05  pred_elim_cycles:                       17
% 2.75/1.05  merged_defs:                            0
% 2.75/1.05  merged_defs_ncl:                        0
% 2.75/1.05  bin_hyper_res:                          0
% 2.75/1.05  prep_cycles:                            4
% 2.75/1.05  pred_elim_time:                         0.027
% 2.75/1.05  splitting_time:                         0.
% 2.75/1.05  sem_filter_time:                        0.
% 2.75/1.05  monotx_time:                            0.
% 2.75/1.05  subtype_inf_time:                       0.
% 2.75/1.05  
% 2.75/1.05  ------ Problem properties
% 2.75/1.05  
% 2.75/1.05  clauses:                                15
% 2.75/1.05  conjectures:                            3
% 2.75/1.05  epr:                                    1
% 2.75/1.05  horn:                                   13
% 2.75/1.05  ground:                                 5
% 2.75/1.05  unary:                                  6
% 2.75/1.05  binary:                                 1
% 2.75/1.05  lits:                                   37
% 2.75/1.05  lits_eq:                                8
% 2.75/1.05  fd_pure:                                0
% 2.75/1.05  fd_pseudo:                              0
% 2.75/1.05  fd_cond:                                0
% 2.75/1.05  fd_pseudo_cond:                         3
% 2.75/1.05  ac_symbols:                             0
% 2.75/1.05  
% 2.75/1.05  ------ Propositional Solver
% 2.75/1.05  
% 2.75/1.05  prop_solver_calls:                      28
% 2.75/1.05  prop_fast_solver_calls:                 1127
% 2.75/1.05  smt_solver_calls:                       0
% 2.75/1.05  smt_fast_solver_calls:                  0
% 2.75/1.05  prop_num_of_clauses:                    1826
% 2.75/1.05  prop_preprocess_simplified:             5681
% 2.75/1.05  prop_fo_subsumed:                       78
% 2.75/1.05  prop_solver_time:                       0.
% 2.75/1.05  smt_solver_time:                        0.
% 2.75/1.05  smt_fast_solver_time:                   0.
% 2.75/1.05  prop_fast_solver_time:                  0.
% 2.75/1.05  prop_unsat_core_time:                   0.
% 2.75/1.05  
% 2.75/1.05  ------ QBF
% 2.75/1.05  
% 2.75/1.05  qbf_q_res:                              0
% 2.75/1.05  qbf_num_tautologies:                    0
% 2.75/1.05  qbf_prep_cycles:                        0
% 2.75/1.05  
% 2.75/1.05  ------ BMC1
% 2.75/1.05  
% 2.75/1.05  bmc1_current_bound:                     -1
% 2.75/1.05  bmc1_last_solved_bound:                 -1
% 2.75/1.05  bmc1_unsat_core_size:                   -1
% 2.75/1.05  bmc1_unsat_core_parents_size:           -1
% 2.75/1.05  bmc1_merge_next_fun:                    0
% 2.75/1.05  bmc1_unsat_core_clauses_time:           0.
% 2.75/1.05  
% 2.75/1.05  ------ Instantiation
% 2.75/1.05  
% 2.75/1.05  inst_num_of_clauses:                    574
% 2.75/1.05  inst_num_in_passive:                    145
% 2.75/1.05  inst_num_in_active:                     239
% 2.75/1.05  inst_num_in_unprocessed:                190
% 2.75/1.05  inst_num_of_loops:                      250
% 2.75/1.05  inst_num_of_learning_restarts:          0
% 2.75/1.05  inst_num_moves_active_passive:          9
% 2.75/1.05  inst_lit_activity:                      0
% 2.75/1.05  inst_lit_activity_moves:                0
% 2.75/1.05  inst_num_tautologies:                   0
% 2.75/1.05  inst_num_prop_implied:                  0
% 2.75/1.05  inst_num_existing_simplified:           0
% 2.75/1.05  inst_num_eq_res_simplified:             0
% 2.75/1.05  inst_num_child_elim:                    0
% 2.75/1.05  inst_num_of_dismatching_blockings:      170
% 2.75/1.05  inst_num_of_non_proper_insts:           609
% 2.75/1.05  inst_num_of_duplicates:                 0
% 2.75/1.05  inst_inst_num_from_inst_to_res:         0
% 2.75/1.05  inst_dismatching_checking_time:         0.
% 2.75/1.05  
% 2.75/1.05  ------ Resolution
% 2.75/1.05  
% 2.75/1.05  res_num_of_clauses:                     0
% 2.75/1.05  res_num_in_passive:                     0
% 2.75/1.05  res_num_in_active:                      0
% 2.75/1.05  res_num_of_loops:                       95
% 2.75/1.05  res_forward_subset_subsumed:            50
% 2.75/1.05  res_backward_subset_subsumed:           2
% 2.75/1.05  res_forward_subsumed:                   0
% 2.75/1.05  res_backward_subsumed:                  0
% 2.75/1.05  res_forward_subsumption_resolution:     5
% 2.75/1.05  res_backward_subsumption_resolution:    1
% 2.75/1.05  res_clause_to_clause_subsumption:       249
% 2.75/1.05  res_orphan_elimination:                 0
% 2.75/1.05  res_tautology_del:                      96
% 2.75/1.05  res_num_eq_res_simplified:              0
% 2.75/1.05  res_num_sel_changes:                    0
% 2.75/1.05  res_moves_from_active_to_pass:          0
% 2.75/1.05  
% 2.75/1.05  ------ Superposition
% 2.75/1.05  
% 2.75/1.05  sup_time_total:                         0.
% 2.75/1.05  sup_time_generating:                    0.
% 2.75/1.05  sup_time_sim_full:                      0.
% 2.75/1.05  sup_time_sim_immed:                     0.
% 2.75/1.05  
% 2.75/1.05  sup_num_of_clauses:                     61
% 2.75/1.05  sup_num_in_active:                      48
% 2.75/1.05  sup_num_in_passive:                     13
% 2.75/1.05  sup_num_of_loops:                       48
% 2.75/1.05  sup_fw_superposition:                   46
% 2.75/1.05  sup_bw_superposition:                   13
% 2.75/1.05  sup_immediate_simplified:               2
% 2.75/1.05  sup_given_eliminated:                   0
% 2.75/1.05  comparisons_done:                       0
% 2.75/1.05  comparisons_avoided:                    25
% 2.75/1.05  
% 2.75/1.05  ------ Simplifications
% 2.75/1.05  
% 2.75/1.05  
% 2.75/1.05  sim_fw_subset_subsumed:                 2
% 2.75/1.05  sim_bw_subset_subsumed:                 0
% 2.75/1.05  sim_fw_subsumed:                        0
% 2.75/1.05  sim_bw_subsumed:                        0
% 2.75/1.05  sim_fw_subsumption_res:                 2
% 2.75/1.05  sim_bw_subsumption_res:                 0
% 2.75/1.05  sim_tautology_del:                      0
% 2.75/1.05  sim_eq_tautology_del:                   8
% 2.75/1.05  sim_eq_res_simp:                        0
% 2.75/1.05  sim_fw_demodulated:                     0
% 2.75/1.05  sim_bw_demodulated:                     0
% 2.75/1.05  sim_light_normalised:                   1
% 2.75/1.05  sim_joinable_taut:                      0
% 2.75/1.05  sim_joinable_simp:                      0
% 2.75/1.05  sim_ac_normalised:                      0
% 2.75/1.05  sim_smt_subsumption:                    0
% 2.75/1.05  
%------------------------------------------------------------------------------
