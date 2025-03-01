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
% DateTime   : Thu Dec  3 12:19:23 EST 2020

% Result     : CounterSatisfiable 2.69s
% Output     : Saturation 2.69s
% Verified   : 
% Statistics : Number of formulae       :  216 (5251 expanded)
%              Number of clauses        :  169 (1394 expanded)
%              Number of leaves         :   12 (1677 expanded)
%              Depth                    :   17
%              Number of atoms          :  935 (41359 expanded)
%              Number of equality atoms :  509 (9141 expanded)
%              Maximal formula depth    :   15 (   6 average)
%              Maximal clause size      :   20 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1,X2] :
          ( m1_subset_1(X2,u1_struct_0(X0))
         => ( r2_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X0))
               => ( r2_hidden(X3,X1)
                 => r1_orders_2(X0,X3,X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r2_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X3,X2)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r2_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X3,X2)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f11])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r2_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X3,X2)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X3] :
                  ( r1_orders_2(X0,X3,X2)
                  | ~ r2_hidden(X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r2_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r2_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X3,X2)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X4,X2)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r2_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(rectify,[],[f19])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X3,X2)
          & r2_hidden(X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
        & r2_hidden(sK1(X0,X1,X2),X1)
        & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r2_lattice3(X0,X1,X2)
              | ( ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
                & r2_hidden(sK1(X0,X1,X2),X1)
                & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X4,X2)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r2_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f21])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X1,X2)
      | r2_hidden(sK1(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,conjecture,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1] :
          ( l1_orders_2(X1)
         => ( g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
           => ! [X2,X3] :
                ( m1_subset_1(X3,u1_struct_0(X0))
               => ! [X4] :
                    ( m1_subset_1(X4,u1_struct_0(X1))
                   => ( X3 = X4
                     => ( ( r1_lattice3(X0,X2,X3)
                         => r1_lattice3(X1,X2,X4) )
                        & ( r2_lattice3(X0,X2,X3)
                         => r2_lattice3(X1,X2,X4) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0] :
        ( l1_orders_2(X0)
       => ! [X1] :
            ( l1_orders_2(X1)
           => ( g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
             => ! [X2,X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ( X3 = X4
                       => ( ( r1_lattice3(X0,X2,X3)
                           => r1_lattice3(X1,X2,X4) )
                          & ( r2_lattice3(X0,X2,X3)
                           => r2_lattice3(X1,X2,X4) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f13,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( ? [X4] :
                  ( ( ( ~ r1_lattice3(X1,X2,X4)
                      & r1_lattice3(X0,X2,X3) )
                    | ( ~ r2_lattice3(X1,X2,X4)
                      & r2_lattice3(X0,X2,X3) ) )
                  & X3 = X4
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              & m1_subset_1(X3,u1_struct_0(X0)) )
          & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
          & l1_orders_2(X1) )
      & l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f14,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( ? [X4] :
                  ( ( ( ~ r1_lattice3(X1,X2,X4)
                      & r1_lattice3(X0,X2,X3) )
                    | ( ~ r2_lattice3(X1,X2,X4)
                      & r2_lattice3(X0,X2,X3) ) )
                  & X3 = X4
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              & m1_subset_1(X3,u1_struct_0(X0)) )
          & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
          & l1_orders_2(X1) )
      & l1_orders_2(X0) ) ),
    inference(flattening,[],[f13])).

fof(f26,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ( ( ~ r1_lattice3(X1,X2,X4)
              & r1_lattice3(X0,X2,X3) )
            | ( ~ r2_lattice3(X1,X2,X4)
              & r2_lattice3(X0,X2,X3) ) )
          & X3 = X4
          & m1_subset_1(X4,u1_struct_0(X1)) )
     => ( ( ( ~ r1_lattice3(X1,X2,sK6)
            & r1_lattice3(X0,X2,X3) )
          | ( ~ r2_lattice3(X1,X2,sK6)
            & r2_lattice3(X0,X2,X3) ) )
        & sK6 = X3
        & m1_subset_1(sK6,u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ? [X2,X3] :
          ( ? [X4] :
              ( ( ( ~ r1_lattice3(X1,X2,X4)
                  & r1_lattice3(X0,X2,X3) )
                | ( ~ r2_lattice3(X1,X2,X4)
                  & r2_lattice3(X0,X2,X3) ) )
              & X3 = X4
              & m1_subset_1(X4,u1_struct_0(X1)) )
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ? [X4] :
            ( ( ( ~ r1_lattice3(X1,sK4,X4)
                & r1_lattice3(X0,sK4,sK5) )
              | ( ~ r2_lattice3(X1,sK4,X4)
                & r2_lattice3(X0,sK4,sK5) ) )
            & sK5 = X4
            & m1_subset_1(X4,u1_struct_0(X1)) )
        & m1_subset_1(sK5,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( ? [X4] :
                  ( ( ( ~ r1_lattice3(X1,X2,X4)
                      & r1_lattice3(X0,X2,X3) )
                    | ( ~ r2_lattice3(X1,X2,X4)
                      & r2_lattice3(X0,X2,X3) ) )
                  & X3 = X4
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              & m1_subset_1(X3,u1_struct_0(X0)) )
          & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
          & l1_orders_2(X1) )
     => ( ? [X3,X2] :
            ( ? [X4] :
                ( ( ( ~ r1_lattice3(sK3,X2,X4)
                    & r1_lattice3(X0,X2,X3) )
                  | ( ~ r2_lattice3(sK3,X2,X4)
                    & r2_lattice3(X0,X2,X3) ) )
                & X3 = X4
                & m1_subset_1(X4,u1_struct_0(sK3)) )
            & m1_subset_1(X3,u1_struct_0(X0)) )
        & g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) = g1_orders_2(u1_struct_0(X0),u1_orders_2(X0))
        & l1_orders_2(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2,X3] :
                ( ? [X4] :
                    ( ( ( ~ r1_lattice3(X1,X2,X4)
                        & r1_lattice3(X0,X2,X3) )
                      | ( ~ r2_lattice3(X1,X2,X4)
                        & r2_lattice3(X0,X2,X3) ) )
                    & X3 = X4
                    & m1_subset_1(X4,u1_struct_0(X1)) )
                & m1_subset_1(X3,u1_struct_0(X0)) )
            & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
            & l1_orders_2(X1) )
        & l1_orders_2(X0) )
   => ( ? [X1] :
          ( ? [X3,X2] :
              ( ? [X4] :
                  ( ( ( ~ r1_lattice3(X1,X2,X4)
                      & r1_lattice3(sK2,X2,X3) )
                    | ( ~ r2_lattice3(X1,X2,X4)
                      & r2_lattice3(sK2,X2,X3) ) )
                  & X3 = X4
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              & m1_subset_1(X3,u1_struct_0(sK2)) )
          & g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
          & l1_orders_2(X1) )
      & l1_orders_2(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ( ( ~ r1_lattice3(sK3,sK4,sK6)
        & r1_lattice3(sK2,sK4,sK5) )
      | ( ~ r2_lattice3(sK3,sK4,sK6)
        & r2_lattice3(sK2,sK4,sK5) ) )
    & sK5 = sK6
    & m1_subset_1(sK6,u1_struct_0(sK3))
    & m1_subset_1(sK5,u1_struct_0(sK2))
    & g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3))
    & l1_orders_2(sK3)
    & l1_orders_2(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f14,f26,f25,f24,f23])).

fof(f39,plain,(
    l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f27])).

fof(f41,plain,(
    g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) ),
    inference(cnf_transformation,[],[f27])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
     => ! [X2,X3] :
          ( g1_orders_2(X0,X1) = g1_orders_2(X2,X3)
         => ( X1 = X3
            & X0 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1] :
      ( ! [X2,X3] :
          ( ( X1 = X3
            & X0 = X2 )
          | g1_orders_2(X0,X1) != g1_orders_2(X2,X3) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f29,plain,(
    ! [X2,X0,X3,X1] :
      ( X0 = X2
      | g1_orders_2(X0,X1) != g1_orders_2(X2,X3)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f28,plain,(
    ! [X0] :
      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X1,X2)
      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1,X2] :
          ( m1_subset_1(X2,u1_struct_0(X0))
         => ( r1_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X0))
               => ( r2_hidden(X3,X1)
                 => r1_orders_2(X0,X2,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r1_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X2,X3)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r1_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X2,X3)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f9])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r1_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X2,X3)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X3] :
                  ( r1_orders_2(X0,X2,X3)
                  | ~ r2_hidden(X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r1_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X2,X3)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X2,X4)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X2,X3)
          & r2_hidden(X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,X2,sK0(X0,X1,X2))
        & r2_hidden(sK0(X0,X1,X2),X1)
        & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r1_lattice3(X0,X1,X2)
              | ( ~ r1_orders_2(X0,X2,sK0(X0,X1,X2))
                & r2_hidden(sK0(X0,X1,X2),X1)
                & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X2,X4)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).

fof(f31,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_orders_2(X0,X2,X4)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r1_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X1,X2)
      | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( r1_lattice3(X0,X1,X2)
      | r2_hidden(sK0(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( r1_lattice3(X0,X1,X2)
      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f40,plain,(
    l1_orders_2(sK3) ),
    inference(cnf_transformation,[],[f27])).

fof(f43,plain,(
    m1_subset_1(sK6,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f27])).

fof(f35,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_orders_2(X0,X4,X2)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r2_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f45,plain,
    ( r1_lattice3(sK2,sK4,sK5)
    | r2_lattice3(sK2,sK4,sK5) ),
    inference(cnf_transformation,[],[f27])).

fof(f44,plain,(
    sK5 = sK6 ),
    inference(cnf_transformation,[],[f27])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( r1_lattice3(X0,X1,X2)
      | ~ r1_orders_2(X0,X2,sK0(X0,X1,X2))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] :
      ( X1 = X3
      | g1_orders_2(X0,X1) != g1_orders_2(X2,X3)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f47,plain,
    ( ~ r1_lattice3(sK3,sK4,sK6)
    | r2_lattice3(sK2,sK4,sK5) ),
    inference(cnf_transformation,[],[f27])).

fof(f46,plain,
    ( r1_lattice3(sK2,sK4,sK5)
    | ~ r2_lattice3(sK3,sK4,sK6) ),
    inference(cnf_transformation,[],[f27])).

fof(f48,plain,
    ( ~ r1_lattice3(sK3,sK4,sK6)
    | ~ r2_lattice3(sK3,sK4,sK6) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_179,plain,
    ( X0_2 = X0_2 ),
    theory(equality)).

cnf(c_8,plain,
    ( r2_lattice3(X0,X1,X2)
    | r2_hidden(sK1(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_20,negated_conjecture,
    ( l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_652,plain,
    ( r2_lattice3(X0,X1,X2)
    | r2_hidden(sK1(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_20])).

cnf(c_653,plain,
    ( r2_lattice3(sK2,X0,X1)
    | r2_hidden(sK1(sK2,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_652])).

cnf(c_3729,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_hidden(sK1(sK2,X0,X1),X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_653])).

cnf(c_18,negated_conjecture,
    ( g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | X2 = X1
    | g1_orders_2(X2,X3) != g1_orders_2(X1,X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_3747,plain,
    ( X0 = X1
    | g1_orders_2(X0,X2) != g1_orders_2(X1,X3)
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4125,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_struct_0(sK2) = X0
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_3747])).

cnf(c_0,plain,
    ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_58,plain,
    ( m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2))))
    | ~ l1_orders_2(sK2) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_4126,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_struct_0(sK2) = X0
    | m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_3747])).

cnf(c_4143,plain,
    ( ~ m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2))))
    | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_struct_0(sK2) = X0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4126])).

cnf(c_4231,plain,
    ( u1_struct_0(sK2) = X0
    | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4125,c_20,c_58,c_4143])).

cnf(c_4232,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_struct_0(sK2) = X0 ),
    inference(renaming,[status(thm)],[c_4231])).

cnf(c_4237,plain,
    ( u1_struct_0(sK2) = u1_struct_0(sK3) ),
    inference(equality_resolution,[status(thm)],[c_4232])).

cnf(c_4760,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_hidden(sK1(sK2,X0,X1),X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3729,c_4237])).

cnf(c_9,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_637,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_20])).

cnf(c_638,plain,
    ( r2_lattice3(sK2,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_637])).

cnf(c_3730,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_638])).

cnf(c_5740,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3730,c_4237])).

cnf(c_6,plain,
    ( r1_orders_2(X0,X1,X2)
    | ~ r1_lattice3(X0,X3,X1)
    | ~ r2_hidden(X2,X3)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_682,plain,
    ( r1_orders_2(X0,X1,X2)
    | ~ r1_lattice3(X0,X3,X1)
    | ~ r2_hidden(X2,X3)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_20])).

cnf(c_683,plain,
    ( r1_orders_2(sK2,X0,X1)
    | ~ r1_lattice3(sK2,X2,X0)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_682])).

cnf(c_3727,plain,
    ( r1_orders_2(sK2,X0,X1) = iProver_top
    | r1_lattice3(sK2,X2,X0) != iProver_top
    | r2_hidden(X1,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_683])).

