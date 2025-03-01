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
% DateTime   : Thu Dec  3 12:19:11 EST 2020

% Result     : Theorem 1.51s
% Output     : CNFRefutation 1.51s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 411 expanded)
%              Number of clauses        :   61 (  86 expanded)
%              Number of leaves         :   14 ( 134 expanded)
%              Depth                    :   23
%              Number of atoms          :  652 (2778 expanded)
%              Number of equality atoms :   92 ( 115 expanded)
%              Maximal formula depth    :   16 (   6 average)
%              Maximal clause size      :   17 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] : k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] : k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] : k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f11])).

fof(f48,plain,(
    ! [X0,X1] :
      ( k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f5,conjecture,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v4_lattice3(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( r3_lattice3(X0,X1,X2)
             => r3_lattices(X0,X1,k16_lattice3(X0,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0] :
        ( ( l3_lattices(X0)
          & v4_lattice3(X0)
          & v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( r3_lattice3(X0,X1,X2)
               => r3_lattices(X0,X1,k16_lattice3(X0,X2)) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r3_lattices(X0,X1,k16_lattice3(X0,X2))
              & r3_lattice3(X0,X1,X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v4_lattice3(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r3_lattices(X0,X1,k16_lattice3(X0,X2))
              & r3_lattice3(X0,X1,X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v4_lattice3(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f15])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r3_lattices(X0,X1,k16_lattice3(X0,X2))
          & r3_lattice3(X0,X1,X2) )
     => ( ~ r3_lattices(X0,X1,k16_lattice3(X0,sK7))
        & r3_lattice3(X0,X1,sK7) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r3_lattices(X0,X1,k16_lattice3(X0,X2))
              & r3_lattice3(X0,X1,X2) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( ~ r3_lattices(X0,sK6,k16_lattice3(X0,X2))
            & r3_lattice3(X0,sK6,X2) )
        & m1_subset_1(sK6,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r3_lattices(X0,X1,k16_lattice3(X0,X2))
                & r3_lattice3(X0,X1,X2) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l3_lattices(X0)
        & v4_lattice3(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r3_lattices(sK5,X1,k16_lattice3(sK5,X2))
              & r3_lattice3(sK5,X1,X2) )
          & m1_subset_1(X1,u1_struct_0(sK5)) )
      & l3_lattices(sK5)
      & v4_lattice3(sK5)
      & v10_lattices(sK5)
      & ~ v2_struct_0(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ~ r3_lattices(sK5,sK6,k16_lattice3(sK5,sK7))
    & r3_lattice3(sK5,sK6,sK7)
    & m1_subset_1(sK6,u1_struct_0(sK5))
    & l3_lattices(sK5)
    & v4_lattice3(sK5)
    & v10_lattices(sK5)
    & ~ v2_struct_0(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7])],[f16,f35,f34,f33])).

fof(f57,plain,(
    l3_lattices(sK5) ),
    inference(cnf_transformation,[],[f36])).

fof(f54,plain,(
    ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f36])).

fof(f2,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
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
    inference(ennf_transformation,[],[f2])).

fof(f10,plain,(
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
    inference(flattening,[],[f9])).

fof(f23,plain,(
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
    inference(nnf_transformation,[],[f10])).

fof(f24,plain,(
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
    inference(flattening,[],[f23])).

fof(f25,plain,(
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
    inference(rectify,[],[f24])).

fof(f26,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_lattices(X0,X2,X3)
          & r4_lattice3(X0,X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_lattices(X0,X2,sK3(X0,X1,X2))
        & r4_lattice3(X0,sK3(X0,X1,X2),X1)
        & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k15_lattice3(X0,X1) = X2
              | ( ~ r1_lattices(X0,X2,sK3(X0,X1,X2))
                & r4_lattice3(X0,sK3(X0,X1,X2),X1)
                & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0)) )
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f25,f26])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k15_lattice3(X0,X1) = X2
      | r4_lattice3(X0,sK3(X0,X1,X2),X1)
      | ~ r4_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f55,plain,(
    v10_lattices(sK5) ),
    inference(cnf_transformation,[],[f36])).

fof(f56,plain,(
    v4_lattice3(sK5) ),
    inference(cnf_transformation,[],[f36])).

fof(f1,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v4_lattice3(X0)
      <=> ! [X1] :
          ? [X2] :
            ( ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X0))
               => ( r4_lattice3(X0,X3,X1)
                 => r1_lattices(X0,X2,X3) ) )
            & r4_lattice3(X0,X2,X1)
            & m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( ( v4_lattice3(X0)
      <=> ! [X1] :
          ? [X2] :
            ( ! [X3] :
                ( r1_lattices(X0,X2,X3)
                | ~ r4_lattice3(X0,X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) )
            & r4_lattice3(X0,X2,X1)
            & m1_subset_1(X2,u1_struct_0(X0)) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f8,plain,(
    ! [X0] :
      ( ( v4_lattice3(X0)
      <=> ! [X1] :
          ? [X2] :
            ( ! [X3] :
                ( r1_lattices(X0,X2,X3)
                | ~ r4_lattice3(X0,X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) )
            & r4_lattice3(X0,X2,X1)
            & m1_subset_1(X2,u1_struct_0(X0)) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f7])).

fof(f17,plain,(
    ! [X0] :
      ( ( ( v4_lattice3(X0)
          | ? [X1] :
            ! [X2] :
              ( ? [X3] :
                  ( ~ r1_lattices(X0,X2,X3)
                  & r4_lattice3(X0,X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,X1)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
        & ( ! [X1] :
            ? [X2] :
              ( ! [X3] :
                  ( r1_lattices(X0,X2,X3)
                  | ~ r4_lattice3(X0,X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & r4_lattice3(X0,X2,X1)
              & m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ v4_lattice3(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f18,plain,(
    ! [X0] :
      ( ( ( v4_lattice3(X0)
          | ? [X1] :
            ! [X2] :
              ( ? [X3] :
                  ( ~ r1_lattices(X0,X2,X3)
                  & r4_lattice3(X0,X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,X1)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
        & ( ! [X4] :
            ? [X5] :
              ( ! [X6] :
                  ( r1_lattices(X0,X5,X6)
                  | ~ r4_lattice3(X0,X6,X4)
                  | ~ m1_subset_1(X6,u1_struct_0(X0)) )
              & r4_lattice3(X0,X5,X4)
              & m1_subset_1(X5,u1_struct_0(X0)) )
          | ~ v4_lattice3(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f17])).

fof(f21,plain,(
    ! [X4,X0] :
      ( ? [X5] :
          ( ! [X6] :
              ( r1_lattices(X0,X5,X6)
              | ~ r4_lattice3(X0,X6,X4)
              | ~ m1_subset_1(X6,u1_struct_0(X0)) )
          & r4_lattice3(X0,X5,X4)
          & m1_subset_1(X5,u1_struct_0(X0)) )
     => ( ! [X6] :
            ( r1_lattices(X0,sK2(X0,X4),X6)
            | ~ r4_lattice3(X0,X6,X4)
            | ~ m1_subset_1(X6,u1_struct_0(X0)) )
        & r4_lattice3(X0,sK2(X0,X4),X4)
        & m1_subset_1(sK2(X0,X4),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X1,X2,X0] :
      ( ? [X3] :
          ( ~ r1_lattices(X0,X2,X3)
          & r4_lattice3(X0,X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_lattices(X0,X2,sK1(X0,X2))
        & r4_lattice3(X0,sK1(X0,X2),X1)
        & m1_subset_1(sK1(X0,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,(
    ! [X0] :
      ( ? [X1] :
        ! [X2] :
          ( ? [X3] :
              ( ~ r1_lattices(X0,X2,X3)
              & r4_lattice3(X0,X3,X1)
              & m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ r4_lattice3(X0,X2,X1)
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
     => ! [X2] :
          ( ? [X3] :
              ( ~ r1_lattices(X0,X2,X3)
              & r4_lattice3(X0,X3,sK0(X0))
              & m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ r4_lattice3(X0,X2,sK0(X0))
          | ~ m1_subset_1(X2,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0] :
      ( ( ( v4_lattice3(X0)
          | ! [X2] :
              ( ( ~ r1_lattices(X0,X2,sK1(X0,X2))
                & r4_lattice3(X0,sK1(X0,X2),sK0(X0))
                & m1_subset_1(sK1(X0,X2),u1_struct_0(X0)) )
              | ~ r4_lattice3(X0,X2,sK0(X0))
              | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
        & ( ! [X4] :
              ( ! [X6] :
                  ( r1_lattices(X0,sK2(X0,X4),X6)
                  | ~ r4_lattice3(X0,X6,X4)
                  | ~ m1_subset_1(X6,u1_struct_0(X0)) )
              & r4_lattice3(X0,sK2(X0,X4),X4)
              & m1_subset_1(sK2(X0,X4),u1_struct_0(X0)) )
          | ~ v4_lattice3(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f18,f21,f20,f19])).

fof(f39,plain,(
    ! [X6,X4,X0] :
      ( r1_lattices(X0,sK2(X0,X4),X6)
      | ~ r4_lattice3(X0,X6,X4)
      | ~ m1_subset_1(X6,u1_struct_0(X0))
      | ~ v4_lattice3(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k15_lattice3(X0,X1) = X2
      | ~ r1_lattices(X0,X2,sK3(X0,X1,X2))
      | ~ r4_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f37,plain,(
    ! [X4,X0] :
      ( m1_subset_1(sK2(X0,X4),u1_struct_0(X0))
      | ~ v4_lattice3(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( k15_lattice3(X0,X1) = X2
      | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0))
      | ~ r4_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f38,plain,(
    ! [X4,X0] :
      ( r4_lattice3(X0,sK2(X0,X4),X4)
      | ~ v4_lattice3(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v4_lattice3(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( k16_lattice3(X0,X2) = X1
            <=> ( ! [X3] :
                    ( m1_subset_1(X3,u1_struct_0(X0))
                   => ( r3_lattice3(X0,X3,X2)
                     => r3_lattices(X0,X3,X1) ) )
                & r3_lattice3(X0,X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k16_lattice3(X0,X2) = X1
            <=> ( ! [X3] :
                    ( r3_lattices(X0,X3,X1)
                    | ~ r3_lattice3(X0,X3,X2)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                & r3_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k16_lattice3(X0,X2) = X1
            <=> ( ! [X3] :
                    ( r3_lattices(X0,X3,X1)
                    | ~ r3_lattice3(X0,X3,X2)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                & r3_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k16_lattice3(X0,X2) = X1
                | ? [X3] :
                    ( ~ r3_lattices(X0,X3,X1)
                    & r3_lattice3(X0,X3,X2)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) )
              & ( ( ! [X3] :
                      ( r3_lattices(X0,X3,X1)
                      | ~ r3_lattice3(X0,X3,X2)
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  & r3_lattice3(X0,X1,X2) )
                | k16_lattice3(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k16_lattice3(X0,X2) = X1
                | ? [X3] :
                    ( ~ r3_lattices(X0,X3,X1)
                    & r3_lattice3(X0,X3,X2)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) )
              & ( ( ! [X3] :
                      ( r3_lattices(X0,X3,X1)
                      | ~ r3_lattice3(X0,X3,X2)
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  & r3_lattice3(X0,X1,X2) )
                | k16_lattice3(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k16_lattice3(X0,X2) = X1
                | ? [X3] :
                    ( ~ r3_lattices(X0,X3,X1)
                    & r3_lattice3(X0,X3,X2)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) )
              & ( ( ! [X4] :
                      ( r3_lattices(X0,X4,X1)
                      | ~ r3_lattice3(X0,X4,X2)
                      | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                  & r3_lattice3(X0,X1,X2) )
                | k16_lattice3(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r3_lattices(X0,X3,X1)
          & r3_lattice3(X0,X3,X2)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r3_lattices(X0,sK4(X0,X1,X2),X1)
        & r3_lattice3(X0,sK4(X0,X1,X2),X2)
        & m1_subset_1(sK4(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k16_lattice3(X0,X2) = X1
                | ( ~ r3_lattices(X0,sK4(X0,X1,X2),X1)
                  & r3_lattice3(X0,sK4(X0,X1,X2),X2)
                  & m1_subset_1(sK4(X0,X1,X2),u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) )
              & ( ( ! [X4] :
                      ( r3_lattices(X0,X4,X1)
                      | ~ r3_lattice3(X0,X4,X2)
                      | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                  & r3_lattice3(X0,X1,X2) )
                | k16_lattice3(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f30,f31])).

fof(f50,plain,(
    ! [X4,X2,X0,X1] :
      ( r3_lattices(X0,X4,X1)
      | ~ r3_lattice3(X0,X4,X2)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | k16_lattice3(X0,X2) != X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f63,plain,(
    ! [X4,X2,X0] :
      ( r3_lattices(X0,X4,k16_lattice3(X0,X2))
      | ~ r3_lattice3(X0,X4,X2)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ m1_subset_1(k16_lattice3(X0,X2),u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v4_lattice3(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f60,plain,(
    ~ r3_lattices(sK5,sK6,k16_lattice3(sK5,sK7)) ),
    inference(cnf_transformation,[],[f36])).

fof(f58,plain,(
    m1_subset_1(sK6,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f36])).

fof(f59,plain,(
    r3_lattice3(sK5,sK6,sK7) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_11,plain,
    ( v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_20,negated_conjecture,
    ( l3_lattices(sK5) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_659,plain,
    ( v2_struct_0(X0)
    | k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_20])).

cnf(c_660,plain,
    ( v2_struct_0(sK5)
    | k15_lattice3(sK5,a_2_1_lattice3(sK5,X0)) = k16_lattice3(sK5,X0) ),
    inference(unflattening,[status(thm)],[c_659])).

cnf(c_23,negated_conjecture,
    ( ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_664,plain,
    ( k15_lattice3(sK5,a_2_1_lattice3(sK5,X0)) = k16_lattice3(sK5,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_660,c_23])).

cnf(c_810,plain,
    ( k15_lattice3(sK5,a_2_1_lattice3(sK5,X0_53)) = k16_lattice3(sK5,X0_53) ),
    inference(subtyping,[status(esa)],[c_664])).

cnf(c_7,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | r4_lattice3(X0,sK3(X0,X2,X1),X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X2) = X1 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_22,negated_conjecture,
    ( v10_lattices(sK5) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_595,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | r4_lattice3(X0,sK3(X0,X2,X1),X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X2) = X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_22])).

cnf(c_596,plain,
    ( ~ r4_lattice3(sK5,X0,X1)
    | r4_lattice3(sK5,sK3(sK5,X1,X0),X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | v2_struct_0(sK5)
    | ~ l3_lattices(sK5)
    | ~ v4_lattice3(sK5)
    | k15_lattice3(sK5,X1) = X0 ),
    inference(unflattening,[status(thm)],[c_595])).

cnf(c_21,negated_conjecture,
    ( v4_lattice3(sK5) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_600,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK5))
    | r4_lattice3(sK5,sK3(sK5,X1,X0),X1)
    | ~ r4_lattice3(sK5,X0,X1)
    | k15_lattice3(sK5,X1) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_596,c_23,c_21,c_20])).

cnf(c_601,plain,
    ( ~ r4_lattice3(sK5,X0,X1)
    | r4_lattice3(sK5,sK3(sK5,X1,X0),X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | k15_lattice3(sK5,X1) = X0 ),
    inference(renaming,[status(thm)],[c_600])).

cnf(c_811,plain,
    ( ~ r4_lattice3(sK5,X0_50,X0_51)
    | r4_lattice3(sK5,sK3(sK5,X0_51,X0_50),X0_51)
    | ~ m1_subset_1(X0_50,u1_struct_0(sK5))
    | k15_lattice3(sK5,X0_51) = X0_50 ),
    inference(subtyping,[status(esa)],[c_601])).

cnf(c_1113,plain,
    ( k15_lattice3(sK5,X0_51) = X0_50
    | r4_lattice3(sK5,X0_50,X0_51) != iProver_top
    | r4_lattice3(sK5,sK3(sK5,X0_51,X0_50),X0_51) = iProver_top
    | m1_subset_1(X0_50,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_811])).

cnf(c_3,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | r1_lattices(X0,sK2(X0,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_6,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | ~ r1_lattices(X0,X1,sK3(X0,X2,X1))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X2) = X1 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_332,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | ~ r4_lattice3(X3,X4,X5)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ v10_lattices(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | ~ l3_lattices(X0)
    | ~ l3_lattices(X3)
    | ~ v4_lattice3(X0)
    | ~ v4_lattice3(X3)
    | X3 != X0
    | sK3(X3,X5,X4) != X1
    | k15_lattice3(X3,X5) = X4
    | sK2(X0,X2) != X4 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_6])).

cnf(c_333,plain,
    ( ~ r4_lattice3(X0,sK3(X0,X1,sK2(X0,X2)),X2)
    | ~ r4_lattice3(X0,sK2(X0,X2),X1)
    | ~ m1_subset_1(sK3(X0,X1,sK2(X0,X2)),u1_struct_0(X0))
    | ~ m1_subset_1(sK2(X0,X2),u1_struct_0(X0))
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X1) = sK2(X0,X2) ),
    inference(unflattening,[status(thm)],[c_332])).

cnf(c_5,plain,
    ( m1_subset_1(sK2(X0,X1),u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_8,plain,
    ( ~ r4_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | m1_subset_1(sK3(X0,X2,X1),u1_struct_0(X0))
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X2) = X1 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_355,plain,
    ( ~ r4_lattice3(X0,sK3(X0,X1,sK2(X0,X2)),X2)
    | ~ r4_lattice3(X0,sK2(X0,X2),X1)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X1) = sK2(X0,X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_333,c_5,c_8])).

cnf(c_442,plain,
    ( ~ r4_lattice3(X0,sK3(X0,X1,sK2(X0,X2)),X2)
    | ~ r4_lattice3(X0,sK2(X0,X2),X1)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k15_lattice3(X0,X1) = sK2(X0,X2)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_355,c_22])).

cnf(c_443,plain,
    ( ~ r4_lattice3(sK5,sK3(sK5,X0,sK2(sK5,X1)),X1)
    | ~ r4_lattice3(sK5,sK2(sK5,X1),X0)
    | v2_struct_0(sK5)
    | ~ l3_lattices(sK5)
    | ~ v4_lattice3(sK5)
    | k15_lattice3(sK5,X0) = sK2(sK5,X1) ),
    inference(unflattening,[status(thm)],[c_442])).

cnf(c_447,plain,
    ( ~ r4_lattice3(sK5,sK2(sK5,X1),X0)
    | ~ r4_lattice3(sK5,sK3(sK5,X0,sK2(sK5,X1)),X1)
    | k15_lattice3(sK5,X0) = sK2(sK5,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_443,c_23,c_21,c_20])).

cnf(c_448,plain,
    ( ~ r4_lattice3(sK5,sK3(sK5,X0,sK2(sK5,X1)),X1)
    | ~ r4_lattice3(sK5,sK2(sK5,X1),X0)
    | k15_lattice3(sK5,X0) = sK2(sK5,X1) ),
    inference(renaming,[status(thm)],[c_447])).

cnf(c_818,plain,
    ( ~ r4_lattice3(sK5,sK3(sK5,X0_51,sK2(sK5,X1_51)),X1_51)
    | ~ r4_lattice3(sK5,sK2(sK5,X1_51),X0_51)
    | k15_lattice3(sK5,X0_51) = sK2(sK5,X1_51) ),
    inference(subtyping,[status(esa)],[c_448])).

cnf(c_1106,plain,
    ( k15_lattice3(sK5,X0_51) = sK2(sK5,X1_51)
    | r4_lattice3(sK5,sK3(sK5,X0_51,sK2(sK5,X1_51)),X1_51) != iProver_top
    | r4_lattice3(sK5,sK2(sK5,X1_51),X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_818])).

cnf(c_1650,plain,
    ( k15_lattice3(sK5,X0_51) = sK2(sK5,X0_51)
    | r4_lattice3(sK5,sK2(sK5,X0_51),X0_51) != iProver_top
    | m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1113,c_1106])).

cnf(c_670,plain,
    ( m1_subset_1(sK2(X0,X1),u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v4_lattice3(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_20])).

cnf(c_671,plain,
    ( m1_subset_1(sK2(sK5,X0),u1_struct_0(sK5))
    | v2_struct_0(sK5)
    | ~ v4_lattice3(sK5) ),
    inference(unflattening,[status(thm)],[c_670])).

cnf(c_675,plain,
    ( m1_subset_1(sK2(sK5,X0),u1_struct_0(sK5)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_671,c_23,c_21])).

cnf(c_809,plain,
    ( m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) ),
    inference(subtyping,[status(esa)],[c_675])).

cnf(c_871,plain,
    ( m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_809])).

cnf(c_4,plain,
    ( r4_lattice3(X0,sK2(X0,X1),X1)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_685,plain,
    ( r4_lattice3(X0,sK2(X0,X1),X1)
    | v2_struct_0(X0)
    | ~ v4_lattice3(X0)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_20])).

cnf(c_686,plain,
    ( r4_lattice3(sK5,sK2(sK5,X0),X0)
    | v2_struct_0(sK5)
    | ~ v4_lattice3(sK5) ),
    inference(unflattening,[status(thm)],[c_685])).

cnf(c_690,plain,
    ( r4_lattice3(sK5,sK2(sK5,X0),X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_686,c_23,c_21])).

cnf(c_808,plain,
    ( r4_lattice3(sK5,sK2(sK5,X0_51),X0_51) ),
    inference(subtyping,[status(esa)],[c_690])).

cnf(c_874,plain,
    ( r4_lattice3(sK5,sK2(sK5,X0_51),X0_51) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_808])).

cnf(c_1733,plain,
    ( k15_lattice3(sK5,X0_51) = sK2(sK5,X0_51) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1650,c_871,c_874])).

cnf(c_1786,plain,
    ( sK2(sK5,a_2_1_lattice3(sK5,X0_53)) = k16_lattice3(sK5,X0_53) ),
    inference(superposition,[status(thm)],[c_810,c_1733])).

cnf(c_1114,plain,
    ( m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_809])).

cnf(c_1791,plain,
    ( m1_subset_1(k16_lattice3(sK5,X0_53),u1_struct_0(sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1786,c_1114])).

cnf(c_1800,plain,
    ( m1_subset_1(k16_lattice3(sK5,sK7),u1_struct_0(sK5)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1791])).

cnf(c_824,plain,
    ( X0_50 = X0_50 ),
    theory(equality)).

cnf(c_1336,plain,
    ( k16_lattice3(sK5,sK7) = k16_lattice3(sK5,sK7) ),
    inference(instantiation,[status(thm)],[c_824])).

cnf(c_15,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r3_lattices(X0,X1,k16_lattice3(X0,X2))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k16_lattice3(X0,X2),u1_struct_0(X0))
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_17,negated_conjecture,
    ( ~ r3_lattices(sK5,sK6,k16_lattice3(sK5,sK7)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_294,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k16_lattice3(X0,X2),u1_struct_0(X0))
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l3_lattices(X0)
    | ~ v4_lattice3(X0)
    | k16_lattice3(X0,X2) != k16_lattice3(sK5,sK7)
    | sK6 != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_17])).

cnf(c_295,plain,
    ( ~ r3_lattice3(sK5,sK6,X0)
    | ~ m1_subset_1(k16_lattice3(sK5,X0),u1_struct_0(sK5))
    | ~ m1_subset_1(sK6,u1_struct_0(sK5))
    | ~ v10_lattices(sK5)
    | v2_struct_0(sK5)
    | ~ l3_lattices(sK5)
    | ~ v4_lattice3(sK5)
    | k16_lattice3(sK5,X0) != k16_lattice3(sK5,sK7) ),
    inference(unflattening,[status(thm)],[c_294])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK6,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_299,plain,
    ( ~ m1_subset_1(k16_lattice3(sK5,X0),u1_struct_0(sK5))
    | ~ r3_lattice3(sK5,sK6,X0)
    | k16_lattice3(sK5,X0) != k16_lattice3(sK5,sK7) ),
    inference(global_propositional_subsumption,[status(thm)],[c_295,c_23,c_22,c_21,c_20,c_19])).

cnf(c_300,plain,
    ( ~ r3_lattice3(sK5,sK6,X0)
    | ~ m1_subset_1(k16_lattice3(sK5,X0),u1_struct_0(sK5))
    | k16_lattice3(sK5,X0) != k16_lattice3(sK5,sK7) ),
    inference(renaming,[status(thm)],[c_299])).

cnf(c_820,plain,
    ( ~ r3_lattice3(sK5,sK6,X0_53)
    | ~ m1_subset_1(k16_lattice3(sK5,X0_53),u1_struct_0(sK5))
    | k16_lattice3(sK5,X0_53) != k16_lattice3(sK5,sK7) ),
    inference(subtyping,[status(esa)],[c_300])).

cnf(c_840,plain,
    ( k16_lattice3(sK5,X0_53) != k16_lattice3(sK5,sK7)
    | r3_lattice3(sK5,sK6,X0_53) != iProver_top
    | m1_subset_1(k16_lattice3(sK5,X0_53),u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_820])).

cnf(c_842,plain,
    ( k16_lattice3(sK5,sK7) != k16_lattice3(sK5,sK7)
    | r3_lattice3(sK5,sK6,sK7) != iProver_top
    | m1_subset_1(k16_lattice3(sK5,sK7),u1_struct_0(sK5)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_840])).

cnf(c_18,negated_conjecture,
    ( r3_lattice3(sK5,sK6,sK7) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_29,plain,
    ( r3_lattice3(sK5,sK6,sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1800,c_1336,c_842,c_29])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n007.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 14:20:21 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 1.51/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.51/0.99  
% 1.51/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.51/0.99  
% 1.51/0.99  ------  iProver source info
% 1.51/0.99  
% 1.51/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.51/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.51/0.99  git: non_committed_changes: false
% 1.51/0.99  git: last_make_outside_of_git: false
% 1.51/0.99  
% 1.51/0.99  ------ 
% 1.51/0.99  
% 1.51/0.99  ------ Input Options
% 1.51/0.99  
% 1.51/0.99  --out_options                           all
% 1.51/0.99  --tptp_safe_out                         true
% 1.51/0.99  --problem_path                          ""
% 1.51/0.99  --include_path                          ""
% 1.51/0.99  --clausifier                            res/vclausify_rel
% 1.51/0.99  --clausifier_options                    --mode clausify
% 1.51/0.99  --stdin                                 false
% 1.51/0.99  --stats_out                             all
% 1.51/0.99  
% 1.51/0.99  ------ General Options
% 1.51/0.99  
% 1.51/0.99  --fof                                   false
% 1.51/0.99  --time_out_real                         305.
% 1.51/0.99  --time_out_virtual                      -1.
% 1.51/0.99  --symbol_type_check                     false
% 1.51/0.99  --clausify_out                          false
% 1.51/0.99  --sig_cnt_out                           false
% 1.51/0.99  --trig_cnt_out                          false
% 1.51/0.99  --trig_cnt_out_tolerance                1.
% 1.51/0.99  --trig_cnt_out_sk_spl                   false
% 1.51/0.99  --abstr_cl_out                          false
% 1.51/0.99  
% 1.51/0.99  ------ Global Options
% 1.51/0.99  
% 1.51/0.99  --schedule                              default
% 1.51/0.99  --add_important_lit                     false
% 1.51/0.99  --prop_solver_per_cl                    1000
% 1.51/0.99  --min_unsat_core                        false
% 1.51/0.99  --soft_assumptions                      false
% 1.51/0.99  --soft_lemma_size                       3
% 1.51/0.99  --prop_impl_unit_size                   0
% 1.51/0.99  --prop_impl_unit                        []
% 1.51/0.99  --share_sel_clauses                     true
% 1.51/0.99  --reset_solvers                         false
% 1.51/0.99  --bc_imp_inh                            [conj_cone]
% 1.51/0.99  --conj_cone_tolerance                   3.
% 1.51/0.99  --extra_neg_conj                        none
% 1.51/0.99  --large_theory_mode                     true
% 1.51/0.99  --prolific_symb_bound                   200
% 1.51/0.99  --lt_threshold                          2000
% 1.51/0.99  --clause_weak_htbl                      true
% 1.51/0.99  --gc_record_bc_elim                     false
% 1.51/0.99  
% 1.51/0.99  ------ Preprocessing Options
% 1.51/0.99  
% 1.51/0.99  --preprocessing_flag                    true
% 1.51/0.99  --time_out_prep_mult                    0.1
% 1.51/0.99  --splitting_mode                        input
% 1.51/0.99  --splitting_grd                         true
% 1.51/0.99  --splitting_cvd                         false
% 1.51/0.99  --splitting_cvd_svl                     false
% 1.51/0.99  --splitting_nvd                         32
% 1.51/0.99  --sub_typing                            true
% 1.51/0.99  --prep_gs_sim                           true
% 1.51/0.99  --prep_unflatten                        true
% 1.51/0.99  --prep_res_sim                          true
% 1.51/0.99  --prep_upred                            true
% 1.51/0.99  --prep_sem_filter                       exhaustive
% 1.51/0.99  --prep_sem_filter_out                   false
% 1.51/0.99  --pred_elim                             true
% 1.51/0.99  --res_sim_input                         true
% 1.51/0.99  --eq_ax_congr_red                       true
% 1.51/0.99  --pure_diseq_elim                       true
% 1.51/0.99  --brand_transform                       false
% 1.51/0.99  --non_eq_to_eq                          false
% 1.51/0.99  --prep_def_merge                        true
% 1.51/0.99  --prep_def_merge_prop_impl              false
% 1.51/0.99  --prep_def_merge_mbd                    true
% 1.51/0.99  --prep_def_merge_tr_red                 false
% 1.51/0.99  --prep_def_merge_tr_cl                  false
% 1.51/0.99  --smt_preprocessing                     true
% 1.51/0.99  --smt_ac_axioms                         fast
% 1.51/0.99  --preprocessed_out                      false
% 1.51/0.99  --preprocessed_stats                    false
% 1.51/0.99  
% 1.51/0.99  ------ Abstraction refinement Options
% 1.51/0.99  
% 1.51/0.99  --abstr_ref                             []
% 1.51/0.99  --abstr_ref_prep                        false
% 1.51/0.99  --abstr_ref_until_sat                   false
% 1.51/0.99  --abstr_ref_sig_restrict                funpre
% 1.51/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.51/0.99  --abstr_ref_under                       []
% 1.51/0.99  
% 1.51/0.99  ------ SAT Options
% 1.51/0.99  
% 1.51/0.99  --sat_mode                              false
% 1.51/0.99  --sat_fm_restart_options                ""
% 1.51/0.99  --sat_gr_def                            false
% 1.51/0.99  --sat_epr_types                         true
% 1.51/0.99  --sat_non_cyclic_types                  false
% 1.51/0.99  --sat_finite_models                     false
% 1.51/0.99  --sat_fm_lemmas                         false
% 1.51/0.99  --sat_fm_prep                           false
% 1.51/0.99  --sat_fm_uc_incr                        true
% 1.51/0.99  --sat_out_model                         small
% 1.51/0.99  --sat_out_clauses                       false
% 1.51/0.99  
% 1.51/0.99  ------ QBF Options
% 1.51/0.99  
% 1.51/0.99  --qbf_mode                              false
% 1.51/0.99  --qbf_elim_univ                         false
% 1.51/0.99  --qbf_dom_inst                          none
% 1.51/0.99  --qbf_dom_pre_inst                      false
% 1.51/0.99  --qbf_sk_in                             false
% 1.51/0.99  --qbf_pred_elim                         true
% 1.51/0.99  --qbf_split                             512
% 1.51/0.99  
% 1.51/0.99  ------ BMC1 Options
% 1.51/0.99  
% 1.51/0.99  --bmc1_incremental                      false
% 1.51/0.99  --bmc1_axioms                           reachable_all
% 1.51/0.99  --bmc1_min_bound                        0
% 1.51/0.99  --bmc1_max_bound                        -1
% 1.51/0.99  --bmc1_max_bound_default                -1
% 1.51/0.99  --bmc1_symbol_reachability              true
% 1.51/0.99  --bmc1_property_lemmas                  false
% 1.51/0.99  --bmc1_k_induction                      false
% 1.51/0.99  --bmc1_non_equiv_states                 false
% 1.51/0.99  --bmc1_deadlock                         false
% 1.51/0.99  --bmc1_ucm                              false
% 1.51/0.99  --bmc1_add_unsat_core                   none
% 1.51/0.99  --bmc1_unsat_core_children              false
% 1.51/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.51/0.99  --bmc1_out_stat                         full
% 1.51/0.99  --bmc1_ground_init                      false
% 1.51/0.99  --bmc1_pre_inst_next_state              false
% 1.51/0.99  --bmc1_pre_inst_state                   false
% 1.51/0.99  --bmc1_pre_inst_reach_state             false
% 1.51/0.99  --bmc1_out_unsat_core                   false
% 1.51/0.99  --bmc1_aig_witness_out                  false
% 1.51/0.99  --bmc1_verbose                          false
% 1.51/0.99  --bmc1_dump_clauses_tptp                false
% 1.51/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.51/0.99  --bmc1_dump_file                        -
% 1.51/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.51/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.51/0.99  --bmc1_ucm_extend_mode                  1
% 1.51/0.99  --bmc1_ucm_init_mode                    2
% 1.51/0.99  --bmc1_ucm_cone_mode                    none
% 1.51/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.51/0.99  --bmc1_ucm_relax_model                  4
% 1.51/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.51/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.51/0.99  --bmc1_ucm_layered_model                none
% 1.51/0.99  --bmc1_ucm_max_lemma_size               10
% 1.51/0.99  
% 1.51/0.99  ------ AIG Options
% 1.51/0.99  
% 1.51/0.99  --aig_mode                              false
% 1.51/0.99  
% 1.51/0.99  ------ Instantiation Options
% 1.51/0.99  
% 1.51/0.99  --instantiation_flag                    true
% 1.51/0.99  --inst_sos_flag                         false
% 1.51/0.99  --inst_sos_phase                        true
% 1.51/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.51/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.51/0.99  --inst_lit_sel_side                     num_symb
% 1.51/0.99  --inst_solver_per_active                1400
% 1.51/0.99  --inst_solver_calls_frac                1.
% 1.51/0.99  --inst_passive_queue_type               priority_queues
% 1.51/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.51/0.99  --inst_passive_queues_freq              [25;2]
% 1.51/0.99  --inst_dismatching                      true
% 1.51/0.99  --inst_eager_unprocessed_to_passive     true
% 1.51/0.99  --inst_prop_sim_given                   true
% 1.51/0.99  --inst_prop_sim_new                     false
% 1.51/0.99  --inst_subs_new                         false
% 1.51/0.99  --inst_eq_res_simp                      false
% 1.51/0.99  --inst_subs_given                       false
% 1.51/0.99  --inst_orphan_elimination               true
% 1.51/0.99  --inst_learning_loop_flag               true
% 1.51/0.99  --inst_learning_start                   3000
% 1.51/0.99  --inst_learning_factor                  2
% 1.51/0.99  --inst_start_prop_sim_after_learn       3
% 1.51/0.99  --inst_sel_renew                        solver
% 1.51/0.99  --inst_lit_activity_flag                true
% 1.51/0.99  --inst_restr_to_given                   false
% 1.51/0.99  --inst_activity_threshold               500
% 1.51/0.99  --inst_out_proof                        true
% 1.51/0.99  
% 1.51/0.99  ------ Resolution Options
% 1.51/0.99  
% 1.51/0.99  --resolution_flag                       true
% 1.51/0.99  --res_lit_sel                           adaptive
% 1.51/0.99  --res_lit_sel_side                      none
% 1.51/0.99  --res_ordering                          kbo
% 1.51/0.99  --res_to_prop_solver                    active
% 1.51/0.99  --res_prop_simpl_new                    false
% 1.51/0.99  --res_prop_simpl_given                  true
% 1.51/0.99  --res_passive_queue_type                priority_queues
% 1.51/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.51/0.99  --res_passive_queues_freq               [15;5]
% 1.51/0.99  --res_forward_subs                      full
% 1.51/0.99  --res_backward_subs                     full
% 1.51/0.99  --res_forward_subs_resolution           true
% 1.51/0.99  --res_backward_subs_resolution          true
% 1.51/0.99  --res_orphan_elimination                true
% 1.51/0.99  --res_time_limit                        2.
% 1.51/0.99  --res_out_proof                         true
% 1.51/0.99  
% 1.51/0.99  ------ Superposition Options
% 1.51/0.99  
% 1.51/0.99  --superposition_flag                    true
% 1.51/0.99  --sup_passive_queue_type                priority_queues
% 1.51/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.51/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.51/0.99  --demod_completeness_check              fast
% 1.51/0.99  --demod_use_ground                      true
% 1.51/0.99  --sup_to_prop_solver                    passive
% 1.51/0.99  --sup_prop_simpl_new                    true
% 1.51/0.99  --sup_prop_simpl_given                  true
% 1.51/0.99  --sup_fun_splitting                     false
% 1.51/0.99  --sup_smt_interval                      50000
% 1.51/0.99  
% 1.51/0.99  ------ Superposition Simplification Setup
% 1.51/0.99  
% 1.51/0.99  --sup_indices_passive                   []
% 1.51/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.51/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.51/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.51/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.51/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.51/0.99  --sup_full_bw                           [BwDemod]
% 1.51/0.99  --sup_immed_triv                        [TrivRules]
% 1.51/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.51/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.51/0.99  --sup_immed_bw_main                     []
% 1.51/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.51/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.51/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.51/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.51/0.99  
% 1.51/0.99  ------ Combination Options
% 1.51/0.99  
% 1.51/0.99  --comb_res_mult                         3
% 1.51/0.99  --comb_sup_mult                         2
% 1.51/0.99  --comb_inst_mult                        10
% 1.51/0.99  
% 1.51/0.99  ------ Debug Options
% 1.51/0.99  
% 1.51/0.99  --dbg_backtrace                         false
% 1.51/0.99  --dbg_dump_prop_clauses                 false
% 1.51/0.99  --dbg_dump_prop_clauses_file            -
% 1.51/0.99  --dbg_out_stat                          false
% 1.51/0.99  ------ Parsing...
% 1.51/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.51/0.99  
% 1.51/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 1.51/0.99  
% 1.51/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.51/0.99  
% 1.51/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.51/0.99  ------ Proving...
% 1.51/0.99  ------ Problem Properties 
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  clauses                                 15
% 1.51/0.99  conjectures                             2
% 1.51/0.99  EPR                                     1
% 1.51/0.99  Horn                                    11
% 1.51/0.99  unary                                   5
% 1.51/0.99  binary                                  2
% 1.51/0.99  lits                                    39
% 1.51/0.99  lits eq                                 9
% 1.51/0.99  fd_pure                                 0
% 1.51/0.99  fd_pseudo                               0
% 1.51/0.99  fd_cond                                 0
% 1.51/0.99  fd_pseudo_cond                          4
% 1.51/0.99  AC symbols                              0
% 1.51/0.99  
% 1.51/0.99  ------ Schedule dynamic 5 is on 
% 1.51/0.99  
% 1.51/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  ------ 
% 1.51/0.99  Current options:
% 1.51/0.99  ------ 
% 1.51/0.99  
% 1.51/0.99  ------ Input Options
% 1.51/0.99  
% 1.51/0.99  --out_options                           all
% 1.51/0.99  --tptp_safe_out                         true
% 1.51/0.99  --problem_path                          ""
% 1.51/0.99  --include_path                          ""
% 1.51/0.99  --clausifier                            res/vclausify_rel
% 1.51/0.99  --clausifier_options                    --mode clausify
% 1.51/0.99  --stdin                                 false
% 1.51/0.99  --stats_out                             all
% 1.51/0.99  
% 1.51/0.99  ------ General Options
% 1.51/0.99  
% 1.51/0.99  --fof                                   false
% 1.51/0.99  --time_out_real                         305.
% 1.51/0.99  --time_out_virtual                      -1.
% 1.51/0.99  --symbol_type_check                     false
% 1.51/0.99  --clausify_out                          false
% 1.51/0.99  --sig_cnt_out                           false
% 1.51/0.99  --trig_cnt_out                          false
% 1.51/0.99  --trig_cnt_out_tolerance                1.
% 1.51/0.99  --trig_cnt_out_sk_spl                   false
% 1.51/0.99  --abstr_cl_out                          false
% 1.51/0.99  
% 1.51/0.99  ------ Global Options
% 1.51/0.99  
% 1.51/0.99  --schedule                              default
% 1.51/0.99  --add_important_lit                     false
% 1.51/0.99  --prop_solver_per_cl                    1000
% 1.51/0.99  --min_unsat_core                        false
% 1.51/0.99  --soft_assumptions                      false
% 1.51/0.99  --soft_lemma_size                       3
% 1.51/0.99  --prop_impl_unit_size                   0
% 1.51/0.99  --prop_impl_unit                        []
% 1.51/0.99  --share_sel_clauses                     true
% 1.51/0.99  --reset_solvers                         false
% 1.51/0.99  --bc_imp_inh                            [conj_cone]
% 1.51/0.99  --conj_cone_tolerance                   3.
% 1.51/0.99  --extra_neg_conj                        none
% 1.51/0.99  --large_theory_mode                     true
% 1.51/0.99  --prolific_symb_bound                   200
% 1.51/0.99  --lt_threshold                          2000
% 1.51/0.99  --clause_weak_htbl                      true
% 1.51/0.99  --gc_record_bc_elim                     false
% 1.51/0.99  
% 1.51/0.99  ------ Preprocessing Options
% 1.51/0.99  
% 1.51/0.99  --preprocessing_flag                    true
% 1.51/0.99  --time_out_prep_mult                    0.1
% 1.51/0.99  --splitting_mode                        input
% 1.51/0.99  --splitting_grd                         true
% 1.51/0.99  --splitting_cvd                         false
% 1.51/0.99  --splitting_cvd_svl                     false
% 1.51/0.99  --splitting_nvd                         32
% 1.51/0.99  --sub_typing                            true
% 1.51/0.99  --prep_gs_sim                           true
% 1.51/0.99  --prep_unflatten                        true
% 1.51/0.99  --prep_res_sim                          true
% 1.51/0.99  --prep_upred                            true
% 1.51/0.99  --prep_sem_filter                       exhaustive
% 1.51/0.99  --prep_sem_filter_out                   false
% 1.51/0.99  --pred_elim                             true
% 1.51/0.99  --res_sim_input                         true
% 1.51/0.99  --eq_ax_congr_red                       true
% 1.51/0.99  --pure_diseq_elim                       true
% 1.51/0.99  --brand_transform                       false
% 1.51/0.99  --non_eq_to_eq                          false
% 1.51/0.99  --prep_def_merge                        true
% 1.51/0.99  --prep_def_merge_prop_impl              false
% 1.51/0.99  --prep_def_merge_mbd                    true
% 1.51/0.99  --prep_def_merge_tr_red                 false
% 1.51/0.99  --prep_def_merge_tr_cl                  false
% 1.51/0.99  --smt_preprocessing                     true
% 1.51/0.99  --smt_ac_axioms                         fast
% 1.51/0.99  --preprocessed_out                      false
% 1.51/0.99  --preprocessed_stats                    false
% 1.51/0.99  
% 1.51/0.99  ------ Abstraction refinement Options
% 1.51/0.99  
% 1.51/0.99  --abstr_ref                             []
% 1.51/0.99  --abstr_ref_prep                        false
% 1.51/0.99  --abstr_ref_until_sat                   false
% 1.51/0.99  --abstr_ref_sig_restrict                funpre
% 1.51/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.51/0.99  --abstr_ref_under                       []
% 1.51/0.99  
% 1.51/0.99  ------ SAT Options
% 1.51/0.99  
% 1.51/0.99  --sat_mode                              false
% 1.51/0.99  --sat_fm_restart_options                ""
% 1.51/0.99  --sat_gr_def                            false
% 1.51/0.99  --sat_epr_types                         true
% 1.51/0.99  --sat_non_cyclic_types                  false
% 1.51/0.99  --sat_finite_models                     false
% 1.51/0.99  --sat_fm_lemmas                         false
% 1.51/0.99  --sat_fm_prep                           false
% 1.51/0.99  --sat_fm_uc_incr                        true
% 1.51/0.99  --sat_out_model                         small
% 1.51/0.99  --sat_out_clauses                       false
% 1.51/0.99  
% 1.51/0.99  ------ QBF Options
% 1.51/0.99  
% 1.51/0.99  --qbf_mode                              false
% 1.51/0.99  --qbf_elim_univ                         false
% 1.51/0.99  --qbf_dom_inst                          none
% 1.51/0.99  --qbf_dom_pre_inst                      false
% 1.51/0.99  --qbf_sk_in                             false
% 1.51/0.99  --qbf_pred_elim                         true
% 1.51/0.99  --qbf_split                             512
% 1.51/0.99  
% 1.51/0.99  ------ BMC1 Options
% 1.51/0.99  
% 1.51/0.99  --bmc1_incremental                      false
% 1.51/0.99  --bmc1_axioms                           reachable_all
% 1.51/0.99  --bmc1_min_bound                        0
% 1.51/0.99  --bmc1_max_bound                        -1
% 1.51/0.99  --bmc1_max_bound_default                -1
% 1.51/0.99  --bmc1_symbol_reachability              true
% 1.51/0.99  --bmc1_property_lemmas                  false
% 1.51/0.99  --bmc1_k_induction                      false
% 1.51/0.99  --bmc1_non_equiv_states                 false
% 1.51/0.99  --bmc1_deadlock                         false
% 1.51/0.99  --bmc1_ucm                              false
% 1.51/0.99  --bmc1_add_unsat_core                   none
% 1.51/0.99  --bmc1_unsat_core_children              false
% 1.51/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.51/0.99  --bmc1_out_stat                         full
% 1.51/0.99  --bmc1_ground_init                      false
% 1.51/0.99  --bmc1_pre_inst_next_state              false
% 1.51/0.99  --bmc1_pre_inst_state                   false
% 1.51/0.99  --bmc1_pre_inst_reach_state             false
% 1.51/0.99  --bmc1_out_unsat_core                   false
% 1.51/0.99  --bmc1_aig_witness_out                  false
% 1.51/0.99  --bmc1_verbose                          false
% 1.51/0.99  --bmc1_dump_clauses_tptp                false
% 1.51/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.51/0.99  --bmc1_dump_file                        -
% 1.51/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.51/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.51/0.99  --bmc1_ucm_extend_mode                  1
% 1.51/0.99  --bmc1_ucm_init_mode                    2
% 1.51/0.99  --bmc1_ucm_cone_mode                    none
% 1.51/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.51/0.99  --bmc1_ucm_relax_model                  4
% 1.51/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.51/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.51/0.99  --bmc1_ucm_layered_model                none
% 1.51/0.99  --bmc1_ucm_max_lemma_size               10
% 1.51/0.99  
% 1.51/0.99  ------ AIG Options
% 1.51/0.99  
% 1.51/0.99  --aig_mode                              false
% 1.51/0.99  
% 1.51/0.99  ------ Instantiation Options
% 1.51/0.99  
% 1.51/0.99  --instantiation_flag                    true
% 1.51/0.99  --inst_sos_flag                         false
% 1.51/0.99  --inst_sos_phase                        true
% 1.51/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.51/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.51/0.99  --inst_lit_sel_side                     none
% 1.51/0.99  --inst_solver_per_active                1400
% 1.51/0.99  --inst_solver_calls_frac                1.
% 1.51/0.99  --inst_passive_queue_type               priority_queues
% 1.51/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.51/0.99  --inst_passive_queues_freq              [25;2]
% 1.51/0.99  --inst_dismatching                      true
% 1.51/0.99  --inst_eager_unprocessed_to_passive     true
% 1.51/0.99  --inst_prop_sim_given                   true
% 1.51/0.99  --inst_prop_sim_new                     false
% 1.51/0.99  --inst_subs_new                         false
% 1.51/0.99  --inst_eq_res_simp                      false
% 1.51/0.99  --inst_subs_given                       false
% 1.51/0.99  --inst_orphan_elimination               true
% 1.51/0.99  --inst_learning_loop_flag               true
% 1.51/0.99  --inst_learning_start                   3000
% 1.51/0.99  --inst_learning_factor                  2
% 1.51/0.99  --inst_start_prop_sim_after_learn       3
% 1.51/0.99  --inst_sel_renew                        solver
% 1.51/0.99  --inst_lit_activity_flag                true
% 1.51/0.99  --inst_restr_to_given                   false
% 1.51/0.99  --inst_activity_threshold               500
% 1.51/0.99  --inst_out_proof                        true
% 1.51/0.99  
% 1.51/0.99  ------ Resolution Options
% 1.51/0.99  
% 1.51/0.99  --resolution_flag                       false
% 1.51/0.99  --res_lit_sel                           adaptive
% 1.51/0.99  --res_lit_sel_side                      none
% 1.51/0.99  --res_ordering                          kbo
% 1.51/0.99  --res_to_prop_solver                    active
% 1.51/0.99  --res_prop_simpl_new                    false
% 1.51/0.99  --res_prop_simpl_given                  true
% 1.51/0.99  --res_passive_queue_type                priority_queues
% 1.51/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.51/0.99  --res_passive_queues_freq               [15;5]
% 1.51/0.99  --res_forward_subs                      full
% 1.51/0.99  --res_backward_subs                     full
% 1.51/0.99  --res_forward_subs_resolution           true
% 1.51/0.99  --res_backward_subs_resolution          true
% 1.51/0.99  --res_orphan_elimination                true
% 1.51/0.99  --res_time_limit                        2.
% 1.51/0.99  --res_out_proof                         true
% 1.51/0.99  
% 1.51/0.99  ------ Superposition Options
% 1.51/0.99  
% 1.51/0.99  --superposition_flag                    true
% 1.51/0.99  --sup_passive_queue_type                priority_queues
% 1.51/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.51/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.51/0.99  --demod_completeness_check              fast
% 1.51/0.99  --demod_use_ground                      true
% 1.51/0.99  --sup_to_prop_solver                    passive
% 1.51/0.99  --sup_prop_simpl_new                    true
% 1.51/0.99  --sup_prop_simpl_given                  true
% 1.51/0.99  --sup_fun_splitting                     false
% 1.51/0.99  --sup_smt_interval                      50000
% 1.51/0.99  
% 1.51/0.99  ------ Superposition Simplification Setup
% 1.51/0.99  
% 1.51/0.99  --sup_indices_passive                   []
% 1.51/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.51/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.51/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.51/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.51/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.51/0.99  --sup_full_bw                           [BwDemod]
% 1.51/0.99  --sup_immed_triv                        [TrivRules]
% 1.51/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.51/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.51/0.99  --sup_immed_bw_main                     []
% 1.51/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.51/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.51/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.51/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.51/0.99  
% 1.51/0.99  ------ Combination Options
% 1.51/0.99  
% 1.51/0.99  --comb_res_mult                         3
% 1.51/0.99  --comb_sup_mult                         2
% 1.51/0.99  --comb_inst_mult                        10
% 1.51/0.99  
% 1.51/0.99  ------ Debug Options
% 1.51/0.99  
% 1.51/0.99  --dbg_backtrace                         false
% 1.51/0.99  --dbg_dump_prop_clauses                 false
% 1.51/0.99  --dbg_dump_prop_clauses_file            -
% 1.51/0.99  --dbg_out_stat                          false
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  ------ Proving...
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  % SZS status Theorem for theBenchmark.p
% 1.51/0.99  
% 1.51/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.51/0.99  
% 1.51/0.99  fof(f3,axiom,(
% 1.51/0.99    ! [X0] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1))),
% 1.51/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.51/0.99  
% 1.51/0.99  fof(f11,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 1.51/0.99    inference(ennf_transformation,[],[f3])).
% 1.51/0.99  
% 1.51/0.99  fof(f12,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f11])).
% 1.51/0.99  
% 1.51/0.99  fof(f48,plain,(
% 1.51/0.99    ( ! [X0,X1] : (k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f12])).
% 1.51/0.99  
% 1.51/0.99  fof(f5,conjecture,(
% 1.51/0.99    ! [X0] : ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (r3_lattice3(X0,X1,X2) => r3_lattices(X0,X1,k16_lattice3(X0,X2)))))),
% 1.51/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.51/0.99  
% 1.51/0.99  fof(f6,negated_conjecture,(
% 1.51/0.99    ~! [X0] : ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (r3_lattice3(X0,X1,X2) => r3_lattices(X0,X1,k16_lattice3(X0,X2)))))),
% 1.51/0.99    inference(negated_conjecture,[],[f5])).
% 1.51/0.99  
% 1.51/0.99  fof(f15,plain,(
% 1.51/0.99    ? [X0] : (? [X1] : (? [X2] : (~r3_lattices(X0,X1,k16_lattice3(X0,X2)) & r3_lattice3(X0,X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) & (l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)))),
% 1.51/0.99    inference(ennf_transformation,[],[f6])).
% 1.51/0.99  
% 1.51/0.99  fof(f16,plain,(
% 1.51/0.99    ? [X0] : (? [X1] : (? [X2] : (~r3_lattices(X0,X1,k16_lattice3(X0,X2)) & r3_lattice3(X0,X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f15])).
% 1.51/0.99  
% 1.51/0.99  fof(f35,plain,(
% 1.51/0.99    ( ! [X0,X1] : (? [X2] : (~r3_lattices(X0,X1,k16_lattice3(X0,X2)) & r3_lattice3(X0,X1,X2)) => (~r3_lattices(X0,X1,k16_lattice3(X0,sK7)) & r3_lattice3(X0,X1,sK7))) )),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f34,plain,(
% 1.51/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~r3_lattices(X0,X1,k16_lattice3(X0,X2)) & r3_lattice3(X0,X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (~r3_lattices(X0,sK6,k16_lattice3(X0,X2)) & r3_lattice3(X0,sK6,X2)) & m1_subset_1(sK6,u1_struct_0(X0)))) )),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f33,plain,(
% 1.51/0.99    ? [X0] : (? [X1] : (? [X2] : (~r3_lattices(X0,X1,k16_lattice3(X0,X2)) & r3_lattice3(X0,X1,X2)) & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (~r3_lattices(sK5,X1,k16_lattice3(sK5,X2)) & r3_lattice3(sK5,X1,X2)) & m1_subset_1(X1,u1_struct_0(sK5))) & l3_lattices(sK5) & v4_lattice3(sK5) & v10_lattices(sK5) & ~v2_struct_0(sK5))),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f36,plain,(
% 1.51/0.99    ((~r3_lattices(sK5,sK6,k16_lattice3(sK5,sK7)) & r3_lattice3(sK5,sK6,sK7)) & m1_subset_1(sK6,u1_struct_0(sK5))) & l3_lattices(sK5) & v4_lattice3(sK5) & v10_lattices(sK5) & ~v2_struct_0(sK5)),
% 1.51/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7])],[f16,f35,f34,f33])).
% 1.51/0.99  
% 1.51/0.99  fof(f57,plain,(
% 1.51/0.99    l3_lattices(sK5)),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  fof(f54,plain,(
% 1.51/0.99    ~v2_struct_0(sK5)),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  fof(f2,axiom,(
% 1.51/0.99    ! [X0] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1,X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k15_lattice3(X0,X1) = X2 <=> (! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r4_lattice3(X0,X3,X1) => r1_lattices(X0,X2,X3))) & r4_lattice3(X0,X2,X1))))))),
% 1.51/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.51/0.99  
% 1.51/0.99  fof(f9,plain,(
% 1.51/0.99    ! [X0] : ((! [X1,X2] : ((k15_lattice3(X0,X1) = X2 <=> (! [X3] : ((r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1))) | ~m1_subset_1(X2,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 1.51/0.99    inference(ennf_transformation,[],[f2])).
% 1.51/0.99  
% 1.51/0.99  fof(f10,plain,(
% 1.51/0.99    ! [X0] : (! [X1,X2] : ((k15_lattice3(X0,X1) = X2 <=> (! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f9])).
% 1.51/0.99  
% 1.51/0.99  fof(f23,plain,(
% 1.51/0.99    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1))) & ((! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(nnf_transformation,[],[f10])).
% 1.51/0.99  
% 1.51/0.99  fof(f24,plain,(
% 1.51/0.99    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | ? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1)) & ((! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f23])).
% 1.51/0.99  
% 1.51/0.99  fof(f25,plain,(
% 1.51/0.99    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | ? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1)) & ((! [X4] : (r1_lattices(X0,X2,X4) | ~r4_lattice3(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(rectify,[],[f24])).
% 1.51/0.99  
% 1.51/0.99  fof(f26,plain,(
% 1.51/0.99    ! [X2,X1,X0] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_lattices(X0,X2,sK3(X0,X1,X2)) & r4_lattice3(X0,sK3(X0,X1,X2),X1) & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0))))),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f27,plain,(
% 1.51/0.99    ! [X0] : (! [X1,X2] : (((k15_lattice3(X0,X1) = X2 | (~r1_lattices(X0,X2,sK3(X0,X1,X2)) & r4_lattice3(X0,sK3(X0,X1,X2),X1) & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1)) & ((! [X4] : (r1_lattices(X0,X2,X4) | ~r4_lattice3(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1)) | k15_lattice3(X0,X1) != X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f25,f26])).
% 1.51/0.99  
% 1.51/0.99  fof(f46,plain,(
% 1.51/0.99    ( ! [X2,X0,X1] : (k15_lattice3(X0,X1) = X2 | r4_lattice3(X0,sK3(X0,X1,X2),X1) | ~r4_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f27])).
% 1.51/0.99  
% 1.51/0.99  fof(f55,plain,(
% 1.51/0.99    v10_lattices(sK5)),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  fof(f56,plain,(
% 1.51/0.99    v4_lattice3(sK5)),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  fof(f1,axiom,(
% 1.51/0.99    ! [X0] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => (v4_lattice3(X0) <=> ! [X1] : ? [X2] : (! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r4_lattice3(X0,X3,X1) => r1_lattices(X0,X2,X3))) & r4_lattice3(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0)))))),
% 1.51/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.51/0.99  
% 1.51/0.99  fof(f7,plain,(
% 1.51/0.99    ! [X0] : ((v4_lattice3(X0) <=> ! [X1] : ? [X2] : (! [X3] : ((r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0)))) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 1.51/0.99    inference(ennf_transformation,[],[f1])).
% 1.51/0.99  
% 1.51/0.99  fof(f8,plain,(
% 1.51/0.99    ! [X0] : ((v4_lattice3(X0) <=> ! [X1] : ? [X2] : (! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0)))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f7])).
% 1.51/0.99  
% 1.51/0.99  fof(f17,plain,(
% 1.51/0.99    ! [X0] : (((v4_lattice3(X0) | ? [X1] : ! [X2] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)))) & (! [X1] : ? [X2] : (! [X3] : (r1_lattices(X0,X2,X3) | ~r4_lattice3(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) & r4_lattice3(X0,X2,X1) & m1_subset_1(X2,u1_struct_0(X0))) | ~v4_lattice3(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(nnf_transformation,[],[f8])).
% 1.51/0.99  
% 1.51/0.99  fof(f18,plain,(
% 1.51/0.99    ! [X0] : (((v4_lattice3(X0) | ? [X1] : ! [X2] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)))) & (! [X4] : ? [X5] : (! [X6] : (r1_lattices(X0,X5,X6) | ~r4_lattice3(X0,X6,X4) | ~m1_subset_1(X6,u1_struct_0(X0))) & r4_lattice3(X0,X5,X4) & m1_subset_1(X5,u1_struct_0(X0))) | ~v4_lattice3(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(rectify,[],[f17])).
% 1.51/0.99  
% 1.51/0.99  fof(f21,plain,(
% 1.51/0.99    ! [X4,X0] : (? [X5] : (! [X6] : (r1_lattices(X0,X5,X6) | ~r4_lattice3(X0,X6,X4) | ~m1_subset_1(X6,u1_struct_0(X0))) & r4_lattice3(X0,X5,X4) & m1_subset_1(X5,u1_struct_0(X0))) => (! [X6] : (r1_lattices(X0,sK2(X0,X4),X6) | ~r4_lattice3(X0,X6,X4) | ~m1_subset_1(X6,u1_struct_0(X0))) & r4_lattice3(X0,sK2(X0,X4),X4) & m1_subset_1(sK2(X0,X4),u1_struct_0(X0))))),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f20,plain,(
% 1.51/0.99    ( ! [X1] : (! [X2,X0] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_lattices(X0,X2,sK1(X0,X2)) & r4_lattice3(X0,sK1(X0,X2),X1) & m1_subset_1(sK1(X0,X2),u1_struct_0(X0))))) )),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f19,plain,(
% 1.51/0.99    ! [X0] : (? [X1] : ! [X2] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) => ! [X2] : (? [X3] : (~r1_lattices(X0,X2,X3) & r4_lattice3(X0,X3,sK0(X0)) & m1_subset_1(X3,u1_struct_0(X0))) | ~r4_lattice3(X0,X2,sK0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0))))),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f22,plain,(
% 1.51/0.99    ! [X0] : (((v4_lattice3(X0) | ! [X2] : ((~r1_lattices(X0,X2,sK1(X0,X2)) & r4_lattice3(X0,sK1(X0,X2),sK0(X0)) & m1_subset_1(sK1(X0,X2),u1_struct_0(X0))) | ~r4_lattice3(X0,X2,sK0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)))) & (! [X4] : (! [X6] : (r1_lattices(X0,sK2(X0,X4),X6) | ~r4_lattice3(X0,X6,X4) | ~m1_subset_1(X6,u1_struct_0(X0))) & r4_lattice3(X0,sK2(X0,X4),X4) & m1_subset_1(sK2(X0,X4),u1_struct_0(X0))) | ~v4_lattice3(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f18,f21,f20,f19])).
% 1.51/0.99  
% 1.51/0.99  fof(f39,plain,(
% 1.51/0.99    ( ! [X6,X4,X0] : (r1_lattices(X0,sK2(X0,X4),X6) | ~r4_lattice3(X0,X6,X4) | ~m1_subset_1(X6,u1_struct_0(X0)) | ~v4_lattice3(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f22])).
% 1.51/0.99  
% 1.51/0.99  fof(f47,plain,(
% 1.51/0.99    ( ! [X2,X0,X1] : (k15_lattice3(X0,X1) = X2 | ~r1_lattices(X0,X2,sK3(X0,X1,X2)) | ~r4_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f27])).
% 1.51/0.99  
% 1.51/0.99  fof(f37,plain,(
% 1.51/0.99    ( ! [X4,X0] : (m1_subset_1(sK2(X0,X4),u1_struct_0(X0)) | ~v4_lattice3(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f22])).
% 1.51/0.99  
% 1.51/0.99  fof(f45,plain,(
% 1.51/0.99    ( ! [X2,X0,X1] : (k15_lattice3(X0,X1) = X2 | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0)) | ~r4_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f27])).
% 1.51/0.99  
% 1.51/0.99  fof(f38,plain,(
% 1.51/0.99    ( ! [X4,X0] : (r4_lattice3(X0,sK2(X0,X4),X4) | ~v4_lattice3(X0) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f22])).
% 1.51/0.99  
% 1.51/0.99  fof(f4,axiom,(
% 1.51/0.99    ! [X0] : ((l3_lattices(X0) & v4_lattice3(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (k16_lattice3(X0,X2) = X1 <=> (! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r3_lattice3(X0,X3,X2) => r3_lattices(X0,X3,X1))) & r3_lattice3(X0,X1,X2)))))),
% 1.51/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.51/0.99  
% 1.51/0.99  fof(f13,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : (! [X2] : (k16_lattice3(X0,X2) = X1 <=> (! [X3] : ((r3_lattices(X0,X3,X1) | ~r3_lattice3(X0,X3,X2)) | ~m1_subset_1(X3,u1_struct_0(X0))) & r3_lattice3(X0,X1,X2))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 1.51/0.99    inference(ennf_transformation,[],[f4])).
% 1.51/0.99  
% 1.51/0.99  fof(f14,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : (! [X2] : (k16_lattice3(X0,X2) = X1 <=> (! [X3] : (r3_lattices(X0,X3,X1) | ~r3_lattice3(X0,X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) & r3_lattice3(X0,X1,X2))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f13])).
% 1.51/0.99  
% 1.51/0.99  fof(f28,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : (! [X2] : ((k16_lattice3(X0,X2) = X1 | (? [X3] : (~r3_lattices(X0,X3,X1) & r3_lattice3(X0,X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2))) & ((! [X3] : (r3_lattices(X0,X3,X1) | ~r3_lattice3(X0,X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) & r3_lattice3(X0,X1,X2)) | k16_lattice3(X0,X2) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(nnf_transformation,[],[f14])).
% 1.51/0.99  
% 1.51/0.99  fof(f29,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : (! [X2] : ((k16_lattice3(X0,X2) = X1 | ? [X3] : (~r3_lattices(X0,X3,X1) & r3_lattice3(X0,X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2)) & ((! [X3] : (r3_lattices(X0,X3,X1) | ~r3_lattice3(X0,X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) & r3_lattice3(X0,X1,X2)) | k16_lattice3(X0,X2) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(flattening,[],[f28])).
% 1.51/0.99  
% 1.51/0.99  fof(f30,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : (! [X2] : ((k16_lattice3(X0,X2) = X1 | ? [X3] : (~r3_lattices(X0,X3,X1) & r3_lattice3(X0,X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2)) & ((! [X4] : (r3_lattices(X0,X4,X1) | ~r3_lattice3(X0,X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0))) & r3_lattice3(X0,X1,X2)) | k16_lattice3(X0,X2) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(rectify,[],[f29])).
% 1.51/0.99  
% 1.51/0.99  fof(f31,plain,(
% 1.51/0.99    ! [X2,X1,X0] : (? [X3] : (~r3_lattices(X0,X3,X1) & r3_lattice3(X0,X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) => (~r3_lattices(X0,sK4(X0,X1,X2),X1) & r3_lattice3(X0,sK4(X0,X1,X2),X2) & m1_subset_1(sK4(X0,X1,X2),u1_struct_0(X0))))),
% 1.51/0.99    introduced(choice_axiom,[])).
% 1.51/0.99  
% 1.51/0.99  fof(f32,plain,(
% 1.51/0.99    ! [X0] : (! [X1] : (! [X2] : ((k16_lattice3(X0,X2) = X1 | (~r3_lattices(X0,sK4(X0,X1,X2),X1) & r3_lattice3(X0,sK4(X0,X1,X2),X2) & m1_subset_1(sK4(X0,X1,X2),u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2)) & ((! [X4] : (r3_lattices(X0,X4,X1) | ~r3_lattice3(X0,X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0))) & r3_lattice3(X0,X1,X2)) | k16_lattice3(X0,X2) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 1.51/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f30,f31])).
% 1.51/0.99  
% 1.51/0.99  fof(f50,plain,(
% 1.51/0.99    ( ! [X4,X2,X0,X1] : (r3_lattices(X0,X4,X1) | ~r3_lattice3(X0,X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0)) | k16_lattice3(X0,X2) != X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(cnf_transformation,[],[f32])).
% 1.51/0.99  
% 1.51/0.99  fof(f63,plain,(
% 1.51/0.99    ( ! [X4,X2,X0] : (r3_lattices(X0,X4,k16_lattice3(X0,X2)) | ~r3_lattice3(X0,X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~m1_subset_1(k16_lattice3(X0,X2),u1_struct_0(X0)) | ~l3_lattices(X0) | ~v4_lattice3(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 1.51/0.99    inference(equality_resolution,[],[f50])).
% 1.51/0.99  
% 1.51/0.99  fof(f60,plain,(
% 1.51/0.99    ~r3_lattices(sK5,sK6,k16_lattice3(sK5,sK7))),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  fof(f58,plain,(
% 1.51/0.99    m1_subset_1(sK6,u1_struct_0(sK5))),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  fof(f59,plain,(
% 1.51/0.99    r3_lattice3(sK5,sK6,sK7)),
% 1.51/0.99    inference(cnf_transformation,[],[f36])).
% 1.51/0.99  
% 1.51/0.99  cnf(c_11,plain,
% 1.51/0.99      ( v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1) ),
% 1.51/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_20,negated_conjecture,
% 1.51/0.99      ( l3_lattices(sK5) ),
% 1.51/0.99      inference(cnf_transformation,[],[f57]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_659,plain,
% 1.51/0.99      ( v2_struct_0(X0)
% 1.51/0.99      | k15_lattice3(X0,a_2_1_lattice3(X0,X1)) = k16_lattice3(X0,X1)
% 1.51/0.99      | sK5 != X0 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_20]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_660,plain,
% 1.51/0.99      ( v2_struct_0(sK5)
% 1.51/0.99      | k15_lattice3(sK5,a_2_1_lattice3(sK5,X0)) = k16_lattice3(sK5,X0) ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_659]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_23,negated_conjecture,
% 1.51/0.99      ( ~ v2_struct_0(sK5) ),
% 1.51/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_664,plain,
% 1.51/0.99      ( k15_lattice3(sK5,a_2_1_lattice3(sK5,X0)) = k16_lattice3(sK5,X0) ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_660,c_23]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_810,plain,
% 1.51/0.99      ( k15_lattice3(sK5,a_2_1_lattice3(sK5,X0_53)) = k16_lattice3(sK5,X0_53) ),
% 1.51/0.99      inference(subtyping,[status(esa)],[c_664]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_7,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,X1,X2)
% 1.51/0.99      | r4_lattice3(X0,sK3(X0,X2,X1),X2)
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X2) = X1 ),
% 1.51/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_22,negated_conjecture,
% 1.51/0.99      ( v10_lattices(sK5) ),
% 1.51/0.99      inference(cnf_transformation,[],[f55]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_595,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,X1,X2)
% 1.51/0.99      | r4_lattice3(X0,sK3(X0,X2,X1),X2)
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X2) = X1
% 1.51/0.99      | sK5 != X0 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_22]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_596,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,X0,X1)
% 1.51/0.99      | r4_lattice3(sK5,sK3(sK5,X1,X0),X1)
% 1.51/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 1.51/0.99      | v2_struct_0(sK5)
% 1.51/0.99      | ~ l3_lattices(sK5)
% 1.51/0.99      | ~ v4_lattice3(sK5)
% 1.51/0.99      | k15_lattice3(sK5,X1) = X0 ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_595]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_21,negated_conjecture,
% 1.51/0.99      ( v4_lattice3(sK5) ),
% 1.51/0.99      inference(cnf_transformation,[],[f56]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_600,plain,
% 1.51/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK5))
% 1.51/0.99      | r4_lattice3(sK5,sK3(sK5,X1,X0),X1)
% 1.51/0.99      | ~ r4_lattice3(sK5,X0,X1)
% 1.51/0.99      | k15_lattice3(sK5,X1) = X0 ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_596,c_23,c_21,c_20]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_601,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,X0,X1)
% 1.51/0.99      | r4_lattice3(sK5,sK3(sK5,X1,X0),X1)
% 1.51/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK5))
% 1.51/0.99      | k15_lattice3(sK5,X1) = X0 ),
% 1.51/0.99      inference(renaming,[status(thm)],[c_600]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_811,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,X0_50,X0_51)
% 1.51/0.99      | r4_lattice3(sK5,sK3(sK5,X0_51,X0_50),X0_51)
% 1.51/0.99      | ~ m1_subset_1(X0_50,u1_struct_0(sK5))
% 1.51/0.99      | k15_lattice3(sK5,X0_51) = X0_50 ),
% 1.51/0.99      inference(subtyping,[status(esa)],[c_601]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1113,plain,
% 1.51/0.99      ( k15_lattice3(sK5,X0_51) = X0_50
% 1.51/0.99      | r4_lattice3(sK5,X0_50,X0_51) != iProver_top
% 1.51/0.99      | r4_lattice3(sK5,sK3(sK5,X0_51,X0_50),X0_51) = iProver_top
% 1.51/0.99      | m1_subset_1(X0_50,u1_struct_0(sK5)) != iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_811]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_3,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,X1,X2)
% 1.51/0.99      | r1_lattices(X0,sK2(X0,X2),X1)
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0) ),
% 1.51/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_6,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,X1,X2)
% 1.51/0.99      | ~ r1_lattices(X0,X1,sK3(X0,X2,X1))
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X2) = X1 ),
% 1.51/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_332,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,X1,X2)
% 1.51/0.99      | ~ r4_lattice3(X3,X4,X5)
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.51/0.99      | ~ v10_lattices(X3)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | v2_struct_0(X3)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ l3_lattices(X3)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | ~ v4_lattice3(X3)
% 1.51/0.99      | X3 != X0
% 1.51/0.99      | sK3(X3,X5,X4) != X1
% 1.51/0.99      | k15_lattice3(X3,X5) = X4
% 1.51/0.99      | sK2(X0,X2) != X4 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_6]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_333,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,sK3(X0,X1,sK2(X0,X2)),X2)
% 1.51/0.99      | ~ r4_lattice3(X0,sK2(X0,X2),X1)
% 1.51/0.99      | ~ m1_subset_1(sK3(X0,X1,sK2(X0,X2)),u1_struct_0(X0))
% 1.51/0.99      | ~ m1_subset_1(sK2(X0,X2),u1_struct_0(X0))
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X1) = sK2(X0,X2) ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_332]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_5,plain,
% 1.51/0.99      ( m1_subset_1(sK2(X0,X1),u1_struct_0(X0))
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0) ),
% 1.51/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_8,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,X1,X2)
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | m1_subset_1(sK3(X0,X2,X1),u1_struct_0(X0))
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X2) = X1 ),
% 1.51/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_355,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,sK3(X0,X1,sK2(X0,X2)),X2)
% 1.51/0.99      | ~ r4_lattice3(X0,sK2(X0,X2),X1)
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X1) = sK2(X0,X2) ),
% 1.51/0.99      inference(forward_subsumption_resolution,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_333,c_5,c_8]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_442,plain,
% 1.51/0.99      ( ~ r4_lattice3(X0,sK3(X0,X1,sK2(X0,X2)),X2)
% 1.51/0.99      | ~ r4_lattice3(X0,sK2(X0,X2),X1)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k15_lattice3(X0,X1) = sK2(X0,X2)
% 1.51/0.99      | sK5 != X0 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_355,c_22]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_443,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,sK3(sK5,X0,sK2(sK5,X1)),X1)
% 1.51/0.99      | ~ r4_lattice3(sK5,sK2(sK5,X1),X0)
% 1.51/0.99      | v2_struct_0(sK5)
% 1.51/0.99      | ~ l3_lattices(sK5)
% 1.51/0.99      | ~ v4_lattice3(sK5)
% 1.51/0.99      | k15_lattice3(sK5,X0) = sK2(sK5,X1) ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_442]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_447,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,sK2(sK5,X1),X0)
% 1.51/0.99      | ~ r4_lattice3(sK5,sK3(sK5,X0,sK2(sK5,X1)),X1)
% 1.51/0.99      | k15_lattice3(sK5,X0) = sK2(sK5,X1) ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_443,c_23,c_21,c_20]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_448,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,sK3(sK5,X0,sK2(sK5,X1)),X1)
% 1.51/0.99      | ~ r4_lattice3(sK5,sK2(sK5,X1),X0)
% 1.51/0.99      | k15_lattice3(sK5,X0) = sK2(sK5,X1) ),
% 1.51/0.99      inference(renaming,[status(thm)],[c_447]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_818,plain,
% 1.51/0.99      ( ~ r4_lattice3(sK5,sK3(sK5,X0_51,sK2(sK5,X1_51)),X1_51)
% 1.51/0.99      | ~ r4_lattice3(sK5,sK2(sK5,X1_51),X0_51)
% 1.51/0.99      | k15_lattice3(sK5,X0_51) = sK2(sK5,X1_51) ),
% 1.51/0.99      inference(subtyping,[status(esa)],[c_448]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1106,plain,
% 1.51/0.99      ( k15_lattice3(sK5,X0_51) = sK2(sK5,X1_51)
% 1.51/0.99      | r4_lattice3(sK5,sK3(sK5,X0_51,sK2(sK5,X1_51)),X1_51) != iProver_top
% 1.51/0.99      | r4_lattice3(sK5,sK2(sK5,X1_51),X0_51) != iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_818]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1650,plain,
% 1.51/0.99      ( k15_lattice3(sK5,X0_51) = sK2(sK5,X0_51)
% 1.51/0.99      | r4_lattice3(sK5,sK2(sK5,X0_51),X0_51) != iProver_top
% 1.51/0.99      | m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) != iProver_top ),
% 1.51/0.99      inference(superposition,[status(thm)],[c_1113,c_1106]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_670,plain,
% 1.51/0.99      ( m1_subset_1(sK2(X0,X1),u1_struct_0(X0))
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | sK5 != X0 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_20]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_671,plain,
% 1.51/0.99      ( m1_subset_1(sK2(sK5,X0),u1_struct_0(sK5))
% 1.51/0.99      | v2_struct_0(sK5)
% 1.51/0.99      | ~ v4_lattice3(sK5) ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_670]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_675,plain,
% 1.51/0.99      ( m1_subset_1(sK2(sK5,X0),u1_struct_0(sK5)) ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_671,c_23,c_21]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_809,plain,
% 1.51/0.99      ( m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) ),
% 1.51/0.99      inference(subtyping,[status(esa)],[c_675]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_871,plain,
% 1.51/0.99      ( m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) = iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_809]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_4,plain,
% 1.51/0.99      ( r4_lattice3(X0,sK2(X0,X1),X1)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0) ),
% 1.51/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_685,plain,
% 1.51/0.99      ( r4_lattice3(X0,sK2(X0,X1),X1)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | sK5 != X0 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_20]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_686,plain,
% 1.51/0.99      ( r4_lattice3(sK5,sK2(sK5,X0),X0)
% 1.51/0.99      | v2_struct_0(sK5)
% 1.51/0.99      | ~ v4_lattice3(sK5) ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_685]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_690,plain,
% 1.51/0.99      ( r4_lattice3(sK5,sK2(sK5,X0),X0) ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_686,c_23,c_21]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_808,plain,
% 1.51/0.99      ( r4_lattice3(sK5,sK2(sK5,X0_51),X0_51) ),
% 1.51/0.99      inference(subtyping,[status(esa)],[c_690]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_874,plain,
% 1.51/0.99      ( r4_lattice3(sK5,sK2(sK5,X0_51),X0_51) = iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_808]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1733,plain,
% 1.51/0.99      ( k15_lattice3(sK5,X0_51) = sK2(sK5,X0_51) ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_1650,c_871,c_874]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1786,plain,
% 1.51/0.99      ( sK2(sK5,a_2_1_lattice3(sK5,X0_53)) = k16_lattice3(sK5,X0_53) ),
% 1.51/0.99      inference(superposition,[status(thm)],[c_810,c_1733]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1114,plain,
% 1.51/0.99      ( m1_subset_1(sK2(sK5,X0_51),u1_struct_0(sK5)) = iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_809]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1791,plain,
% 1.51/0.99      ( m1_subset_1(k16_lattice3(sK5,X0_53),u1_struct_0(sK5)) = iProver_top ),
% 1.51/0.99      inference(superposition,[status(thm)],[c_1786,c_1114]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1800,plain,
% 1.51/0.99      ( m1_subset_1(k16_lattice3(sK5,sK7),u1_struct_0(sK5)) = iProver_top ),
% 1.51/0.99      inference(instantiation,[status(thm)],[c_1791]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_824,plain,( X0_50 = X0_50 ),theory(equality) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_1336,plain,
% 1.51/0.99      ( k16_lattice3(sK5,sK7) = k16_lattice3(sK5,sK7) ),
% 1.51/0.99      inference(instantiation,[status(thm)],[c_824]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_15,plain,
% 1.51/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 1.51/0.99      | r3_lattices(X0,X1,k16_lattice3(X0,X2))
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | ~ m1_subset_1(k16_lattice3(X0,X2),u1_struct_0(X0))
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0) ),
% 1.51/0.99      inference(cnf_transformation,[],[f63]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_17,negated_conjecture,
% 1.51/0.99      ( ~ r3_lattices(sK5,sK6,k16_lattice3(sK5,sK7)) ),
% 1.51/0.99      inference(cnf_transformation,[],[f60]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_294,plain,
% 1.51/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 1.51/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.51/0.99      | ~ m1_subset_1(k16_lattice3(X0,X2),u1_struct_0(X0))
% 1.51/0.99      | ~ v10_lattices(X0)
% 1.51/0.99      | v2_struct_0(X0)
% 1.51/0.99      | ~ l3_lattices(X0)
% 1.51/0.99      | ~ v4_lattice3(X0)
% 1.51/0.99      | k16_lattice3(X0,X2) != k16_lattice3(sK5,sK7)
% 1.51/0.99      | sK6 != X1
% 1.51/0.99      | sK5 != X0 ),
% 1.51/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_17]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_295,plain,
% 1.51/0.99      ( ~ r3_lattice3(sK5,sK6,X0)
% 1.51/0.99      | ~ m1_subset_1(k16_lattice3(sK5,X0),u1_struct_0(sK5))
% 1.51/0.99      | ~ m1_subset_1(sK6,u1_struct_0(sK5))
% 1.51/0.99      | ~ v10_lattices(sK5)
% 1.51/0.99      | v2_struct_0(sK5)
% 1.51/0.99      | ~ l3_lattices(sK5)
% 1.51/0.99      | ~ v4_lattice3(sK5)
% 1.51/0.99      | k16_lattice3(sK5,X0) != k16_lattice3(sK5,sK7) ),
% 1.51/0.99      inference(unflattening,[status(thm)],[c_294]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_19,negated_conjecture,
% 1.51/0.99      ( m1_subset_1(sK6,u1_struct_0(sK5)) ),
% 1.51/0.99      inference(cnf_transformation,[],[f58]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_299,plain,
% 1.51/0.99      ( ~ m1_subset_1(k16_lattice3(sK5,X0),u1_struct_0(sK5))
% 1.51/0.99      | ~ r3_lattice3(sK5,sK6,X0)
% 1.51/0.99      | k16_lattice3(sK5,X0) != k16_lattice3(sK5,sK7) ),
% 1.51/0.99      inference(global_propositional_subsumption,
% 1.51/0.99                [status(thm)],
% 1.51/0.99                [c_295,c_23,c_22,c_21,c_20,c_19]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_300,plain,
% 1.51/0.99      ( ~ r3_lattice3(sK5,sK6,X0)
% 1.51/0.99      | ~ m1_subset_1(k16_lattice3(sK5,X0),u1_struct_0(sK5))
% 1.51/0.99      | k16_lattice3(sK5,X0) != k16_lattice3(sK5,sK7) ),
% 1.51/0.99      inference(renaming,[status(thm)],[c_299]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_820,plain,
% 1.51/0.99      ( ~ r3_lattice3(sK5,sK6,X0_53)
% 1.51/0.99      | ~ m1_subset_1(k16_lattice3(sK5,X0_53),u1_struct_0(sK5))
% 1.51/0.99      | k16_lattice3(sK5,X0_53) != k16_lattice3(sK5,sK7) ),
% 1.51/0.99      inference(subtyping,[status(esa)],[c_300]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_840,plain,
% 1.51/0.99      ( k16_lattice3(sK5,X0_53) != k16_lattice3(sK5,sK7)
% 1.51/0.99      | r3_lattice3(sK5,sK6,X0_53) != iProver_top
% 1.51/0.99      | m1_subset_1(k16_lattice3(sK5,X0_53),u1_struct_0(sK5)) != iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_820]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_842,plain,
% 1.51/0.99      ( k16_lattice3(sK5,sK7) != k16_lattice3(sK5,sK7)
% 1.51/0.99      | r3_lattice3(sK5,sK6,sK7) != iProver_top
% 1.51/0.99      | m1_subset_1(k16_lattice3(sK5,sK7),u1_struct_0(sK5)) != iProver_top ),
% 1.51/0.99      inference(instantiation,[status(thm)],[c_840]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_18,negated_conjecture,
% 1.51/0.99      ( r3_lattice3(sK5,sK6,sK7) ),
% 1.51/0.99      inference(cnf_transformation,[],[f59]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(c_29,plain,
% 1.51/0.99      ( r3_lattice3(sK5,sK6,sK7) = iProver_top ),
% 1.51/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.51/0.99  
% 1.51/0.99  cnf(contradiction,plain,
% 1.51/0.99      ( $false ),
% 1.51/0.99      inference(minisat,[status(thm)],[c_1800,c_1336,c_842,c_29]) ).
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.51/0.99  
% 1.51/0.99  ------                               Statistics
% 1.51/0.99  
% 1.51/0.99  ------ General
% 1.51/0.99  
% 1.51/0.99  abstr_ref_over_cycles:                  0
% 1.51/0.99  abstr_ref_under_cycles:                 0
% 1.51/0.99  gc_basic_clause_elim:                   0
% 1.51/0.99  forced_gc_time:                         0
% 1.51/0.99  parsing_time:                           0.012
% 1.51/0.99  unif_index_cands_time:                  0.
% 1.51/0.99  unif_index_add_time:                    0.
% 1.51/0.99  orderings_time:                         0.
% 1.51/0.99  out_proof_time:                         0.014
% 1.51/0.99  total_time:                             0.103
% 1.51/0.99  num_of_symbols:                         57
% 1.51/0.99  num_of_terms:                           1967
% 1.51/0.99  
% 1.51/0.99  ------ Preprocessing
% 1.51/0.99  
% 1.51/0.99  num_of_splits:                          0
% 1.51/0.99  num_of_split_atoms:                     0
% 1.51/0.99  num_of_reused_defs:                     0
% 1.51/0.99  num_eq_ax_congr_red:                    39
% 1.51/0.99  num_of_sem_filtered_clauses:            1
% 1.51/0.99  num_of_subtypes:                        5
% 1.51/0.99  monotx_restored_types:                  0
% 1.51/0.99  sat_num_of_epr_types:                   0
% 1.51/0.99  sat_num_of_non_cyclic_types:            0
% 1.51/0.99  sat_guarded_non_collapsed_types:        1
% 1.51/0.99  num_pure_diseq_elim:                    0
% 1.51/0.99  simp_replaced_by:                       0
% 1.51/0.99  res_preprocessed:                       84
% 1.51/0.99  prep_upred:                             0
% 1.51/0.99  prep_unflattend:                        31
% 1.51/0.99  smt_new_axioms:                         0
% 1.51/0.99  pred_elim_cands:                        3
% 1.51/0.99  pred_elim:                              6
% 1.51/0.99  pred_elim_cl:                           9
% 1.51/0.99  pred_elim_cycles:                       8
% 1.51/0.99  merged_defs:                            0
% 1.51/0.99  merged_defs_ncl:                        0
% 1.51/0.99  bin_hyper_res:                          0
% 1.51/0.99  prep_cycles:                            4
% 1.51/0.99  pred_elim_time:                         0.012
% 1.51/0.99  splitting_time:                         0.
% 1.51/0.99  sem_filter_time:                        0.
% 1.51/0.99  monotx_time:                            0.
% 1.51/0.99  subtype_inf_time:                       0.001
% 1.51/0.99  
% 1.51/0.99  ------ Problem properties
% 1.51/0.99  
% 1.51/0.99  clauses:                                15
% 1.51/0.99  conjectures:                            2
% 1.51/0.99  epr:                                    1
% 1.51/0.99  horn:                                   11
% 1.51/0.99  ground:                                 2
% 1.51/0.99  unary:                                  5
% 1.51/0.99  binary:                                 2
% 1.51/0.99  lits:                                   39
% 1.51/0.99  lits_eq:                                9
% 1.51/0.99  fd_pure:                                0
% 1.51/0.99  fd_pseudo:                              0
% 1.51/0.99  fd_cond:                                0
% 1.51/0.99  fd_pseudo_cond:                         4
% 1.51/0.99  ac_symbols:                             0
% 1.51/0.99  
% 1.51/0.99  ------ Propositional Solver
% 1.51/0.99  
% 1.51/0.99  prop_solver_calls:                      26
% 1.51/0.99  prop_fast_solver_calls:                 731
% 1.51/0.99  smt_solver_calls:                       0
% 1.51/0.99  smt_fast_solver_calls:                  0
% 1.51/0.99  prop_num_of_clauses:                    534
% 1.51/0.99  prop_preprocess_simplified:             2706
% 1.51/0.99  prop_fo_subsumed:                       40
% 1.51/0.99  prop_solver_time:                       0.
% 1.51/0.99  smt_solver_time:                        0.
% 1.51/0.99  smt_fast_solver_time:                   0.
% 1.51/0.99  prop_fast_solver_time:                  0.
% 1.51/0.99  prop_unsat_core_time:                   0.
% 1.51/0.99  
% 1.51/0.99  ------ QBF
% 1.51/0.99  
% 1.51/0.99  qbf_q_res:                              0
% 1.51/0.99  qbf_num_tautologies:                    0
% 1.51/0.99  qbf_prep_cycles:                        0
% 1.51/0.99  
% 1.51/0.99  ------ BMC1
% 1.51/0.99  
% 1.51/0.99  bmc1_current_bound:                     -1
% 1.51/0.99  bmc1_last_solved_bound:                 -1
% 1.51/0.99  bmc1_unsat_core_size:                   -1
% 1.51/0.99  bmc1_unsat_core_parents_size:           -1
% 1.51/0.99  bmc1_merge_next_fun:                    0
% 1.51/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.51/0.99  
% 1.51/0.99  ------ Instantiation
% 1.51/0.99  
% 1.51/0.99  inst_num_of_clauses:                    131
% 1.51/0.99  inst_num_in_passive:                    18
% 1.51/0.99  inst_num_in_active:                     84
% 1.51/0.99  inst_num_in_unprocessed:                29
% 1.51/0.99  inst_num_of_loops:                      100
% 1.51/0.99  inst_num_of_learning_restarts:          0
% 1.51/0.99  inst_num_moves_active_passive:          11
% 1.51/0.99  inst_lit_activity:                      0
% 1.51/0.99  inst_lit_activity_moves:                0
% 1.51/0.99  inst_num_tautologies:                   0
% 1.51/0.99  inst_num_prop_implied:                  0
% 1.51/0.99  inst_num_existing_simplified:           0
% 1.51/0.99  inst_num_eq_res_simplified:             0
% 1.51/0.99  inst_num_child_elim:                    0
% 1.51/0.99  inst_num_of_dismatching_blockings:      35
% 1.51/0.99  inst_num_of_non_proper_insts:           118
% 1.51/0.99  inst_num_of_duplicates:                 0
% 1.51/0.99  inst_inst_num_from_inst_to_res:         0
% 1.51/0.99  inst_dismatching_checking_time:         0.
% 1.51/0.99  
% 1.51/0.99  ------ Resolution
% 1.51/0.99  
% 1.51/0.99  res_num_of_clauses:                     0
% 1.51/0.99  res_num_in_passive:                     0
% 1.51/0.99  res_num_in_active:                      0
% 1.51/0.99  res_num_of_loops:                       88
% 1.51/0.99  res_forward_subset_subsumed:            17
% 1.51/0.99  res_backward_subset_subsumed:           2
% 1.51/0.99  res_forward_subsumed:                   0
% 1.51/0.99  res_backward_subsumed:                  0
% 1.51/0.99  res_forward_subsumption_resolution:     4
% 1.51/0.99  res_backward_subsumption_resolution:    0
% 1.51/0.99  res_clause_to_clause_subsumption:       58
% 1.51/0.99  res_orphan_elimination:                 0
% 1.51/0.99  res_tautology_del:                      33
% 1.51/0.99  res_num_eq_res_simplified:              0
% 1.51/0.99  res_num_sel_changes:                    0
% 1.51/0.99  res_moves_from_active_to_pass:          0
% 1.51/0.99  
% 1.51/0.99  ------ Superposition
% 1.51/0.99  
% 1.51/0.99  sup_time_total:                         0.
% 1.51/0.99  sup_time_generating:                    0.
% 1.51/0.99  sup_time_sim_full:                      0.
% 1.51/0.99  sup_time_sim_immed:                     0.
% 1.51/0.99  
% 1.51/0.99  sup_num_of_clauses:                     20
% 1.51/0.99  sup_num_in_active:                      13
% 1.51/0.99  sup_num_in_passive:                     7
% 1.51/0.99  sup_num_of_loops:                       19
% 1.51/0.99  sup_fw_superposition:                   4
% 1.51/0.99  sup_bw_superposition:                   6
% 1.51/0.99  sup_immediate_simplified:               6
% 1.51/0.99  sup_given_eliminated:                   0
% 1.51/0.99  comparisons_done:                       0
% 1.51/0.99  comparisons_avoided:                    0
% 1.51/0.99  
% 1.51/0.99  ------ Simplifications
% 1.51/0.99  
% 1.51/0.99  
% 1.51/0.99  sim_fw_subset_subsumed:                 3
% 1.51/0.99  sim_bw_subset_subsumed:                 1
% 1.51/0.99  sim_fw_subsumed:                        0
% 1.51/0.99  sim_bw_subsumed:                        0
% 1.51/0.99  sim_fw_subsumption_res:                 0
% 1.51/0.99  sim_bw_subsumption_res:                 0
% 1.51/0.99  sim_tautology_del:                      0
% 1.51/0.99  sim_eq_tautology_del:                   2
% 1.51/0.99  sim_eq_res_simp:                        0
% 1.51/0.99  sim_fw_demodulated:                     2
% 1.51/0.99  sim_bw_demodulated:                     6
% 1.51/0.99  sim_light_normalised:                   2
% 1.51/0.99  sim_joinable_taut:                      0
% 1.51/0.99  sim_joinable_simp:                      0
% 1.51/0.99  sim_ac_normalised:                      0
% 1.51/0.99  sim_smt_subsumption:                    0
% 1.51/0.99  
%------------------------------------------------------------------------------
