%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:51:08 EST 2020

% Result     : Theorem 1.36s
% Output     : CNFRefutation 1.36s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 106 expanded)
%              Number of clauses        :   46 (  54 expanded)
%              Number of leaves         :   11 (  19 expanded)
%              Depth                    :   10
%              Number of atoms          :  217 ( 329 expanded)
%              Number of equality atoms :   85 ( 127 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    8 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2,X3] :
              ( ( k7_relat_1(X0,X3) = k7_relat_1(X1,X3)
                & r1_tarski(X2,X3) )
             => k7_relat_1(X0,X2) = k7_relat_1(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2,X3] :
              ( k7_relat_1(X0,X2) = k7_relat_1(X1,X2)
              | k7_relat_1(X0,X3) != k7_relat_1(X1,X3)
              | ~ r1_tarski(X2,X3) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2,X3] :
              ( k7_relat_1(X0,X2) = k7_relat_1(X1,X2)
              | k7_relat_1(X0,X3) != k7_relat_1(X1,X3)
              | ~ r1_tarski(X2,X3) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f14])).

fof(f26,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X0,X2) = k7_relat_1(X1,X2)
      | k7_relat_1(X0,X3) != k7_relat_1(X1,X3)
      | ~ r1_tarski(X2,X3)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f18,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f17])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f10])).

fof(f23,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f24,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f7,conjecture,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r1_tarski(X0,X1)
       => ( k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)
          & k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( v1_funct_1(X2)
          & v1_relat_1(X2) )
       => ( r1_tarski(X0,X1)
         => ( k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)
            & k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f9,plain,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r1_tarski(X0,X1)
         => ( k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)
            & k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f19,plain,(
    ? [X0,X1,X2] :
      ( ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
        | k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1) )
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
        | k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1) )
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f19])).

fof(f21,plain,
    ( ? [X0,X1,X2] :
        ( ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
          | k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1) )
        & r1_tarski(X0,X1)
        & v1_relat_1(X2) )
   => ( ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
        | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) )
      & r1_tarski(sK0,sK1)
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
      | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) )
    & r1_tarski(sK0,sK1)
    & v1_relat_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f20,f21])).

fof(f31,plain,
    ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
    | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f30,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f29,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_103,plain,
    ( X0_35 != X1_35
    | X2_35 != X1_35
    | X2_35 = X0_35 ),
    theory(equality)).

cnf(c_392,plain,
    ( X0_35 != X1_35
    | k7_relat_1(sK2,sK0) != X1_35
    | k7_relat_1(sK2,sK0) = X0_35 ),
    inference(instantiation,[status(thm)],[c_103])).

cnf(c_475,plain,
    ( X0_35 != k7_relat_1(sK2,sK0)
    | k7_relat_1(sK2,sK0) = X0_35
    | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_392])).

cnf(c_588,plain,
    ( k7_relat_1(X0_35,X0_36) != k7_relat_1(sK2,sK0)
    | k7_relat_1(sK2,sK0) = k7_relat_1(X0_35,X0_36)
    | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_475])).

cnf(c_1021,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK0),sK1) != k7_relat_1(sK2,sK0)
    | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK0),sK1)
    | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_588])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3)
    | k7_relat_1(X3,X1) != k7_relat_1(X2,X1)
    | k7_relat_1(X3,X0) = k7_relat_1(X2,X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_96,plain,
    ( ~ r1_tarski(X0_36,X1_36)
    | ~ v1_relat_1(X0_35)
    | ~ v1_relat_1(X1_35)
    | k7_relat_1(X1_35,X1_36) != k7_relat_1(X0_35,X1_36)
    | k7_relat_1(X1_35,X0_36) = k7_relat_1(X0_35,X0_36) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_437,plain,
    ( ~ r1_tarski(sK0,X0_36)
    | ~ v1_relat_1(X0_35)
    | ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | k7_relat_1(k7_relat_1(sK2,sK1),X0_36) != k7_relat_1(X0_35,X0_36)
    | k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(X0_35,sK0) ),
    inference(instantiation,[status(thm)],[c_96])).

cnf(c_734,plain,
    ( ~ r1_tarski(sK0,sK1)
    | ~ v1_relat_1(X0_35)
    | ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | k7_relat_1(k7_relat_1(sK2,sK1),sK1) != k7_relat_1(X0_35,sK1)
    | k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(X0_35,sK0) ),
    inference(instantiation,[status(thm)],[c_437])).

cnf(c_736,plain,
    ( ~ r1_tarski(sK0,sK1)
    | ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | ~ v1_relat_1(sK2)
    | k7_relat_1(k7_relat_1(sK2,sK1),sK1) != k7_relat_1(sK2,sK1)
    | k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_734])).

cnf(c_5,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f28])).

cnf(c_94,plain,
    ( ~ r1_tarski(k1_relat_1(X0_35),X0_36)
    | ~ v1_relat_1(X0_35)
    | k7_relat_1(X0_35,X0_36) = X0_35 ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_371,plain,
    ( ~ r1_tarski(k1_relat_1(X0_35),sK1)
    | ~ v1_relat_1(X0_35)
    | k7_relat_1(X0_35,sK1) = X0_35 ),
    inference(instantiation,[status(thm)],[c_94])).

cnf(c_560,plain,
    ( ~ r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK0)),sK1)
    | ~ v1_relat_1(k7_relat_1(X0_35,sK0))
    | k7_relat_1(k7_relat_1(X0_35,sK0),sK1) = k7_relat_1(X0_35,sK0) ),
    inference(instantiation,[status(thm)],[c_371])).

cnf(c_562,plain,
    ( ~ r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK1)
    | ~ v1_relat_1(k7_relat_1(sK2,sK0))
    | k7_relat_1(k7_relat_1(sK2,sK0),sK1) = k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_560])).

cnf(c_4,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_95,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0_35,X0_36)),X0_36)
    | ~ v1_relat_1(X0_35) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_446,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK1)),sK1)
    | ~ v1_relat_1(X0_35) ),
    inference(instantiation,[status(thm)],[c_95])).

cnf(c_452,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK2,sK1)),sK1)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_446])).

cnf(c_445,plain,
    ( ~ r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK1)),sK1)
    | ~ v1_relat_1(k7_relat_1(X0_35,sK1))
    | k7_relat_1(k7_relat_1(X0_35,sK1),sK1) = k7_relat_1(X0_35,sK1) ),
    inference(instantiation,[status(thm)],[c_371])).

cnf(c_448,plain,
    ( ~ r1_tarski(k1_relat_1(k7_relat_1(sK2,sK1)),sK1)
    | ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | k7_relat_1(k7_relat_1(sK2,sK1),sK1) = k7_relat_1(sK2,sK1) ),
    inference(instantiation,[status(thm)],[c_445])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X0)
    | r1_tarski(X2,X1) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_99,plain,
    ( ~ r1_tarski(X0_36,X1_36)
    | ~ r1_tarski(X2_36,X0_36)
    | r1_tarski(X2_36,X1_36) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_344,plain,
    ( r1_tarski(X0_36,sK1)
    | ~ r1_tarski(X0_36,sK0)
    | ~ r1_tarski(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_99])).

cnf(c_370,plain,
    ( r1_tarski(k1_relat_1(X0_35),sK1)
    | ~ r1_tarski(k1_relat_1(X0_35),sK0)
    | ~ r1_tarski(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_344])).

cnf(c_429,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK0)),sK1)
    | ~ r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK0)),sK0)
    | ~ r1_tarski(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_370])).

cnf(c_432,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK1)
    | ~ r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK0)
    | ~ r1_tarski(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_429])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k7_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_98,plain,
    ( ~ v1_relat_1(X0_35)
    | v1_relat_1(k7_relat_1(X0_35,X0_36)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_410,plain,
    ( v1_relat_1(k7_relat_1(sK2,sK1))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_98])).