cnf(c_5036,plain,
    ( r1_orders_2(sK2,X0,X1) = iProver_top
    | r1_lattice3(sK2,X2,X0) != iProver_top
    | r2_hidden(X1,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3727,c_4237])).

cnf(c_5750,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK2,X3,X2) != iProver_top
    | r2_hidden(sK1(sK2,X0,X1),X3) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5740,c_5036])).

cnf(c_7788,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK2,X0,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4760,c_5750])).

cnf(c_7,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_667,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_20])).

cnf(c_668,plain,
    ( r2_lattice3(sK2,X0,X1)
    | ~ r1_orders_2(sK2,sK1(sK2,X0,X1),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_667])).

cnf(c_3728,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0,X1),X1) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_668])).

cnf(c_4913,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0,X1),X1) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3728,c_4237])).

cnf(c_7798,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK2,X0,sK1(sK2,X2,sK1(sK2,X0,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7788,c_4913])).

cnf(c_7991,plain,
    ( m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | r1_lattice3(sK2,X0,sK1(sK2,X2,sK1(sK2,X0,X1))) != iProver_top
    | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
    | r2_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(sK1(sK2,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7798,c_5740])).

cnf(c_7992,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK2,X0,sK1(sK2,X2,sK1(sK2,X0,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(renaming,[status(thm)],[c_7991])).

cnf(c_4,plain,
    ( r1_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_718,plain,
    ( r1_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_20])).

cnf(c_719,plain,
    ( r1_lattice3(sK2,X0,X1)
    | r2_hidden(sK0(sK2,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_718])).

cnf(c_3725,plain,
    ( r1_lattice3(sK2,X0,X1) = iProver_top
    | r2_hidden(sK0(sK2,X0,X1),X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_719])).

cnf(c_4644,plain,
    ( r1_lattice3(sK2,X0,X1) = iProver_top
    | r2_hidden(sK0(sK2,X0,X1),X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3725,c_4237])).

cnf(c_5,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_703,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_20])).

cnf(c_704,plain,
    ( r1_lattice3(sK2,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_703])).

cnf(c_3726,plain,
    ( r1_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_704])).

cnf(c_5263,plain,
    ( r1_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3726,c_4237])).

cnf(c_5271,plain,
    ( r1_orders_2(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X3,X0) != iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r2_hidden(sK0(sK2,X1,X2),X3) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5263,c_5036])).

cnf(c_6951,plain,
    ( r1_orders_2(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X0) != iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4644,c_5271])).

cnf(c_7672,plain,
    ( r2_lattice3(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK2,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,sK0(sK2,X1,X2)),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK2,X1,X2),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6951,c_4913])).

cnf(c_7986,plain,
    ( r2_lattice3(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK2,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7672,c_5263,c_5740])).

cnf(c_19,negated_conjecture,
    ( l1_orders_2(sK3) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_513,plain,
    ( r2_lattice3(X0,X1,X2)
    | r2_hidden(sK1(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_19])).

cnf(c_514,plain,
    ( r2_lattice3(sK3,X0,X1)
    | r2_hidden(sK1(sK3,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_513])).

cnf(c_3738,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r2_hidden(sK1(sK3,X0,X1),X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_514])).

cnf(c_498,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_19])).

cnf(c_499,plain,
    ( r2_lattice3(sK3,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_498])).

cnf(c_3739,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_499])).

cnf(c_6022,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK2,X2,sK1(sK3,X0,X1)) = iProver_top
    | r1_lattice3(sK2,X3,X2) != iProver_top
    | r2_hidden(sK1(sK3,X0,X1),X3) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3739,c_5036])).

cnf(c_7204,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK2,X2,sK1(sK3,X0,X1)) = iProver_top
    | r1_lattice3(sK2,X0,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3738,c_6022])).

cnf(c_7214,plain,
    ( r2_lattice3(sK2,X0,sK1(sK3,X1,X2)) = iProver_top
    | r2_lattice3(sK3,X1,X2) = iProver_top
    | r1_lattice3(sK2,X1,sK1(sK2,X0,sK1(sK3,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,sK1(sK3,X1,X2)),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X1,X2),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7204,c_4913])).

cnf(c_7908,plain,
    ( r2_lattice3(sK2,X0,sK1(sK3,X1,X2)) = iProver_top
    | r2_lattice3(sK3,X1,X2) = iProver_top
    | r1_lattice3(sK2,X1,sK1(sK2,X0,sK1(sK3,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7214,c_3739,c_5740])).

cnf(c_579,plain,
    ( r1_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_19])).

cnf(c_580,plain,
    ( r1_lattice3(sK3,X0,X1)
    | r2_hidden(sK0(sK3,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_579])).

cnf(c_3734,plain,
    ( r1_lattice3(sK3,X0,X1) = iProver_top
    | r2_hidden(sK0(sK3,X0,X1),X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_580])).

cnf(c_564,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_19])).

cnf(c_565,plain,
    ( r1_lattice3(sK3,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_564])).

cnf(c_3735,plain,
    ( r1_lattice3(sK3,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_565])).

cnf(c_5930,plain,
    ( r1_orders_2(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X3,X0) != iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | r2_hidden(sK0(sK3,X1,X2),X3) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3735,c_5036])).

cnf(c_6900,plain,
    ( r1_orders_2(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X0) != iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3734,c_5930])).

cnf(c_6910,plain,
    ( r2_lattice3(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK3,X1,X2))) != iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,sK0(sK3,X1,X2)),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK3,X1,X2),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6900,c_4913])).

cnf(c_7897,plain,
    ( r2_lattice3(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK3,X1,X2))) != iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_6910,c_3735,c_5740])).

cnf(c_543,plain,
    ( r1_orders_2(X0,X1,X2)
    | ~ r1_lattice3(X0,X3,X1)
    | ~ r2_hidden(X2,X3)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_19])).

cnf(c_544,plain,
    ( r1_orders_2(sK3,X0,X1)
    | ~ r1_lattice3(sK3,X2,X0)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_543])).

cnf(c_3736,plain,
    ( r1_orders_2(sK3,X0,X1) = iProver_top
    | r1_lattice3(sK3,X2,X0) != iProver_top
    | r2_hidden(X1,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_544])).

cnf(c_5747,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X3,X2) != iProver_top
    | r2_hidden(sK1(sK2,X0,X1),X3) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5740,c_3736])).

cnf(c_6721,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X0,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4760,c_5747])).

cnf(c_528,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_19])).

cnf(c_529,plain,
    ( r2_lattice3(sK3,X0,X1)
    | ~ r1_orders_2(sK3,sK1(sK3,X0,X1),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_528])).

cnf(c_3737,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK3,sK1(sK3,X0,X1),X1) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_529])).

cnf(c_7583,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK2,X0,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6721,c_3737])).

cnf(c_7588,plain,
    ( m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK2,X0,X1))) != iProver_top
    | r2_lattice3(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
    | r2_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(sK1(sK3,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7583,c_5740])).

cnf(c_7589,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK2,X0,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(renaming,[status(thm)],[c_7588])).

cnf(c_5536,plain,
    ( r1_orders_2(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r1_lattice3(sK3,X3,X0) != iProver_top
    | r2_hidden(sK0(sK2,X1,X2),X3) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5263,c_3736])).

cnf(c_6680,plain,
    ( r1_orders_2(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r1_lattice3(sK3,X1,X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4644,c_5536])).

cnf(c_7471,plain,
    ( r2_lattice3(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK2,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X0,sK0(sK2,X1,X2)),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK2,X1,X2),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6680,c_3737])).

cnf(c_7482,plain,
    ( r2_lattice3(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK2,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7471,c_5263,c_3739])).

cnf(c_6019,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X3,X2) != iProver_top
    | r2_hidden(sK1(sK3,X0,X1),X3) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3739,c_3736])).

cnf(c_6960,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X0,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3738,c_6019])).

cnf(c_7068,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r2_lattice3(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK3,X0,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X2,sK1(sK3,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6960,c_3737])).

cnf(c_500,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_499])).

cnf(c_7358,plain,
    ( m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK3,X0,X1))) != iProver_top
    | r2_lattice3(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
    | r2_lattice3(sK3,X0,X1) = iProver_top
    | m1_subset_1(sK1(sK3,X2,sK1(sK3,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7068,c_500])).

cnf(c_7359,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r2_lattice3(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
    | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK3,X0,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X2,sK1(sK3,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
    inference(renaming,[status(thm)],[c_7358])).

cnf(c_5927,plain,
    ( r1_orders_2(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK3,X3,X0) != iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | r2_hidden(sK0(sK3,X1,X2),X3) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3735,c_3736])).

cnf(c_6732,plain,
    ( r1_orders_2(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK3,X1,X0) != iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3734,c_5927])).

cnf(c_6800,plain,
    ( r2_lattice3(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK3,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK1(sK3,X0,sK0(sK3,X1,X2)),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK3,X1,X2),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6732,c_3737])).

cnf(c_7353,plain,
    ( r2_lattice3(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK3,X1,X2))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_6800,c_3735,c_3739])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK6,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_3742,plain,
    ( m1_subset_1(sK6,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_10,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X3,X2)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_616,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X3,X2)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_20])).

cnf(c_617,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r1_orders_2(sK2,X2,X1)
    | ~ r2_hidden(X2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X2,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_616])).

cnf(c_3731,plain,
    ( r2_lattice3(sK2,X0,X1) != iProver_top
    | r1_orders_2(sK2,X2,X1) = iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_617])).

cnf(c_5170,plain,
    ( r2_lattice3(sK2,X0,X1) != iProver_top
    | r1_orders_2(sK2,X2,X1) = iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3731,c_4237])).

cnf(c_5179,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,X1,sK6) = iProver_top
    | r2_hidden(X1,X0) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3742,c_5170])).

cnf(c_6020,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r2_lattice3(sK3,X1,X2) = iProver_top
    | r1_orders_2(sK2,sK1(sK3,X1,X2),sK6) = iProver_top
    | r2_hidden(sK1(sK3,X1,X2),X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3739,c_5179])).

cnf(c_6492,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK2,sK1(sK3,X0,X1),sK6) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3738,c_6020])).

cnf(c_5928,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,sK0(sK3,X1,X2),sK6) = iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | r2_hidden(sK0(sK3,X1,X2),X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3735,c_5179])).

cnf(c_6344,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,sK0(sK3,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK3,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3734,c_5928])).

cnf(c_5748,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK2,X2,sK6) != iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0,X1),sK6) = iProver_top
    | r2_hidden(sK1(sK2,X0,X1),X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5740,c_5179])).

cnf(c_6221,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0,X1),sK6) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4760,c_5748])).

cnf(c_5320,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,sK0(sK2,X1,X2),sK6) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r2_hidden(sK0(sK2,X1,X2),X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5263,c_5179])).

cnf(c_6171,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,sK0(sK2,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK2,X0,X1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4644,c_5320])).

cnf(c_5045,plain,
    ( r1_orders_2(sK2,X0,sK6) = iProver_top
    | r1_lattice3(sK2,X1,X0) != iProver_top
    | r2_hidden(sK6,X1) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3742,c_5036])).

cnf(c_6024,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK2,sK1(sK3,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK2,X2,sK1(sK3,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3739,c_5045])).

cnf(c_5535,plain,
    ( r1_orders_2(sK3,X0,sK6) = iProver_top
    | r1_lattice3(sK3,X1,X0) != iProver_top
    | r2_hidden(sK6,X1) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3742,c_3736])).

