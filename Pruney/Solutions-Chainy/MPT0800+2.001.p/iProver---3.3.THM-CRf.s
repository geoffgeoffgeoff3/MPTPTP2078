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
% DateTime   : Thu Dec  3 11:54:35 EST 2020

% Result     : Theorem 1.17s
% Output     : CNFRefutation 1.17s
% Verified   : 
% Statistics : Number of formulae       :   65 ( 190 expanded)
%              Number of clauses        :   32 (  39 expanded)
%              Number of leaves         :    8 (  57 expanded)
%              Depth                    :   11
%              Number of atoms          :  347 (1225 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   16 (   7 average)
%              Maximal clause size      :   12 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r4_wellord1(X0,X1)
          <=> ? [X2] :
                ( r3_wellord1(X0,X1,X2)
                & v1_funct_1(X2)
                & v1_relat_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r4_wellord1(X0,X1)
          <=> ? [X2] :
                ( r3_wellord1(X0,X1,X2)
                & v1_funct_1(X2)
                & v1_relat_1(X2) ) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r4_wellord1(X0,X1)
              | ! [X2] :
                  ( ~ r3_wellord1(X0,X1,X2)
                  | ~ v1_funct_1(X2)
                  | ~ v1_relat_1(X2) ) )
            & ( ? [X2] :
                  ( r3_wellord1(X0,X1,X2)
                  & v1_funct_1(X2)
                  & v1_relat_1(X2) )
              | ~ r4_wellord1(X0,X1) ) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r4_wellord1(X0,X1)
              | ! [X2] :
                  ( ~ r3_wellord1(X0,X1,X2)
                  | ~ v1_funct_1(X2)
                  | ~ v1_relat_1(X2) ) )
            & ( ? [X3] :
                  ( r3_wellord1(X0,X1,X3)
                  & v1_funct_1(X3)
                  & v1_relat_1(X3) )
              | ~ r4_wellord1(X0,X1) ) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f13])).

fof(f15,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r3_wellord1(X0,X1,X3)
          & v1_funct_1(X3)
          & v1_relat_1(X3) )
     => ( r3_wellord1(X0,X1,sK0(X0,X1))
        & v1_funct_1(sK0(X0,X1))
        & v1_relat_1(sK0(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r4_wellord1(X0,X1)
              | ! [X2] :
                  ( ~ r3_wellord1(X0,X1,X2)
                  | ~ v1_funct_1(X2)
                  | ~ v1_relat_1(X2) ) )
            & ( ( r3_wellord1(X0,X1,sK0(X0,X1))
                & v1_funct_1(sK0(X0,X1))
                & v1_relat_1(sK0(X0,X1)) )
              | ~ r4_wellord1(X0,X1) ) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f15])).