cnf(c_352,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != X0_35
    | k7_relat_1(sK2,sK0) != X0_35
    | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(instantiation,[status(thm)],[c_103])).

cnf(c_386,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != k7_relat_1(X0_35,sK0)
    | k7_relat_1(sK2,sK0) != k7_relat_1(X0_35,sK0)
    | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(instantiation,[status(thm)],[c_352])).

cnf(c_388,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != k7_relat_1(sK2,sK0)
    | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0)
    | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_386])).

cnf(c_6,negated_conjecture,
    ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
    | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_93,negated_conjecture,
    ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
    | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_124,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK0)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_95])).

cnf(c_117,plain,
    ( v1_relat_1(k7_relat_1(sK2,sK0))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_98])).

cnf(c_102,plain,
    ( X0_36 = X0_36 ),
    theory(equality)).

cnf(c_114,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_102])).

cnf(c_101,plain,
    ( X0_35 = X0_35 ),
    theory(equality)).

cnf(c_113,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_101])).

cnf(c_105,plain,
    ( X0_36 != X1_36
    | X0_35 != X1_35
    | k7_relat_1(X0_35,X0_36) = k7_relat_1(X1_35,X1_36) ),
    theory(equality)).

cnf(c_109,plain,
    ( sK0 != sK0
    | k7_relat_1(sK2,sK0) = k7_relat_1(sK2,sK0)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_105])).

cnf(c_7,negated_conjecture,
    ( r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_8,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f29])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1021,c_736,c_562,c_452,c_448,c_432,c_410,c_388,c_93,c_124,c_117,c_114,c_113,c_109,c_7,c_8])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n006.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 10:06:07 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 1.36/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.36/1.00  