cnf(c_6023,plain,
    ( r2_lattice3(sK3,X0,X1) = iProver_top
    | r1_orders_2(sK3,sK1(sK3,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK3,X2,sK1(sK3,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3739,c_5535])).

cnf(c_6021,plain,
    ( r2_lattice3(sK2,X0,sK1(sK3,X1,X2)) != iProver_top
    | r2_lattice3(sK3,X1,X2) = iProver_top
    | r1_orders_2(sK2,X3,sK1(sK3,X1,X2)) = iProver_top
    | r2_hidden(X3,X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3739,c_5170])).

cnf(c_5932,plain,
    ( r1_orders_2(sK2,sK0(sK3,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK2,X2,sK0(sK3,X0,X1)) != iProver_top
    | r1_lattice3(sK3,X0,X1) = iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3735,c_5045])).

cnf(c_5931,plain,
    ( r1_orders_2(sK3,sK0(sK3,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK3,X0,X1) = iProver_top
    | r1_lattice3(sK3,X2,sK0(sK3,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3735,c_5535])).

cnf(c_5929,plain,
    ( r2_lattice3(sK2,X0,sK0(sK3,X1,X2)) != iProver_top
    | r1_orders_2(sK2,X3,sK0(sK3,X1,X2)) = iProver_top
    | r1_lattice3(sK3,X1,X2) = iProver_top
    | r2_hidden(X3,X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3735,c_5170])).

cnf(c_5752,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK2,X2,sK1(sK2,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5740,c_5045])).

cnf(c_5751,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r1_orders_2(sK3,sK1(sK2,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK3,X2,sK1(sK2,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5740,c_5535])).

cnf(c_5749,plain,
    ( r2_lattice3(sK2,X0,X1) = iProver_top
    | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) != iProver_top
    | r1_orders_2(sK2,X3,sK1(sK2,X0,X1)) = iProver_top
    | r2_hidden(X3,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5740,c_5170])).

cnf(c_5649,plain,
    ( r1_orders_2(sK3,sK0(sK2,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK2,X0,X1) = iProver_top
    | r1_lattice3(sK3,X2,sK0(sK2,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5263,c_5535])).

cnf(c_5648,plain,
    ( r1_orders_2(sK3,sK6,sK6) = iProver_top
    | r1_lattice3(sK3,X0,sK6) != iProver_top
    | r2_hidden(sK6,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3742,c_5535])).

cnf(c_14,negated_conjecture,
    ( r2_lattice3(sK2,sK4,sK5)
    | r1_lattice3(sK2,sK4,sK5) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_3743,plain,
    ( r2_lattice3(sK2,sK4,sK5) = iProver_top
    | r1_lattice3(sK2,sK4,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_15,negated_conjecture,
    ( sK5 = sK6 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_3762,plain,
    ( r2_lattice3(sK2,sK4,sK6) = iProver_top
    | r1_lattice3(sK2,sK4,sK6) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3743,c_15])).

cnf(c_5319,plain,
    ( r2_lattice3(sK2,X0,sK6) != iProver_top
    | r1_orders_2(sK2,sK6,sK6) = iProver_top
    | r2_hidden(sK6,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3742,c_5179])).

cnf(c_5430,plain,
    ( r1_orders_2(sK2,sK6,sK6) = iProver_top
    | r1_lattice3(sK2,sK4,sK6) = iProver_top
    | r2_hidden(sK6,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3762,c_5319])).

cnf(c_5054,plain,
    ( r1_orders_2(sK2,sK6,sK6) = iProver_top
    | r1_lattice3(sK2,X0,sK6) != iProver_top
    | r2_hidden(sK6,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3742,c_5045])).

cnf(c_5436,plain,
    ( r1_orders_2(sK2,sK6,sK6) = iProver_top
    | r2_hidden(sK6,sK4) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5430,c_5054])).

cnf(c_5272,plain,
    ( r1_orders_2(sK2,sK0(sK2,X0,X1),sK6) = iProver_top
    | r1_lattice3(sK2,X0,X1) = iProver_top
    | r1_lattice3(sK2,X2,sK0(sK2,X0,X1)) != iProver_top
    | r2_hidden(sK6,X2) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5263,c_5045])).

cnf(c_5270,plain,
    ( r2_lattice3(sK2,X0,sK0(sK2,X1,X2)) != iProver_top
    | r1_orders_2(sK2,X3,sK0(sK2,X1,X2)) = iProver_top
    | r1_lattice3(sK2,X1,X2) = iProver_top
    | r2_hidden(X3,X0) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5263,c_5170])).

cnf(c_3,plain,
    ( ~ r1_orders_2(X0,X1,sK0(X0,X2,X1))
    | r1_lattice3(X0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_733,plain,
    ( ~ r1_orders_2(X0,X1,sK0(X0,X2,X1))
    | r1_lattice3(X0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_20])).

cnf(c_734,plain,
    ( ~ r1_orders_2(sK2,X0,sK0(sK2,X1,X0))
    | r1_lattice3(sK2,X1,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_733])).

cnf(c_3724,plain,
    ( r1_orders_2(sK2,X0,sK0(sK2,X1,X0)) != iProver_top
    | r1_lattice3(sK2,X1,X0) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_734])).

cnf(c_4633,plain,
    ( r1_orders_2(sK2,X0,sK0(sK2,X1,X0)) != iProver_top
    | r1_lattice3(sK2,X1,X0) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3724,c_4237])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | X2 = X0
    | g1_orders_2(X3,X2) != g1_orders_2(X1,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_3748,plain,
    ( X0 = X1
    | g1_orders_2(X2,X0) != g1_orders_2(X3,X1)
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_4209,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_orders_2(sK2) = X1
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_3748])).

cnf(c_4210,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_orders_2(sK2) = X1
    | m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_3748])).

cnf(c_4227,plain,
    ( ~ m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2))))
    | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_orders_2(sK2) = X1 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4210])).

cnf(c_4333,plain,
    ( u1_orders_2(sK2) = X1
    | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4209,c_20,c_58,c_4227])).

cnf(c_4334,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_orders_2(sK2) = X1 ),
    inference(renaming,[status(thm)],[c_4333])).

cnf(c_4339,plain,
    ( u1_orders_2(sK3) = u1_orders_2(sK2) ),
    inference(equality_resolution,[status(thm)],[c_4334])).

cnf(c_4341,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_orders_2(sK3) = X1 ),
    inference(demodulation,[status(thm)],[c_4339,c_4334])).

cnf(c_4239,plain,
    ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
    | u1_struct_0(sK3) = X0 ),
    inference(demodulation,[status(thm)],[c_4237,c_4232])).

cnf(c_12,negated_conjecture,
    ( r2_lattice3(sK2,sK4,sK5)
    | ~ r1_lattice3(sK3,sK4,sK6) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_3745,plain,
    ( r2_lattice3(sK2,sK4,sK5) = iProver_top
    | r1_lattice3(sK3,sK4,sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3772,plain,
    ( r2_lattice3(sK2,sK4,sK6) = iProver_top
    | r1_lattice3(sK3,sK4,sK6) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3745,c_15])).

cnf(c_13,negated_conjecture,
    ( ~ r2_lattice3(sK3,sK4,sK6)
    | r1_lattice3(sK2,sK4,sK5) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_3744,plain,
    ( r2_lattice3(sK3,sK4,sK6) != iProver_top
    | r1_lattice3(sK2,sK4,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3767,plain,
    ( r2_lattice3(sK3,sK4,sK6) != iProver_top
    | r1_lattice3(sK2,sK4,sK6) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3744,c_15])).

cnf(c_609,plain,
    ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_19])).

cnf(c_610,plain,
    ( m1_subset_1(u1_orders_2(sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK3)))) ),
    inference(unflattening,[status(thm)],[c_609])).

cnf(c_3732,plain,
    ( m1_subset_1(u1_orders_2(sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK3)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_610])).

cnf(c_594,plain,
    ( ~ r1_orders_2(X0,X1,sK0(X0,X2,X1))
    | r1_lattice3(X0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_19])).

cnf(c_595,plain,
    ( ~ r1_orders_2(sK3,X0,sK0(sK3,X1,X0))
    | r1_lattice3(sK3,X1,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_594])).

cnf(c_3733,plain,
    ( r1_orders_2(sK3,X0,sK0(sK3,X1,X0)) != iProver_top
    | r1_lattice3(sK3,X1,X0) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_595])).

cnf(c_477,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X3,X2)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_19])).

cnf(c_478,plain,
    ( ~ r2_lattice3(sK3,X0,X1)
    | r1_orders_2(sK3,X2,X1)
    | ~ r2_hidden(X2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(X2,u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_477])).

cnf(c_3740,plain,
    ( r2_lattice3(sK3,X0,X1) != iProver_top
    | r1_orders_2(sK3,X2,X1) = iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_478])).