fof(f26,plain,(
    ! [X2,X0,X1] :
      ( r4_wellord1(X0,X1)
      | ~ r3_wellord1(X0,X1,X2)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => ! [X3] :
                  ( ( v1_funct_1(X3)
                    & v1_relat_1(X3) )
                 => ! [X4] :
                      ( ( v1_funct_1(X4)
                        & v1_relat_1(X4) )
                     => ( ( r3_wellord1(X1,X2,X4)
                          & r3_wellord1(X0,X1,X3) )
                       => r3_wellord1(X0,X2,k5_relat_1(X3,X4)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( r3_wellord1(X0,X2,k5_relat_1(X3,X4))
                      | ~ r3_wellord1(X1,X2,X4)
                      | ~ r3_wellord1(X0,X1,X3)
                      | ~ v1_funct_1(X4)
                      | ~ v1_relat_1(X4) )
                  | ~ v1_funct_1(X3)
                  | ~ v1_relat_1(X3) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( r3_wellord1(X0,X2,k5_relat_1(X3,X4))
                      | ~ r3_wellord1(X1,X2,X4)
                      | ~ r3_wellord1(X0,X1,X3)
                      | ~ v1_funct_1(X4)
                      | ~ v1_relat_1(X4) )
                  | ~ v1_funct_1(X3)
                  | ~ v1_relat_1(X3) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f9])).

fof(f27,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( r3_wellord1(X0,X2,k5_relat_1(X3,X4))
      | ~ r3_wellord1(X1,X2,X4)
      | ~ r3_wellord1(X0,X1,X3)
      | ~ v1_funct_1(X4)
      | ~ v1_relat_1(X4)
      | ~ v1_funct_1(X3)
      | ~ v1_relat_1(X3)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k5_relat_1(X0,X1))
        & v1_relat_1(k5_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k5_relat_1(X0,X1))
        & v1_relat_1(k5_relat_1(X0,X1)) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f7,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k5_relat_1(X0,X1))
        & v1_relat_1(k5_relat_1(X0,X1)) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f6])).

fof(f21,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f22,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k5_relat_1(X0,X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f25,plain,(
    ! [X0,X1] :
      ( r3_wellord1(X0,X1,sK0(X0,X1))
      | ~ r4_wellord1(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f4,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => ( ( r4_wellord1(X1,X2)
                  & r4_wellord1(X0,X1) )
               => r4_wellord1(X0,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f5,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => ! [X2] :
                ( v1_relat_1(X2)
               => ( ( r4_wellord1(X1,X2)
                    & r4_wellord1(X0,X1) )
                 => r4_wellord1(X0,X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f4])).

fof(f11,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r4_wellord1(X0,X2)
              & r4_wellord1(X1,X2)
              & r4_wellord1(X0,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f12,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r4_wellord1(X0,X2)
              & r4_wellord1(X1,X2)
              & r4_wellord1(X0,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f11])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r4_wellord1(X0,X2)
          & r4_wellord1(X1,X2)
          & r4_wellord1(X0,X1)
          & v1_relat_1(X2) )
     => ( ~ r4_wellord1(X0,sK3)
        & r4_wellord1(X1,sK3)
        & r4_wellord1(X0,X1)
        & v1_relat_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r4_wellord1(X0,X2)
              & r4_wellord1(X1,X2)
              & r4_wellord1(X0,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
     => ( ? [X2] :
            ( ~ r4_wellord1(X0,X2)
            & r4_wellord1(sK2,X2)
            & r4_wellord1(X0,sK2)
            & v1_relat_1(X2) )
        & v1_relat_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r4_wellord1(X0,X2)
                & r4_wellord1(X1,X2)
                & r4_wellord1(X0,X1)
                & v1_relat_1(X2) )
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r4_wellord1(sK1,X2)
              & r4_wellord1(X1,X2)
              & r4_wellord1(sK1,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( ~ r4_wellord1(sK1,sK3)
    & r4_wellord1(sK2,sK3)
    & r4_wellord1(sK1,sK2)
    & v1_relat_1(sK3)
    & v1_relat_1(sK2)
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f12,f19,f18,f17])).

fof(f31,plain,(
    r4_wellord1(sK1,sK2) ),
    inference(cnf_transformation,[],[f20])).

fof(f24,plain,(
    ! [X0,X1] :
      ( v1_funct_1(sK0(X0,X1))
      | ~ r4_wellord1(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f23,plain,(
    ! [X0,X1] :
      ( v1_relat_1(sK0(X0,X1))
      | ~ r4_wellord1(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f32,plain,(
    r4_wellord1(sK2,sK3) ),
    inference(cnf_transformation,[],[f20])).

fof(f33,plain,(
    ~ r4_wellord1(sK1,sK3) ),
    inference(cnf_transformation,[],[f20])).

fof(f30,plain,(
    v1_relat_1(sK3) ),
    inference(cnf_transformation,[],[f20])).

fof(f29,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f20])).

fof(f28,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_2,plain,
    ( ~ r3_wellord1(X0,X1,X2)
    | r4_wellord1(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_428,plain,
    ( ~ r3_wellord1(X0,X1,k5_relat_1(X2,sK0(sK2,sK3)))
    | r4_wellord1(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(k5_relat_1(X2,sK0(sK2,sK3)))
    | ~ v1_funct_1(k5_relat_1(X2,sK0(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_736,plain,
    ( ~ r3_wellord1(X0,X1,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | r4_wellord1(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_428])).

cnf(c_3293,plain,
    ( ~ r3_wellord1(X0,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | r4_wellord1(X0,sK3)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ v1_relat_1(sK3)
    | ~ v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_736])).

cnf(c_3295,plain,
    ( ~ r3_wellord1(sK1,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | r4_wellord1(sK1,sK3)
    | ~ v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ v1_relat_1(sK3)
    | ~ v1_relat_1(sK1)
    | ~ v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_3293])).

cnf(c_6,plain,
    ( ~ r3_wellord1(X0,X1,X2)
    | ~ r3_wellord1(X3,X0,X4)
    | r3_wellord1(X3,X1,k5_relat_1(X4,X2))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X4)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X4) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_387,plain,
    ( ~ r3_wellord1(X0,X1,X2)
    | ~ r3_wellord1(X1,X3,sK0(sK2,sK3))
    | r3_wellord1(X0,X3,k5_relat_1(X2,sK0(sK2,sK3)))
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(sK0(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_466,plain,
    ( ~ r3_wellord1(X0,X1,sK0(sK2,sK3))
    | ~ r3_wellord1(X2,X0,sK0(sK1,sK2))
    | r3_wellord1(X2,X1,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_relat_1(sK0(sK1,sK2))
    | ~ v1_funct_1(sK0(sK2,sK3))
    | ~ v1_funct_1(sK0(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_387])).

cnf(c_770,plain,
    ( ~ r3_wellord1(X0,sK2,sK0(sK1,sK2))
    | r3_wellord1(X0,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ r3_wellord1(sK2,sK3,sK0(sK2,sK3))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_relat_1(sK0(sK1,sK2))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK3)
    | ~ v1_funct_1(sK0(sK2,sK3))
    | ~ v1_funct_1(sK0(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_466])).

cnf(c_772,plain,
    ( ~ r3_wellord1(sK2,sK3,sK0(sK2,sK3))
    | ~ r3_wellord1(sK1,sK2,sK0(sK1,sK2))
    | r3_wellord1(sK1,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_relat_1(sK0(sK1,sK2))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK3)
    | ~ v1_relat_1(sK1)
    | ~ v1_funct_1(sK0(sK2,sK3))
    | ~ v1_funct_1(sK0(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_770])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X1,X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_377,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK0(sK2,sK3))
    | v1_relat_1(k5_relat_1(X0,sK0(sK2,sK3)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK0(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_504,plain,
    ( ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_relat_1(sK0(sK1,sK2))
    | v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
    | ~ v1_funct_1(sK0(sK2,sK3))
    | ~ v1_funct_1(sK0(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_377])).

cnf(c_0,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | v1_funct_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_378,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK0(sK2,sK3))
    | v1_funct_1(k5_relat_1(X0,sK0(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_450,plain,
    ( ~ v1_relat_1(sK0(sK2,sK3))
    | ~ v1_relat_1(sK0(sK1,sK2))
    | ~ v1_funct_1(sK0(sK2,sK3))
    | ~ v1_funct_1(sK0(sK1,sK2))
    | v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_378])).

cnf(c_3,plain,
    ( r3_wellord1(X0,X1,sK0(X0,X1))
    | ~ r4_wellord1(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_9,negated_conjecture,
    ( r4_wellord1(sK1,sK2) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_270,plain,
    ( r3_wellord1(sK1,sK2,sK0(sK1,sK2))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK1) ),
    inference(resolution,[status(thm)],[c_3,c_9])).

cnf(c_4,plain,
    ( ~ r4_wellord1(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | v1_funct_1(sK0(X0,X1)) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_260,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK1)
    | v1_funct_1(sK0(sK1,sK2)) ),
    inference(resolution,[status(thm)],[c_4,c_9])).

cnf(c_5,plain,
    ( ~ r4_wellord1(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | v1_relat_1(sK0(X0,X1)) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_250,plain,
    ( v1_relat_1(sK0(sK1,sK2))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK1) ),
    inference(resolution,[status(thm)],[c_5,c_9])).

cnf(c_8,negated_conjecture,
    ( r4_wellord1(sK2,sK3) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_240,plain,
    ( r3_wellord1(sK2,sK3,sK0(sK2,sK3))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK3) ),
    inference(resolution,[status(thm)],[c_3,c_8])).

cnf(c_230,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK3)
    | v1_funct_1(sK0(sK2,sK3)) ),
    inference(resolution,[status(thm)],[c_4,c_8])).

cnf(c_220,plain,
    ( v1_relat_1(sK0(sK2,sK3))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK3) ),
    inference(resolution,[status(thm)],[c_5,c_8])).

cnf(c_7,negated_conjecture,
    ( ~ r4_wellord1(sK1,sK3) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_10,negated_conjecture,
    ( v1_relat_1(sK3) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_11,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_12,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f28])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3295,c_772,c_504,c_450,c_270,c_260,c_250,c_240,c_230,c_220,c_7,c_10,c_11,c_12])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.11  % Command    : iproveropt_run.sh %d %s
% 0.10/0.31  % Computer   : n021.cluster.edu
% 0.10/0.31  % Model      : x86_64 x86_64
% 0.10/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.10/0.31  % Memory     : 8042.1875MB
% 0.10/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.10/0.31  % CPULimit   : 60
% 0.10/0.31  % WCLimit    : 600
% 0.10/0.31  % DateTime   : Tue Dec  1 16:30:34 EST 2020
% 0.10/0.32  % CPUTime    : 
% 0.10/0.32  % Running in FOF mode
% 1.17/0.96  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.17/0.96  
% 1.17/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.17/0.96  
% 1.17/0.96  ------  iProver source info
% 1.17/0.96  
% 1.17/0.96  git: date: 2020-06-30 10:37:57 +0100
% 1.17/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.17/0.96  git: non_committed_changes: false
% 1.17/0.96  git: last_make_outside_of_git: false
% 1.17/0.96  
% 1.17/0.96  ------ 
% 1.17/0.96  
% 1.17/0.96  ------ Input Options
% 1.17/0.96  
% 1.17/0.96  --out_options                           all
% 1.17/0.96  --tptp_safe_out                         true
% 1.17/0.96  --problem_path                          ""
% 1.17/0.96  --include_path                          ""
% 1.17/0.96  --clausifier                            res/vclausify_rel
% 1.17/0.96  --clausifier_options                    --mode clausify
% 1.17/0.96  --stdin                                 false
% 1.17/0.96  --stats_out                             all
% 1.17/0.96  
% 1.17/0.96  ------ General Options
% 1.17/0.96  
% 1.17/0.96  --fof                                   false
% 1.17/0.96  --time_out_real                         305.
% 1.17/0.96  --time_out_virtual                      -1.
% 1.17/0.96  --symbol_type_check                     false
% 1.17/0.96  --clausify_out                          false
% 1.17/0.96  --sig_cnt_out                           false
% 1.17/0.96  --trig_cnt_out                          false
% 1.17/0.96  --trig_cnt_out_tolerance                1.
% 1.17/0.96  --trig_cnt_out_sk_spl                   false
% 1.17/0.96  --abstr_cl_out                          false
% 1.17/0.96  
% 1.17/0.96  ------ Global Options
% 1.17/0.96  
% 1.17/0.96  --schedule                              default
% 1.17/0.96  --add_important_lit                     false
% 1.17/0.96  --prop_solver_per_cl                    1000
% 1.17/0.96  --min_unsat_core                        false
% 1.17/0.96  --soft_assumptions                      false
% 1.17/0.96  --soft_lemma_size                       3
% 1.17/0.96  --prop_impl_unit_size                   0
% 1.17/0.96  --prop_impl_unit                        []
% 1.17/0.96  --share_sel_clauses                     true
% 1.17/0.96  --reset_solvers                         false
% 1.17/0.96  --bc_imp_inh                            [conj_cone]
% 1.17/0.96  --conj_cone_tolerance                   3.
% 1.17/0.96  --extra_neg_conj                        none
% 1.17/0.96  --large_theory_mode                     true
% 1.17/0.96  --prolific_symb_bound                   200
% 1.17/0.96  --lt_threshold                          2000
% 1.17/0.96  --clause_weak_htbl                      true
% 1.17/0.96  --gc_record_bc_elim                     false
% 1.17/0.96  
% 1.17/0.96  ------ Preprocessing Options
% 1.17/0.96  
% 1.17/0.96  --preprocessing_flag                    true
% 1.17/0.96  --time_out_prep_mult                    0.1
% 1.17/0.96  --splitting_mode                        input
% 1.17/0.96  --splitting_grd                         true
% 1.17/0.96  --splitting_cvd                         false
% 1.17/0.96  --splitting_cvd_svl                     false
% 1.17/0.96  --splitting_nvd                         32
% 1.17/0.96  --sub_typing                            true
% 1.17/0.96  --prep_gs_sim                           true
% 1.17/0.96  --prep_unflatten                        true
% 1.17/0.96  --prep_res_sim                          true
% 1.17/0.96  --prep_upred                            true
% 1.17/0.96  --prep_sem_filter                       exhaustive
% 1.17/0.96  --prep_sem_filter_out                   false
% 1.17/0.96  --pred_elim                             true
% 1.17/0.96  --res_sim_input                         true
% 1.17/0.96  --eq_ax_congr_red                       true
% 1.17/0.96  --pure_diseq_elim                       true
% 1.17/0.96  --brand_transform                       false
% 1.17/0.96  --non_eq_to_eq                          false
% 1.17/0.96  --prep_def_merge                        true
% 1.17/0.96  --prep_def_merge_prop_impl              false
% 1.17/0.96  --prep_def_merge_mbd                    true
% 1.17/0.96  --prep_def_merge_tr_red                 false
% 1.17/0.96  --prep_def_merge_tr_cl                  false
% 1.17/0.96  --smt_preprocessing                     true
% 1.17/0.96  --smt_ac_axioms                         fast
% 1.17/0.96  --preprocessed_out                      false
% 1.17/0.96  --preprocessed_stats                    false
% 1.17/0.96  
% 1.17/0.96  ------ Abstraction refinement Options
% 1.17/0.96  
% 1.17/0.96  --abstr_ref                             []
% 1.17/0.96  --abstr_ref_prep                        false
% 1.17/0.96  --abstr_ref_until_sat                   false
% 1.17/0.96  --abstr_ref_sig_restrict                funpre
% 1.17/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 1.17/0.96  --abstr_ref_under                       []
% 1.17/0.96  
% 1.17/0.96  ------ SAT Options
% 1.17/0.96  
% 1.17/0.96  --sat_mode                              false
% 1.17/0.96  --sat_fm_restart_options                ""
% 1.17/0.96  --sat_gr_def                            false
% 1.17/0.96  --sat_epr_types                         true
% 1.17/0.96  --sat_non_cyclic_types                  false
% 1.17/0.96  --sat_finite_models                     false
% 1.17/0.96  --sat_fm_lemmas                         false
% 1.17/0.96  --sat_fm_prep                           false
% 1.17/0.96  --sat_fm_uc_incr                        true
% 1.17/0.96  --sat_out_model                         small
% 1.17/0.96  --sat_out_clauses                       false
% 1.17/0.96  
% 1.17/0.96  ------ QBF Options
% 1.17/0.96  
% 1.17/0.96  --qbf_mode                              false
% 1.17/0.96  --qbf_elim_univ                         false
% 1.17/0.96  --qbf_dom_inst                          none
% 1.17/0.96  --qbf_dom_pre_inst                      false
% 1.17/0.96  --qbf_sk_in                             false
% 1.17/0.96  --qbf_pred_elim                         true
% 1.17/0.96  --qbf_split                             512
% 1.17/0.96  
% 1.17/0.96  ------ BMC1 Options
% 1.17/0.96  
% 1.17/0.96  --bmc1_incremental                      false
% 1.17/0.96  --bmc1_axioms                           reachable_all
% 1.17/0.96  --bmc1_min_bound                        0
% 1.17/0.96  --bmc1_max_bound                        -1
% 1.17/0.96  --bmc1_max_bound_default                -1
% 1.17/0.96  --bmc1_symbol_reachability              true
% 1.17/0.96  --bmc1_property_lemmas                  false
% 1.17/0.96  --bmc1_k_induction                      false
% 1.17/0.96  --bmc1_non_equiv_states                 false
% 1.17/0.96  --bmc1_deadlock                         false
% 1.17/0.96  --bmc1_ucm                              false
% 1.17/0.96  --bmc1_add_unsat_core                   none
% 1.17/0.96  --bmc1_unsat_core_children              false
% 1.17/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 1.17/0.96  --bmc1_out_stat                         full
% 1.17/0.96  --bmc1_ground_init                      false
% 1.17/0.96  --bmc1_pre_inst_next_state              false
% 1.17/0.96  --bmc1_pre_inst_state                   false
% 1.17/0.96  --bmc1_pre_inst_reach_state             false
% 1.17/0.96  --bmc1_out_unsat_core                   false
% 1.17/0.96  --bmc1_aig_witness_out                  false
% 1.17/0.96  --bmc1_verbose                          false
% 1.17/0.96  --bmc1_dump_clauses_tptp                false
% 1.17/0.96  --bmc1_dump_unsat_core_tptp             false
% 1.17/0.96  --bmc1_dump_file                        -
% 1.17/0.96  --bmc1_ucm_expand_uc_limit              128
% 1.17/0.96  --bmc1_ucm_n_expand_iterations          6
% 1.17/0.96  --bmc1_ucm_extend_mode                  1
% 1.17/0.96  --bmc1_ucm_init_mode                    2
% 1.17/0.96  --bmc1_ucm_cone_mode                    none
% 1.17/0.96  --bmc1_ucm_reduced_relation_type        0
% 1.17/0.96  --bmc1_ucm_relax_model                  4
% 1.17/0.96  --bmc1_ucm_full_tr_after_sat            true
% 1.17/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 1.17/0.96  --bmc1_ucm_layered_model                none
% 1.17/0.96  --bmc1_ucm_max_lemma_size               10
% 1.17/0.96  
% 1.17/0.96  ------ AIG Options
% 1.17/0.96  
% 1.17/0.96  --aig_mode                              false
% 1.17/0.96  
% 1.17/0.96  ------ Instantiation Options
% 1.17/0.96  
% 1.17/0.96  --instantiation_flag                    true
% 1.17/0.96  --inst_sos_flag                         false
% 1.17/0.96  --inst_sos_phase                        true
% 1.17/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.17/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.17/0.96  --inst_lit_sel_side                     num_symb
% 1.17/0.96  --inst_solver_per_active                1400
% 1.17/0.96  --inst_solver_calls_frac                1.
% 1.17/0.96  --inst_passive_queue_type               priority_queues
% 1.17/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.17/0.96  --inst_passive_queues_freq              [25;2]
% 1.17/0.96  --inst_dismatching                      true
% 1.17/0.96  --inst_eager_unprocessed_to_passive     true
% 1.17/0.96  --inst_prop_sim_given                   true
% 1.17/0.96  --inst_prop_sim_new                     false
% 1.17/0.96  --inst_subs_new                         false
% 1.17/0.96  --inst_eq_res_simp                      false
% 1.17/0.96  --inst_subs_given                       false
% 1.17/0.96  --inst_orphan_elimination               true
% 1.17/0.96  --inst_learning_loop_flag               true
% 1.17/0.96  --inst_learning_start                   3000
% 1.17/0.96  --inst_learning_factor                  2
% 1.17/0.96  --inst_start_prop_sim_after_learn       3
% 1.17/0.96  --inst_sel_renew                        solver
% 1.17/0.96  --inst_lit_activity_flag                true
% 1.17/0.96  --inst_restr_to_given                   false
% 1.17/0.96  --inst_activity_threshold               500
% 1.17/0.96  --inst_out_proof                        true
% 1.17/0.96  
% 1.17/0.96  ------ Resolution Options
% 1.17/0.96  
% 1.17/0.96  --resolution_flag                       true
% 1.17/0.96  --res_lit_sel                           adaptive
% 1.17/0.96  --res_lit_sel_side                      none
% 1.17/0.96  --res_ordering                          kbo
% 1.17/0.96  --res_to_prop_solver                    active
% 1.17/0.96  --res_prop_simpl_new                    false
% 1.17/0.96  --res_prop_simpl_given                  true
% 1.17/0.96  --res_passive_queue_type                priority_queues
% 1.17/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.17/0.96  --res_passive_queues_freq               [15;5]
% 1.17/0.96  --res_forward_subs                      full
% 1.17/0.96  --res_backward_subs                     full
% 1.17/0.96  --res_forward_subs_resolution           true
% 1.17/0.96  --res_backward_subs_resolution          true
% 1.17/0.96  --res_orphan_elimination                true
% 1.17/0.96  --res_time_limit                        2.
% 1.17/0.96  --res_out_proof                         true
% 1.17/0.96  
% 1.17/0.96  ------ Superposition Options
% 1.17/0.96  
% 1.17/0.96  --superposition_flag                    true
% 1.17/0.96  --sup_passive_queue_type                priority_queues
% 1.17/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.17/0.96  --sup_passive_queues_freq               [8;1;4]
% 1.17/0.96  --demod_completeness_check              fast
% 1.17/0.96  --demod_use_ground                      true
% 1.17/0.96  --sup_to_prop_solver                    passive
% 1.17/0.96  --sup_prop_simpl_new                    true
% 1.17/0.96  --sup_prop_simpl_given                  true
% 1.17/0.96  --sup_fun_splitting                     false
% 1.17/0.96  --sup_smt_interval                      50000
% 1.17/0.96  
% 1.17/0.96  ------ Superposition Simplification Setup
% 1.17/0.96  
% 1.17/0.96  --sup_indices_passive                   []
% 1.17/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.17/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.17/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.17/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 1.17/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.17/0.96  --sup_full_bw                           [BwDemod]
% 1.17/0.96  --sup_immed_triv                        [TrivRules]
% 1.17/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.17/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.17/0.96  --sup_immed_bw_main                     []
% 1.17/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.17/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 1.17/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.17/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.17/0.96  
% 1.17/0.96  ------ Combination Options
% 1.17/0.96  
% 1.17/0.96  --comb_res_mult                         3
% 1.17/0.96  --comb_sup_mult                         2
% 1.17/0.96  --comb_inst_mult                        10
% 1.17/0.96  
% 1.17/0.96  ------ Debug Options
% 1.17/0.96  
% 1.17/0.96  --dbg_backtrace                         false
% 1.17/0.96  --dbg_dump_prop_clauses                 false
% 1.17/0.96  --dbg_dump_prop_clauses_file            -
% 1.17/0.96  --dbg_out_stat                          false
% 1.17/0.96  ------ Parsing...
% 1.17/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.17/0.96  
% 1.17/0.96  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 1.17/0.96  
% 1.17/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.17/0.96  ------ Proving...
% 1.17/0.96  ------ Problem Properties 
% 1.17/0.96  
% 1.17/0.96  
% 1.17/0.96  clauses                                 13
% 1.17/0.96  conjectures                             6
% 1.17/0.96  EPR                                     7
% 1.17/0.96  Horn                                    13
% 1.17/0.96  unary                                   6
% 1.17/0.96  binary                                  0
% 1.17/0.96  lits                                    44
% 1.17/0.96  lits eq                                 0
% 1.17/0.96  fd_pure                                 0
% 1.17/0.96  fd_pseudo                               0
% 1.17/0.96  fd_cond                                 0
% 1.17/0.96  fd_pseudo_cond                          0
% 1.17/0.96  AC symbols                              0
% 1.17/0.96  
% 1.17/0.96  ------ Schedule dynamic 5 is on 
% 1.17/0.96  
% 1.17/0.96  ------ no equalities: superposition off 
% 1.17/0.96  
% 1.17/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.17/0.96  
% 1.17/0.96  
% 1.17/0.96  ------ 
% 1.17/0.96  Current options:
% 1.17/0.96  ------ 
% 1.17/0.96  
% 1.17/0.96  ------ Input Options
% 1.17/0.96  
% 1.17/0.96  --out_options                           all
% 1.17/0.96  --tptp_safe_out                         true
% 1.17/0.96  --problem_path                          ""
% 1.17/0.96  --include_path                          ""
% 1.17/0.96  --clausifier                            res/vclausify_rel
% 1.17/0.96  --clausifier_options                    --mode clausify
% 1.17/0.96  --stdin                                 false
% 1.17/0.96  --stats_out                             all
% 1.17/0.96  
% 1.17/0.96  ------ General Options
% 1.17/0.96  
% 1.17/0.96  --fof                                   false
% 1.17/0.96  --time_out_real                         305.
% 1.17/0.96  --time_out_virtual                      -1.
% 1.17/0.96  --symbol_type_check                     false
% 1.17/0.96  --clausify_out                          false
% 1.17/0.96  --sig_cnt_out                           false
% 1.17/0.96  --trig_cnt_out                          false
% 1.17/0.96  --trig_cnt_out_tolerance                1.
% 1.17/0.96  --trig_cnt_out_sk_spl                   false
% 1.17/0.96  --abstr_cl_out                          false
% 1.17/0.96  
% 1.17/0.96  ------ Global Options
% 1.17/0.96  
% 1.17/0.96  --schedule                              default
% 1.17/0.96  --add_important_lit                     false
% 1.17/0.96  --prop_solver_per_cl                    1000
% 1.17/0.96  --min_unsat_core                        false
% 1.17/0.96  --soft_assumptions                      false
% 1.17/0.96  --soft_lemma_size                       3
% 1.17/0.96  --prop_impl_unit_size                   0
% 1.17/0.96  --prop_impl_unit                        []
% 1.17/0.96  --share_sel_clauses                     true
% 1.17/0.96  --reset_solvers                         false
% 1.17/0.96  --bc_imp_inh                            [conj_cone]
% 1.17/0.96  --conj_cone_tolerance                   3.
% 1.17/0.96  --extra_neg_conj                        none
% 1.17/0.96  --large_theory_mode                     true
% 1.17/0.96  --prolific_symb_bound                   200
% 1.17/0.96  --lt_threshold                          2000
% 1.17/0.96  --clause_weak_htbl                      true
% 1.17/0.96  --gc_record_bc_elim                     false
% 1.17/0.96  
% 1.17/0.96  ------ Preprocessing Options
% 1.17/0.96  
% 1.17/0.96  --preprocessing_flag                    true
% 1.17/0.96  --time_out_prep_mult                    0.1
% 1.17/0.96  --splitting_mode                        input
% 1.17/0.96  --splitting_grd                         true
% 1.17/0.96  --splitting_cvd                         false
% 1.17/0.96  --splitting_cvd_svl                     false
% 1.17/0.96  --splitting_nvd                         32
% 1.17/0.96  --sub_typing                            true
% 1.17/0.96  --prep_gs_sim                           true
% 1.17/0.96  --prep_unflatten                        true
% 1.17/0.96  --prep_res_sim                          true
% 1.17/0.96  --prep_upred                            true
% 1.17/0.96  --prep_sem_filter                       exhaustive
% 1.17/0.96  --prep_sem_filter_out                   false
% 1.17/0.96  --pred_elim                             true
% 1.17/0.96  --res_sim_input                         true
% 1.17/0.96  --eq_ax_congr_red                       true
% 1.17/0.96  --pure_diseq_elim                       true
% 1.17/0.96  --brand_transform                       false
% 1.17/0.96  --non_eq_to_eq                          false
% 1.17/0.96  --prep_def_merge                        true
% 1.17/0.96  --prep_def_merge_prop_impl              false
% 1.17/0.96  --prep_def_merge_mbd                    true
% 1.17/0.96  --prep_def_merge_tr_red                 false
% 1.17/0.96  --prep_def_merge_tr_cl                  false
% 1.17/0.96  --smt_preprocessing                     true
% 1.17/0.96  --smt_ac_axioms                         fast
% 1.17/0.96  --preprocessed_out                      false
% 1.17/0.96  --preprocessed_stats                    false
% 1.17/0.96  
% 1.17/0.96  ------ Abstraction refinement Options
% 1.17/0.96  
% 1.17/0.96  --abstr_ref                             []
% 1.17/0.96  --abstr_ref_prep                        false
% 1.17/0.96  --abstr_ref_until_sat                   false
% 1.17/0.96  --abstr_ref_sig_restrict                funpre
% 1.17/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 1.17/0.96  --abstr_ref_under                       []
% 1.17/0.96  
% 1.17/0.96  ------ SAT Options
% 1.17/0.96  
% 1.17/0.96  --sat_mode                              false
% 1.17/0.96  --sat_fm_restart_options                ""
% 1.17/0.96  --sat_gr_def                            false
% 1.17/0.96  --sat_epr_types                         true
% 1.17/0.96  --sat_non_cyclic_types                  false
% 1.17/0.96  --sat_finite_models                     false
% 1.17/0.96  --sat_fm_lemmas                         false
% 1.17/0.96  --sat_fm_prep                           false
% 1.17/0.96  --sat_fm_uc_incr                        true
% 1.17/0.96  --sat_out_model                         small
% 1.17/0.96  --sat_out_clauses                       false
% 1.17/0.96  
% 1.17/0.96  ------ QBF Options
% 1.17/0.96  
% 1.17/0.96  --qbf_mode                              false
% 1.17/0.96  --qbf_elim_univ                         false
% 1.17/0.96  --qbf_dom_inst                          none
% 1.17/0.96  --qbf_dom_pre_inst                      false
% 1.17/0.96  --qbf_sk_in                             false
% 1.17/0.96  --qbf_pred_elim                         true
% 1.17/0.96  --qbf_split                             512
% 1.17/0.96  
% 1.17/0.96  ------ BMC1 Options
% 1.17/0.96  
% 1.17/0.96  --bmc1_incremental                      false
% 1.17/0.96  --bmc1_axioms                           reachable_all
% 1.17/0.96  --bmc1_min_bound                        0
% 1.17/0.96  --bmc1_max_bound                        -1
% 1.17/0.96  --bmc1_max_bound_default                -1
% 1.17/0.96  --bmc1_symbol_reachability              true
% 1.17/0.96  --bmc1_property_lemmas                  false
% 1.17/0.96  --bmc1_k_induction                      false
% 1.17/0.96  --bmc1_non_equiv_states                 false
% 1.17/0.96  --bmc1_deadlock                         false
% 1.17/0.96  --bmc1_ucm                              false
% 1.17/0.96  --bmc1_add_unsat_core                   none
% 1.17/0.96  --bmc1_unsat_core_children              false
% 1.17/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 1.17/0.96  --bmc1_out_stat                         full
% 1.17/0.96  --bmc1_ground_init                      false
% 1.17/0.96  --bmc1_pre_inst_next_state              false
% 1.17/0.96  --bmc1_pre_inst_state                   false
% 1.17/0.96  --bmc1_pre_inst_reach_state             false
% 1.17/0.96  --bmc1_out_unsat_core                   false
% 1.17/0.96  --bmc1_aig_witness_out                  false
% 1.17/0.96  --bmc1_verbose                          false
% 1.17/0.96  --bmc1_dump_clauses_tptp                false
% 1.17/0.96  --bmc1_dump_unsat_core_tptp             false
% 1.17/0.96  --bmc1_dump_file                        -
% 1.17/0.96  --bmc1_ucm_expand_uc_limit              128
% 1.17/0.96  --bmc1_ucm_n_expand_iterations          6
% 1.17/0.96  --bmc1_ucm_extend_mode                  1
% 1.17/0.96  --bmc1_ucm_init_mode                    2
% 1.17/0.96  --bmc1_ucm_cone_mode                    none
% 1.17/0.96  --bmc1_ucm_reduced_relation_type        0
% 1.17/0.96  --bmc1_ucm_relax_model                  4
% 1.17/0.96  --bmc1_ucm_full_tr_after_sat            true
% 1.17/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 1.17/0.96  --bmc1_ucm_layered_model                none
% 1.17/0.96  --bmc1_ucm_max_lemma_size               10
% 1.17/0.96  
% 1.17/0.96  ------ AIG Options
% 1.17/0.96  
% 1.17/0.96  --aig_mode                              false
% 1.17/0.96  
% 1.17/0.96  ------ Instantiation Options
% 1.17/0.96  
% 1.17/0.96  --instantiation_flag                    true
% 1.17/0.96  --inst_sos_flag                         false
% 1.17/0.96  --inst_sos_phase                        true
% 1.17/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.17/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.17/0.96  --inst_lit_sel_side                     none
% 1.17/0.96  --inst_solver_per_active                1400
% 1.17/0.96  --inst_solver_calls_frac                1.
% 1.17/0.96  --inst_passive_queue_type               priority_queues
% 1.17/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.17/0.96  --inst_passive_queues_freq              [25;2]
% 1.17/0.96  --inst_dismatching                      true
% 1.17/0.96  --inst_eager_unprocessed_to_passive     true
% 1.17/0.96  --inst_prop_sim_given                   true
% 1.17/0.96  --inst_prop_sim_new                     false
% 1.17/0.96  --inst_subs_new                         false
% 1.17/0.96  --inst_eq_res_simp                      false
% 1.17/0.96  --inst_subs_given                       false
% 1.17/0.96  --inst_orphan_elimination               true
% 1.17/0.96  --inst_learning_loop_flag               true
% 1.17/0.96  --inst_learning_start                   3000
% 1.17/0.96  --inst_learning_factor                  2
% 1.17/0.96  --inst_start_prop_sim_after_learn       3
% 1.17/0.96  --inst_sel_renew                        solver
% 1.17/0.96  --inst_lit_activity_flag                true
% 1.17/0.96  --inst_restr_to_given                   false
% 1.17/0.96  --inst_activity_threshold               500
% 1.17/0.96  --inst_out_proof                        true
% 1.17/0.96  
% 1.17/0.96  ------ Resolution Options
% 1.17/0.96  
% 1.17/0.96  --resolution_flag                       false
% 1.17/0.96  --res_lit_sel                           adaptive
% 1.17/0.96  --res_lit_sel_side                      none
% 1.17/0.96  --res_ordering                          kbo
% 1.17/0.96  --res_to_prop_solver                    active
% 1.17/0.96  --res_prop_simpl_new                    false
% 1.17/0.96  --res_prop_simpl_given                  true
% 1.17/0.96  --res_passive_queue_type                priority_queues
% 1.17/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.17/0.96  --res_passive_queues_freq               [15;5]
% 1.17/0.96  --res_forward_subs                      full
% 1.17/0.96  --res_backward_subs                     full
% 1.17/0.96  --res_forward_subs_resolution           true
% 1.17/0.96  --res_backward_subs_resolution          true
% 1.17/0.96  --res_orphan_elimination                true
% 1.17/0.96  --res_time_limit                        2.
% 1.17/0.96  --res_out_proof                         true
% 1.17/0.96  
% 1.17/0.96  ------ Superposition Options
% 1.17/0.96  
% 1.17/0.96  --superposition_flag                    false
% 1.17/0.96  --sup_passive_queue_type                priority_queues
% 1.17/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.17/0.96  --sup_passive_queues_freq               [8;1;4]
% 1.17/0.96  --demod_completeness_check              fast
% 1.17/0.96  --demod_use_ground                      true
% 1.17/0.96  --sup_to_prop_solver                    passive
% 1.17/0.96  --sup_prop_simpl_new                    true
% 1.17/0.96  --sup_prop_simpl_given                  true
% 1.17/0.96  --sup_fun_splitting                     false
% 1.17/0.96  --sup_smt_interval                      50000
% 1.17/0.96  
% 1.17/0.96  ------ Superposition Simplification Setup
% 1.17/0.96  
% 1.17/0.96  --sup_indices_passive                   []
% 1.17/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.17/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.17/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.17/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 1.17/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.17/0.96  --sup_full_bw                           [BwDemod]
% 1.17/0.96  --sup_immed_triv                        [TrivRules]
% 1.17/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.17/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.17/0.96  --sup_immed_bw_main                     []
% 1.17/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.17/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 1.17/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.17/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.17/0.96  
% 1.17/0.96  ------ Combination Options
% 1.17/0.96  
% 1.17/0.96  --comb_res_mult                         3
% 1.17/0.96  --comb_sup_mult                         2
% 1.17/0.96  --comb_inst_mult                        10
% 1.17/0.96  
% 1.17/0.96  ------ Debug Options
% 1.17/0.96  
% 1.17/0.96  --dbg_backtrace                         false
% 1.17/0.96  --dbg_dump_prop_clauses                 false
% 1.17/0.96  --dbg_dump_prop_clauses_file            -
% 1.17/0.96  --dbg_out_stat                          false
% 1.17/0.96  
% 1.17/0.96  
% 1.17/0.96  
% 1.17/0.96  
% 1.17/0.96  ------ Proving...
% 1.17/0.96  
% 1.17/0.96  
% 1.17/0.96  % SZS status Theorem for theBenchmark.p
% 1.17/0.96  
% 1.17/0.96  % SZS output start CNFRefutation for theBenchmark.p
% 1.17/0.96  
% 1.17/0.96  fof(f2,axiom,(
% 1.17/0.96    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r4_wellord1(X0,X1) <=> ? [X2] : (r3_wellord1(X0,X1,X2) & v1_funct_1(X2) & v1_relat_1(X2)))))),
% 1.17/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.17/0.96  
% 1.17/0.96  fof(f8,plain,(
% 1.17/0.96    ! [X0] : (! [X1] : ((r4_wellord1(X0,X1) <=> ? [X2] : (r3_wellord1(X0,X1,X2) & v1_funct_1(X2) & v1_relat_1(X2))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(ennf_transformation,[],[f2])).
% 1.17/0.96  
% 1.17/0.96  fof(f13,plain,(
% 1.17/0.96    ! [X0] : (! [X1] : (((r4_wellord1(X0,X1) | ! [X2] : (~r3_wellord1(X0,X1,X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2))) & (? [X2] : (r3_wellord1(X0,X1,X2) & v1_funct_1(X2) & v1_relat_1(X2)) | ~r4_wellord1(X0,X1))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(nnf_transformation,[],[f8])).
% 1.17/0.96  
% 1.17/0.96  fof(f14,plain,(
% 1.17/0.96    ! [X0] : (! [X1] : (((r4_wellord1(X0,X1) | ! [X2] : (~r3_wellord1(X0,X1,X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2))) & (? [X3] : (r3_wellord1(X0,X1,X3) & v1_funct_1(X3) & v1_relat_1(X3)) | ~r4_wellord1(X0,X1))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(rectify,[],[f13])).
% 1.17/0.96  
% 1.17/0.96  fof(f15,plain,(
% 1.17/0.96    ! [X1,X0] : (? [X3] : (r3_wellord1(X0,X1,X3) & v1_funct_1(X3) & v1_relat_1(X3)) => (r3_wellord1(X0,X1,sK0(X0,X1)) & v1_funct_1(sK0(X0,X1)) & v1_relat_1(sK0(X0,X1))))),
% 1.17/0.96    introduced(choice_axiom,[])).
% 1.17/0.96  
% 1.17/0.96  fof(f16,plain,(
% 1.17/0.96    ! [X0] : (! [X1] : (((r4_wellord1(X0,X1) | ! [X2] : (~r3_wellord1(X0,X1,X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2))) & ((r3_wellord1(X0,X1,sK0(X0,X1)) & v1_funct_1(sK0(X0,X1)) & v1_relat_1(sK0(X0,X1))) | ~r4_wellord1(X0,X1))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f15])).
% 1.17/0.96  
% 1.17/0.96  fof(f26,plain,(
% 1.17/0.96    ( ! [X2,X0,X1] : (r4_wellord1(X0,X1) | ~r3_wellord1(X0,X1,X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f16])).
% 1.17/0.96  
% 1.17/0.96  fof(f3,axiom,(
% 1.17/0.96    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => ! [X3] : ((v1_funct_1(X3) & v1_relat_1(X3)) => ! [X4] : ((v1_funct_1(X4) & v1_relat_1(X4)) => ((r3_wellord1(X1,X2,X4) & r3_wellord1(X0,X1,X3)) => r3_wellord1(X0,X2,k5_relat_1(X3,X4))))))))),
% 1.17/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.17/0.96  
% 1.17/0.96  fof(f9,plain,(
% 1.17/0.96    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((r3_wellord1(X0,X2,k5_relat_1(X3,X4)) | (~r3_wellord1(X1,X2,X4) | ~r3_wellord1(X0,X1,X3))) | (~v1_funct_1(X4) | ~v1_relat_1(X4))) | (~v1_funct_1(X3) | ~v1_relat_1(X3))) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(ennf_transformation,[],[f3])).
% 1.17/0.96  
% 1.17/0.96  fof(f10,plain,(
% 1.17/0.96    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (r3_wellord1(X0,X2,k5_relat_1(X3,X4)) | ~r3_wellord1(X1,X2,X4) | ~r3_wellord1(X0,X1,X3) | ~v1_funct_1(X4) | ~v1_relat_1(X4)) | ~v1_funct_1(X3) | ~v1_relat_1(X3)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(flattening,[],[f9])).
% 1.17/0.96  
% 1.17/0.96  fof(f27,plain,(
% 1.17/0.96    ( ! [X4,X2,X0,X3,X1] : (r3_wellord1(X0,X2,k5_relat_1(X3,X4)) | ~r3_wellord1(X1,X2,X4) | ~r3_wellord1(X0,X1,X3) | ~v1_funct_1(X4) | ~v1_relat_1(X4) | ~v1_funct_1(X3) | ~v1_relat_1(X3) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f10])).
% 1.17/0.96  
% 1.17/0.96  fof(f1,axiom,(
% 1.17/0.96    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1) & v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k5_relat_1(X0,X1)) & v1_relat_1(k5_relat_1(X0,X1))))),
% 1.17/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.17/0.96  
% 1.17/0.96  fof(f6,plain,(
% 1.17/0.96    ! [X0,X1] : ((v1_funct_1(k5_relat_1(X0,X1)) & v1_relat_1(k5_relat_1(X0,X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.17/0.96    inference(ennf_transformation,[],[f1])).
% 1.17/0.96  
% 1.17/0.96  fof(f7,plain,(
% 1.17/0.96    ! [X0,X1] : ((v1_funct_1(k5_relat_1(X0,X1)) & v1_relat_1(k5_relat_1(X0,X1))) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.17/0.96    inference(flattening,[],[f6])).
% 1.17/0.96  
% 1.17/0.96  fof(f21,plain,(
% 1.17/0.96    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f7])).
% 1.17/0.96  
% 1.17/0.96  fof(f22,plain,(
% 1.17/0.96    ( ! [X0,X1] : (v1_funct_1(k5_relat_1(X0,X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f7])).
% 1.17/0.96  
% 1.17/0.96  fof(f25,plain,(
% 1.17/0.96    ( ! [X0,X1] : (r3_wellord1(X0,X1,sK0(X0,X1)) | ~r4_wellord1(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f16])).
% 1.17/0.96  
% 1.17/0.96  fof(f4,conjecture,(
% 1.17/0.96    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => ((r4_wellord1(X1,X2) & r4_wellord1(X0,X1)) => r4_wellord1(X0,X2)))))),
% 1.17/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.17/0.96  
% 1.17/0.96  fof(f5,negated_conjecture,(
% 1.17/0.96    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => ((r4_wellord1(X1,X2) & r4_wellord1(X0,X1)) => r4_wellord1(X0,X2)))))),
% 1.17/0.96    inference(negated_conjecture,[],[f4])).
% 1.17/0.96  
% 1.17/0.96  fof(f11,plain,(
% 1.17/0.96    ? [X0] : (? [X1] : (? [X2] : ((~r4_wellord1(X0,X2) & (r4_wellord1(X1,X2) & r4_wellord1(X0,X1))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 1.17/0.96    inference(ennf_transformation,[],[f5])).
% 1.17/0.96  
% 1.17/0.96  fof(f12,plain,(
% 1.17/0.96    ? [X0] : (? [X1] : (? [X2] : (~r4_wellord1(X0,X2) & r4_wellord1(X1,X2) & r4_wellord1(X0,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 1.17/0.96    inference(flattening,[],[f11])).
% 1.17/0.96  
% 1.17/0.96  fof(f19,plain,(
% 1.17/0.96    ( ! [X0,X1] : (? [X2] : (~r4_wellord1(X0,X2) & r4_wellord1(X1,X2) & r4_wellord1(X0,X1) & v1_relat_1(X2)) => (~r4_wellord1(X0,sK3) & r4_wellord1(X1,sK3) & r4_wellord1(X0,X1) & v1_relat_1(sK3))) )),
% 1.17/0.96    introduced(choice_axiom,[])).
% 1.17/0.96  
% 1.17/0.96  fof(f18,plain,(
% 1.17/0.96    ( ! [X0] : (? [X1] : (? [X2] : (~r4_wellord1(X0,X2) & r4_wellord1(X1,X2) & r4_wellord1(X0,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) => (? [X2] : (~r4_wellord1(X0,X2) & r4_wellord1(sK2,X2) & r4_wellord1(X0,sK2) & v1_relat_1(X2)) & v1_relat_1(sK2))) )),
% 1.17/0.96    introduced(choice_axiom,[])).
% 1.17/0.96  
% 1.17/0.96  fof(f17,plain,(
% 1.17/0.96    ? [X0] : (? [X1] : (? [X2] : (~r4_wellord1(X0,X2) & r4_wellord1(X1,X2) & r4_wellord1(X0,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (? [X2] : (~r4_wellord1(sK1,X2) & r4_wellord1(X1,X2) & r4_wellord1(sK1,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(sK1))),
% 1.17/0.96    introduced(choice_axiom,[])).
% 1.17/0.96  
% 1.17/0.96  fof(f20,plain,(
% 1.17/0.96    ((~r4_wellord1(sK1,sK3) & r4_wellord1(sK2,sK3) & r4_wellord1(sK1,sK2) & v1_relat_1(sK3)) & v1_relat_1(sK2)) & v1_relat_1(sK1)),
% 1.17/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f12,f19,f18,f17])).
% 1.17/0.96  
% 1.17/0.96  fof(f31,plain,(
% 1.17/0.96    r4_wellord1(sK1,sK2)),
% 1.17/0.96    inference(cnf_transformation,[],[f20])).
% 1.17/0.96  
% 1.17/0.96  fof(f24,plain,(
% 1.17/0.96    ( ! [X0,X1] : (v1_funct_1(sK0(X0,X1)) | ~r4_wellord1(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f16])).
% 1.17/0.96  
% 1.17/0.96  fof(f23,plain,(
% 1.17/0.96    ( ! [X0,X1] : (v1_relat_1(sK0(X0,X1)) | ~r4_wellord1(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.17/0.96    inference(cnf_transformation,[],[f16])).
% 1.17/0.96  
% 1.17/0.96  fof(f32,plain,(
% 1.17/0.96    r4_wellord1(sK2,sK3)),
% 1.17/0.96    inference(cnf_transformation,[],[f20])).
% 1.17/0.96  
% 1.17/0.96  fof(f33,plain,(
% 1.17/0.96    ~r4_wellord1(sK1,sK3)),
% 1.17/0.96    inference(cnf_transformation,[],[f20])).
% 1.17/0.96  
% 1.17/0.96  fof(f30,plain,(
% 1.17/0.96    v1_relat_1(sK3)),
% 1.17/0.96    inference(cnf_transformation,[],[f20])).
% 1.17/0.96  
% 1.17/0.96  fof(f29,plain,(
% 1.17/0.96    v1_relat_1(sK2)),
% 1.17/0.96    inference(cnf_transformation,[],[f20])).
% 1.17/0.96  
% 1.17/0.96  fof(f28,plain,(
% 1.17/0.96    v1_relat_1(sK1)),
% 1.17/0.96    inference(cnf_transformation,[],[f20])).
% 1.17/0.96  
% 1.17/0.96  cnf(c_2,plain,
% 1.17/0.96      ( ~ r3_wellord1(X0,X1,X2)
% 1.17/0.96      | r4_wellord1(X0,X1)
% 1.17/0.96      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(X2)
% 1.17/0.97      | ~ v1_funct_1(X2) ),
% 1.17/0.97      inference(cnf_transformation,[],[f26]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_428,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,X1,k5_relat_1(X2,sK0(sK2,sK3)))
% 1.17/0.97      | r4_wellord1(X0,X1)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(k5_relat_1(X2,sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_funct_1(k5_relat_1(X2,sK0(sK2,sK3))) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_2]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_736,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,X1,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | r4_wellord1(X0,X1)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_428]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_3293,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | r4_wellord1(X0,sK3)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_relat_1(sK3)
% 1.17/0.97      | ~ v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_736]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_3295,plain,
% 1.17/0.97      ( ~ r3_wellord1(sK1,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | r4_wellord1(sK1,sK3)
% 1.17/0.97      | ~ v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_relat_1(sK3)
% 1.17/0.97      | ~ v1_relat_1(sK1)
% 1.17/0.97      | ~ v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_3293]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_6,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,X1,X2)
% 1.17/0.97      | ~ r3_wellord1(X3,X0,X4)
% 1.17/0.97      | r3_wellord1(X3,X1,k5_relat_1(X4,X2))
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(X3)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X2)
% 1.17/0.97      | ~ v1_relat_1(X4)
% 1.17/0.97      | ~ v1_funct_1(X2)
% 1.17/0.97      | ~ v1_funct_1(X4) ),
% 1.17/0.97      inference(cnf_transformation,[],[f27]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_387,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,X1,X2)
% 1.17/0.97      | ~ r3_wellord1(X1,X3,sK0(sK2,sK3))
% 1.17/0.97      | r3_wellord1(X0,X3,k5_relat_1(X2,sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_relat_1(X3)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(X2)
% 1.17/0.97      | ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(X2)
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3)) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_6]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_466,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,X1,sK0(sK2,sK3))
% 1.17/0.97      | ~ r3_wellord1(X2,X0,sK0(sK1,sK2))
% 1.17/0.97      | r3_wellord1(X2,X1,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(X2)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK0(sK1,sK2))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK1,sK2)) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_387]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_770,plain,
% 1.17/0.97      ( ~ r3_wellord1(X0,sK2,sK0(sK1,sK2))
% 1.17/0.97      | r3_wellord1(X0,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ r3_wellord1(sK2,sK3,sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK0(sK1,sK2))
% 1.17/0.97      | ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK3)
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK1,sK2)) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_466]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_772,plain,
% 1.17/0.97      ( ~ r3_wellord1(sK2,sK3,sK0(sK2,sK3))
% 1.17/0.97      | ~ r3_wellord1(sK1,sK2,sK0(sK1,sK2))
% 1.17/0.97      | r3_wellord1(sK1,sK3,k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK0(sK1,sK2))
% 1.17/0.97      | ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK3)
% 1.17/0.97      | ~ v1_relat_1(sK1)
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK1,sK2)) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_770]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_1,plain,
% 1.17/0.97      ( ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | v1_relat_1(k5_relat_1(X1,X0))
% 1.17/0.97      | ~ v1_funct_1(X0)
% 1.17/0.97      | ~ v1_funct_1(X1) ),
% 1.17/0.97      inference(cnf_transformation,[],[f21]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_377,plain,
% 1.17/0.97      ( ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | v1_relat_1(k5_relat_1(X0,sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_funct_1(X0)
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3)) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_1]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_504,plain,
% 1.17/0.97      ( ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK0(sK1,sK2))
% 1.17/0.97      | v1_relat_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3)))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK1,sK2)) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_377]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_0,plain,
% 1.17/0.97      ( ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_funct_1(X0)
% 1.17/0.97      | ~ v1_funct_1(X1)
% 1.17/0.97      | v1_funct_1(k5_relat_1(X1,X0)) ),
% 1.17/0.97      inference(cnf_transformation,[],[f22]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_378,plain,
% 1.17/0.97      ( ~ v1_relat_1(X0)
% 1.17/0.97      | ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(X0)
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3))
% 1.17/0.97      | v1_funct_1(k5_relat_1(X0,sK0(sK2,sK3))) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_0]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_450,plain,
% 1.17/0.97      ( ~ v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK0(sK1,sK2))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_funct_1(sK0(sK1,sK2))
% 1.17/0.97      | v1_funct_1(k5_relat_1(sK0(sK1,sK2),sK0(sK2,sK3))) ),
% 1.17/0.97      inference(instantiation,[status(thm)],[c_378]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_3,plain,
% 1.17/0.97      ( r3_wellord1(X0,X1,sK0(X0,X1))
% 1.17/0.97      | ~ r4_wellord1(X0,X1)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0) ),
% 1.17/0.97      inference(cnf_transformation,[],[f25]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_9,negated_conjecture,
% 1.17/0.97      ( r4_wellord1(sK1,sK2) ),
% 1.17/0.97      inference(cnf_transformation,[],[f31]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_270,plain,
% 1.17/0.97      ( r3_wellord1(sK1,sK2,sK0(sK1,sK2))
% 1.17/0.97      | ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK1) ),
% 1.17/0.97      inference(resolution,[status(thm)],[c_3,c_9]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_4,plain,
% 1.17/0.97      ( ~ r4_wellord1(X0,X1)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | v1_funct_1(sK0(X0,X1)) ),
% 1.17/0.97      inference(cnf_transformation,[],[f24]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_260,plain,
% 1.17/0.97      ( ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK1)
% 1.17/0.97      | v1_funct_1(sK0(sK1,sK2)) ),
% 1.17/0.97      inference(resolution,[status(thm)],[c_4,c_9]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_5,plain,
% 1.17/0.97      ( ~ r4_wellord1(X0,X1)
% 1.17/0.97      | ~ v1_relat_1(X1)
% 1.17/0.97      | ~ v1_relat_1(X0)
% 1.17/0.97      | v1_relat_1(sK0(X0,X1)) ),
% 1.17/0.97      inference(cnf_transformation,[],[f23]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_250,plain,
% 1.17/0.97      ( v1_relat_1(sK0(sK1,sK2))
% 1.17/0.97      | ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK1) ),
% 1.17/0.97      inference(resolution,[status(thm)],[c_5,c_9]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_8,negated_conjecture,
% 1.17/0.97      ( r4_wellord1(sK2,sK3) ),
% 1.17/0.97      inference(cnf_transformation,[],[f32]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_240,plain,
% 1.17/0.97      ( r3_wellord1(sK2,sK3,sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK3) ),
% 1.17/0.97      inference(resolution,[status(thm)],[c_3,c_8]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_230,plain,
% 1.17/0.97      ( ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK3)
% 1.17/0.97      | v1_funct_1(sK0(sK2,sK3)) ),
% 1.17/0.97      inference(resolution,[status(thm)],[c_4,c_8]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_220,plain,
% 1.17/0.97      ( v1_relat_1(sK0(sK2,sK3))
% 1.17/0.97      | ~ v1_relat_1(sK2)
% 1.17/0.97      | ~ v1_relat_1(sK3) ),
% 1.17/0.97      inference(resolution,[status(thm)],[c_5,c_8]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_7,negated_conjecture,
% 1.17/0.97      ( ~ r4_wellord1(sK1,sK3) ),
% 1.17/0.97      inference(cnf_transformation,[],[f33]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_10,negated_conjecture,
% 1.17/0.97      ( v1_relat_1(sK3) ),
% 1.17/0.97      inference(cnf_transformation,[],[f30]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_11,negated_conjecture,
% 1.17/0.97      ( v1_relat_1(sK2) ),
% 1.17/0.97      inference(cnf_transformation,[],[f29]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(c_12,negated_conjecture,
% 1.17/0.97      ( v1_relat_1(sK1) ),
% 1.17/0.97      inference(cnf_transformation,[],[f28]) ).
% 1.17/0.97  
% 1.17/0.97  cnf(contradiction,plain,
% 1.17/0.97      ( $false ),
% 1.17/0.97      inference(minisat,
% 1.17/0.97                [status(thm)],
% 1.17/0.97                [c_3295,c_772,c_504,c_450,c_270,c_260,c_250,c_240,c_230,
% 1.17/0.97                 c_220,c_7,c_10,c_11,c_12]) ).
% 1.17/0.97  
% 1.17/0.97  
% 1.17/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 1.17/0.97  
% 1.17/0.97  ------                               Statistics
% 1.17/0.97  
% 1.17/0.97  ------ General
% 1.17/0.97  
% 1.17/0.97  abstr_ref_over_cycles:                  0
% 1.17/0.97  abstr_ref_under_cycles:                 0
% 1.17/0.97  gc_basic_clause_elim:                   0
% 1.17/0.97  forced_gc_time:                         0
% 1.17/0.97  parsing_time:                           0.008
% 1.17/0.97  unif_index_cands_time:                  0.
% 1.17/0.97  unif_index_add_time:                    0.
% 1.17/0.97  orderings_time:                         0.
% 1.17/0.97  out_proof_time:                         0.005
% 1.17/0.97  total_time:                             0.174
% 1.17/0.97  num_of_symbols:                         40
% 1.17/0.97  num_of_terms:                           4609
% 1.17/0.97  
% 1.17/0.97  ------ Preprocessing
% 1.17/0.97  
% 1.17/0.97  num_of_splits:                          0
% 1.17/0.97  num_of_split_atoms:                     0
% 1.17/0.97  num_of_reused_defs:                     0
% 1.17/0.97  num_eq_ax_congr_red:                    0
% 1.17/0.97  num_of_sem_filtered_clauses:            0
% 1.17/0.97  num_of_subtypes:                        1
% 1.17/0.97  monotx_restored_types:                  0
% 1.17/0.97  sat_num_of_epr_types:                   0
% 1.17/0.97  sat_num_of_non_cyclic_types:            0
% 1.17/0.97  sat_guarded_non_collapsed_types:        0
% 1.17/0.97  num_pure_diseq_elim:                    0
% 1.17/0.97  simp_replaced_by:                       0
% 1.17/0.97  res_preprocessed:                       13
% 1.17/0.97  prep_upred:                             0
% 1.17/0.97  prep_unflattend:                        0
% 1.17/0.97  smt_new_axioms:                         0
% 1.17/0.97  pred_elim_cands:                        4
% 1.17/0.97  pred_elim:                              0
% 1.17/0.97  pred_elim_cl:                           0
% 1.17/0.97  pred_elim_cycles:                       1
% 1.17/0.97  merged_defs:                            0
% 1.17/0.97  merged_defs_ncl:                        0
% 1.17/0.97  bin_hyper_res:                          0
% 1.17/0.97  prep_cycles:                            1
% 1.17/0.97  pred_elim_time:                         0.002
% 1.17/0.97  splitting_time:                         0.
% 1.17/0.97  sem_filter_time:                        0.
% 1.17/0.97  monotx_time:                            0.
% 1.17/0.97  subtype_inf_time:                       0.
% 1.17/0.97  
% 1.17/0.97  ------ Problem properties
% 1.17/0.97  
% 1.17/0.97  clauses:                                13
% 1.17/0.97  conjectures:                            6
% 1.17/0.97  epr:                                    7
% 1.17/0.97  horn:                                   13
% 1.17/0.97  ground:                                 6
% 1.17/0.97  unary:                                  6
% 1.17/0.97  binary:                                 0
% 1.17/0.97  lits:                                   44
% 1.17/0.97  lits_eq:                                0
% 1.17/0.97  fd_pure:                                0
% 1.17/0.97  fd_pseudo:                              0
% 1.17/0.97  fd_cond:                                0
% 1.17/0.97  fd_pseudo_cond:                         0
% 1.17/0.97  ac_symbols:                             0
% 1.17/0.97  
% 1.17/0.97  ------ Propositional Solver
% 1.17/0.97  
% 1.17/0.97  prop_solver_calls:                      14
% 1.17/0.97  prop_fast_solver_calls:                 138
% 1.17/0.97  smt_solver_calls:                       0
% 1.17/0.97  smt_fast_solver_calls:                  0
% 1.17/0.97  prop_num_of_clauses:                    1817
% 1.17/0.97  prop_preprocess_simplified:             3868
% 1.17/0.97  prop_fo_subsumed:                       14
% 1.17/0.97  prop_solver_time:                       0.
% 1.17/0.97  smt_solver_time:                        0.
% 1.17/0.97  smt_fast_solver_time:                   0.
% 1.17/0.97  prop_fast_solver_time:                  0.
% 1.17/0.97  prop_unsat_core_time:                   0.
% 1.17/0.97  
% 1.17/0.97  ------ QBF
% 1.17/0.97  
% 1.17/0.97  qbf_q_res:                              0
% 1.17/0.97  qbf_num_tautologies:                    0
% 1.17/0.97  qbf_prep_cycles:                        0
% 1.17/0.97  
% 1.17/0.97  ------ BMC1
% 1.17/0.97  
% 1.17/0.97  bmc1_current_bound:                     -1
% 1.17/0.97  bmc1_last_solved_bound:                 -1
% 1.17/0.97  bmc1_unsat_core_size:                   -1
% 1.17/0.97  bmc1_unsat_core_parents_size:           -1
% 1.17/0.97  bmc1_merge_next_fun:                    0
% 1.17/0.97  bmc1_unsat_core_clauses_time:           0.
% 1.17/0.97  
% 1.17/0.97  ------ Instantiation
% 1.17/0.97  
% 1.17/0.97  inst_num_of_clauses:                    600
% 1.17/0.97  inst_num_in_passive:                    343
% 1.17/0.97  inst_num_in_active:                     252
% 1.17/0.97  inst_num_in_unprocessed:                4
% 1.17/0.97  inst_num_of_loops:                      282
% 1.17/0.97  inst_num_of_learning_restarts:          0
% 1.17/0.97  inst_num_moves_active_passive:          26
% 1.17/0.97  inst_lit_activity:                      0
% 1.17/0.97  inst_lit_activity_moves:                1
% 1.17/0.97  inst_num_tautologies:                   0
% 1.17/0.97  inst_num_prop_implied:                  0
% 1.17/0.97  inst_num_existing_simplified:           0
% 1.17/0.97  inst_num_eq_res_simplified:             0
% 1.17/0.97  inst_num_child_elim:                    0
% 1.17/0.97  inst_num_of_dismatching_blockings:      36
% 1.17/0.97  inst_num_of_non_proper_insts:           232
% 1.17/0.97  inst_num_of_duplicates:                 0
% 1.17/0.97  inst_inst_num_from_inst_to_res:         0
% 1.17/0.97  inst_dismatching_checking_time:         0.
% 1.17/0.97  
% 1.17/0.97  ------ Resolution
% 1.17/0.97  
% 1.17/0.97  res_num_of_clauses:                     0
% 1.17/0.97  res_num_in_passive:                     0
% 1.17/0.97  res_num_in_active:                      0
% 1.17/0.97  res_num_of_loops:                       14
% 1.17/0.97  res_forward_subset_subsumed:            4
% 1.17/0.97  res_backward_subset_subsumed:           0
% 1.17/0.97  res_forward_subsumed:                   0
% 1.17/0.97  res_backward_subsumed:                  0
% 1.17/0.97  res_forward_subsumption_resolution:     0
% 1.17/0.97  res_backward_subsumption_resolution:    0
% 1.17/0.97  res_clause_to_clause_subsumption:       0
% 1.17/0.97  res_orphan_elimination:                 0
% 1.17/0.97  res_tautology_del:                      0
% 1.17/0.97  res_num_eq_res_simplified:              0
% 1.17/0.97  res_num_sel_changes:                    0
% 1.17/0.97  res_moves_from_active_to_pass:          0
% 1.17/0.97  
% 1.17/0.97  ------ Superposition
% 1.17/0.97  
% 1.17/0.97  sup_time_total:                         0.
% 1.17/0.97  sup_time_generating:                    0.
% 1.17/0.97  sup_time_sim_full:                      0.
% 1.17/0.97  sup_time_sim_immed:                     0.
% 1.17/0.97  
% 1.17/0.97  sup_num_of_clauses:                     0
% 1.17/0.97  sup_num_in_active:                      0
% 1.17/0.97  sup_num_in_passive:                     0
% 1.17/0.97  sup_num_of_loops:                       0
% 1.17/0.97  sup_fw_superposition:                   0
% 1.17/0.97  sup_bw_superposition:                   0
% 1.17/0.97  sup_immediate_simplified:               0
% 1.17/0.97  sup_given_eliminated:                   0
% 1.17/0.97  comparisons_done:                       0
% 1.17/0.97  comparisons_avoided:                    0
% 1.17/0.97  
% 1.17/0.97  ------ Simplifications
% 1.17/0.97  
% 1.17/0.97  
% 1.17/0.97  sim_fw_subset_subsumed:                 0
% 1.17/0.97  sim_bw_subset_subsumed:                 0
% 1.17/0.97  sim_fw_subsumed:                        0
% 1.17/0.97  sim_bw_subsumed:                        0
% 1.17/0.97  sim_fw_subsumption_res:                 0
% 1.17/0.97  sim_bw_subsumption_res:                 0
% 1.17/0.97  sim_tautology_del:                      0
% 1.17/0.97  sim_eq_tautology_del:                   0
% 1.17/0.97  sim_eq_res_simp:                        0
% 1.17/0.97  sim_fw_demodulated:                     0
% 1.17/0.97  sim_bw_demodulated:                     0
% 1.17/0.97  sim_light_normalised:                   0
% 1.17/0.97  sim_joinable_taut:                      0
% 1.17/0.97  sim_joinable_simp:                      0
% 1.17/0.97  sim_ac_normalised:                      0
% 1.17/0.97  sim_smt_subsumption:                    0
% 1.17/0.97  
%------------------------------------------------------------------------------