% 1.36/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.36/1.00  
% 1.36/1.00  ------  iProver source info
% 1.36/1.00  
% 1.36/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.36/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.36/1.00  git: non_committed_changes: false
% 1.36/1.00  git: last_make_outside_of_git: false
% 1.36/1.00  
% 1.36/1.00  ------ 
% 1.36/1.00  
% 1.36/1.00  ------ Input Options
% 1.36/1.00  
% 1.36/1.00  --out_options                           all
% 1.36/1.00  --tptp_safe_out                         true
% 1.36/1.00  --problem_path                          ""
% 1.36/1.00  --include_path                          ""
% 1.36/1.00  --clausifier                            res/vclausify_rel
% 1.36/1.00  --clausifier_options                    --mode clausify
% 1.36/1.00  --stdin                                 false
% 1.36/1.00  --stats_out                             all
% 1.36/1.00  
% 1.36/1.00  ------ General Options
% 1.36/1.00  
% 1.36/1.00  --fof                                   false
% 1.36/1.00  --time_out_real                         305.
% 1.36/1.00  --time_out_virtual                      -1.
% 1.36/1.00  --symbol_type_check                     false
% 1.36/1.00  --clausify_out                          false
% 1.36/1.00  --sig_cnt_out                           false
% 1.36/1.00  --trig_cnt_out                          false
% 1.36/1.00  --trig_cnt_out_tolerance                1.
% 1.36/1.00  --trig_cnt_out_sk_spl                   false
% 1.36/1.00  --abstr_cl_out                          false
% 1.36/1.00  
% 1.36/1.00  ------ Global Options
% 1.36/1.00  
% 1.36/1.00  --schedule                              default
% 1.36/1.00  --add_important_lit                     false
% 1.36/1.00  --prop_solver_per_cl                    1000
% 1.36/1.00  --min_unsat_core                        false
% 1.36/1.00  --soft_assumptions                      false
% 1.36/1.00  --soft_lemma_size                       3
% 1.36/1.00  --prop_impl_unit_size                   0
% 1.36/1.00  --prop_impl_unit                        []
% 1.36/1.00  --share_sel_clauses                     true
% 1.36/1.00  --reset_solvers                         false
% 1.36/1.00  --bc_imp_inh                            [conj_cone]
% 1.36/1.00  --conj_cone_tolerance                   3.
% 1.36/1.00  --extra_neg_conj                        none
% 1.36/1.00  --large_theory_mode                     true
% 1.36/1.00  --prolific_symb_bound                   200
% 1.36/1.00  --lt_threshold                          2000
% 1.36/1.00  --clause_weak_htbl                      true
% 1.36/1.00  --gc_record_bc_elim                     false
% 1.36/1.00  
% 1.36/1.00  ------ Preprocessing Options
% 1.36/1.00  
% 1.36/1.00  --preprocessing_flag                    true
% 1.36/1.00  --time_out_prep_mult                    0.1
% 1.36/1.00  --splitting_mode                        input
% 1.36/1.00  --splitting_grd                         true
% 1.36/1.00  --splitting_cvd                         false
% 1.36/1.00  --splitting_cvd_svl                     false
% 1.36/1.00  --splitting_nvd                         32
% 1.36/1.00  --sub_typing                            true
% 1.36/1.00  --prep_gs_sim                           true
% 1.36/1.00  --prep_unflatten                        true
% 1.36/1.00  --prep_res_sim                          true
% 1.36/1.00  --prep_upred                            true
% 1.36/1.00  --prep_sem_filter                       exhaustive
% 1.36/1.00  --prep_sem_filter_out                   false
% 1.36/1.00  --pred_elim                             true
% 1.36/1.00  --res_sim_input                         true
% 1.36/1.00  --eq_ax_congr_red                       true
% 1.36/1.00  --pure_diseq_elim                       true
% 1.36/1.00  --brand_transform                       false
% 1.36/1.00  --non_eq_to_eq                          false
% 1.36/1.00  --prep_def_merge                        true
% 1.36/1.00  --prep_def_merge_prop_impl              false
% 1.36/1.00  --prep_def_merge_mbd                    true
% 1.36/1.00  --prep_def_merge_tr_red                 false
% 1.36/1.00  --prep_def_merge_tr_cl                  false
% 1.36/1.00  --smt_preprocessing                     true
% 1.36/1.00  --smt_ac_axioms                         fast
% 1.36/1.00  --preprocessed_out                      false
% 1.36/1.00  --preprocessed_stats                    false
% 1.36/1.00  
% 1.36/1.00  ------ Abstraction refinement Options
% 1.36/1.00  
% 1.36/1.00  --abstr_ref                             []
% 1.36/1.00  --abstr_ref_prep                        false
% 1.36/1.00  --abstr_ref_until_sat                   false
% 1.36/1.00  --abstr_ref_sig_restrict                funpre
% 1.36/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.36/1.00  --abstr_ref_under                       []
% 1.36/1.00  
% 1.36/1.00  ------ SAT Options
% 1.36/1.00  
% 1.36/1.00  --sat_mode                              false
% 1.36/1.00  --sat_fm_restart_options                ""
% 1.36/1.00  --sat_gr_def                            false
% 1.36/1.00  --sat_epr_types                         true
% 1.36/1.00  --sat_non_cyclic_types                  false
% 1.36/1.00  --sat_finite_models                     false
% 1.36/1.00  --sat_fm_lemmas                         false
% 1.36/1.00  --sat_fm_prep                           false
% 1.36/1.00  --sat_fm_uc_incr                        true
% 1.36/1.00  --sat_out_model                         small
% 1.36/1.00  --sat_out_clauses                       false
% 1.36/1.00  
% 1.36/1.00  ------ QBF Options
% 1.36/1.00  
% 1.36/1.00  --qbf_mode                              false
% 1.36/1.00  --qbf_elim_univ                         false
% 1.36/1.00  --qbf_dom_inst                          none
% 1.36/1.00  --qbf_dom_pre_inst                      false
% 1.36/1.00  --qbf_sk_in                             false
% 1.36/1.00  --qbf_pred_elim                         true
% 1.36/1.00  --qbf_split                             512
% 1.36/1.00  
% 1.36/1.00  ------ BMC1 Options
% 1.36/1.00  
% 1.36/1.00  --bmc1_incremental                      false
% 1.36/1.00  --bmc1_axioms                           reachable_all
% 1.36/1.00  --bmc1_min_bound                        0
% 1.36/1.00  --bmc1_max_bound                        -1
% 1.36/1.00  --bmc1_max_bound_default                -1
% 1.36/1.00  --bmc1_symbol_reachability              true
% 1.36/1.00  --bmc1_property_lemmas                  false
% 1.36/1.00  --bmc1_k_induction                      false
% 1.36/1.00  --bmc1_non_equiv_states                 false
% 1.36/1.00  --bmc1_deadlock                         false
% 1.36/1.00  --bmc1_ucm                              false
% 1.36/1.00  --bmc1_add_unsat_core                   none
% 1.36/1.00  --bmc1_unsat_core_children              false
% 1.36/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.36/1.00  --bmc1_out_stat                         full
% 1.36/1.00  --bmc1_ground_init                      false
% 1.36/1.00  --bmc1_pre_inst_next_state              false
% 1.36/1.00  --bmc1_pre_inst_state                   false
% 1.36/1.00  --bmc1_pre_inst_reach_state             false
% 1.36/1.00  --bmc1_out_unsat_core                   false
% 1.36/1.00  --bmc1_aig_witness_out                  false
% 1.36/1.00  --bmc1_verbose                          false
% 1.36/1.00  --bmc1_dump_clauses_tptp                false
% 1.36/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.36/1.00  --bmc1_dump_file                        -
% 1.36/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.36/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.36/1.00  --bmc1_ucm_extend_mode                  1
% 1.36/1.00  --bmc1_ucm_init_mode                    2
% 1.36/1.00  --bmc1_ucm_cone_mode                    none
% 1.36/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.36/1.00  --bmc1_ucm_relax_model                  4
% 1.36/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.36/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.36/1.00  --bmc1_ucm_layered_model                none
% 1.36/1.00  --bmc1_ucm_max_lemma_size               10
% 1.36/1.00  
% 1.36/1.00  ------ AIG Options
% 1.36/1.00  
% 1.36/1.00  --aig_mode                              false
% 1.36/1.00  
% 1.36/1.00  ------ Instantiation Options
% 1.36/1.00  
% 1.36/1.00  --instantiation_flag                    true
% 1.36/1.00  --inst_sos_flag                         false
% 1.36/1.00  --inst_sos_phase                        true
% 1.36/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.36/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.36/1.00  --inst_lit_sel_side                     num_symb
% 1.36/1.00  --inst_solver_per_active                1400
% 1.36/1.00  --inst_solver_calls_frac                1.
% 1.36/1.00  --inst_passive_queue_type               priority_queues
% 1.36/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.36/1.00  --inst_passive_queues_freq              [25;2]
% 1.36/1.00  --inst_dismatching                      true
% 1.36/1.00  --inst_eager_unprocessed_to_passive     true
% 1.36/1.00  --inst_prop_sim_given                   true
% 1.36/1.00  --inst_prop_sim_new                     false
% 1.36/1.00  --inst_subs_new                         false
% 1.36/1.00  --inst_eq_res_simp                      false
% 1.36/1.00  --inst_subs_given                       false
% 1.36/1.00  --inst_orphan_elimination               true
% 1.36/1.00  --inst_learning_loop_flag               true
% 1.36/1.00  --inst_learning_start                   3000
% 1.36/1.00  --inst_learning_factor                  2
% 1.36/1.00  --inst_start_prop_sim_after_learn       3
% 1.36/1.00  --inst_sel_renew                        solver
% 1.36/1.00  --inst_lit_activity_flag                true
% 1.36/1.00  --inst_restr_to_given                   false
% 1.36/1.00  --inst_activity_threshold               500
% 1.36/1.00  --inst_out_proof                        true
% 1.36/1.00  
% 1.36/1.00  ------ Resolution Options
% 1.36/1.00  
% 1.36/1.00  --resolution_flag                       true
% 1.36/1.00  --res_lit_sel                           adaptive
% 1.36/1.00  --res_lit_sel_side                      none
% 1.36/1.00  --res_ordering                          kbo
% 1.36/1.00  --res_to_prop_solver                    active
% 1.36/1.00  --res_prop_simpl_new                    false
% 1.36/1.00  --res_prop_simpl_given                  true
% 1.36/1.00  --res_passive_queue_type                priority_queues
% 1.36/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.36/1.00  --res_passive_queues_freq               [15;5]
% 1.36/1.00  --res_forward_subs                      full
% 1.36/1.00  --res_backward_subs                     full
% 1.36/1.00  --res_forward_subs_resolution           true
% 1.36/1.00  --res_backward_subs_resolution          true
% 1.36/1.00  --res_orphan_elimination                true
% 1.36/1.00  --res_time_limit                        2.
% 1.36/1.00  --res_out_proof                         true
% 1.36/1.00  
% 1.36/1.00  ------ Superposition Options
% 1.36/1.00  
% 1.36/1.00  --superposition_flag                    true
% 1.36/1.00  --sup_passive_queue_type                priority_queues
% 1.36/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.36/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.36/1.00  --demod_completeness_check              fast
% 1.36/1.00  --demod_use_ground                      true
% 1.36/1.00  --sup_to_prop_solver                    passive
% 1.36/1.00  --sup_prop_simpl_new                    true
% 1.36/1.00  --sup_prop_simpl_given                  true
% 1.36/1.00  --sup_fun_splitting                     false
% 1.36/1.00  --sup_smt_interval                      50000
% 1.36/1.00  
% 1.36/1.00  ------ Superposition Simplification Setup
% 1.36/1.00  
% 1.36/1.00  --sup_indices_passive                   []
% 1.36/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.36/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.36/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.36/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.36/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.36/1.00  --sup_full_bw                           [BwDemod]
% 1.36/1.00  --sup_immed_triv                        [TrivRules]
% 1.36/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.36/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.36/1.00  --sup_immed_bw_main                     []
% 1.36/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.36/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.36/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.36/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.36/1.00  
% 1.36/1.00  ------ Combination Options
% 1.36/1.00  
% 1.36/1.00  --comb_res_mult                         3
% 1.36/1.00  --comb_sup_mult                         2
% 1.36/1.00  --comb_inst_mult                        10
% 1.36/1.00  
% 1.36/1.00  ------ Debug Options
% 1.36/1.00  
% 1.36/1.00  --dbg_backtrace                         false
% 1.36/1.00  --dbg_dump_prop_clauses                 false
% 1.36/1.00  --dbg_dump_prop_clauses_file            -
% 1.36/1.00  --dbg_out_stat                          false
% 1.36/1.00  ------ Parsing...
% 1.36/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.36/1.00  
% 1.36/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.36/1.00  
% 1.36/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.36/1.00  
% 1.36/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.36/1.00  ------ Proving...
% 1.36/1.00  ------ Problem Properties 
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  clauses                                 9
% 1.36/1.00  conjectures                             3
% 1.36/1.00  EPR                                     3
% 1.36/1.00  Horn                                    9
% 1.36/1.00  unary                                   2
% 1.36/1.00  binary                                  4
% 1.36/1.00  lits                                    21
% 1.36/1.00  lits eq                                 6
% 1.36/1.00  fd_pure                                 0
% 1.36/1.00  fd_pseudo                               0
% 1.36/1.00  fd_cond                                 0
% 1.36/1.00  fd_pseudo_cond                          0
% 1.36/1.00  AC symbols                              0
% 1.36/1.00  
% 1.36/1.00  ------ Schedule dynamic 5 is on 
% 1.36/1.00  
% 1.36/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  ------ 
% 1.36/1.00  Current options:
% 1.36/1.00  ------ 
% 1.36/1.00  
% 1.36/1.00  ------ Input Options
% 1.36/1.00  
% 1.36/1.00  --out_options                           all
% 1.36/1.00  --tptp_safe_out                         true
% 1.36/1.00  --problem_path                          ""
% 1.36/1.00  --include_path                          ""
% 1.36/1.00  --clausifier                            res/vclausify_rel
% 1.36/1.00  --clausifier_options                    --mode clausify
% 1.36/1.00  --stdin                                 false
% 1.36/1.00  --stats_out                             all
% 1.36/1.00  
% 1.36/1.00  ------ General Options
% 1.36/1.00  
% 1.36/1.00  --fof                                   false
% 1.36/1.00  --time_out_real                         305.
% 1.36/1.00  --time_out_virtual                      -1.
% 1.36/1.00  --symbol_type_check                     false
% 1.36/1.00  --clausify_out                          false
% 1.36/1.00  --sig_cnt_out                           false
% 1.36/1.00  --trig_cnt_out                          false
% 1.36/1.00  --trig_cnt_out_tolerance                1.
% 1.36/1.00  --trig_cnt_out_sk_spl                   false
% 1.36/1.00  --abstr_cl_out                          false
% 1.36/1.00  
% 1.36/1.00  ------ Global Options
% 1.36/1.00  
% 1.36/1.00  --schedule                              default
% 1.36/1.00  --add_important_lit                     false
% 1.36/1.00  --prop_solver_per_cl                    1000
% 1.36/1.00  --min_unsat_core                        false
% 1.36/1.00  --soft_assumptions                      false
% 1.36/1.00  --soft_lemma_size                       3
% 1.36/1.00  --prop_impl_unit_size                   0
% 1.36/1.00  --prop_impl_unit                        []
% 1.36/1.00  --share_sel_clauses                     true
% 1.36/1.00  --reset_solvers                         false
% 1.36/1.00  --bc_imp_inh                            [conj_cone]
% 1.36/1.00  --conj_cone_tolerance                   3.
% 1.36/1.00  --extra_neg_conj                        none
% 1.36/1.00  --large_theory_mode                     true
% 1.36/1.00  --prolific_symb_bound                   200
% 1.36/1.00  --lt_threshold                          2000
% 1.36/1.00  --clause_weak_htbl                      true
% 1.36/1.00  --gc_record_bc_elim                     false
% 1.36/1.00  
% 1.36/1.00  ------ Preprocessing Options
% 1.36/1.00  
% 1.36/1.00  --preprocessing_flag                    true
% 1.36/1.00  --time_out_prep_mult                    0.1
% 1.36/1.00  --splitting_mode                        input
% 1.36/1.00  --splitting_grd                         true
% 1.36/1.00  --splitting_cvd                         false
% 1.36/1.00  --splitting_cvd_svl                     false
% 1.36/1.00  --splitting_nvd                         32
% 1.36/1.00  --sub_typing                            true
% 1.36/1.00  --prep_gs_sim                           true
% 1.36/1.00  --prep_unflatten                        true
% 1.36/1.00  --prep_res_sim                          true
% 1.36/1.00  --prep_upred                            true
% 1.36/1.00  --prep_sem_filter                       exhaustive
% 1.36/1.00  --prep_sem_filter_out                   false
% 1.36/1.00  --pred_elim                             true
% 1.36/1.00  --res_sim_input                         true
% 1.36/1.00  --eq_ax_congr_red                       true
% 1.36/1.00  --pure_diseq_elim                       true
% 1.36/1.00  --brand_transform                       false
% 1.36/1.00  --non_eq_to_eq                          false
% 1.36/1.00  --prep_def_merge                        true
% 1.36/1.00  --prep_def_merge_prop_impl              false
% 1.36/1.00  --prep_def_merge_mbd                    true
% 1.36/1.00  --prep_def_merge_tr_red                 false
% 1.36/1.00  --prep_def_merge_tr_cl                  false
% 1.36/1.00  --smt_preprocessing                     true
% 1.36/1.00  --smt_ac_axioms                         fast
% 1.36/1.00  --preprocessed_out                      false
% 1.36/1.00  --preprocessed_stats                    false
% 1.36/1.00  
% 1.36/1.00  ------ Abstraction refinement Options
% 1.36/1.00  
% 1.36/1.00  --abstr_ref                             []
% 1.36/1.00  --abstr_ref_prep                        false
% 1.36/1.00  --abstr_ref_until_sat                   false
% 1.36/1.00  --abstr_ref_sig_restrict                funpre
% 1.36/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.36/1.00  --abstr_ref_under                       []
% 1.36/1.00  
% 1.36/1.00  ------ SAT Options
% 1.36/1.00  
% 1.36/1.00  --sat_mode                              false
% 1.36/1.00  --sat_fm_restart_options                ""
% 1.36/1.00  --sat_gr_def                            false
% 1.36/1.00  --sat_epr_types                         true
% 1.36/1.00  --sat_non_cyclic_types                  false
% 1.36/1.00  --sat_finite_models                     false
% 1.36/1.00  --sat_fm_lemmas                         false
% 1.36/1.00  --sat_fm_prep                           false
% 1.36/1.00  --sat_fm_uc_incr                        true
% 1.36/1.00  --sat_out_model                         small
% 1.36/1.00  --sat_out_clauses                       false
% 1.36/1.00  
% 1.36/1.00  ------ QBF Options
% 1.36/1.00  
% 1.36/1.00  --qbf_mode                              false
% 1.36/1.00  --qbf_elim_univ                         false
% 1.36/1.00  --qbf_dom_inst                          none
% 1.36/1.00  --qbf_dom_pre_inst                      false
% 1.36/1.00  --qbf_sk_in                             false
% 1.36/1.00  --qbf_pred_elim                         true
% 1.36/1.00  --qbf_split                             512
% 1.36/1.00  
% 1.36/1.00  ------ BMC1 Options
% 1.36/1.00  
% 1.36/1.00  --bmc1_incremental                      false
% 1.36/1.00  --bmc1_axioms                           reachable_all
% 1.36/1.00  --bmc1_min_bound                        0
% 1.36/1.00  --bmc1_max_bound                        -1
% 1.36/1.00  --bmc1_max_bound_default                -1
% 1.36/1.00  --bmc1_symbol_reachability              true
% 1.36/1.00  --bmc1_property_lemmas                  false
% 1.36/1.00  --bmc1_k_induction                      false
% 1.36/1.00  --bmc1_non_equiv_states                 false
% 1.36/1.00  --bmc1_deadlock                         false
% 1.36/1.00  --bmc1_ucm                              false
% 1.36/1.00  --bmc1_add_unsat_core                   none
% 1.36/1.00  --bmc1_unsat_core_children              false
% 1.36/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.36/1.00  --bmc1_out_stat                         full
% 1.36/1.00  --bmc1_ground_init                      false
% 1.36/1.00  --bmc1_pre_inst_next_state              false
% 1.36/1.00  --bmc1_pre_inst_state                   false
% 1.36/1.00  --bmc1_pre_inst_reach_state             false
% 1.36/1.00  --bmc1_out_unsat_core                   false
% 1.36/1.00  --bmc1_aig_witness_out                  false
% 1.36/1.00  --bmc1_verbose                          false
% 1.36/1.00  --bmc1_dump_clauses_tptp                false
% 1.36/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.36/1.00  --bmc1_dump_file                        -
% 1.36/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.36/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.36/1.00  --bmc1_ucm_extend_mode                  1
% 1.36/1.00  --bmc1_ucm_init_mode                    2
% 1.36/1.00  --bmc1_ucm_cone_mode                    none
% 1.36/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.36/1.00  --bmc1_ucm_relax_model                  4
% 1.36/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.36/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.36/1.00  --bmc1_ucm_layered_model                none
% 1.36/1.00  --bmc1_ucm_max_lemma_size               10
% 1.36/1.00  
% 1.36/1.00  ------ AIG Options
% 1.36/1.00  
% 1.36/1.00  --aig_mode                              false
% 1.36/1.00  
% 1.36/1.00  ------ Instantiation Options
% 1.36/1.00  
% 1.36/1.00  --instantiation_flag                    true
% 1.36/1.00  --inst_sos_flag                         false
% 1.36/1.00  --inst_sos_phase                        true
% 1.36/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.36/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.36/1.00  --inst_lit_sel_side                     none
% 1.36/1.00  --inst_solver_per_active                1400
% 1.36/1.00  --inst_solver_calls_frac                1.
% 1.36/1.00  --inst_passive_queue_type               priority_queues
% 1.36/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.36/1.00  --inst_passive_queues_freq              [25;2]
% 1.36/1.00  --inst_dismatching                      true
% 1.36/1.00  --inst_eager_unprocessed_to_passive     true
% 1.36/1.00  --inst_prop_sim_given                   true
% 1.36/1.00  --inst_prop_sim_new                     false
% 1.36/1.00  --inst_subs_new                         false
% 1.36/1.00  --inst_eq_res_simp                      false
% 1.36/1.00  --inst_subs_given                       false
% 1.36/1.00  --inst_orphan_elimination               true
% 1.36/1.00  --inst_learning_loop_flag               true
% 1.36/1.00  --inst_learning_start                   3000
% 1.36/1.00  --inst_learning_factor                  2
% 1.36/1.00  --inst_start_prop_sim_after_learn       3
% 1.36/1.00  --inst_sel_renew                        solver
% 1.36/1.00  --inst_lit_activity_flag                true
% 1.36/1.00  --inst_restr_to_given                   false
% 1.36/1.00  --inst_activity_threshold               500
% 1.36/1.00  --inst_out_proof                        true
% 1.36/1.00  
% 1.36/1.00  ------ Resolution Options
% 1.36/1.00  
% 1.36/1.00  --resolution_flag                       false
% 1.36/1.00  --res_lit_sel                           adaptive
% 1.36/1.00  --res_lit_sel_side                      none
% 1.36/1.00  --res_ordering                          kbo
% 1.36/1.00  --res_to_prop_solver                    active
% 1.36/1.00  --res_prop_simpl_new                    false
% 1.36/1.00  --res_prop_simpl_given                  true
% 1.36/1.00  --res_passive_queue_type                priority_queues
% 1.36/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.36/1.00  --res_passive_queues_freq               [15;5]
% 1.36/1.00  --res_forward_subs                      full
% 1.36/1.00  --res_backward_subs                     full
% 1.36/1.00  --res_forward_subs_resolution           true
% 1.36/1.00  --res_backward_subs_resolution          true
% 1.36/1.00  --res_orphan_elimination                true
% 1.36/1.00  --res_time_limit                        2.
% 1.36/1.00  --res_out_proof                         true
% 1.36/1.00  
% 1.36/1.00  ------ Superposition Options
% 1.36/1.00  
% 1.36/1.00  --superposition_flag                    true
% 1.36/1.00  --sup_passive_queue_type                priority_queues
% 1.36/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.36/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.36/1.00  --demod_completeness_check              fast
% 1.36/1.00  --demod_use_ground                      true
% 1.36/1.00  --sup_to_prop_solver                    passive
% 1.36/1.00  --sup_prop_simpl_new                    true
% 1.36/1.00  --sup_prop_simpl_given                  true
% 1.36/1.00  --sup_fun_splitting                     false
% 1.36/1.00  --sup_smt_interval                      50000
% 1.36/1.00  
% 1.36/1.00  ------ Superposition Simplification Setup
% 1.36/1.00  
% 1.36/1.00  --sup_indices_passive                   []
% 1.36/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.36/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.36/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.36/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.36/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.36/1.00  --sup_full_bw                           [BwDemod]
% 1.36/1.00  --sup_immed_triv                        [TrivRules]
% 1.36/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.36/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.36/1.00  --sup_immed_bw_main                     []
% 1.36/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.36/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.36/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.36/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.36/1.00  
% 1.36/1.00  ------ Combination Options
% 1.36/1.00  
% 1.36/1.00  --comb_res_mult                         3
% 1.36/1.00  --comb_sup_mult                         2
% 1.36/1.00  --comb_inst_mult                        10
% 1.36/1.00  
% 1.36/1.00  ------ Debug Options
% 1.36/1.00  
% 1.36/1.00  --dbg_backtrace                         false
% 1.36/1.00  --dbg_dump_prop_clauses                 false
% 1.36/1.00  --dbg_dump_prop_clauses_file            -
% 1.36/1.00  --dbg_out_stat                          false
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  ------ Proving...
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  % SZS status Theorem for theBenchmark.p
% 1.36/1.00  
% 1.36/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.36/1.00  
% 1.36/1.00  fof(f4,axiom,(
% 1.36/1.00    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2,X3] : ((k7_relat_1(X0,X3) = k7_relat_1(X1,X3) & r1_tarski(X2,X3)) => k7_relat_1(X0,X2) = k7_relat_1(X1,X2))))),
% 1.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.36/1.00  
% 1.36/1.00  fof(f14,plain,(
% 1.36/1.00    ! [X0] : (! [X1] : (! [X2,X3] : (k7_relat_1(X0,X2) = k7_relat_1(X1,X2) | (k7_relat_1(X0,X3) != k7_relat_1(X1,X3) | ~r1_tarski(X2,X3))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.36/1.00    inference(ennf_transformation,[],[f4])).
% 1.36/1.00  
% 1.36/1.00  fof(f15,plain,(
% 1.36/1.00    ! [X0] : (! [X1] : (! [X2,X3] : (k7_relat_1(X0,X2) = k7_relat_1(X1,X2) | k7_relat_1(X0,X3) != k7_relat_1(X1,X3) | ~r1_tarski(X2,X3)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.36/1.00    inference(flattening,[],[f14])).
% 1.36/1.00  
% 1.36/1.00  fof(f26,plain,(
% 1.36/1.00    ( ! [X2,X0,X3,X1] : (k7_relat_1(X0,X2) = k7_relat_1(X1,X2) | k7_relat_1(X0,X3) != k7_relat_1(X1,X3) | ~r1_tarski(X2,X3) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.36/1.00    inference(cnf_transformation,[],[f15])).
% 1.36/1.00  
% 1.36/1.00  fof(f6,axiom,(
% 1.36/1.00    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 1.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.36/1.00  
% 1.36/1.00  fof(f17,plain,(
% 1.36/1.00    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.36/1.00    inference(ennf_transformation,[],[f6])).
% 1.36/1.00  
% 1.36/1.00  fof(f18,plain,(
% 1.36/1.00    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 1.36/1.00    inference(flattening,[],[f17])).
% 1.36/1.00  
% 1.36/1.00  fof(f28,plain,(
% 1.36/1.00    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 1.36/1.00    inference(cnf_transformation,[],[f18])).
% 1.36/1.00  
% 1.36/1.00  fof(f5,axiom,(
% 1.36/1.00    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0))),
% 1.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.36/1.00  
% 1.36/1.00  fof(f16,plain,(
% 1.36/1.00    ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1))),
% 1.36/1.00    inference(ennf_transformation,[],[f5])).
% 1.36/1.00  
% 1.36/1.00  fof(f27,plain,(
% 1.36/1.00    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1)) )),
% 1.36/1.00    inference(cnf_transformation,[],[f16])).
% 1.36/1.00  
% 1.36/1.00  fof(f1,axiom,(
% 1.36/1.00    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 1.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.36/1.00  
% 1.36/1.00  fof(f10,plain,(
% 1.36/1.00    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 1.36/1.00    inference(ennf_transformation,[],[f1])).
% 1.36/1.00  
% 1.36/1.00  fof(f11,plain,(
% 1.36/1.00    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 1.36/1.00    inference(flattening,[],[f10])).
% 1.36/1.00  
% 1.36/1.00  fof(f23,plain,(
% 1.36/1.00    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)) )),
% 1.36/1.00    inference(cnf_transformation,[],[f11])).
% 1.36/1.00  
% 1.36/1.00  fof(f2,axiom,(
% 1.36/1.00    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 1.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.36/1.00  
% 1.36/1.00  fof(f12,plain,(
% 1.36/1.00    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 1.36/1.00    inference(ennf_transformation,[],[f2])).
% 1.36/1.00  
% 1.36/1.00  fof(f24,plain,(
% 1.36/1.00    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 1.36/1.00    inference(cnf_transformation,[],[f12])).
% 1.36/1.00  
% 1.36/1.00  fof(f7,conjecture,(
% 1.36/1.00    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r1_tarski(X0,X1) => (k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) & k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1))))),
% 1.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.36/1.00  
% 1.36/1.00  fof(f8,negated_conjecture,(
% 1.36/1.00    ~! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r1_tarski(X0,X1) => (k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) & k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1))))),
% 1.36/1.00    inference(negated_conjecture,[],[f7])).
% 1.36/1.00  
% 1.36/1.00  fof(f9,plain,(
% 1.36/1.00    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => (k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) & k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1))))),
% 1.36/1.00    inference(pure_predicate_removal,[],[f8])).
% 1.36/1.00  
% 1.36/1.00  fof(f19,plain,(
% 1.36/1.00    ? [X0,X1,X2] : (((k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) | k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1)) & r1_tarski(X0,X1)) & v1_relat_1(X2))),
% 1.36/1.00    inference(ennf_transformation,[],[f9])).
% 1.36/1.00  
% 1.36/1.00  fof(f20,plain,(
% 1.36/1.00    ? [X0,X1,X2] : ((k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) | k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1)) & r1_tarski(X0,X1) & v1_relat_1(X2))),
% 1.36/1.00    inference(flattening,[],[f19])).
% 1.36/1.00  
% 1.36/1.00  fof(f21,plain,(
% 1.36/1.00    ? [X0,X1,X2] : ((k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) | k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) => ((k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)) & r1_tarski(sK0,sK1) & v1_relat_1(sK2))),
% 1.36/1.00    introduced(choice_axiom,[])).
% 1.36/1.00  
% 1.36/1.00  fof(f22,plain,(
% 1.36/1.00    (k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)) & r1_tarski(sK0,sK1) & v1_relat_1(sK2)),
% 1.36/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f20,f21])).
% 1.36/1.00  
% 1.36/1.00  fof(f31,plain,(
% 1.36/1.00    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)),
% 1.36/1.00    inference(cnf_transformation,[],[f22])).
% 1.36/1.00  
% 1.36/1.00  fof(f30,plain,(
% 1.36/1.00    r1_tarski(sK0,sK1)),
% 1.36/1.00    inference(cnf_transformation,[],[f22])).
% 1.36/1.00  
% 1.36/1.00  fof(f29,plain,(
% 1.36/1.00    v1_relat_1(sK2)),
% 1.36/1.00    inference(cnf_transformation,[],[f22])).
% 1.36/1.00  
% 1.36/1.00  cnf(c_103,plain,
% 1.36/1.00      ( X0_35 != X1_35 | X2_35 != X1_35 | X2_35 = X0_35 ),
% 1.36/1.00      theory(equality) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_392,plain,
% 1.36/1.00      ( X0_35 != X1_35
% 1.36/1.00      | k7_relat_1(sK2,sK0) != X1_35
% 1.36/1.00      | k7_relat_1(sK2,sK0) = X0_35 ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_103]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_475,plain,
% 1.36/1.00      ( X0_35 != k7_relat_1(sK2,sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) = X0_35
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_392]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_588,plain,
% 1.36/1.00      ( k7_relat_1(X0_35,X0_36) != k7_relat_1(sK2,sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(X0_35,X0_36)
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_475]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_1021,plain,
% 1.36/1.00      ( k7_relat_1(k7_relat_1(sK2,sK0),sK1) != k7_relat_1(sK2,sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK0),sK1)
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_588]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_3,plain,
% 1.36/1.00      ( ~ r1_tarski(X0,X1)
% 1.36/1.00      | ~ v1_relat_1(X2)
% 1.36/1.00      | ~ v1_relat_1(X3)
% 1.36/1.00      | k7_relat_1(X3,X1) != k7_relat_1(X2,X1)
% 1.36/1.00      | k7_relat_1(X3,X0) = k7_relat_1(X2,X0) ),
% 1.36/1.00      inference(cnf_transformation,[],[f26]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_96,plain,
% 1.36/1.00      ( ~ r1_tarski(X0_36,X1_36)
% 1.36/1.00      | ~ v1_relat_1(X0_35)
% 1.36/1.00      | ~ v1_relat_1(X1_35)
% 1.36/1.00      | k7_relat_1(X1_35,X1_36) != k7_relat_1(X0_35,X1_36)
% 1.36/1.00      | k7_relat_1(X1_35,X0_36) = k7_relat_1(X0_35,X0_36) ),
% 1.36/1.00      inference(subtyping,[status(esa)],[c_3]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_437,plain,
% 1.36/1.00      ( ~ r1_tarski(sK0,X0_36)
% 1.36/1.00      | ~ v1_relat_1(X0_35)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(sK2,sK1))
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),X0_36) != k7_relat_1(X0_35,X0_36)
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(X0_35,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_96]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_734,plain,
% 1.36/1.00      ( ~ r1_tarski(sK0,sK1)
% 1.36/1.00      | ~ v1_relat_1(X0_35)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(sK2,sK1))
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),sK1) != k7_relat_1(X0_35,sK1)
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(X0_35,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_437]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_736,plain,
% 1.36/1.00      ( ~ r1_tarski(sK0,sK1)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(sK2,sK1))
% 1.36/1.00      | ~ v1_relat_1(sK2)
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),sK1) != k7_relat_1(sK2,sK1)
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(sK2,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_734]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_5,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 1.36/1.00      | ~ v1_relat_1(X0)
% 1.36/1.00      | k7_relat_1(X0,X1) = X0 ),
% 1.36/1.00      inference(cnf_transformation,[],[f28]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_94,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(X0_35),X0_36)
% 1.36/1.00      | ~ v1_relat_1(X0_35)
% 1.36/1.00      | k7_relat_1(X0_35,X0_36) = X0_35 ),
% 1.36/1.00      inference(subtyping,[status(esa)],[c_5]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_371,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(X0_35),sK1)
% 1.36/1.00      | ~ v1_relat_1(X0_35)
% 1.36/1.00      | k7_relat_1(X0_35,sK1) = X0_35 ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_94]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_560,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK0)),sK1)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(X0_35,sK0))
% 1.36/1.00      | k7_relat_1(k7_relat_1(X0_35,sK0),sK1) = k7_relat_1(X0_35,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_371]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_562,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK1)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(sK2,sK0))
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK0),sK1) = k7_relat_1(sK2,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_560]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_4,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1) | ~ v1_relat_1(X0) ),
% 1.36/1.00      inference(cnf_transformation,[],[f27]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_95,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(X0_35,X0_36)),X0_36)
% 1.36/1.00      | ~ v1_relat_1(X0_35) ),
% 1.36/1.00      inference(subtyping,[status(esa)],[c_4]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_446,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK1)),sK1)
% 1.36/1.00      | ~ v1_relat_1(X0_35) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_95]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_452,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(sK2,sK1)),sK1)
% 1.36/1.00      | ~ v1_relat_1(sK2) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_446]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_445,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK1)),sK1)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(X0_35,sK1))
% 1.36/1.00      | k7_relat_1(k7_relat_1(X0_35,sK1),sK1) = k7_relat_1(X0_35,sK1) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_371]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_448,plain,
% 1.36/1.00      ( ~ r1_tarski(k1_relat_1(k7_relat_1(sK2,sK1)),sK1)
% 1.36/1.00      | ~ v1_relat_1(k7_relat_1(sK2,sK1))
% 1.36/1.00      | k7_relat_1(k7_relat_1(sK2,sK1),sK1) = k7_relat_1(sK2,sK1) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_445]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_0,plain,
% 1.36/1.00      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X2,X0) | r1_tarski(X2,X1) ),
% 1.36/1.00      inference(cnf_transformation,[],[f23]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_99,plain,
% 1.36/1.00      ( ~ r1_tarski(X0_36,X1_36)
% 1.36/1.00      | ~ r1_tarski(X2_36,X0_36)
% 1.36/1.00      | r1_tarski(X2_36,X1_36) ),
% 1.36/1.00      inference(subtyping,[status(esa)],[c_0]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_344,plain,
% 1.36/1.00      ( r1_tarski(X0_36,sK1)
% 1.36/1.00      | ~ r1_tarski(X0_36,sK0)
% 1.36/1.00      | ~ r1_tarski(sK0,sK1) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_99]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_370,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(X0_35),sK1)
% 1.36/1.00      | ~ r1_tarski(k1_relat_1(X0_35),sK0)
% 1.36/1.00      | ~ r1_tarski(sK0,sK1) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_344]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_429,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK0)),sK1)
% 1.36/1.00      | ~ r1_tarski(k1_relat_1(k7_relat_1(X0_35,sK0)),sK0)
% 1.36/1.00      | ~ r1_tarski(sK0,sK1) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_370]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_432,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK1)
% 1.36/1.00      | ~ r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK0)
% 1.36/1.00      | ~ r1_tarski(sK0,sK1) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_429]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_1,plain,
% 1.36/1.00      ( ~ v1_relat_1(X0) | v1_relat_1(k7_relat_1(X0,X1)) ),
% 1.36/1.00      inference(cnf_transformation,[],[f24]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_98,plain,
% 1.36/1.00      ( ~ v1_relat_1(X0_35) | v1_relat_1(k7_relat_1(X0_35,X0_36)) ),
% 1.36/1.00      inference(subtyping,[status(esa)],[c_1]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_410,plain,
% 1.36/1.00      ( v1_relat_1(k7_relat_1(sK2,sK1)) | ~ v1_relat_1(sK2) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_98]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_352,plain,
% 1.36/1.00      ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != X0_35
% 1.36/1.00      | k7_relat_1(sK2,sK0) != X0_35
% 1.36/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_103]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_386,plain,
% 1.36/1.00      ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != k7_relat_1(X0_35,sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(X0_35,sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_352]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_388,plain,
% 1.36/1.00      ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != k7_relat_1(sK2,sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_386]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_6,negated_conjecture,
% 1.36/1.00      ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
% 1.36/1.00      inference(cnf_transformation,[],[f31]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_93,negated_conjecture,
% 1.36/1.00      ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
% 1.36/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
% 1.36/1.00      inference(subtyping,[status(esa)],[c_6]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_124,plain,
% 1.36/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(sK2,sK0)),sK0)
% 1.36/1.00      | ~ v1_relat_1(sK2) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_95]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_117,plain,
% 1.36/1.00      ( v1_relat_1(k7_relat_1(sK2,sK0)) | ~ v1_relat_1(sK2) ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_98]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_102,plain,( X0_36 = X0_36 ),theory(equality) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_114,plain,
% 1.36/1.00      ( sK0 = sK0 ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_102]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_101,plain,( X0_35 = X0_35 ),theory(equality) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_113,plain,
% 1.36/1.00      ( sK2 = sK2 ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_101]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_105,plain,
% 1.36/1.00      ( X0_36 != X1_36
% 1.36/1.00      | X0_35 != X1_35
% 1.36/1.00      | k7_relat_1(X0_35,X0_36) = k7_relat_1(X1_35,X1_36) ),
% 1.36/1.00      theory(equality) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_109,plain,
% 1.36/1.00      ( sK0 != sK0
% 1.36/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(sK2,sK0)
% 1.36/1.00      | sK2 != sK2 ),
% 1.36/1.00      inference(instantiation,[status(thm)],[c_105]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_7,negated_conjecture,
% 1.36/1.00      ( r1_tarski(sK0,sK1) ),
% 1.36/1.00      inference(cnf_transformation,[],[f30]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(c_8,negated_conjecture,
% 1.36/1.00      ( v1_relat_1(sK2) ),
% 1.36/1.00      inference(cnf_transformation,[],[f29]) ).
% 1.36/1.00  
% 1.36/1.00  cnf(contradiction,plain,
% 1.36/1.00      ( $false ),
% 1.36/1.00      inference(minisat,
% 1.36/1.00                [status(thm)],
% 1.36/1.00                [c_1021,c_736,c_562,c_452,c_448,c_432,c_410,c_388,c_93,
% 1.36/1.00                 c_124,c_117,c_114,c_113,c_109,c_7,c_8]) ).
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.36/1.00  
% 1.36/1.00  ------                               Statistics
% 1.36/1.00  
% 1.36/1.00  ------ General
% 1.36/1.00  
% 1.36/1.00  abstr_ref_over_cycles:                  0
% 1.36/1.00  abstr_ref_under_cycles:                 0
% 1.36/1.00  gc_basic_clause_elim:                   0
% 1.36/1.00  forced_gc_time:                         0
% 1.36/1.00  parsing_time:                           0.011
% 1.36/1.00  unif_index_cands_time:                  0.
% 1.36/1.00  unif_index_add_time:                    0.
% 1.36/1.00  orderings_time:                         0.
% 1.36/1.00  out_proof_time:                         0.009
% 1.36/1.00  total_time:                             0.07
% 1.36/1.00  num_of_symbols:                         37
% 1.36/1.00  num_of_terms:                           1079
% 1.36/1.00  
% 1.36/1.00  ------ Preprocessing
% 1.36/1.00  
% 1.36/1.00  num_of_splits:                          0
% 1.36/1.00  num_of_split_atoms:                     0
% 1.36/1.00  num_of_reused_defs:                     0
% 1.36/1.00  num_eq_ax_congr_red:                    0
% 1.36/1.00  num_of_sem_filtered_clauses:            1
% 1.36/1.00  num_of_subtypes:                        2
% 1.36/1.00  monotx_restored_types:                  0
% 1.36/1.00  sat_num_of_epr_types:                   0
% 1.36/1.00  sat_num_of_non_cyclic_types:            0
% 1.36/1.00  sat_guarded_non_collapsed_types:        1
% 1.36/1.00  num_pure_diseq_elim:                    0
% 1.36/1.00  simp_replaced_by:                       0
% 1.36/1.00  res_preprocessed:                       42
% 1.36/1.00  prep_upred:                             0
% 1.36/1.00  prep_unflattend:                        0
% 1.36/1.00  smt_new_axioms:                         0
% 1.36/1.00  pred_elim_cands:                        2
% 1.36/1.00  pred_elim:                              0
% 1.36/1.00  pred_elim_cl:                           0
% 1.36/1.00  pred_elim_cycles:                       1
% 1.36/1.00  merged_defs:                            0
% 1.36/1.00  merged_defs_ncl:                        0
% 1.36/1.00  bin_hyper_res:                          0
% 1.36/1.00  prep_cycles:                            3
% 1.36/1.00  pred_elim_time:                         0.
% 1.36/1.00  splitting_time:                         0.
% 1.36/1.00  sem_filter_time:                        0.
% 1.36/1.00  monotx_time:                            0.
% 1.36/1.00  subtype_inf_time:                       0.
% 1.36/1.00  
% 1.36/1.00  ------ Problem properties
% 1.36/1.00  
% 1.36/1.00  clauses:                                9
% 1.36/1.00  conjectures:                            3
% 1.36/1.00  epr:                                    3
% 1.36/1.00  horn:                                   9
% 1.36/1.00  ground:                                 3
% 1.36/1.00  unary:                                  2
% 1.36/1.00  binary:                                 4
% 1.36/1.00  lits:                                   21
% 1.36/1.00  lits_eq:                                6
% 1.36/1.00  fd_pure:                                0
% 1.36/1.00  fd_pseudo:                              0
% 1.36/1.00  fd_cond:                                0
% 1.36/1.00  fd_pseudo_cond:                         0
% 1.36/1.00  ac_symbols:                             0
% 1.36/1.00  
% 1.36/1.00  ------ Propositional Solver
% 1.36/1.00  
% 1.36/1.00  prop_solver_calls:                      23
% 1.36/1.00  prop_fast_solver_calls:                 234
% 1.36/1.00  smt_solver_calls:                       0
% 1.36/1.00  smt_fast_solver_calls:                  0
% 1.36/1.00  prop_num_of_clauses:                    344
% 1.36/1.00  prop_preprocess_simplified:             1500
% 1.36/1.00  prop_fo_subsumed:                       1
% 1.36/1.00  prop_solver_time:                       0.
% 1.36/1.00  smt_solver_time:                        0.
% 1.36/1.00  smt_fast_solver_time:                   0.
% 1.36/1.00  prop_fast_solver_time:                  0.
% 1.36/1.00  prop_unsat_core_time:                   0.
% 1.36/1.00  
% 1.36/1.00  ------ QBF
% 1.36/1.00  
% 1.36/1.00  qbf_q_res:                              0
% 1.36/1.00  qbf_num_tautologies:                    0
% 1.36/1.00  qbf_prep_cycles:                        0
% 1.36/1.00  
% 1.36/1.00  ------ BMC1
% 1.36/1.00  
% 1.36/1.00  bmc1_current_bound:                     -1
% 1.36/1.00  bmc1_last_solved_bound:                 -1
% 1.36/1.00  bmc1_unsat_core_size:                   -1
% 1.36/1.00  bmc1_unsat_core_parents_size:           -1
% 1.36/1.00  bmc1_merge_next_fun:                    0
% 1.36/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.36/1.00  
% 1.36/1.00  ------ Instantiation
% 1.36/1.00  
% 1.36/1.00  inst_num_of_clauses:                    130
% 1.36/1.00  inst_num_in_passive:                    52
% 1.36/1.00  inst_num_in_active:                     73
% 1.36/1.00  inst_num_in_unprocessed:                4
% 1.36/1.00  inst_num_of_loops:                      82
% 1.36/1.00  inst_num_of_learning_restarts:          0
% 1.36/1.00  inst_num_moves_active_passive:          5
% 1.36/1.00  inst_lit_activity:                      0
% 1.36/1.00  inst_lit_activity_moves:                0
% 1.36/1.00  inst_num_tautologies:                   0
% 1.36/1.00  inst_num_prop_implied:                  0
% 1.36/1.00  inst_num_existing_simplified:           0
% 1.36/1.00  inst_num_eq_res_simplified:             0
% 1.36/1.00  inst_num_child_elim:                    0
% 1.36/1.00  inst_num_of_dismatching_blockings:      51
% 1.36/1.00  inst_num_of_non_proper_insts:           111
% 1.36/1.00  inst_num_of_duplicates:                 0
% 1.36/1.00  inst_inst_num_from_inst_to_res:         0
% 1.36/1.00  inst_dismatching_checking_time:         0.
% 1.36/1.00  
% 1.36/1.00  ------ Resolution
% 1.36/1.00  
% 1.36/1.00  res_num_of_clauses:                     0
% 1.36/1.00  res_num_in_passive:                     0
% 1.36/1.00  res_num_in_active:                      0
% 1.36/1.00  res_num_of_loops:                       45
% 1.36/1.00  res_forward_subset_subsumed:            19
% 1.36/1.00  res_backward_subset_subsumed:           0
% 1.36/1.00  res_forward_subsumed:                   0
% 1.36/1.00  res_backward_subsumed:                  0
% 1.36/1.00  res_forward_subsumption_resolution:     0
% 1.36/1.00  res_backward_subsumption_resolution:    0
% 1.36/1.00  res_clause_to_clause_subsumption:       60
% 1.36/1.00  res_orphan_elimination:                 0
% 1.36/1.00  res_tautology_del:                      18
% 1.36/1.00  res_num_eq_res_simplified:              0
% 1.36/1.00  res_num_sel_changes:                    0
% 1.36/1.00  res_moves_from_active_to_pass:          0
% 1.36/1.00  
% 1.36/1.00  ------ Superposition
% 1.36/1.00  
% 1.36/1.00  sup_time_total:                         0.
% 1.36/1.00  sup_time_generating:                    0.
% 1.36/1.00  sup_time_sim_full:                      0.
% 1.36/1.00  sup_time_sim_immed:                     0.
% 1.36/1.00  
% 1.36/1.00  sup_num_of_clauses:                     25
% 1.36/1.00  sup_num_in_active:                      16
% 1.36/1.00  sup_num_in_passive:                     9
% 1.36/1.00  sup_num_of_loops:                       16
% 1.36/1.00  sup_fw_superposition:                   15
% 1.36/1.00  sup_bw_superposition:                   6
% 1.36/1.00  sup_immediate_simplified:               2
% 1.36/1.00  sup_given_eliminated:                   0
% 1.36/1.00  comparisons_done:                       0
% 1.36/1.00  comparisons_avoided:                    0
% 1.36/1.00  
% 1.36/1.00  ------ Simplifications
% 1.36/1.00  
% 1.36/1.00  
% 1.36/1.00  sim_fw_subset_subsumed:                 2
% 1.36/1.00  sim_bw_subset_subsumed:                 0
% 1.36/1.00  sim_fw_subsumed:                        0
% 1.36/1.00  sim_bw_subsumed:                        0
% 1.36/1.00  sim_fw_subsumption_res:                 0
% 1.36/1.00  sim_bw_subsumption_res:                 0
% 1.36/1.00  sim_tautology_del:                      1
% 1.36/1.00  sim_eq_tautology_del:                   2
% 1.36/1.00  sim_eq_res_simp:                        0
% 1.36/1.00  sim_fw_demodulated:                     0
% 1.36/1.00  sim_bw_demodulated:                     0
% 1.36/1.00  sim_light_normalised:                   0
% 1.36/1.00  sim_joinable_taut:                      0
% 1.36/1.00  sim_joinable_simp:                      0
% 1.36/1.00  sim_ac_normalised:                      0
% 1.36/1.00  sim_smt_subsumption:                    0
% 1.36/1.00  
%------------------------------------------------------------------------------