cnf(c_11,negated_conjecture,
    ( ~ r2_lattice3(sK3,sK4,sK6)
    | ~ r1_lattice3(sK3,sK4,sK6) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_3746,plain,
    ( r2_lattice3(sK3,sK4,sK6) != iProver_top
    | r1_lattice3(sK3,sK4,sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.32  % Computer   : n021.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.33  % DateTime   : Tue Dec  1 21:08:34 EST 2020
% 0.11/0.33  % CPUTime    : 
% 0.11/0.33  % Running in FOF mode
% 2.69/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.69/0.99  
% 2.69/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.69/0.99  
% 2.69/0.99  ------  iProver source info
% 2.69/0.99  
% 2.69/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.69/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.69/0.99  git: non_committed_changes: false
% 2.69/0.99  git: last_make_outside_of_git: false
% 2.69/0.99  
% 2.69/0.99  ------ 
% 2.69/0.99  
% 2.69/0.99  ------ Input Options
% 2.69/0.99  
% 2.69/0.99  --out_options                           all
% 2.69/0.99  --tptp_safe_out                         true
% 2.69/0.99  --problem_path                          ""
% 2.69/0.99  --include_path                          ""
% 2.69/0.99  --clausifier                            res/vclausify_rel
% 2.69/0.99  --clausifier_options                    --mode clausify
% 2.69/0.99  --stdin                                 false
% 2.69/0.99  --stats_out                             all
% 2.69/0.99  
% 2.69/0.99  ------ General Options
% 2.69/0.99  
% 2.69/0.99  --fof                                   false
% 2.69/0.99  --time_out_real                         305.
% 2.69/0.99  --time_out_virtual                      -1.
% 2.69/0.99  --symbol_type_check                     false
% 2.69/0.99  --clausify_out                          false
% 2.69/0.99  --sig_cnt_out                           false
% 2.69/0.99  --trig_cnt_out                          false
% 2.69/0.99  --trig_cnt_out_tolerance                1.
% 2.69/0.99  --trig_cnt_out_sk_spl                   false
% 2.69/0.99  --abstr_cl_out                          false
% 2.69/0.99  
% 2.69/0.99  ------ Global Options
% 2.69/0.99  
% 2.69/0.99  --schedule                              default
% 2.69/0.99  --add_important_lit                     false
% 2.69/0.99  --prop_solver_per_cl                    1000
% 2.69/0.99  --min_unsat_core                        false
% 2.69/0.99  --soft_assumptions                      false
% 2.69/0.99  --soft_lemma_size                       3
% 2.69/0.99  --prop_impl_unit_size                   0
% 2.69/0.99  --prop_impl_unit                        []
% 2.69/0.99  --share_sel_clauses                     true
% 2.69/0.99  --reset_solvers                         false
% 2.69/0.99  --bc_imp_inh                            [conj_cone]
% 2.69/0.99  --conj_cone_tolerance                   3.
% 2.69/0.99  --extra_neg_conj                        none
% 2.69/0.99  --large_theory_mode                     true
% 2.69/0.99  --prolific_symb_bound                   200
% 2.69/0.99  --lt_threshold                          2000
% 2.69/0.99  --clause_weak_htbl                      true
% 2.69/0.99  --gc_record_bc_elim                     false
% 2.69/0.99  
% 2.69/0.99  ------ Preprocessing Options
% 2.69/0.99  
% 2.69/0.99  --preprocessing_flag                    true
% 2.69/0.99  --time_out_prep_mult                    0.1
% 2.69/0.99  --splitting_mode                        input
% 2.69/0.99  --splitting_grd                         true
% 2.69/0.99  --splitting_cvd                         false
% 2.69/0.99  --splitting_cvd_svl                     false
% 2.69/0.99  --splitting_nvd                         32
% 2.69/0.99  --sub_typing                            true
% 2.69/0.99  --prep_gs_sim                           true
% 2.69/0.99  --prep_unflatten                        true
% 2.69/0.99  --prep_res_sim                          true
% 2.69/0.99  --prep_upred                            true
% 2.69/0.99  --prep_sem_filter                       exhaustive
% 2.69/0.99  --prep_sem_filter_out                   false
% 2.69/0.99  --pred_elim                             true
% 2.69/0.99  --res_sim_input                         true
% 2.69/0.99  --eq_ax_congr_red                       true
% 2.69/0.99  --pure_diseq_elim                       true
% 2.69/0.99  --brand_transform                       false
% 2.69/0.99  --non_eq_to_eq                          false
% 2.69/0.99  --prep_def_merge                        true
% 2.69/0.99  --prep_def_merge_prop_impl              false
% 2.69/0.99  --prep_def_merge_mbd                    true
% 2.69/0.99  --prep_def_merge_tr_red                 false
% 2.69/0.99  --prep_def_merge_tr_cl                  false
% 2.69/0.99  --smt_preprocessing                     true
% 2.69/0.99  --smt_ac_axioms                         fast
% 2.69/0.99  --preprocessed_out                      false
% 2.69/0.99  --preprocessed_stats                    false
% 2.69/0.99  
% 2.69/0.99  ------ Abstraction refinement Options
% 2.69/0.99  
% 2.69/0.99  --abstr_ref                             []
% 2.69/0.99  --abstr_ref_prep                        false
% 2.69/0.99  --abstr_ref_until_sat                   false
% 2.69/0.99  --abstr_ref_sig_restrict                funpre
% 2.69/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.69/0.99  --abstr_ref_under                       []
% 2.69/0.99  
% 2.69/0.99  ------ SAT Options
% 2.69/0.99  
% 2.69/0.99  --sat_mode                              false
% 2.69/0.99  --sat_fm_restart_options                ""
% 2.69/0.99  --sat_gr_def                            false
% 2.69/0.99  --sat_epr_types                         true
% 2.69/0.99  --sat_non_cyclic_types                  false
% 2.69/0.99  --sat_finite_models                     false
% 2.69/0.99  --sat_fm_lemmas                         false
% 2.69/0.99  --sat_fm_prep                           false
% 2.69/0.99  --sat_fm_uc_incr                        true
% 2.69/0.99  --sat_out_model                         small
% 2.69/0.99  --sat_out_clauses                       false
% 2.69/0.99  
% 2.69/0.99  ------ QBF Options
% 2.69/0.99  
% 2.69/0.99  --qbf_mode                              false
% 2.69/0.99  --qbf_elim_univ                         false
% 2.69/0.99  --qbf_dom_inst                          none
% 2.69/0.99  --qbf_dom_pre_inst                      false
% 2.69/0.99  --qbf_sk_in                             false
% 2.69/0.99  --qbf_pred_elim                         true
% 2.69/0.99  --qbf_split                             512
% 2.69/0.99  
% 2.69/0.99  ------ BMC1 Options
% 2.69/0.99  
% 2.69/0.99  --bmc1_incremental                      false
% 2.69/0.99  --bmc1_axioms                           reachable_all
% 2.69/0.99  --bmc1_min_bound                        0
% 2.69/0.99  --bmc1_max_bound                        -1
% 2.69/0.99  --bmc1_max_bound_default                -1
% 2.69/0.99  --bmc1_symbol_reachability              true
% 2.69/0.99  --bmc1_property_lemmas                  false
% 2.69/0.99  --bmc1_k_induction                      false
% 2.69/0.99  --bmc1_non_equiv_states                 false
% 2.69/0.99  --bmc1_deadlock                         false
% 2.69/0.99  --bmc1_ucm                              false
% 2.69/0.99  --bmc1_add_unsat_core                   none
% 2.69/0.99  --bmc1_unsat_core_children              false
% 2.69/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.69/0.99  --bmc1_out_stat                         full
% 2.69/0.99  --bmc1_ground_init                      false
% 2.69/0.99  --bmc1_pre_inst_next_state              false
% 2.69/0.99  --bmc1_pre_inst_state                   false
% 2.69/0.99  --bmc1_pre_inst_reach_state             false
% 2.69/0.99  --bmc1_out_unsat_core                   false
% 2.69/0.99  --bmc1_aig_witness_out                  false
% 2.69/0.99  --bmc1_verbose                          false
% 2.69/0.99  --bmc1_dump_clauses_tptp                false
% 2.69/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.69/0.99  --bmc1_dump_file                        -
% 2.69/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.69/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.69/0.99  --bmc1_ucm_extend_mode                  1
% 2.69/0.99  --bmc1_ucm_init_mode                    2
% 2.69/0.99  --bmc1_ucm_cone_mode                    none
% 2.69/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.69/0.99  --bmc1_ucm_relax_model                  4
% 2.69/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.69/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.69/0.99  --bmc1_ucm_layered_model                none
% 2.69/0.99  --bmc1_ucm_max_lemma_size               10
% 2.69/0.99  
% 2.69/0.99  ------ AIG Options
% 2.69/0.99  
% 2.69/0.99  --aig_mode                              false
% 2.69/0.99  
% 2.69/0.99  ------ Instantiation Options
% 2.69/0.99  
% 2.69/0.99  --instantiation_flag                    true
% 2.69/0.99  --inst_sos_flag                         false
% 2.69/0.99  --inst_sos_phase                        true
% 2.69/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.69/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.69/0.99  --inst_lit_sel_side                     num_symb
% 2.69/0.99  --inst_solver_per_active                1400
% 2.69/0.99  --inst_solver_calls_frac                1.
% 2.69/0.99  --inst_passive_queue_type               priority_queues
% 2.69/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.69/0.99  --inst_passive_queues_freq              [25;2]
% 2.69/0.99  --inst_dismatching                      true
% 2.69/0.99  --inst_eager_unprocessed_to_passive     true
% 2.69/0.99  --inst_prop_sim_given                   true
% 2.69/0.99  --inst_prop_sim_new                     false
% 2.69/0.99  --inst_subs_new                         false
% 2.69/0.99  --inst_eq_res_simp                      false
% 2.69/0.99  --inst_subs_given                       false
% 2.69/0.99  --inst_orphan_elimination               true
% 2.69/0.99  --inst_learning_loop_flag               true
% 2.69/0.99  --inst_learning_start                   3000
% 2.69/0.99  --inst_learning_factor                  2
% 2.69/0.99  --inst_start_prop_sim_after_learn       3
% 2.69/0.99  --inst_sel_renew                        solver
% 2.69/0.99  --inst_lit_activity_flag                true
% 2.69/0.99  --inst_restr_to_given                   false
% 2.69/0.99  --inst_activity_threshold               500
% 2.69/0.99  --inst_out_proof                        true
% 2.69/0.99  
% 2.69/0.99  ------ Resolution Options
% 2.69/0.99  
% 2.69/0.99  --resolution_flag                       true
% 2.69/0.99  --res_lit_sel                           adaptive
% 2.69/0.99  --res_lit_sel_side                      none
% 2.69/0.99  --res_ordering                          kbo
% 2.69/0.99  --res_to_prop_solver                    active
% 2.69/0.99  --res_prop_simpl_new                    false
% 2.69/0.99  --res_prop_simpl_given                  true
% 2.69/0.99  --res_passive_queue_type                priority_queues
% 2.69/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.69/0.99  --res_passive_queues_freq               [15;5]
% 2.69/0.99  --res_forward_subs                      full
% 2.69/0.99  --res_backward_subs                     full
% 2.69/0.99  --res_forward_subs_resolution           true
% 2.69/0.99  --res_backward_subs_resolution          true
% 2.69/0.99  --res_orphan_elimination                true
% 2.69/0.99  --res_time_limit                        2.
% 2.69/0.99  --res_out_proof                         true
% 2.69/0.99  
% 2.69/0.99  ------ Superposition Options
% 2.69/0.99  
% 2.69/0.99  --superposition_flag                    true
% 2.69/0.99  --sup_passive_queue_type                priority_queues
% 2.69/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.69/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.69/0.99  --demod_completeness_check              fast
% 2.69/0.99  --demod_use_ground                      true
% 2.69/0.99  --sup_to_prop_solver                    passive
% 2.69/0.99  --sup_prop_simpl_new                    true
% 2.69/0.99  --sup_prop_simpl_given                  true
% 2.69/0.99  --sup_fun_splitting                     false
% 2.69/0.99  --sup_smt_interval                      50000
% 2.69/0.99  
% 2.69/0.99  ------ Superposition Simplification Setup
% 2.69/0.99  
% 2.69/0.99  --sup_indices_passive                   []
% 2.69/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.69/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.99  --sup_full_bw                           [BwDemod]
% 2.69/0.99  --sup_immed_triv                        [TrivRules]
% 2.69/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.69/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.99  --sup_immed_bw_main                     []
% 2.69/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.69/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.99  
% 2.69/0.99  ------ Combination Options
% 2.69/0.99  
% 2.69/0.99  --comb_res_mult                         3
% 2.69/0.99  --comb_sup_mult                         2
% 2.69/0.99  --comb_inst_mult                        10
% 2.69/0.99  
% 2.69/0.99  ------ Debug Options
% 2.69/0.99  
% 2.69/0.99  --dbg_backtrace                         false
% 2.69/0.99  --dbg_dump_prop_clauses                 false
% 2.69/0.99  --dbg_dump_prop_clauses_file            -
% 2.69/0.99  --dbg_out_stat                          false
% 2.69/0.99  ------ Parsing...
% 2.69/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.69/0.99  
% 2.69/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e 
% 2.69/0.99  
% 2.69/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.69/0.99  
% 2.69/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.69/0.99  ------ Proving...
% 2.69/0.99  ------ Problem Properties 
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  clauses                                 28
% 2.69/0.99  conjectures                             8
% 2.69/0.99  EPR                                     5
% 2.69/0.99  Horn                                    19
% 2.69/0.99  unary                                   6
% 2.69/0.99  binary                                  4
% 2.69/0.99  lits                                    76
% 2.69/0.99  lits eq                                 6
% 2.69/0.99  fd_pure                                 0
% 2.69/0.99  fd_pseudo                               0
% 2.69/0.99  fd_cond                                 0
% 2.69/0.99  fd_pseudo_cond                          2
% 2.69/0.99  AC symbols                              0
% 2.69/0.99  
% 2.69/0.99  ------ Schedule dynamic 5 is on 
% 2.69/0.99  
% 2.69/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  ------ 
% 2.69/0.99  Current options:
% 2.69/0.99  ------ 
% 2.69/0.99  
% 2.69/0.99  ------ Input Options
% 2.69/0.99  
% 2.69/0.99  --out_options                           all
% 2.69/0.99  --tptp_safe_out                         true
% 2.69/0.99  --problem_path                          ""
% 2.69/0.99  --include_path                          ""
% 2.69/0.99  --clausifier                            res/vclausify_rel
% 2.69/0.99  --clausifier_options                    --mode clausify
% 2.69/0.99  --stdin                                 false
% 2.69/0.99  --stats_out                             all
% 2.69/0.99  
% 2.69/0.99  ------ General Options
% 2.69/0.99  
% 2.69/0.99  --fof                                   false
% 2.69/0.99  --time_out_real                         305.
% 2.69/0.99  --time_out_virtual                      -1.
% 2.69/0.99  --symbol_type_check                     false
% 2.69/0.99  --clausify_out                          false
% 2.69/0.99  --sig_cnt_out                           false
% 2.69/0.99  --trig_cnt_out                          false
% 2.69/0.99  --trig_cnt_out_tolerance                1.
% 2.69/0.99  --trig_cnt_out_sk_spl                   false
% 2.69/0.99  --abstr_cl_out                          false
% 2.69/0.99  
% 2.69/0.99  ------ Global Options
% 2.69/0.99  
% 2.69/0.99  --schedule                              default
% 2.69/0.99  --add_important_lit                     false
% 2.69/0.99  --prop_solver_per_cl                    1000
% 2.69/0.99  --min_unsat_core                        false
% 2.69/0.99  --soft_assumptions                      false
% 2.69/0.99  --soft_lemma_size                       3
% 2.69/0.99  --prop_impl_unit_size                   0
% 2.69/0.99  --prop_impl_unit                        []
% 2.69/0.99  --share_sel_clauses                     true
% 2.69/0.99  --reset_solvers                         false
% 2.69/0.99  --bc_imp_inh                            [conj_cone]
% 2.69/0.99  --conj_cone_tolerance                   3.
% 2.69/0.99  --extra_neg_conj                        none
% 2.69/0.99  --large_theory_mode                     true
% 2.69/0.99  --prolific_symb_bound                   200
% 2.69/0.99  --lt_threshold                          2000
% 2.69/0.99  --clause_weak_htbl                      true
% 2.69/0.99  --gc_record_bc_elim                     false
% 2.69/0.99  
% 2.69/0.99  ------ Preprocessing Options
% 2.69/0.99  
% 2.69/0.99  --preprocessing_flag                    true
% 2.69/0.99  --time_out_prep_mult                    0.1
% 2.69/0.99  --splitting_mode                        input
% 2.69/0.99  --splitting_grd                         true
% 2.69/0.99  --splitting_cvd                         false
% 2.69/0.99  --splitting_cvd_svl                     false
% 2.69/0.99  --splitting_nvd                         32
% 2.69/0.99  --sub_typing                            true
% 2.69/0.99  --prep_gs_sim                           true
% 2.69/0.99  --prep_unflatten                        true
% 2.69/0.99  --prep_res_sim                          true
% 2.69/0.99  --prep_upred                            true
% 2.69/0.99  --prep_sem_filter                       exhaustive
% 2.69/0.99  --prep_sem_filter_out                   false
% 2.69/0.99  --pred_elim                             true
% 2.69/0.99  --res_sim_input                         true
% 2.69/0.99  --eq_ax_congr_red                       true
% 2.69/0.99  --pure_diseq_elim                       true
% 2.69/0.99  --brand_transform                       false
% 2.69/0.99  --non_eq_to_eq                          false
% 2.69/0.99  --prep_def_merge                        true
% 2.69/0.99  --prep_def_merge_prop_impl              false
% 2.69/0.99  --prep_def_merge_mbd                    true
% 2.69/0.99  --prep_def_merge_tr_red                 false
% 2.69/0.99  --prep_def_merge_tr_cl                  false
% 2.69/0.99  --smt_preprocessing                     true
% 2.69/0.99  --smt_ac_axioms                         fast
% 2.69/0.99  --preprocessed_out                      false
% 2.69/0.99  --preprocessed_stats                    false
% 2.69/0.99  
% 2.69/0.99  ------ Abstraction refinement Options
% 2.69/0.99  
% 2.69/0.99  --abstr_ref                             []
% 2.69/0.99  --abstr_ref_prep                        false
% 2.69/0.99  --abstr_ref_until_sat                   false
% 2.69/0.99  --abstr_ref_sig_restrict                funpre
% 2.69/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.69/0.99  --abstr_ref_under                       []
% 2.69/0.99  
% 2.69/0.99  ------ SAT Options
% 2.69/0.99  
% 2.69/0.99  --sat_mode                              false
% 2.69/0.99  --sat_fm_restart_options                ""
% 2.69/0.99  --sat_gr_def                            false
% 2.69/0.99  --sat_epr_types                         true
% 2.69/0.99  --sat_non_cyclic_types                  false
% 2.69/0.99  --sat_finite_models                     false
% 2.69/0.99  --sat_fm_lemmas                         false
% 2.69/0.99  --sat_fm_prep                           false
% 2.69/0.99  --sat_fm_uc_incr                        true
% 2.69/0.99  --sat_out_model                         small
% 2.69/0.99  --sat_out_clauses                       false
% 2.69/0.99  
% 2.69/0.99  ------ QBF Options
% 2.69/0.99  
% 2.69/0.99  --qbf_mode                              false
% 2.69/0.99  --qbf_elim_univ                         false
% 2.69/0.99  --qbf_dom_inst                          none
% 2.69/0.99  --qbf_dom_pre_inst                      false
% 2.69/0.99  --qbf_sk_in                             false
% 2.69/0.99  --qbf_pred_elim                         true
% 2.69/0.99  --qbf_split                             512
% 2.69/0.99  
% 2.69/0.99  ------ BMC1 Options
% 2.69/0.99  
% 2.69/0.99  --bmc1_incremental                      false
% 2.69/0.99  --bmc1_axioms                           reachable_all
% 2.69/0.99  --bmc1_min_bound                        0
% 2.69/0.99  --bmc1_max_bound                        -1
% 2.69/0.99  --bmc1_max_bound_default                -1
% 2.69/0.99  --bmc1_symbol_reachability              true
% 2.69/0.99  --bmc1_property_lemmas                  false
% 2.69/0.99  --bmc1_k_induction                      false
% 2.69/0.99  --bmc1_non_equiv_states                 false
% 2.69/0.99  --bmc1_deadlock                         false
% 2.69/0.99  --bmc1_ucm                              false
% 2.69/0.99  --bmc1_add_unsat_core                   none
% 2.69/0.99  --bmc1_unsat_core_children              false
% 2.69/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.69/0.99  --bmc1_out_stat                         full
% 2.69/0.99  --bmc1_ground_init                      false
% 2.69/0.99  --bmc1_pre_inst_next_state              false
% 2.69/0.99  --bmc1_pre_inst_state                   false
% 2.69/0.99  --bmc1_pre_inst_reach_state             false
% 2.69/0.99  --bmc1_out_unsat_core                   false
% 2.69/0.99  --bmc1_aig_witness_out                  false
% 2.69/0.99  --bmc1_verbose                          false
% 2.69/0.99  --bmc1_dump_clauses_tptp                false
% 2.69/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.69/0.99  --bmc1_dump_file                        -
% 2.69/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.69/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.69/0.99  --bmc1_ucm_extend_mode                  1
% 2.69/0.99  --bmc1_ucm_init_mode                    2
% 2.69/0.99  --bmc1_ucm_cone_mode                    none
% 2.69/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.69/0.99  --bmc1_ucm_relax_model                  4
% 2.69/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.69/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.69/0.99  --bmc1_ucm_layered_model                none
% 2.69/0.99  --bmc1_ucm_max_lemma_size               10
% 2.69/0.99  
% 2.69/0.99  ------ AIG Options
% 2.69/0.99  
% 2.69/0.99  --aig_mode                              false
% 2.69/0.99  
% 2.69/0.99  ------ Instantiation Options
% 2.69/0.99  
% 2.69/0.99  --instantiation_flag                    true
% 2.69/0.99  --inst_sos_flag                         false
% 2.69/0.99  --inst_sos_phase                        true
% 2.69/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.69/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.69/0.99  --inst_lit_sel_side                     none
% 2.69/0.99  --inst_solver_per_active                1400
% 2.69/0.99  --inst_solver_calls_frac                1.
% 2.69/0.99  --inst_passive_queue_type               priority_queues
% 2.69/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.69/0.99  --inst_passive_queues_freq              [25;2]
% 2.69/0.99  --inst_dismatching                      true
% 2.69/0.99  --inst_eager_unprocessed_to_passive     true
% 2.69/0.99  --inst_prop_sim_given                   true
% 2.69/0.99  --inst_prop_sim_new                     false
% 2.69/0.99  --inst_subs_new                         false
% 2.69/0.99  --inst_eq_res_simp                      false
% 2.69/0.99  --inst_subs_given                       false
% 2.69/0.99  --inst_orphan_elimination               true
% 2.69/0.99  --inst_learning_loop_flag               true
% 2.69/0.99  --inst_learning_start                   3000
% 2.69/0.99  --inst_learning_factor                  2
% 2.69/0.99  --inst_start_prop_sim_after_learn       3
% 2.69/0.99  --inst_sel_renew                        solver
% 2.69/0.99  --inst_lit_activity_flag                true
% 2.69/0.99  --inst_restr_to_given                   false
% 2.69/0.99  --inst_activity_threshold               500
% 2.69/0.99  --inst_out_proof                        true
% 2.69/0.99  
% 2.69/0.99  ------ Resolution Options
% 2.69/0.99  
% 2.69/0.99  --resolution_flag                       false
% 2.69/0.99  --res_lit_sel                           adaptive
% 2.69/0.99  --res_lit_sel_side                      none
% 2.69/0.99  --res_ordering                          kbo
% 2.69/0.99  --res_to_prop_solver                    active
% 2.69/0.99  --res_prop_simpl_new                    false
% 2.69/0.99  --res_prop_simpl_given                  true
% 2.69/0.99  --res_passive_queue_type                priority_queues
% 2.69/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.69/0.99  --res_passive_queues_freq               [15;5]
% 2.69/0.99  --res_forward_subs                      full
% 2.69/0.99  --res_backward_subs                     full
% 2.69/0.99  --res_forward_subs_resolution           true
% 2.69/0.99  --res_backward_subs_resolution          true
% 2.69/0.99  --res_orphan_elimination                true
% 2.69/0.99  --res_time_limit                        2.
% 2.69/0.99  --res_out_proof                         true
% 2.69/0.99  
% 2.69/0.99  ------ Superposition Options
% 2.69/0.99  
% 2.69/0.99  --superposition_flag                    true
% 2.69/0.99  --sup_passive_queue_type                priority_queues
% 2.69/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.69/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.69/0.99  --demod_completeness_check              fast
% 2.69/0.99  --demod_use_ground                      true
% 2.69/0.99  --sup_to_prop_solver                    passive
% 2.69/0.99  --sup_prop_simpl_new                    true
% 2.69/0.99  --sup_prop_simpl_given                  true
% 2.69/0.99  --sup_fun_splitting                     false
% 2.69/0.99  --sup_smt_interval                      50000
% 2.69/0.99  
% 2.69/0.99  ------ Superposition Simplification Setup
% 2.69/0.99  
% 2.69/0.99  --sup_indices_passive                   []
% 2.69/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.69/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.99  --sup_full_bw                           [BwDemod]
% 2.69/0.99  --sup_immed_triv                        [TrivRules]
% 2.69/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.69/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.99  --sup_immed_bw_main                     []
% 2.69/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.69/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.99  
% 2.69/0.99  ------ Combination Options
% 2.69/0.99  
% 2.69/0.99  --comb_res_mult                         3
% 2.69/0.99  --comb_sup_mult                         2
% 2.69/0.99  --comb_inst_mult                        10
% 2.69/0.99  
% 2.69/0.99  ------ Debug Options
% 2.69/0.99  
% 2.69/0.99  --dbg_backtrace                         false
% 2.69/0.99  --dbg_dump_prop_clauses                 false
% 2.69/0.99  --dbg_dump_prop_clauses_file            -
% 2.69/0.99  --dbg_out_stat                          false
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  ------ Proving...
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  % SZS status CounterSatisfiable for theBenchmark.p
% 2.69/0.99  
% 2.69/0.99  % SZS output start Saturation for theBenchmark.p
% 2.69/0.99  
% 2.69/0.99  fof(f4,axiom,(
% 2.69/0.99    ! [X0] : (l1_orders_2(X0) => ! [X1,X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_lattice3(X0,X1,X2) <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X1) => r1_orders_2(X0,X3,X2))))))),
% 2.69/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.99  
% 2.69/0.99  fof(f11,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : ((r2_lattice3(X0,X1,X2) <=> ! [X3] : ((r1_orders_2(X0,X3,X2) | ~r2_hidden(X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(ennf_transformation,[],[f4])).
% 2.69/0.99  
% 2.69/0.99  fof(f12,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : ((r2_lattice3(X0,X1,X2) <=> ! [X3] : (r1_orders_2(X0,X3,X2) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(flattening,[],[f11])).
% 2.69/0.99  
% 2.69/0.99  fof(f19,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : (((r2_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X3,X2) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (r1_orders_2(X0,X3,X2) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~r2_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(nnf_transformation,[],[f12])).
% 2.69/0.99  
% 2.69/0.99  fof(f20,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : (((r2_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X3,X2) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X4,X2) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r2_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(rectify,[],[f19])).
% 2.69/0.99  
% 2.69/0.99  fof(f21,plain,(
% 2.69/0.99    ! [X2,X1,X0] : (? [X3] : (~r1_orders_2(X0,X3,X2) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_orders_2(X0,sK1(X0,X1,X2),X2) & r2_hidden(sK1(X0,X1,X2),X1) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))))),
% 2.69/0.99    introduced(choice_axiom,[])).
% 2.69/0.99  
% 2.69/0.99  fof(f22,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : (((r2_lattice3(X0,X1,X2) | (~r1_orders_2(X0,sK1(X0,X1,X2),X2) & r2_hidden(sK1(X0,X1,X2),X1) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X4,X2) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r2_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f21])).
% 2.69/0.99  
% 2.69/0.99  fof(f37,plain,(
% 2.69/0.99    ( ! [X2,X0,X1] : (r2_lattice3(X0,X1,X2) | r2_hidden(sK1(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f22])).
% 2.69/0.99  
% 2.69/0.99  fof(f5,conjecture,(
% 2.69/0.99    ! [X0] : (l1_orders_2(X0) => ! [X1] : (l1_orders_2(X1) => (g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) => ! [X2,X3] : (m1_subset_1(X3,u1_struct_0(X0)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => (X3 = X4 => ((r1_lattice3(X0,X2,X3) => r1_lattice3(X1,X2,X4)) & (r2_lattice3(X0,X2,X3) => r2_lattice3(X1,X2,X4)))))))))),
% 2.69/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.99  
% 2.69/0.99  fof(f6,negated_conjecture,(
% 2.69/0.99    ~! [X0] : (l1_orders_2(X0) => ! [X1] : (l1_orders_2(X1) => (g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) => ! [X2,X3] : (m1_subset_1(X3,u1_struct_0(X0)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => (X3 = X4 => ((r1_lattice3(X0,X2,X3) => r1_lattice3(X1,X2,X4)) & (r2_lattice3(X0,X2,X3) => r2_lattice3(X1,X2,X4)))))))))),
% 2.69/0.99    inference(negated_conjecture,[],[f5])).
% 2.69/0.99  
% 2.69/0.99  fof(f13,plain,(
% 2.69/0.99    ? [X0] : (? [X1] : ((? [X2,X3] : (? [X4] : ((((~r1_lattice3(X1,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4) & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X0))) & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))) & l1_orders_2(X1)) & l1_orders_2(X0))),
% 2.69/0.99    inference(ennf_transformation,[],[f6])).
% 2.69/0.99  
% 2.69/0.99  fof(f14,plain,(
% 2.69/0.99    ? [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (((~r1_lattice3(X1,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X0))) & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) & l1_orders_2(X1)) & l1_orders_2(X0))),
% 2.69/0.99    inference(flattening,[],[f13])).
% 2.69/0.99  
% 2.69/0.99  fof(f26,plain,(
% 2.69/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (((~r1_lattice3(X1,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(X1))) => (((~r1_lattice3(X1,X2,sK6) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,sK6) & r2_lattice3(X0,X2,X3))) & sK6 = X3 & m1_subset_1(sK6,u1_struct_0(X1)))) )),
% 2.69/0.99    introduced(choice_axiom,[])).
% 2.69/0.99  
% 2.69/0.99  fof(f25,plain,(
% 2.69/0.99    ( ! [X0,X1] : (? [X2,X3] : (? [X4] : (((~r1_lattice3(X1,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X0))) => (? [X4] : (((~r1_lattice3(X1,sK4,X4) & r1_lattice3(X0,sK4,sK5)) | (~r2_lattice3(X1,sK4,X4) & r2_lattice3(X0,sK4,sK5))) & sK5 = X4 & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(sK5,u1_struct_0(X0)))) )),
% 2.69/0.99    introduced(choice_axiom,[])).
% 2.69/0.99  
% 2.69/0.99  fof(f24,plain,(
% 2.69/0.99    ( ! [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (((~r1_lattice3(X1,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X0))) & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) & l1_orders_2(X1)) => (? [X3,X2] : (? [X4] : (((~r1_lattice3(sK3,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(sK3,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(sK3))) & m1_subset_1(X3,u1_struct_0(X0))) & g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) = g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) & l1_orders_2(sK3))) )),
% 2.69/0.99    introduced(choice_axiom,[])).
% 2.69/0.99  
% 2.69/0.99  fof(f23,plain,(
% 2.69/0.99    ? [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (((~r1_lattice3(X1,X2,X4) & r1_lattice3(X0,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(X0,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X0))) & g1_orders_2(u1_struct_0(X0),u1_orders_2(X0)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) & l1_orders_2(X1)) & l1_orders_2(X0)) => (? [X1] : (? [X3,X2] : (? [X4] : (((~r1_lattice3(X1,X2,X4) & r1_lattice3(sK2,X2,X3)) | (~r2_lattice3(X1,X2,X4) & r2_lattice3(sK2,X2,X3))) & X3 = X4 & m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(sK2))) & g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) & l1_orders_2(X1)) & l1_orders_2(sK2))),
% 2.69/0.99    introduced(choice_axiom,[])).
% 2.69/0.99  
% 2.69/0.99  fof(f27,plain,(
% 2.69/0.99    (((((~r1_lattice3(sK3,sK4,sK6) & r1_lattice3(sK2,sK4,sK5)) | (~r2_lattice3(sK3,sK4,sK6) & r2_lattice3(sK2,sK4,sK5))) & sK5 = sK6 & m1_subset_1(sK6,u1_struct_0(sK3))) & m1_subset_1(sK5,u1_struct_0(sK2))) & g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) & l1_orders_2(sK3)) & l1_orders_2(sK2)),
% 2.69/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f14,f26,f25,f24,f23])).
% 2.69/0.99  
% 2.69/0.99  fof(f39,plain,(
% 2.69/0.99    l1_orders_2(sK2)),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f41,plain,(
% 2.69/0.99    g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3))),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f2,axiom,(
% 2.69/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) => ! [X2,X3] : (g1_orders_2(X0,X1) = g1_orders_2(X2,X3) => (X1 = X3 & X0 = X2)))),
% 2.69/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.99  
% 2.69/0.99  fof(f8,plain,(
% 2.69/0.99    ! [X0,X1] : (! [X2,X3] : ((X1 = X3 & X0 = X2) | g1_orders_2(X0,X1) != g1_orders_2(X2,X3)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))))),
% 2.69/0.99    inference(ennf_transformation,[],[f2])).
% 2.69/0.99  
% 2.69/0.99  fof(f29,plain,(
% 2.69/0.99    ( ! [X2,X0,X3,X1] : (X0 = X2 | g1_orders_2(X0,X1) != g1_orders_2(X2,X3) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 2.69/0.99    inference(cnf_transformation,[],[f8])).
% 2.69/0.99  
% 2.69/0.99  fof(f1,axiom,(
% 2.69/0.99    ! [X0] : (l1_orders_2(X0) => m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))))),
% 2.69/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.99  
% 2.69/0.99  fof(f7,plain,(
% 2.69/0.99    ! [X0] : (m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(ennf_transformation,[],[f1])).
% 2.69/0.99  
% 2.69/0.99  fof(f28,plain,(
% 2.69/0.99    ( ! [X0] : (m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f7])).
% 2.69/0.99  
% 2.69/0.99  fof(f36,plain,(
% 2.69/0.99    ( ! [X2,X0,X1] : (r2_lattice3(X0,X1,X2) | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f22])).
% 2.69/0.99  
% 2.69/0.99  fof(f3,axiom,(
% 2.69/0.99    ! [X0] : (l1_orders_2(X0) => ! [X1,X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r1_lattice3(X0,X1,X2) <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X1) => r1_orders_2(X0,X2,X3))))))),
% 2.69/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.99  
% 2.69/0.99  fof(f9,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : ((r1_lattice3(X0,X1,X2) <=> ! [X3] : ((r1_orders_2(X0,X2,X3) | ~r2_hidden(X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(ennf_transformation,[],[f3])).
% 2.69/0.99  
% 2.69/0.99  fof(f10,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : ((r1_lattice3(X0,X1,X2) <=> ! [X3] : (r1_orders_2(X0,X2,X3) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(flattening,[],[f9])).
% 2.69/0.99  
% 2.69/0.99  fof(f15,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : (((r1_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X2,X3) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (r1_orders_2(X0,X2,X3) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~r1_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(nnf_transformation,[],[f10])).
% 2.69/0.99  
% 2.69/0.99  fof(f16,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : (((r1_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X2,X3) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X2,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r1_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(rectify,[],[f15])).
% 2.69/0.99  
% 2.69/0.99  fof(f17,plain,(
% 2.69/0.99    ! [X2,X1,X0] : (? [X3] : (~r1_orders_2(X0,X2,X3) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_orders_2(X0,X2,sK0(X0,X1,X2)) & r2_hidden(sK0(X0,X1,X2),X1) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))))),
% 2.69/0.99    introduced(choice_axiom,[])).
% 2.69/0.99  
% 2.69/0.99  fof(f18,plain,(
% 2.69/0.99    ! [X0] : (! [X1,X2] : (((r1_lattice3(X0,X1,X2) | (~r1_orders_2(X0,X2,sK0(X0,X1,X2)) & r2_hidden(sK0(X0,X1,X2),X1) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X2,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r1_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 2.69/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).
% 2.69/0.99  
% 2.69/0.99  fof(f31,plain,(
% 2.69/0.99    ( ! [X4,X2,X0,X1] : (r1_orders_2(X0,X2,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r1_lattice3(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f18])).
% 2.69/0.99  
% 2.69/0.99  fof(f38,plain,(
% 2.69/0.99    ( ! [X2,X0,X1] : (r2_lattice3(X0,X1,X2) | ~r1_orders_2(X0,sK1(X0,X1,X2),X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f22])).
% 2.69/0.99  
% 2.69/0.99  fof(f33,plain,(
% 2.69/0.99    ( ! [X2,X0,X1] : (r1_lattice3(X0,X1,X2) | r2_hidden(sK0(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f18])).
% 2.69/0.99  
% 2.69/0.99  fof(f32,plain,(
% 2.69/0.99    ( ! [X2,X0,X1] : (r1_lattice3(X0,X1,X2) | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f18])).
% 2.69/0.99  
% 2.69/0.99  fof(f40,plain,(
% 2.69/0.99    l1_orders_2(sK3)),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f43,plain,(
% 2.69/0.99    m1_subset_1(sK6,u1_struct_0(sK3))),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f35,plain,(
% 2.69/0.99    ( ! [X4,X2,X0,X1] : (r1_orders_2(X0,X4,X2) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r2_lattice3(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f22])).
% 2.69/0.99  
% 2.69/0.99  fof(f45,plain,(
% 2.69/0.99    r1_lattice3(sK2,sK4,sK5) | r2_lattice3(sK2,sK4,sK5)),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f44,plain,(
% 2.69/0.99    sK5 = sK6),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f34,plain,(
% 2.69/0.99    ( ! [X2,X0,X1] : (r1_lattice3(X0,X1,X2) | ~r1_orders_2(X0,X2,sK0(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.69/0.99    inference(cnf_transformation,[],[f18])).
% 2.69/0.99  
% 2.69/0.99  fof(f30,plain,(
% 2.69/0.99    ( ! [X2,X0,X3,X1] : (X1 = X3 | g1_orders_2(X0,X1) != g1_orders_2(X2,X3) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 2.69/0.99    inference(cnf_transformation,[],[f8])).
% 2.69/0.99  
% 2.69/0.99  fof(f47,plain,(
% 2.69/0.99    ~r1_lattice3(sK3,sK4,sK6) | r2_lattice3(sK2,sK4,sK5)),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f46,plain,(
% 2.69/0.99    r1_lattice3(sK2,sK4,sK5) | ~r2_lattice3(sK3,sK4,sK6)),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  fof(f48,plain,(
% 2.69/0.99    ~r1_lattice3(sK3,sK4,sK6) | ~r2_lattice3(sK3,sK4,sK6)),
% 2.69/0.99    inference(cnf_transformation,[],[f27])).
% 2.69/0.99  
% 2.69/0.99  cnf(c_179,plain,( X0_2 = X0_2 ),theory(equality) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_8,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | r2_hidden(sK1(X0,X1,X2),X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f37]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_20,negated_conjecture,
% 2.69/0.99      ( l1_orders_2(sK2) ),
% 2.69/0.99      inference(cnf_transformation,[],[f39]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_652,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | r2_hidden(sK1(X0,X1,X2),X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_653,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1)
% 2.69/0.99      | r2_hidden(sK1(sK2,X0,X1),X0)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_652]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3729,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK2,X0,X1),X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_653]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_18,negated_conjecture,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK2),u1_orders_2(sK2)) = g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) ),
% 2.69/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_2,plain,
% 2.69/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 2.69/0.99      | X2 = X1
% 2.69/0.99      | g1_orders_2(X2,X3) != g1_orders_2(X1,X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f29]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3747,plain,
% 2.69/0.99      ( X0 = X1
% 2.69/0.99      | g1_orders_2(X0,X2) != g1_orders_2(X1,X3)
% 2.69/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4125,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_struct_0(sK2) = X0
% 2.69/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_18,c_3747]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_0,plain,
% 2.69/0.99      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f28]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_58,plain,
% 2.69/0.99      ( m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2))))
% 2.69/0.99      | ~ l1_orders_2(sK2) ),
% 2.69/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4126,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_struct_0(sK2) = X0
% 2.69/0.99      | m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_18,c_3747]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4143,plain,
% 2.69/0.99      ( ~ m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2))))
% 2.69/0.99      | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_struct_0(sK2) = X0 ),
% 2.69/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_4126]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4231,plain,
% 2.69/0.99      ( u1_struct_0(sK2) = X0
% 2.69/0.99      | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1) ),
% 2.69/0.99      inference(global_propositional_subsumption,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_4125,c_20,c_58,c_4143]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4232,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_struct_0(sK2) = X0 ),
% 2.69/0.99      inference(renaming,[status(thm)],[c_4231]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4237,plain,
% 2.69/0.99      ( u1_struct_0(sK2) = u1_struct_0(sK3) ),
% 2.69/0.99      inference(equality_resolution,[status(thm)],[c_4232]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4760,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK2,X0,X1),X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3729,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_9,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f36]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_637,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_638,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_637]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3730,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK2)) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_638]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5740,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK3)) = iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3730,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6,plain,
% 2.69/0.99      ( r1_orders_2(X0,X1,X2)
% 2.69/0.99      | ~ r1_lattice3(X0,X3,X1)
% 2.69/0.99      | ~ r2_hidden(X2,X3)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f31]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_682,plain,
% 2.69/0.99      ( r1_orders_2(X0,X1,X2)
% 2.69/0.99      | ~ r1_lattice3(X0,X3,X1)
% 2.69/0.99      | ~ r2_hidden(X2,X3)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_683,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,X1)
% 2.69/0.99      | ~ r1_lattice3(sK2,X2,X0)
% 2.69/0.99      | ~ r2_hidden(X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.69/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_682]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3727,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X2,X0) != iProver_top
% 2.69/0.99      | r2_hidden(X1,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_683]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5036,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X2,X0) != iProver_top
% 2.69/0.99      | r2_hidden(X1,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3727,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5750,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X3,X2) != iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK2,X0,X1),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5740,c_5036]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7788,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_4760,c_5750]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_667,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_668,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1)
% 2.69/0.99      | ~ r1_orders_2(sK2,sK1(sK2,X0,X1),X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_667]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3728,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK2,X0,X1),X1) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_668]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4913,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK2,X0,X1),X1) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3728,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7798,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,sK1(sK2,X2,sK1(sK2,X0,X1))) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_7788,c_4913]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7991,plain,
% 2.69/0.99      ( m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,sK1(sK2,X2,sK1(sK2,X0,X1))) != iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7798,c_5740]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7992,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,sK1(sK2,X2,sK1(sK2,X0,X1))) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(renaming,[status(thm)],[c_7991]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4,plain,
% 2.69/0.99      ( r1_lattice3(X0,X1,X2)
% 2.69/0.99      | r2_hidden(sK0(X0,X1,X2),X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f33]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_718,plain,
% 2.69/0.99      ( r1_lattice3(X0,X1,X2)
% 2.69/0.99      | r2_hidden(sK0(X0,X1,X2),X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_719,plain,
% 2.69/0.99      ( r1_lattice3(sK2,X0,X1)
% 2.69/0.99      | r2_hidden(sK0(sK2,X0,X1),X0)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_718]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3725,plain,
% 2.69/0.99      ( r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK2,X0,X1),X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_719]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4644,plain,
% 2.69/0.99      ( r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK2,X0,X1),X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3725,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5,plain,
% 2.69/0.99      ( r1_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_703,plain,
% 2.69/0.99      ( r1_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_704,plain,
% 2.69/0.99      ( r1_lattice3(sK2,X0,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.69/0.99      | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_703]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3726,plain,
% 2.69/0.99      ( r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK2)) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_704]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5263,plain,
% 2.69/0.99      ( r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK3)) = iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3726,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5271,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X3,X0) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK2,X1,X2),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5263,c_5036]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6951,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X0) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_4644,c_5271]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7672,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK2,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,sK0(sK2,X1,X2)),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK2,X1,X2),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_6951,c_4913]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7986,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK2,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(forward_subsumption_resolution,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_7672,c_5263,c_5740]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_19,negated_conjecture,
% 2.69/0.99      ( l1_orders_2(sK3) ),
% 2.69/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_513,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | r2_hidden(sK1(X0,X1,X2),X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_514,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1)
% 2.69/0.99      | r2_hidden(sK1(sK3,X0,X1),X0)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_513]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3738,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK3,X0,X1),X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_514]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_498,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_499,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 2.69/0.99      | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_498]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3739,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_499]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6022,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X3,X2) != iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK3,X0,X1),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3739,c_5036]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7204,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3738,c_6022]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7214,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK1(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,sK1(sK2,X0,sK1(sK3,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,sK1(sK3,X1,X2)),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X1,X2),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_7204,c_4913]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7908,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK1(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,sK1(sK2,X0,sK1(sK3,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(forward_subsumption_resolution,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_7214,c_3739,c_5740]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_579,plain,
% 2.69/0.99      ( r1_lattice3(X0,X1,X2)
% 2.69/0.99      | r2_hidden(sK0(X0,X1,X2),X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_580,plain,
% 2.69/0.99      ( r1_lattice3(sK3,X0,X1)
% 2.69/0.99      | r2_hidden(sK0(sK3,X0,X1),X0)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_579]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3734,plain,
% 2.69/0.99      ( r1_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK3,X0,X1),X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_580]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_564,plain,
% 2.69/0.99      ( r1_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_565,plain,
% 2.69/0.99      ( r1_lattice3(sK3,X0,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 2.69/0.99      | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_564]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3735,plain,
% 2.69/0.99      ( r1_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3)) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_565]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5930,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X3,X0) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK3,X1,X2),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3735,c_5036]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6900,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X0) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3734,c_5930]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6910,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK3,X1,X2))) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,sK0(sK3,X1,X2)),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK3,X1,X2),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_6900,c_4913]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7897,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,sK1(sK2,X0,sK0(sK3,X1,X2))) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(forward_subsumption_resolution,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_6910,c_3735,c_5740]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_543,plain,
% 2.69/0.99      ( r1_orders_2(X0,X1,X2)
% 2.69/0.99      | ~ r1_lattice3(X0,X3,X1)
% 2.69/0.99      | ~ r2_hidden(X2,X3)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_544,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,X1)
% 2.69/0.99      | ~ r1_lattice3(sK3,X2,X0)
% 2.69/0.99      | ~ r2_hidden(X1,X2)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 2.69/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_543]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3736,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X2,X0) != iProver_top
% 2.69/0.99      | r2_hidden(X1,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_544]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5747,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X3,X2) != iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK2,X0,X1),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5740,c_3736]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6721,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_4760,c_5747]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_528,plain,
% 2.69/0.99      ( r2_lattice3(X0,X1,X2)
% 2.69/0.99      | ~ r1_orders_2(X0,sK1(X0,X1,X2),X2)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_529,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1)
% 2.69/0.99      | ~ r1_orders_2(sK3,sK1(sK3,X0,X1),X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_528]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3737,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,sK1(sK3,X0,X1),X1) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_529]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7583,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK2,X0,X1))) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK2,X0,X1),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_6721,c_3737]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7588,plain,
% 2.69/0.99      ( m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK2,X0,X1))) != iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7583,c_5740]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7589,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X2,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK2,X0,X1))) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X2,sK1(sK2,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(renaming,[status(thm)],[c_7588]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5536,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X3,X0) != iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK2,X1,X2),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5263,c_3736]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6680,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_4644,c_5536]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7471,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK2,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X0,sK0(sK2,X1,X2)),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK2,X1,X2),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_6680,c_3737]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7482,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK2,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(forward_subsumption_resolution,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_7471,c_5263,c_3739]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6019,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X3,X2) != iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK3,X0,X1),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3739,c_3736]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6960,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3738,c_6019]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7068,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK3,X0,X1))) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X2,sK1(sK3,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_6960,c_3737]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_500,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X0,X1),u1_struct_0(sK3)) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_499]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7358,plain,
% 2.69/0.99      ( m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK3,X0,X1))) != iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X2,sK1(sK3,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7068,c_500]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7359,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X2,sK1(sK3,X0,X1)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK1(sK3,X2,sK1(sK3,X0,X1))) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X2,sK1(sK3,X0,X1)),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(renaming,[status(thm)],[c_7358]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5927,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X3,X0) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK3,X1,X2),X3) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3735,c_3736]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6732,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X0) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3734,c_5927]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6800,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK3,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK1(sK3,X0,sK0(sK3,X1,X2)),u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(sK0(sK3,X1,X2),u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_6732,c_3737]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_7353,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,sK1(sK3,X0,sK0(sK3,X1,X2))) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(forward_subsumption_resolution,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_6800,c_3735,c_3739]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_16,negated_conjecture,
% 2.69/0.99      ( m1_subset_1(sK6,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3742,plain,
% 2.69/0.99      ( m1_subset_1(sK6,u1_struct_0(sK3)) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_10,plain,
% 2.69/0.99      ( ~ r2_lattice3(X0,X1,X2)
% 2.69/0.99      | r1_orders_2(X0,X3,X2)
% 2.69/0.99      | ~ r2_hidden(X3,X1)
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_616,plain,
% 2.69/0.99      ( ~ r2_lattice3(X0,X1,X2)
% 2.69/0.99      | r1_orders_2(X0,X3,X2)
% 2.69/0.99      | ~ r2_hidden(X3,X1)
% 2.69/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_617,plain,
% 2.69/0.99      ( ~ r2_lattice3(sK2,X0,X1)
% 2.69/0.99      | r1_orders_2(sK2,X2,X1)
% 2.69/0.99      | ~ r2_hidden(X2,X0)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_616]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3731,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X2,X1) = iProver_top
% 2.69/0.99      | r2_hidden(X2,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK2)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_617]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5170,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X2,X1) = iProver_top
% 2.69/0.99      | r2_hidden(X2,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3731,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5179,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X1,sK6) = iProver_top
% 2.69/0.99      | r2_hidden(X1,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3742,c_5170]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6020,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK3,X1,X2),sK6) = iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK3,X1,X2),X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3739,c_5179]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6492,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK3,X0,X1),sK6) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3738,c_6020]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5928,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK0(sK3,X1,X2),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK3,X1,X2),X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3735,c_5179]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6344,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK0(sK3,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3734,c_5928]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5748,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X2,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r2_hidden(sK1(sK2,X0,X1),X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5740,c_5179]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6221,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_4760,c_5748]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5320,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK0(sK2,X1,X2),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(sK0(sK2,X1,X2),X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5263,c_5179]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6171,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK0(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_4644,c_5320]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5045,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X0) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X1) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3742,c_5036]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6024,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK3,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X2,sK1(sK3,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3739,c_5045]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5535,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X0) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X1) != iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3742,c_3736]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6023,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,sK1(sK3,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X2,sK1(sK3,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3739,c_5535]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_6021,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK1(sK3,X1,X2)) != iProver_top
% 2.69/0.99      | r2_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X3,sK1(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r2_hidden(X3,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3739,c_5170]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5932,plain,
% 2.69/0.99      ( r1_orders_2(sK2,sK0(sK3,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X2,sK0(sK3,X0,X1)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3735,c_5045]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5931,plain,
% 2.69/0.99      ( r1_orders_2(sK3,sK0(sK3,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,X1) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X2,sK0(sK3,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3735,c_5535]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5929,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK0(sK3,X1,X2)) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X3,sK0(sK3,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(X3,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3735,c_5170]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5752,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK1(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X2,sK1(sK2,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5740,c_5045]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5751,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_orders_2(sK3,sK1(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X2,sK1(sK2,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5740,c_5535]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5749,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r2_lattice3(sK2,X2,sK1(sK2,X0,X1)) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X3,sK1(sK2,X0,X1)) = iProver_top
% 2.69/0.99      | r2_hidden(X3,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5740,c_5170]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5649,plain,
% 2.69/0.99      ( r1_orders_2(sK3,sK0(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X2,sK0(sK2,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5263,c_5535]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5648,plain,
% 2.69/0.99      ( r1_orders_2(sK3,sK6,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X0,sK6) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X0) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3742,c_5535]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_14,negated_conjecture,
% 2.69/0.99      ( r2_lattice3(sK2,sK4,sK5) | r1_lattice3(sK2,sK4,sK5) ),
% 2.69/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3743,plain,
% 2.69/0.99      ( r2_lattice3(sK2,sK4,sK5) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,sK4,sK5) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_15,negated_conjecture,
% 2.69/0.99      ( sK5 = sK6 ),
% 2.69/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3762,plain,
% 2.69/0.99      ( r2_lattice3(sK2,sK4,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,sK4,sK6) = iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3743,c_15]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5319,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,sK6,sK6) = iProver_top
% 2.69/0.99      | r2_hidden(sK6,X0) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3742,c_5179]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5430,plain,
% 2.69/0.99      ( r1_orders_2(sK2,sK6,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,sK4,sK6) = iProver_top
% 2.69/0.99      | r2_hidden(sK6,sK4) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3762,c_5319]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5054,plain,
% 2.69/0.99      ( r1_orders_2(sK2,sK6,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,sK6) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X0) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_3742,c_5045]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5436,plain,
% 2.69/0.99      ( r1_orders_2(sK2,sK6,sK6) = iProver_top
% 2.69/0.99      | r2_hidden(sK6,sK4) != iProver_top ),
% 2.69/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_5430,c_5054]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5272,plain,
% 2.69/0.99      ( r1_orders_2(sK2,sK0(sK2,X0,X1),sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X0,X1) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X2,sK0(sK2,X0,X1)) != iProver_top
% 2.69/0.99      | r2_hidden(sK6,X2) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5263,c_5045]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_5270,plain,
% 2.69/0.99      ( r2_lattice3(sK2,X0,sK0(sK2,X1,X2)) != iProver_top
% 2.69/0.99      | r1_orders_2(sK2,X3,sK0(sK2,X1,X2)) = iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X2) = iProver_top
% 2.69/0.99      | r2_hidden(X3,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X3,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_5263,c_5170]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3,plain,
% 2.69/0.99      ( ~ r1_orders_2(X0,X1,sK0(X0,X2,X1))
% 2.69/0.99      | r1_lattice3(X0,X2,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.69/0.99      | ~ l1_orders_2(X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_733,plain,
% 2.69/0.99      ( ~ r1_orders_2(X0,X1,sK0(X0,X2,X1))
% 2.69/0.99      | r1_lattice3(X0,X2,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.69/0.99      | sK2 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_20]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_734,plain,
% 2.69/0.99      ( ~ r1_orders_2(sK2,X0,sK0(sK2,X1,X0))
% 2.69/0.99      | r1_lattice3(sK2,X1,X0)
% 2.69/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_733]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3724,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK0(sK2,X1,X0)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_734]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4633,plain,
% 2.69/0.99      ( r1_orders_2(sK2,X0,sK0(sK2,X1,X0)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,X1,X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3724,c_4237]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_1,plain,
% 2.69/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 2.69/0.99      | X2 = X0
% 2.69/0.99      | g1_orders_2(X3,X2) != g1_orders_2(X1,X0) ),
% 2.69/0.99      inference(cnf_transformation,[],[f30]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3748,plain,
% 2.69/0.99      ( X0 = X1
% 2.69/0.99      | g1_orders_2(X2,X0) != g1_orders_2(X3,X1)
% 2.69/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X3))) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4209,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_orders_2(sK2) = X1
% 2.69/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_18,c_3748]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4210,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_orders_2(sK2) = X1
% 2.69/0.99      | m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top ),
% 2.69/0.99      inference(superposition,[status(thm)],[c_18,c_3748]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4227,plain,
% 2.69/0.99      ( ~ m1_subset_1(u1_orders_2(sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2))))
% 2.69/0.99      | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_orders_2(sK2) = X1 ),
% 2.69/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_4210]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4333,plain,
% 2.69/0.99      ( u1_orders_2(sK2) = X1
% 2.69/0.99      | g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1) ),
% 2.69/0.99      inference(global_propositional_subsumption,
% 2.69/0.99                [status(thm)],
% 2.69/0.99                [c_4209,c_20,c_58,c_4227]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4334,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_orders_2(sK2) = X1 ),
% 2.69/0.99      inference(renaming,[status(thm)],[c_4333]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4339,plain,
% 2.69/0.99      ( u1_orders_2(sK3) = u1_orders_2(sK2) ),
% 2.69/0.99      inference(equality_resolution,[status(thm)],[c_4334]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4341,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_orders_2(sK3) = X1 ),
% 2.69/0.99      inference(demodulation,[status(thm)],[c_4339,c_4334]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_4239,plain,
% 2.69/0.99      ( g1_orders_2(u1_struct_0(sK3),u1_orders_2(sK3)) != g1_orders_2(X0,X1)
% 2.69/0.99      | u1_struct_0(sK3) = X0 ),
% 2.69/0.99      inference(demodulation,[status(thm)],[c_4237,c_4232]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_12,negated_conjecture,
% 2.69/0.99      ( r2_lattice3(sK2,sK4,sK5) | ~ r1_lattice3(sK3,sK4,sK6) ),
% 2.69/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3745,plain,
% 2.69/0.99      ( r2_lattice3(sK2,sK4,sK5) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,sK4,sK6) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3772,plain,
% 2.69/0.99      ( r2_lattice3(sK2,sK4,sK6) = iProver_top
% 2.69/0.99      | r1_lattice3(sK3,sK4,sK6) != iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3745,c_15]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_13,negated_conjecture,
% 2.69/0.99      ( ~ r2_lattice3(sK3,sK4,sK6) | r1_lattice3(sK2,sK4,sK5) ),
% 2.69/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3744,plain,
% 2.69/0.99      ( r2_lattice3(sK3,sK4,sK6) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,sK4,sK5) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3767,plain,
% 2.69/0.99      ( r2_lattice3(sK3,sK4,sK6) != iProver_top
% 2.69/0.99      | r1_lattice3(sK2,sK4,sK6) = iProver_top ),
% 2.69/0.99      inference(light_normalisation,[status(thm)],[c_3744,c_15]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_609,plain,
% 2.69/0.99      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_610,plain,
% 2.69/0.99      ( m1_subset_1(u1_orders_2(sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK3)))) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_609]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3732,plain,
% 2.69/0.99      ( m1_subset_1(u1_orders_2(sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK3)))) = iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_610]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_594,plain,
% 2.69/0.99      ( ~ r1_orders_2(X0,X1,sK0(X0,X2,X1))
% 2.69/0.99      | r1_lattice3(X0,X2,X1)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_595,plain,
% 2.69/0.99      ( ~ r1_orders_2(sK3,X0,sK0(sK3,X1,X0))
% 2.69/0.99      | r1_lattice3(sK3,X1,X0)
% 2.69/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_594]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3733,plain,
% 2.69/0.99      ( r1_orders_2(sK3,X0,sK0(sK3,X1,X0)) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,X1,X0) = iProver_top
% 2.69/0.99      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_595]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_477,plain,
% 2.69/0.99      ( ~ r2_lattice3(X0,X1,X2)
% 2.69/0.99      | r1_orders_2(X0,X3,X2)
% 2.69/0.99      | ~ r2_hidden(X3,X1)
% 2.69/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.69/0.99      | sK3 != X0 ),
% 2.69/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_19]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_478,plain,
% 2.69/0.99      ( ~ r2_lattice3(sK3,X0,X1)
% 2.69/0.99      | r1_orders_2(sK3,X2,X1)
% 2.69/0.99      | ~ r2_hidden(X2,X0)
% 2.69/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 2.69/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK3)) ),
% 2.69/0.99      inference(unflattening,[status(thm)],[c_477]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3740,plain,
% 2.69/0.99      ( r2_lattice3(sK3,X0,X1) != iProver_top
% 2.69/0.99      | r1_orders_2(sK3,X2,X1) = iProver_top
% 2.69/0.99      | r2_hidden(X2,X0) != iProver_top
% 2.69/0.99      | m1_subset_1(X1,u1_struct_0(sK3)) != iProver_top
% 2.69/0.99      | m1_subset_1(X2,u1_struct_0(sK3)) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_478]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_11,negated_conjecture,
% 2.69/0.99      ( ~ r2_lattice3(sK3,sK4,sK6) | ~ r1_lattice3(sK3,sK4,sK6) ),
% 2.69/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.69/0.99  
% 2.69/0.99  cnf(c_3746,plain,
% 2.69/0.99      ( r2_lattice3(sK3,sK4,sK6) != iProver_top
% 2.69/0.99      | r1_lattice3(sK3,sK4,sK6) != iProver_top ),
% 2.69/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  % SZS output end Saturation for theBenchmark.p
% 2.69/0.99  
% 2.69/0.99  ------                               Statistics
% 2.69/0.99  
% 2.69/0.99  ------ General
% 2.69/0.99  
% 2.69/0.99  abstr_ref_over_cycles:                  0
% 2.69/0.99  abstr_ref_under_cycles:                 0
% 2.69/0.99  gc_basic_clause_elim:                   0
% 2.69/0.99  forced_gc_time:                         0
% 2.69/0.99  parsing_time:                           0.011
% 2.69/0.99  unif_index_cands_time:                  0.
% 2.69/0.99  unif_index_add_time:                    0.
% 2.69/0.99  orderings_time:                         0.
% 2.69/0.99  out_proof_time:                         0.
% 2.69/0.99  total_time:                             0.243
% 2.69/0.99  num_of_symbols:                         49
% 2.69/0.99  num_of_terms:                           5943
% 2.69/0.99  
% 2.69/0.99  ------ Preprocessing
% 2.69/0.99  
% 2.69/0.99  num_of_splits:                          0
% 2.69/0.99  num_of_split_atoms:                     0
% 2.69/0.99  num_of_reused_defs:                     0
% 2.69/0.99  num_eq_ax_congr_red:                    13
% 2.69/0.99  num_of_sem_filtered_clauses:            1
% 2.69/0.99  num_of_subtypes:                        0
% 2.69/0.99  monotx_restored_types:                  0
% 2.69/0.99  sat_num_of_epr_types:                   0
% 2.69/0.99  sat_num_of_non_cyclic_types:            0
% 2.69/0.99  sat_guarded_non_collapsed_types:        0
% 2.69/0.99  num_pure_diseq_elim:                    0
% 2.69/0.99  simp_replaced_by:                       0
% 2.69/0.99  res_preprocessed:                       106
% 2.69/0.99  prep_upred:                             0
% 2.69/0.99  prep_unflattend:                        202
% 2.69/0.99  smt_new_axioms:                         0
% 2.69/0.99  pred_elim_cands:                        6
% 2.69/0.99  pred_elim:                              1
% 2.69/0.99  pred_elim_cl:                           -7
% 2.69/0.99  pred_elim_cycles:                       7
% 2.69/0.99  merged_defs:                            0
% 2.69/0.99  merged_defs_ncl:                        0
% 2.69/0.99  bin_hyper_res:                          0
% 2.69/0.99  prep_cycles:                            3
% 2.69/0.99  pred_elim_time:                         0.078
% 2.69/0.99  splitting_time:                         0.
% 2.69/0.99  sem_filter_time:                        0.
% 2.69/0.99  monotx_time:                            0.
% 2.69/0.99  subtype_inf_time:                       0.
% 2.69/0.99  
% 2.69/0.99  ------ Problem properties
% 2.69/0.99  
% 2.69/0.99  clauses:                                28
% 2.69/0.99  conjectures:                            8
% 2.69/0.99  epr:                                    5
% 2.69/0.99  horn:                                   19
% 2.69/0.99  ground:                                 10
% 2.69/0.99  unary:                                  6
% 2.69/0.99  binary:                                 4
% 2.69/0.99  lits:                                   76
% 2.69/0.99  lits_eq:                                6
% 2.69/0.99  fd_pure:                                0
% 2.69/0.99  fd_pseudo:                              0
% 2.69/0.99  fd_cond:                                0
% 2.69/0.99  fd_pseudo_cond:                         2
% 2.69/0.99  ac_symbols:                             0
% 2.69/0.99  
% 2.69/0.99  ------ Propositional Solver
% 2.69/0.99  
% 2.69/0.99  prop_solver_calls:                      25
% 2.69/0.99  prop_fast_solver_calls:                 1715
% 2.69/0.99  smt_solver_calls:                       0
% 2.69/0.99  smt_fast_solver_calls:                  0
% 2.69/0.99  prop_num_of_clauses:                    2331
% 2.69/0.99  prop_preprocess_simplified:             5625
% 2.69/0.99  prop_fo_subsumed:                       39
% 2.69/0.99  prop_solver_time:                       0.
% 2.69/0.99  smt_solver_time:                        0.
% 2.69/0.99  smt_fast_solver_time:                   0.
% 2.69/0.99  prop_fast_solver_time:                  0.
% 2.69/0.99  prop_unsat_core_time:                   0.
% 2.69/0.99  
% 2.69/0.99  ------ QBF
% 2.69/0.99  
% 2.69/0.99  qbf_q_res:                              0
% 2.69/0.99  qbf_num_tautologies:                    0
% 2.69/0.99  qbf_prep_cycles:                        0
% 2.69/0.99  
% 2.69/0.99  ------ BMC1
% 2.69/0.99  
% 2.69/0.99  bmc1_current_bound:                     -1
% 2.69/0.99  bmc1_last_solved_bound:                 -1
% 2.69/0.99  bmc1_unsat_core_size:                   -1
% 2.69/0.99  bmc1_unsat_core_parents_size:           -1
% 2.69/0.99  bmc1_merge_next_fun:                    0
% 2.69/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.69/0.99  
% 2.69/0.99  ------ Instantiation
% 2.69/0.99  
% 2.69/0.99  inst_num_of_clauses:                    570
% 2.69/0.99  inst_num_in_passive:                    142
% 2.69/0.99  inst_num_in_active:                     404
% 2.69/0.99  inst_num_in_unprocessed:                25
% 2.69/0.99  inst_num_of_loops:                      440
% 2.69/0.99  inst_num_of_learning_restarts:          0
% 2.69/0.99  inst_num_moves_active_passive:          31
% 2.69/0.99  inst_lit_activity:                      0
% 2.69/0.99  inst_lit_activity_moves:                0
% 2.69/0.99  inst_num_tautologies:                   0
% 2.69/0.99  inst_num_prop_implied:                  0
% 2.69/0.99  inst_num_existing_simplified:           0
% 2.69/0.99  inst_num_eq_res_simplified:             0
% 2.69/0.99  inst_num_child_elim:                    0
% 2.69/0.99  inst_num_of_dismatching_blockings:      342
% 2.69/0.99  inst_num_of_non_proper_insts:           974
% 2.69/0.99  inst_num_of_duplicates:                 0
% 2.69/0.99  inst_inst_num_from_inst_to_res:         0
% 2.69/0.99  inst_dismatching_checking_time:         0.
% 2.69/0.99  
% 2.69/0.99  ------ Resolution
% 2.69/0.99  
% 2.69/0.99  res_num_of_clauses:                     0
% 2.69/0.99  res_num_in_passive:                     0
% 2.69/0.99  res_num_in_active:                      0
% 2.69/0.99  res_num_of_loops:                       109
% 2.69/0.99  res_forward_subset_subsumed:            119
% 2.69/0.99  res_backward_subset_subsumed:           4
% 2.69/0.99  res_forward_subsumed:                   4
% 2.69/0.99  res_backward_subsumed:                  0
% 2.69/0.99  res_forward_subsumption_resolution:     15
% 2.69/0.99  res_backward_subsumption_resolution:    0
% 2.69/0.99  res_clause_to_clause_subsumption:       453
% 2.69/0.99  res_orphan_elimination:                 0
% 2.69/0.99  res_tautology_del:                      78
% 2.69/0.99  res_num_eq_res_simplified:              0
% 2.69/0.99  res_num_sel_changes:                    0
% 2.69/0.99  res_moves_from_active_to_pass:          0
% 2.69/0.99  
% 2.69/0.99  ------ Superposition
% 2.69/0.99  
% 2.69/0.99  sup_time_total:                         0.
% 2.69/0.99  sup_time_generating:                    0.
% 2.69/0.99  sup_time_sim_full:                      0.
% 2.69/0.99  sup_time_sim_immed:                     0.
% 2.69/0.99  
% 2.69/0.99  sup_num_of_clauses:                     85
% 2.69/0.99  sup_num_in_active:                      80
% 2.69/0.99  sup_num_in_passive:                     5
% 2.69/0.99  sup_num_of_loops:                       86
% 2.69/0.99  sup_fw_superposition:                   28
% 2.69/0.99  sup_bw_superposition:                   36
% 2.69/0.99  sup_immediate_simplified:               2
% 2.69/0.99  sup_given_eliminated:                   2
% 2.69/0.99  comparisons_done:                       0
% 2.69/0.99  comparisons_avoided:                    0
% 2.69/0.99  
% 2.69/0.99  ------ Simplifications
% 2.69/0.99  
% 2.69/0.99  
% 2.69/0.99  sim_fw_subset_subsumed:                 2
% 2.69/0.99  sim_bw_subset_subsumed:                 2
% 2.69/0.99  sim_fw_subsumed:                        0
% 2.69/0.99  sim_bw_subsumed:                        0
% 2.69/0.99  sim_fw_subsumption_res:                 11
% 2.69/0.99  sim_bw_subsumption_res:                 0
% 2.69/0.99  sim_tautology_del:                      3
% 2.69/0.99  sim_eq_tautology_del:                   7
% 2.69/0.99  sim_eq_res_simp:                        0
% 2.69/0.99  sim_fw_demodulated:                     0
% 2.69/0.99  sim_bw_demodulated:                     6
% 2.69/0.99  sim_light_normalised:                   13
% 2.69/0.99  sim_joinable_taut:                      0
% 2.69/0.99  sim_joinable_simp:                      0
% 2.69/0.99  sim_ac_normalised:                      0
% 2.69/0.99  sim_smt_subsumption:                    0
% 2.69/0.99  
%------------------------------------------------------------------------------
