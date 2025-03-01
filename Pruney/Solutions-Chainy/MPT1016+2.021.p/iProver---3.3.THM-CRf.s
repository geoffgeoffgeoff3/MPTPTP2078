%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:06:55 EST 2020

% Result     : Theorem 1.71s
% Output     : CNFRefutation 1.71s
% Verified   : 
% Statistics : Number of formulae       :  173 (1705 expanded)
%              Number of clauses        :  114 ( 484 expanded)
%              Number of leaves         :   18 ( 347 expanded)
%              Depth                    :   20
%              Number of atoms          :  663 (12444 expanded)
%              Number of equality atoms :  260 (3903 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( ( r2_hidden(X2,X0)
          & v2_funct_1(X3) )
       => ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f20])).

fof(f54,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f10,conjecture,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
      <=> ! [X2,X3] :
            ( ( k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
       => ( v2_funct_1(X1)
        <=> ! [X2,X3] :
              ( ( k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
                & r2_hidden(X3,X0)
                & r2_hidden(X2,X0) )
             => X2 = X3 ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f22,plain,(
    ? [X0,X1] :
      ( ( v2_funct_1(X1)
      <~> ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) ) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f23,plain,(
    ? [X0,X1] :
      ( ( v2_funct_1(X1)
      <~> ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) ) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f33,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f34,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f33])).

fof(f35,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X4,X5] :
            ( X4 = X5
            | k1_funct_1(X1,X4) != k1_funct_1(X1,X5)
            | ~ r2_hidden(X5,X0)
            | ~ r2_hidden(X4,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(rectify,[],[f34])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ? [X2,X3] :
          ( X2 != X3
          & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
          & r2_hidden(X3,X0)
          & r2_hidden(X2,X0) )
     => ( sK5 != sK6
        & k1_funct_1(X1,sK5) = k1_funct_1(X1,sK6)
        & r2_hidden(sK6,X0)
        & r2_hidden(sK5,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ? [X0,X1] :
        ( ( ? [X2,X3] :
              ( X2 != X3
              & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
          | ~ v2_funct_1(X1) )
        & ( ! [X4,X5] :
              ( X4 = X5
              | k1_funct_1(X1,X4) != k1_funct_1(X1,X5)
              | ~ r2_hidden(X5,X0)
              | ~ r2_hidden(X4,X0) )
          | v2_funct_1(X1) )
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
   => ( ( ? [X3,X2] :
            ( X2 != X3
            & k1_funct_1(sK4,X2) = k1_funct_1(sK4,X3)
            & r2_hidden(X3,sK3)
            & r2_hidden(X2,sK3) )
        | ~ v2_funct_1(sK4) )
      & ( ! [X5,X4] :
            ( X4 = X5
            | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5)
            | ~ r2_hidden(X5,sK3)
            | ~ r2_hidden(X4,sK3) )
        | v2_funct_1(sK4) )
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
      & v1_funct_2(sK4,sK3,sK3)
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( ( sK5 != sK6
        & k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
        & r2_hidden(sK6,sK3)
        & r2_hidden(sK5,sK3) )
      | ~ v2_funct_1(sK4) )
    & ( ! [X4,X5] :
          ( X4 = X5
          | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5)
          | ~ r2_hidden(X5,sK3)
          | ~ r2_hidden(X4,sK3) )
      | v2_funct_1(sK4) )
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
    & v1_funct_2(sK4,sK3,sK3)
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f35,f37,f36])).

fof(f56,plain,(
    v1_funct_2(sK4,sK3,sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f55,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( ( k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f29,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ? [X1,X2] :
              ( X1 != X2
              & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) ) )
        & ( ! [X1,X2] :
              ( X1 = X2
              | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
              | ~ r2_hidden(X2,k1_relat_1(X0))
              | ~ r2_hidden(X1,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f30,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ? [X1,X2] :
              ( X1 != X2
              & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) ) )
        & ( ! [X3,X4] :
              ( X3 = X4
              | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
              | ~ r2_hidden(X4,k1_relat_1(X0))
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X0] :
      ( ? [X1,X2] :
          ( X1 != X2
          & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
          & r2_hidden(X2,k1_relat_1(X0))
          & r2_hidden(X1,k1_relat_1(X0)) )
     => ( sK1(X0) != sK2(X0)
        & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0))
        & r2_hidden(sK2(X0),k1_relat_1(X0))
        & r2_hidden(sK1(X0),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ( sK1(X0) != sK2(X0)
            & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0))
            & r2_hidden(sK2(X0),k1_relat_1(X0))
            & r2_hidden(sK1(X0),k1_relat_1(X0)) ) )
        & ( ! [X3,X4] :
              ( X3 = X4
              | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
              | ~ r2_hidden(X4,k1_relat_1(X0))
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f30,f31])).

fof(f48,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | r2_hidden(sK1(X0),k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f49,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | r2_hidden(sK2(X0),k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f50,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f51,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | sK1(X0) != sK2(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f43,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f5,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f58,plain,(
    ! [X4,X5] :
      ( X4 = X5
      | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5)
      | ~ r2_hidden(X5,sK3)
      | ~ r2_hidden(X4,sK3)
      | v2_funct_1(sK4) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f24])).

fof(f26,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f25,f26])).

fof(f39,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f59,plain,
    ( r2_hidden(sK5,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f60,plain,
    ( r2_hidden(sK6,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f7,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f61,plain,
    ( k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f47,plain,(
    ! [X4,X0,X3] :
      ( X3 = X4
      | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
      | ~ r2_hidden(X4,k1_relat_1(X0))
      | ~ r2_hidden(X3,k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f62,plain,
    ( sK5 != sK6
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_22,negated_conjecture,
    ( v1_funct_2(sK4,sK3,sK3) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_267,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
    | sK3 != X2
    | sK3 != X1
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_22])).

cnf(c_268,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
    | ~ r2_hidden(X0,sK3)
    | ~ v1_funct_1(sK4)
    | ~ v2_funct_1(sK4)
    | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_267])).

cnf(c_23,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_272,plain,
    ( ~ r2_hidden(X0,sK3)
    | ~ v2_funct_1(sK4)
    | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | k1_xboole_0 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_268,c_23,c_21])).

cnf(c_2045,plain,
    ( ~ v2_funct_1(sK4)
    | sP1_iProver_split
    | k1_xboole_0 = sK3 ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_272])).

cnf(c_2443,plain,
    ( k1_xboole_0 = sK3
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2045])).

cnf(c_24,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_11,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_46,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_48,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_46])).

cnf(c_10,plain,
    ( r2_hidden(sK2(X0),k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_49,plain,
    ( r2_hidden(sK2(X0),k1_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_51,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) = iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_49])).

cnf(c_9,plain,
    ( ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_52,plain,
    ( k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_54,plain,
    ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_52])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK2(X0) != sK1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_55,plain,
    ( sK2(X0) != sK1(X0)
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_57,plain,
    ( sK2(sK4) != sK1(sK4)
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_55])).

cnf(c_2081,plain,
    ( k1_xboole_0 = sK3
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2045])).

cnf(c_2047,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2654,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) = k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
    inference(instantiation,[status(thm)],[c_2047])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_296,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_21])).

cnf(c_297,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_296])).

cnf(c_2442,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(X0)
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_297])).

cnf(c_2680,plain,
    ( v1_relat_1(k2_zfmisc_1(sK3,sK3)) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2442])).

cnf(c_7,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_2682,plain,
    ( v1_relat_1(k2_zfmisc_1(sK3,sK3)) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_2683,plain,
    ( v1_relat_1(k2_zfmisc_1(sK3,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2682])).

cnf(c_20,negated_conjecture,
    ( ~ r2_hidden(X0,sK3)
    | ~ r2_hidden(X1,sK3)
    | v2_funct_1(sK4)
    | X1 = X0
    | k1_funct_1(sK4,X1) != k1_funct_1(sK4,X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_2751,plain,
    ( ~ r2_hidden(sK2(sK4),sK3)
    | ~ r2_hidden(sK1(sK4),sK3)
    | v2_funct_1(sK4)
    | k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
    | sK2(sK4) = sK1(sK4) ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_2752,plain,
    ( k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
    | sK2(sK4) = sK1(sK4)
    | r2_hidden(sK2(sK4),sK3) != iProver_top
    | r2_hidden(sK1(sK4),sK3) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2751])).

cnf(c_6,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_14,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_309,plain,
    ( v4_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_21])).

cnf(c_310,plain,
    ( v4_relat_1(sK4,X0)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
    inference(unflattening,[status(thm)],[c_309])).

cnf(c_329,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | X2 != X1
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_310])).

cnf(c_330,plain,
    ( r1_tarski(k1_relat_1(sK4),X0)
    | ~ v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
    inference(unflattening,[status(thm)],[c_329])).

cnf(c_2767,plain,
    ( r1_tarski(k1_relat_1(sK4),sK3)
    | ~ v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
    inference(instantiation,[status(thm)],[c_330])).

cnf(c_2768,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))
    | r1_tarski(k1_relat_1(sK4),sK3) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2767])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_2726,plain,
    ( r2_hidden(sK1(sK4),X0)
    | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ r1_tarski(k1_relat_1(sK4),X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2911,plain,
    ( ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | r2_hidden(sK1(sK4),sK3)
    | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
    inference(instantiation,[status(thm)],[c_2726])).

cnf(c_2912,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) != iProver_top
    | r2_hidden(sK1(sK4),sK3) = iProver_top
    | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2911])).

cnf(c_2739,plain,
    ( r2_hidden(sK2(sK4),X0)
    | ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ r1_tarski(k1_relat_1(sK4),X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2910,plain,
    ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | r2_hidden(sK2(sK4),sK3)
    | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
    inference(instantiation,[status(thm)],[c_2739])).

cnf(c_2914,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) != iProver_top
    | r2_hidden(sK2(sK4),sK3) = iProver_top
    | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2910])).

cnf(c_3138,plain,
    ( k1_xboole_0 = sK3
    | sP1_iProver_split = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2443,c_24,c_48,c_51,c_54,c_57,c_2081,c_2654,c_2680,c_2683,c_2752,c_2768,c_2912,c_2914])).

cnf(c_19,negated_conjecture,
    ( r2_hidden(sK5,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_2446,plain,
    ( r2_hidden(sK5,sK3) = iProver_top
    | v2_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2044,plain,
    ( ~ r2_hidden(X0,sK3)
    | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_272])).

cnf(c_2444,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | r2_hidden(X0,sK3) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2044])).

cnf(c_2978,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2446,c_2444])).

cnf(c_3018,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
    | sP1_iProver_split != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2978,c_24,c_48,c_51,c_54,c_57,c_2654,c_2680,c_2683,c_2752,c_2768,c_2912,c_2914])).

cnf(c_3144,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
    | sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3138,c_3018])).

cnf(c_18,negated_conjecture,
    ( r2_hidden(sK6,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_2447,plain,
    ( r2_hidden(sK6,sK3) = iProver_top
    | v2_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_13,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_2450,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2788,plain,
    ( r1_tarski(sK3,sK6) != iProver_top
    | v2_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2447,c_2450])).

cnf(c_2798,plain,
    ( ~ r1_tarski(sK3,sK6)
    | ~ v2_funct_1(sK4) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2788])).

cnf(c_361,plain,
    ( r2_hidden(sK2(X0),k1_relat_1(X0))
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_23])).

cnf(c_362,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | v2_funct_1(sK4)
    | ~ v1_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_361])).

cnf(c_2439,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) = iProver_top
    | v2_funct_1(sK4) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_362])).

cnf(c_3155,plain,
    ( v2_funct_1(sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2439,c_24,c_48,c_51,c_54,c_57,c_2654,c_2680,c_2683,c_2752,c_2768,c_2912,c_2914])).

cnf(c_3157,plain,
    ( v2_funct_1(sK4) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3155])).

cnf(c_2049,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_3326,plain,
    ( ~ r1_tarski(X0,sK6)
    | r1_tarski(sK3,sK6)
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_2049])).

cnf(c_3673,plain,
    ( r1_tarski(sK3,sK6)
    | ~ r1_tarski(k1_xboole_0,sK6)
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3326])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_3674,plain,
    ( r1_tarski(k1_xboole_0,sK6) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_3886,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3144,c_2798,c_3157,c_3673,c_3674])).

cnf(c_17,negated_conjecture,
    ( ~ v2_funct_1(sK4)
    | k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_2448,plain,
    ( k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
    | v2_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_3161,plain,
    ( k1_funct_1(sK4,sK6) = k1_funct_1(sK4,sK5) ),
    inference(superposition,[status(thm)],[c_3155,c_2448])).

cnf(c_2977,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2447,c_2444])).

cnf(c_3011,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
    | sP1_iProver_split != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2977,c_24,c_48,c_51,c_54,c_57,c_2654,c_2680,c_2683,c_2752,c_2768,c_2912,c_2914])).

cnf(c_3244,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6
    | sP1_iProver_split != iProver_top ),
    inference(demodulation,[status(thm)],[c_3161,c_3011])).

cnf(c_3889,plain,
    ( sK6 = sK5
    | sP1_iProver_split != iProver_top ),
    inference(demodulation,[status(thm)],[c_3886,c_3244])).

cnf(c_2048,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2782,plain,
    ( X0 != X1
    | sK3 != X1
    | sK3 = X0 ),
    inference(instantiation,[status(thm)],[c_2048])).

cnf(c_2957,plain,
    ( X0 != sK3
    | sK3 = X0
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2782])).

cnf(c_3601,plain,
    ( sK3 != sK3
    | sK3 = k1_xboole_0
    | k1_xboole_0 != sK3 ),
    inference(instantiation,[status(thm)],[c_2957])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | X0 = X2
    | k1_funct_1(X1,X0) != k1_funct_1(X1,X2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_400,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | X2 = X0
    | k1_funct_1(X1,X2) != k1_funct_1(X1,X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_23])).

cnf(c_401,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(X1,k1_relat_1(sK4))
    | ~ v2_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | X0 = X1
    | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1) ),
    inference(unflattening,[status(thm)],[c_400])).

cnf(c_2042,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(X1,k1_relat_1(sK4))
    | X0 = X1
    | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_401])).

cnf(c_3229,plain,
    ( ~ r2_hidden(sK2(X0),k1_relat_1(sK4))
    | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ sP0_iProver_split
    | k1_funct_1(sK4,sK1(sK4)) != k1_funct_1(sK4,sK2(X0))
    | sK1(sK4) = sK2(X0) ),
    inference(instantiation,[status(thm)],[c_2042])).

cnf(c_3231,plain,
    ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ sP0_iProver_split
    | k1_funct_1(sK4,sK1(sK4)) != k1_funct_1(sK4,sK2(sK4))
    | sK1(sK4) = sK2(sK4) ),
    inference(instantiation,[status(thm)],[c_3229])).

cnf(c_2754,plain,
    ( sK2(sK4) != X0
    | sK2(sK4) = sK1(sK4)
    | sK1(sK4) != X0 ),
    inference(instantiation,[status(thm)],[c_2048])).

cnf(c_2863,plain,
    ( sK2(sK4) != sK2(sK4)
    | sK2(sK4) = sK1(sK4)
    | sK1(sK4) != sK2(sK4) ),
    inference(instantiation,[status(thm)],[c_2754])).

cnf(c_2780,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_2047])).

cnf(c_2620,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(instantiation,[status(thm)],[c_297])).

cnf(c_2653,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(sK3,sK3))
    | v1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
    inference(instantiation,[status(thm)],[c_2620])).

cnf(c_2043,plain,
    ( ~ v2_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_401])).

cnf(c_2072,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_2047])).

cnf(c_2057,plain,
    ( X0 != X1
    | sK2(X0) = sK2(X1) ),
    theory(equality)).

cnf(c_2068,plain,
    ( sK2(sK4) = sK2(sK4)
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_2057])).

cnf(c_348,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0))
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_23])).

cnf(c_349,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | v2_funct_1(sK4)
    | ~ v1_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_348])).

cnf(c_16,negated_conjecture,
    ( ~ v2_funct_1(sK4)
    | sK5 != sK6 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_921,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_349,c_16])).

cnf(c_830,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_362,c_16])).

cnf(c_374,plain,
    ( v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_23])).

cnf(c_375,plain,
    ( v2_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4)) ),
    inference(unflattening,[status(thm)],[c_374])).

cnf(c_739,plain,
    ( ~ v1_relat_1(sK4)
    | k1_funct_1(sK4,sK1(sK4)) = k1_funct_1(sK4,sK2(sK4))
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_375,c_16])).

cnf(c_387,plain,
    ( v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK2(X0) != sK1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_23])).

cnf(c_388,plain,
    ( v2_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | sK2(sK4) != sK1(sK4) ),
    inference(unflattening,[status(thm)],[c_387])).

cnf(c_648,plain,
    ( ~ v1_relat_1(sK4)
    | sK2(sK4) != sK1(sK4)
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_388,c_16])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3889,c_3674,c_3673,c_3601,c_3231,c_3157,c_3155,c_2863,c_2798,c_2780,c_2682,c_2654,c_2653,c_2081,c_2043,c_2072,c_2068,c_921,c_830,c_739,c_648])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n012.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:03:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.71/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.71/0.98  
% 1.71/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.71/0.98  
% 1.71/0.98  ------  iProver source info
% 1.71/0.98  
% 1.71/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.71/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.71/0.98  git: non_committed_changes: false
% 1.71/0.98  git: last_make_outside_of_git: false
% 1.71/0.98  
% 1.71/0.98  ------ 
% 1.71/0.98  
% 1.71/0.98  ------ Input Options
% 1.71/0.98  
% 1.71/0.98  --out_options                           all
% 1.71/0.98  --tptp_safe_out                         true
% 1.71/0.98  --problem_path                          ""
% 1.71/0.98  --include_path                          ""
% 1.71/0.98  --clausifier                            res/vclausify_rel
% 1.71/0.98  --clausifier_options                    --mode clausify
% 1.71/0.98  --stdin                                 false
% 1.71/0.98  --stats_out                             all
% 1.71/0.98  
% 1.71/0.98  ------ General Options
% 1.71/0.98  
% 1.71/0.98  --fof                                   false
% 1.71/0.98  --time_out_real                         305.
% 1.71/0.98  --time_out_virtual                      -1.
% 1.71/0.98  --symbol_type_check                     false
% 1.71/0.98  --clausify_out                          false
% 1.71/0.98  --sig_cnt_out                           false
% 1.71/0.98  --trig_cnt_out                          false
% 1.71/0.98  --trig_cnt_out_tolerance                1.
% 1.71/0.98  --trig_cnt_out_sk_spl                   false
% 1.71/0.98  --abstr_cl_out                          false
% 1.71/0.98  
% 1.71/0.98  ------ Global Options
% 1.71/0.98  
% 1.71/0.98  --schedule                              default
% 1.71/0.98  --add_important_lit                     false
% 1.71/0.98  --prop_solver_per_cl                    1000
% 1.71/0.98  --min_unsat_core                        false
% 1.71/0.98  --soft_assumptions                      false
% 1.71/0.98  --soft_lemma_size                       3
% 1.71/0.98  --prop_impl_unit_size                   0
% 1.71/0.98  --prop_impl_unit                        []
% 1.71/0.98  --share_sel_clauses                     true
% 1.71/0.98  --reset_solvers                         false
% 1.71/0.98  --bc_imp_inh                            [conj_cone]
% 1.71/0.98  --conj_cone_tolerance                   3.
% 1.71/0.98  --extra_neg_conj                        none
% 1.71/0.98  --large_theory_mode                     true
% 1.71/0.98  --prolific_symb_bound                   200
% 1.71/0.98  --lt_threshold                          2000
% 1.71/0.98  --clause_weak_htbl                      true
% 1.71/0.98  --gc_record_bc_elim                     false
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing Options
% 1.71/0.98  
% 1.71/0.98  --preprocessing_flag                    true
% 1.71/0.98  --time_out_prep_mult                    0.1
% 1.71/0.98  --splitting_mode                        input
% 1.71/0.98  --splitting_grd                         true
% 1.71/0.98  --splitting_cvd                         false
% 1.71/0.98  --splitting_cvd_svl                     false
% 1.71/0.98  --splitting_nvd                         32
% 1.71/0.98  --sub_typing                            true
% 1.71/0.98  --prep_gs_sim                           true
% 1.71/0.98  --prep_unflatten                        true
% 1.71/0.98  --prep_res_sim                          true
% 1.71/0.98  --prep_upred                            true
% 1.71/0.98  --prep_sem_filter                       exhaustive
% 1.71/0.98  --prep_sem_filter_out                   false
% 1.71/0.98  --pred_elim                             true
% 1.71/0.98  --res_sim_input                         true
% 1.71/0.98  --eq_ax_congr_red                       true
% 1.71/0.98  --pure_diseq_elim                       true
% 1.71/0.98  --brand_transform                       false
% 1.71/0.98  --non_eq_to_eq                          false
% 1.71/0.98  --prep_def_merge                        true
% 1.71/0.98  --prep_def_merge_prop_impl              false
% 1.71/0.98  --prep_def_merge_mbd                    true
% 1.71/0.98  --prep_def_merge_tr_red                 false
% 1.71/0.98  --prep_def_merge_tr_cl                  false
% 1.71/0.98  --smt_preprocessing                     true
% 1.71/0.98  --smt_ac_axioms                         fast
% 1.71/0.98  --preprocessed_out                      false
% 1.71/0.98  --preprocessed_stats                    false
% 1.71/0.98  
% 1.71/0.98  ------ Abstraction refinement Options
% 1.71/0.98  
% 1.71/0.98  --abstr_ref                             []
% 1.71/0.98  --abstr_ref_prep                        false
% 1.71/0.98  --abstr_ref_until_sat                   false
% 1.71/0.98  --abstr_ref_sig_restrict                funpre
% 1.71/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.71/0.98  --abstr_ref_under                       []
% 1.71/0.98  
% 1.71/0.98  ------ SAT Options
% 1.71/0.98  
% 1.71/0.98  --sat_mode                              false
% 1.71/0.98  --sat_fm_restart_options                ""
% 1.71/0.98  --sat_gr_def                            false
% 1.71/0.98  --sat_epr_types                         true
% 1.71/0.98  --sat_non_cyclic_types                  false
% 1.71/0.98  --sat_finite_models                     false
% 1.71/0.98  --sat_fm_lemmas                         false
% 1.71/0.98  --sat_fm_prep                           false
% 1.71/0.98  --sat_fm_uc_incr                        true
% 1.71/0.98  --sat_out_model                         small
% 1.71/0.98  --sat_out_clauses                       false
% 1.71/0.98  
% 1.71/0.98  ------ QBF Options
% 1.71/0.98  
% 1.71/0.98  --qbf_mode                              false
% 1.71/0.98  --qbf_elim_univ                         false
% 1.71/0.98  --qbf_dom_inst                          none
% 1.71/0.98  --qbf_dom_pre_inst                      false
% 1.71/0.98  --qbf_sk_in                             false
% 1.71/0.98  --qbf_pred_elim                         true
% 1.71/0.98  --qbf_split                             512
% 1.71/0.98  
% 1.71/0.98  ------ BMC1 Options
% 1.71/0.98  
% 1.71/0.98  --bmc1_incremental                      false
% 1.71/0.98  --bmc1_axioms                           reachable_all
% 1.71/0.98  --bmc1_min_bound                        0
% 1.71/0.98  --bmc1_max_bound                        -1
% 1.71/0.98  --bmc1_max_bound_default                -1
% 1.71/0.98  --bmc1_symbol_reachability              true
% 1.71/0.98  --bmc1_property_lemmas                  false
% 1.71/0.98  --bmc1_k_induction                      false
% 1.71/0.98  --bmc1_non_equiv_states                 false
% 1.71/0.98  --bmc1_deadlock                         false
% 1.71/0.98  --bmc1_ucm                              false
% 1.71/0.98  --bmc1_add_unsat_core                   none
% 1.71/0.98  --bmc1_unsat_core_children              false
% 1.71/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.71/0.98  --bmc1_out_stat                         full
% 1.71/0.98  --bmc1_ground_init                      false
% 1.71/0.98  --bmc1_pre_inst_next_state              false
% 1.71/0.98  --bmc1_pre_inst_state                   false
% 1.71/0.98  --bmc1_pre_inst_reach_state             false
% 1.71/0.98  --bmc1_out_unsat_core                   false
% 1.71/0.98  --bmc1_aig_witness_out                  false
% 1.71/0.98  --bmc1_verbose                          false
% 1.71/0.98  --bmc1_dump_clauses_tptp                false
% 1.71/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.71/0.98  --bmc1_dump_file                        -
% 1.71/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.71/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.71/0.98  --bmc1_ucm_extend_mode                  1
% 1.71/0.98  --bmc1_ucm_init_mode                    2
% 1.71/0.98  --bmc1_ucm_cone_mode                    none
% 1.71/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.71/0.98  --bmc1_ucm_relax_model                  4
% 1.71/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.71/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.71/0.98  --bmc1_ucm_layered_model                none
% 1.71/0.98  --bmc1_ucm_max_lemma_size               10
% 1.71/0.98  
% 1.71/0.98  ------ AIG Options
% 1.71/0.98  
% 1.71/0.98  --aig_mode                              false
% 1.71/0.98  
% 1.71/0.98  ------ Instantiation Options
% 1.71/0.98  
% 1.71/0.98  --instantiation_flag                    true
% 1.71/0.98  --inst_sos_flag                         false
% 1.71/0.98  --inst_sos_phase                        true
% 1.71/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.71/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.71/0.98  --inst_lit_sel_side                     num_symb
% 1.71/0.98  --inst_solver_per_active                1400
% 1.71/0.98  --inst_solver_calls_frac                1.
% 1.71/0.98  --inst_passive_queue_type               priority_queues
% 1.71/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.71/0.98  --inst_passive_queues_freq              [25;2]
% 1.71/0.98  --inst_dismatching                      true
% 1.71/0.98  --inst_eager_unprocessed_to_passive     true
% 1.71/0.98  --inst_prop_sim_given                   true
% 1.71/0.98  --inst_prop_sim_new                     false
% 1.71/0.98  --inst_subs_new                         false
% 1.71/0.98  --inst_eq_res_simp                      false
% 1.71/0.98  --inst_subs_given                       false
% 1.71/0.98  --inst_orphan_elimination               true
% 1.71/0.98  --inst_learning_loop_flag               true
% 1.71/0.98  --inst_learning_start                   3000
% 1.71/0.98  --inst_learning_factor                  2
% 1.71/0.98  --inst_start_prop_sim_after_learn       3
% 1.71/0.98  --inst_sel_renew                        solver
% 1.71/0.98  --inst_lit_activity_flag                true
% 1.71/0.98  --inst_restr_to_given                   false
% 1.71/0.98  --inst_activity_threshold               500
% 1.71/0.98  --inst_out_proof                        true
% 1.71/0.98  
% 1.71/0.98  ------ Resolution Options
% 1.71/0.98  
% 1.71/0.98  --resolution_flag                       true
% 1.71/0.98  --res_lit_sel                           adaptive
% 1.71/0.98  --res_lit_sel_side                      none
% 1.71/0.98  --res_ordering                          kbo
% 1.71/0.98  --res_to_prop_solver                    active
% 1.71/0.98  --res_prop_simpl_new                    false
% 1.71/0.98  --res_prop_simpl_given                  true
% 1.71/0.98  --res_passive_queue_type                priority_queues
% 1.71/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.71/0.98  --res_passive_queues_freq               [15;5]
% 1.71/0.98  --res_forward_subs                      full
% 1.71/0.98  --res_backward_subs                     full
% 1.71/0.98  --res_forward_subs_resolution           true
% 1.71/0.98  --res_backward_subs_resolution          true
% 1.71/0.98  --res_orphan_elimination                true
% 1.71/0.98  --res_time_limit                        2.
% 1.71/0.98  --res_out_proof                         true
% 1.71/0.98  
% 1.71/0.98  ------ Superposition Options
% 1.71/0.98  
% 1.71/0.98  --superposition_flag                    true
% 1.71/0.98  --sup_passive_queue_type                priority_queues
% 1.71/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.71/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.71/0.98  --demod_completeness_check              fast
% 1.71/0.98  --demod_use_ground                      true
% 1.71/0.98  --sup_to_prop_solver                    passive
% 1.71/0.98  --sup_prop_simpl_new                    true
% 1.71/0.98  --sup_prop_simpl_given                  true
% 1.71/0.98  --sup_fun_splitting                     false
% 1.71/0.98  --sup_smt_interval                      50000
% 1.71/0.98  
% 1.71/0.98  ------ Superposition Simplification Setup
% 1.71/0.98  
% 1.71/0.98  --sup_indices_passive                   []
% 1.71/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.71/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_full_bw                           [BwDemod]
% 1.71/0.98  --sup_immed_triv                        [TrivRules]
% 1.71/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.71/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_immed_bw_main                     []
% 1.71/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.71/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.98  
% 1.71/0.98  ------ Combination Options
% 1.71/0.98  
% 1.71/0.98  --comb_res_mult                         3
% 1.71/0.98  --comb_sup_mult                         2
% 1.71/0.98  --comb_inst_mult                        10
% 1.71/0.98  
% 1.71/0.98  ------ Debug Options
% 1.71/0.98  
% 1.71/0.98  --dbg_backtrace                         false
% 1.71/0.98  --dbg_dump_prop_clauses                 false
% 1.71/0.98  --dbg_dump_prop_clauses_file            -
% 1.71/0.98  --dbg_out_stat                          false
% 1.71/0.98  ------ Parsing...
% 1.71/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.71/0.98  ------ Proving...
% 1.71/0.98  ------ Problem Properties 
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  clauses                                 21
% 1.71/0.98  conjectures                             5
% 1.71/0.98  EPR                                     8
% 1.71/0.98  Horn                                    15
% 1.71/0.98  unary                                   2
% 1.71/0.98  binary                                  7
% 1.71/0.98  lits                                    56
% 1.71/0.98  lits eq                                 12
% 1.71/0.98  fd_pure                                 0
% 1.71/0.98  fd_pseudo                               0
% 1.71/0.98  fd_cond                                 0
% 1.71/0.98  fd_pseudo_cond                          2
% 1.71/0.98  AC symbols                              0
% 1.71/0.98  
% 1.71/0.98  ------ Schedule dynamic 5 is on 
% 1.71/0.98  
% 1.71/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  ------ 
% 1.71/0.98  Current options:
% 1.71/0.98  ------ 
% 1.71/0.98  
% 1.71/0.98  ------ Input Options
% 1.71/0.98  
% 1.71/0.98  --out_options                           all
% 1.71/0.98  --tptp_safe_out                         true
% 1.71/0.98  --problem_path                          ""
% 1.71/0.98  --include_path                          ""
% 1.71/0.98  --clausifier                            res/vclausify_rel
% 1.71/0.98  --clausifier_options                    --mode clausify
% 1.71/0.98  --stdin                                 false
% 1.71/0.98  --stats_out                             all
% 1.71/0.98  
% 1.71/0.98  ------ General Options
% 1.71/0.98  
% 1.71/0.98  --fof                                   false
% 1.71/0.98  --time_out_real                         305.
% 1.71/0.98  --time_out_virtual                      -1.
% 1.71/0.98  --symbol_type_check                     false
% 1.71/0.98  --clausify_out                          false
% 1.71/0.98  --sig_cnt_out                           false
% 1.71/0.98  --trig_cnt_out                          false
% 1.71/0.98  --trig_cnt_out_tolerance                1.
% 1.71/0.98  --trig_cnt_out_sk_spl                   false
% 1.71/0.98  --abstr_cl_out                          false
% 1.71/0.98  
% 1.71/0.98  ------ Global Options
% 1.71/0.98  
% 1.71/0.98  --schedule                              default
% 1.71/0.98  --add_important_lit                     false
% 1.71/0.98  --prop_solver_per_cl                    1000
% 1.71/0.98  --min_unsat_core                        false
% 1.71/0.98  --soft_assumptions                      false
% 1.71/0.98  --soft_lemma_size                       3
% 1.71/0.98  --prop_impl_unit_size                   0
% 1.71/0.98  --prop_impl_unit                        []
% 1.71/0.98  --share_sel_clauses                     true
% 1.71/0.98  --reset_solvers                         false
% 1.71/0.98  --bc_imp_inh                            [conj_cone]
% 1.71/0.98  --conj_cone_tolerance                   3.
% 1.71/0.98  --extra_neg_conj                        none
% 1.71/0.98  --large_theory_mode                     true
% 1.71/0.98  --prolific_symb_bound                   200
% 1.71/0.98  --lt_threshold                          2000
% 1.71/0.98  --clause_weak_htbl                      true
% 1.71/0.98  --gc_record_bc_elim                     false
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing Options
% 1.71/0.98  
% 1.71/0.98  --preprocessing_flag                    true
% 1.71/0.98  --time_out_prep_mult                    0.1
% 1.71/0.98  --splitting_mode                        input
% 1.71/0.98  --splitting_grd                         true
% 1.71/0.98  --splitting_cvd                         false
% 1.71/0.98  --splitting_cvd_svl                     false
% 1.71/0.98  --splitting_nvd                         32
% 1.71/0.98  --sub_typing                            true
% 1.71/0.98  --prep_gs_sim                           true
% 1.71/0.98  --prep_unflatten                        true
% 1.71/0.98  --prep_res_sim                          true
% 1.71/0.98  --prep_upred                            true
% 1.71/0.98  --prep_sem_filter                       exhaustive
% 1.71/0.98  --prep_sem_filter_out                   false
% 1.71/0.98  --pred_elim                             true
% 1.71/0.98  --res_sim_input                         true
% 1.71/0.98  --eq_ax_congr_red                       true
% 1.71/0.98  --pure_diseq_elim                       true
% 1.71/0.98  --brand_transform                       false
% 1.71/0.98  --non_eq_to_eq                          false
% 1.71/0.98  --prep_def_merge                        true
% 1.71/0.98  --prep_def_merge_prop_impl              false
% 1.71/0.98  --prep_def_merge_mbd                    true
% 1.71/0.98  --prep_def_merge_tr_red                 false
% 1.71/0.98  --prep_def_merge_tr_cl                  false
% 1.71/0.98  --smt_preprocessing                     true
% 1.71/0.98  --smt_ac_axioms                         fast
% 1.71/0.98  --preprocessed_out                      false
% 1.71/0.98  --preprocessed_stats                    false
% 1.71/0.98  
% 1.71/0.98  ------ Abstraction refinement Options
% 1.71/0.98  
% 1.71/0.98  --abstr_ref                             []
% 1.71/0.98  --abstr_ref_prep                        false
% 1.71/0.98  --abstr_ref_until_sat                   false
% 1.71/0.98  --abstr_ref_sig_restrict                funpre
% 1.71/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.71/0.98  --abstr_ref_under                       []
% 1.71/0.98  
% 1.71/0.98  ------ SAT Options
% 1.71/0.98  
% 1.71/0.98  --sat_mode                              false
% 1.71/0.98  --sat_fm_restart_options                ""
% 1.71/0.98  --sat_gr_def                            false
% 1.71/0.98  --sat_epr_types                         true
% 1.71/0.98  --sat_non_cyclic_types                  false
% 1.71/0.98  --sat_finite_models                     false
% 1.71/0.98  --sat_fm_lemmas                         false
% 1.71/0.98  --sat_fm_prep                           false
% 1.71/0.98  --sat_fm_uc_incr                        true
% 1.71/0.98  --sat_out_model                         small
% 1.71/0.98  --sat_out_clauses                       false
% 1.71/0.98  
% 1.71/0.98  ------ QBF Options
% 1.71/0.98  
% 1.71/0.98  --qbf_mode                              false
% 1.71/0.98  --qbf_elim_univ                         false
% 1.71/0.98  --qbf_dom_inst                          none
% 1.71/0.98  --qbf_dom_pre_inst                      false
% 1.71/0.98  --qbf_sk_in                             false
% 1.71/0.98  --qbf_pred_elim                         true
% 1.71/0.98  --qbf_split                             512
% 1.71/0.98  
% 1.71/0.98  ------ BMC1 Options
% 1.71/0.98  
% 1.71/0.98  --bmc1_incremental                      false
% 1.71/0.98  --bmc1_axioms                           reachable_all
% 1.71/0.98  --bmc1_min_bound                        0
% 1.71/0.98  --bmc1_max_bound                        -1
% 1.71/0.98  --bmc1_max_bound_default                -1
% 1.71/0.98  --bmc1_symbol_reachability              true
% 1.71/0.98  --bmc1_property_lemmas                  false
% 1.71/0.98  --bmc1_k_induction                      false
% 1.71/0.98  --bmc1_non_equiv_states                 false
% 1.71/0.98  --bmc1_deadlock                         false
% 1.71/0.98  --bmc1_ucm                              false
% 1.71/0.98  --bmc1_add_unsat_core                   none
% 1.71/0.98  --bmc1_unsat_core_children              false
% 1.71/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.71/0.98  --bmc1_out_stat                         full
% 1.71/0.98  --bmc1_ground_init                      false
% 1.71/0.98  --bmc1_pre_inst_next_state              false
% 1.71/0.98  --bmc1_pre_inst_state                   false
% 1.71/0.98  --bmc1_pre_inst_reach_state             false
% 1.71/0.98  --bmc1_out_unsat_core                   false
% 1.71/0.98  --bmc1_aig_witness_out                  false
% 1.71/0.98  --bmc1_verbose                          false
% 1.71/0.98  --bmc1_dump_clauses_tptp                false
% 1.71/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.71/0.98  --bmc1_dump_file                        -
% 1.71/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.71/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.71/0.98  --bmc1_ucm_extend_mode                  1
% 1.71/0.98  --bmc1_ucm_init_mode                    2
% 1.71/0.98  --bmc1_ucm_cone_mode                    none
% 1.71/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.71/0.98  --bmc1_ucm_relax_model                  4
% 1.71/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.71/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.71/0.98  --bmc1_ucm_layered_model                none
% 1.71/0.98  --bmc1_ucm_max_lemma_size               10
% 1.71/0.98  
% 1.71/0.98  ------ AIG Options
% 1.71/0.98  
% 1.71/0.98  --aig_mode                              false
% 1.71/0.98  
% 1.71/0.98  ------ Instantiation Options
% 1.71/0.98  
% 1.71/0.98  --instantiation_flag                    true
% 1.71/0.98  --inst_sos_flag                         false
% 1.71/0.98  --inst_sos_phase                        true
% 1.71/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.71/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.71/0.98  --inst_lit_sel_side                     none
% 1.71/0.98  --inst_solver_per_active                1400
% 1.71/0.98  --inst_solver_calls_frac                1.
% 1.71/0.98  --inst_passive_queue_type               priority_queues
% 1.71/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.71/0.98  --inst_passive_queues_freq              [25;2]
% 1.71/0.98  --inst_dismatching                      true
% 1.71/0.98  --inst_eager_unprocessed_to_passive     true
% 1.71/0.98  --inst_prop_sim_given                   true
% 1.71/0.98  --inst_prop_sim_new                     false
% 1.71/0.98  --inst_subs_new                         false
% 1.71/0.98  --inst_eq_res_simp                      false
% 1.71/0.98  --inst_subs_given                       false
% 1.71/0.98  --inst_orphan_elimination               true
% 1.71/0.98  --inst_learning_loop_flag               true
% 1.71/0.98  --inst_learning_start                   3000
% 1.71/0.98  --inst_learning_factor                  2
% 1.71/0.98  --inst_start_prop_sim_after_learn       3
% 1.71/0.98  --inst_sel_renew                        solver
% 1.71/0.98  --inst_lit_activity_flag                true
% 1.71/0.98  --inst_restr_to_given                   false
% 1.71/0.98  --inst_activity_threshold               500
% 1.71/0.98  --inst_out_proof                        true
% 1.71/0.98  
% 1.71/0.98  ------ Resolution Options
% 1.71/0.98  
% 1.71/0.98  --resolution_flag                       false
% 1.71/0.98  --res_lit_sel                           adaptive
% 1.71/0.98  --res_lit_sel_side                      none
% 1.71/0.98  --res_ordering                          kbo
% 1.71/0.98  --res_to_prop_solver                    active
% 1.71/0.98  --res_prop_simpl_new                    false
% 1.71/0.98  --res_prop_simpl_given                  true
% 1.71/0.98  --res_passive_queue_type                priority_queues
% 1.71/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.71/0.98  --res_passive_queues_freq               [15;5]
% 1.71/0.98  --res_forward_subs                      full
% 1.71/0.98  --res_backward_subs                     full
% 1.71/0.98  --res_forward_subs_resolution           true
% 1.71/0.98  --res_backward_subs_resolution          true
% 1.71/0.98  --res_orphan_elimination                true
% 1.71/0.98  --res_time_limit                        2.
% 1.71/0.98  --res_out_proof                         true
% 1.71/0.98  
% 1.71/0.98  ------ Superposition Options
% 1.71/0.98  
% 1.71/0.98  --superposition_flag                    true
% 1.71/0.98  --sup_passive_queue_type                priority_queues
% 1.71/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.71/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.71/0.98  --demod_completeness_check              fast
% 1.71/0.98  --demod_use_ground                      true
% 1.71/0.98  --sup_to_prop_solver                    passive
% 1.71/0.98  --sup_prop_simpl_new                    true
% 1.71/0.98  --sup_prop_simpl_given                  true
% 1.71/0.98  --sup_fun_splitting                     false
% 1.71/0.98  --sup_smt_interval                      50000
% 1.71/0.98  
% 1.71/0.98  ------ Superposition Simplification Setup
% 1.71/0.98  
% 1.71/0.98  --sup_indices_passive                   []
% 1.71/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.71/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_full_bw                           [BwDemod]
% 1.71/0.98  --sup_immed_triv                        [TrivRules]
% 1.71/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.71/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_immed_bw_main                     []
% 1.71/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.71/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.98  
% 1.71/0.98  ------ Combination Options
% 1.71/0.98  
% 1.71/0.98  --comb_res_mult                         3
% 1.71/0.98  --comb_sup_mult                         2
% 1.71/0.98  --comb_inst_mult                        10
% 1.71/0.98  
% 1.71/0.98  ------ Debug Options
% 1.71/0.98  
% 1.71/0.98  --dbg_backtrace                         false
% 1.71/0.98  --dbg_dump_prop_clauses                 false
% 1.71/0.98  --dbg_dump_prop_clauses_file            -
% 1.71/0.98  --dbg_out_stat                          false
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  ------ Proving...
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  % SZS status Theorem for theBenchmark.p
% 1.71/0.98  
% 1.71/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 1.71/0.98  
% 1.71/0.98  fof(f9,axiom,(
% 1.71/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ((r2_hidden(X2,X0) & v2_funct_1(X3)) => (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f20,plain,(
% 1.71/0.98    ! [X0,X1,X2,X3] : (((k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1) | (~r2_hidden(X2,X0) | ~v2_funct_1(X3))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.71/0.98    inference(ennf_transformation,[],[f9])).
% 1.71/0.98  
% 1.71/0.98  fof(f21,plain,(
% 1.71/0.98    ! [X0,X1,X2,X3] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.71/0.98    inference(flattening,[],[f20])).
% 1.71/0.98  
% 1.71/0.98  fof(f54,plain,(
% 1.71/0.98    ( ! [X2,X0,X3,X1] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f21])).
% 1.71/0.98  
% 1.71/0.98  fof(f10,conjecture,(
% 1.71/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f11,negated_conjecture,(
% 1.71/0.98    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 1.71/0.98    inference(negated_conjecture,[],[f10])).
% 1.71/0.98  
% 1.71/0.98  fof(f22,plain,(
% 1.71/0.98    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | (k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 1.71/0.98    inference(ennf_transformation,[],[f11])).
% 1.71/0.98  
% 1.71/0.98  fof(f23,plain,(
% 1.71/0.98    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.71/0.98    inference(flattening,[],[f22])).
% 1.71/0.98  
% 1.71/0.98  fof(f33,plain,(
% 1.71/0.98    ? [X0,X1] : (((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.71/0.98    inference(nnf_transformation,[],[f23])).
% 1.71/0.98  
% 1.71/0.98  fof(f34,plain,(
% 1.71/0.98    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.71/0.98    inference(flattening,[],[f33])).
% 1.71/0.98  
% 1.71/0.98  fof(f35,plain,(
% 1.71/0.98    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.71/0.98    inference(rectify,[],[f34])).
% 1.71/0.98  
% 1.71/0.98  fof(f37,plain,(
% 1.71/0.98    ( ! [X0,X1] : (? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => (sK5 != sK6 & k1_funct_1(X1,sK5) = k1_funct_1(X1,sK6) & r2_hidden(sK6,X0) & r2_hidden(sK5,X0))) )),
% 1.71/0.98    introduced(choice_axiom,[])).
% 1.71/0.98  
% 1.71/0.98  fof(f36,plain,(
% 1.71/0.98    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((? [X3,X2] : (X2 != X3 & k1_funct_1(sK4,X2) = k1_funct_1(sK4,X3) & r2_hidden(X3,sK3) & r2_hidden(X2,sK3)) | ~v2_funct_1(sK4)) & (! [X5,X4] : (X4 = X5 | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5) | ~r2_hidden(X5,sK3) | ~r2_hidden(X4,sK3)) | v2_funct_1(sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) & v1_funct_2(sK4,sK3,sK3) & v1_funct_1(sK4))),
% 1.71/0.98    introduced(choice_axiom,[])).
% 1.71/0.98  
% 1.71/0.98  fof(f38,plain,(
% 1.71/0.98    ((sK5 != sK6 & k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) & r2_hidden(sK6,sK3) & r2_hidden(sK5,sK3)) | ~v2_funct_1(sK4)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5) | ~r2_hidden(X5,sK3) | ~r2_hidden(X4,sK3)) | v2_funct_1(sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) & v1_funct_2(sK4,sK3,sK3) & v1_funct_1(sK4)),
% 1.71/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f35,f37,f36])).
% 1.71/0.98  
% 1.71/0.98  fof(f56,plain,(
% 1.71/0.98    v1_funct_2(sK4,sK3,sK3)),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f55,plain,(
% 1.71/0.98    v1_funct_1(sK4)),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f57,plain,(
% 1.71/0.98    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f6,axiom,(
% 1.71/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) <=> ! [X1,X2] : ((k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => X1 = X2)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f16,plain,(
% 1.71/0.98    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | (k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.71/0.98    inference(ennf_transformation,[],[f6])).
% 1.71/0.98  
% 1.71/0.98  fof(f17,plain,(
% 1.71/0.98    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.71/0.98    inference(flattening,[],[f16])).
% 1.71/0.98  
% 1.71/0.98  fof(f29,plain,(
% 1.71/0.98    ! [X0] : (((v2_funct_1(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.71/0.98    inference(nnf_transformation,[],[f17])).
% 1.71/0.98  
% 1.71/0.98  fof(f30,plain,(
% 1.71/0.98    ! [X0] : (((v2_funct_1(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.71/0.98    inference(rectify,[],[f29])).
% 1.71/0.98  
% 1.71/0.98  fof(f31,plain,(
% 1.71/0.98    ! [X0] : (? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => (sK1(X0) != sK2(X0) & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0)) & r2_hidden(sK2(X0),k1_relat_1(X0)) & r2_hidden(sK1(X0),k1_relat_1(X0))))),
% 1.71/0.98    introduced(choice_axiom,[])).
% 1.71/0.98  
% 1.71/0.98  fof(f32,plain,(
% 1.71/0.98    ! [X0] : (((v2_funct_1(X0) | (sK1(X0) != sK2(X0) & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0)) & r2_hidden(sK2(X0),k1_relat_1(X0)) & r2_hidden(sK1(X0),k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.71/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f30,f31])).
% 1.71/0.98  
% 1.71/0.98  fof(f48,plain,(
% 1.71/0.98    ( ! [X0] : (v2_funct_1(X0) | r2_hidden(sK1(X0),k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f32])).
% 1.71/0.98  
% 1.71/0.98  fof(f49,plain,(
% 1.71/0.98    ( ! [X0] : (v2_funct_1(X0) | r2_hidden(sK2(X0),k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f32])).
% 1.71/0.98  
% 1.71/0.98  fof(f50,plain,(
% 1.71/0.98    ( ! [X0] : (v2_funct_1(X0) | k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f32])).
% 1.71/0.98  
% 1.71/0.98  fof(f51,plain,(
% 1.71/0.98    ( ! [X0] : (v2_funct_1(X0) | sK1(X0) != sK2(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f32])).
% 1.71/0.98  
% 1.71/0.98  fof(f3,axiom,(
% 1.71/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f14,plain,(
% 1.71/0.98    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.71/0.98    inference(ennf_transformation,[],[f3])).
% 1.71/0.98  
% 1.71/0.98  fof(f43,plain,(
% 1.71/0.98    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f14])).
% 1.71/0.98  
% 1.71/0.98  fof(f5,axiom,(
% 1.71/0.98    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f46,plain,(
% 1.71/0.98    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.71/0.98    inference(cnf_transformation,[],[f5])).
% 1.71/0.98  
% 1.71/0.98  fof(f58,plain,(
% 1.71/0.98    ( ! [X4,X5] : (X4 = X5 | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5) | ~r2_hidden(X5,sK3) | ~r2_hidden(X4,sK3) | v2_funct_1(sK4)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f4,axiom,(
% 1.71/0.98    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f15,plain,(
% 1.71/0.98    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.71/0.98    inference(ennf_transformation,[],[f4])).
% 1.71/0.98  
% 1.71/0.98  fof(f28,plain,(
% 1.71/0.98    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.71/0.98    inference(nnf_transformation,[],[f15])).
% 1.71/0.98  
% 1.71/0.98  fof(f44,plain,(
% 1.71/0.98    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f28])).
% 1.71/0.98  
% 1.71/0.98  fof(f8,axiom,(
% 1.71/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f12,plain,(
% 1.71/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.71/0.98    inference(pure_predicate_removal,[],[f8])).
% 1.71/0.98  
% 1.71/0.98  fof(f19,plain,(
% 1.71/0.98    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.98    inference(ennf_transformation,[],[f12])).
% 1.71/0.98  
% 1.71/0.98  fof(f53,plain,(
% 1.71/0.98    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.71/0.98    inference(cnf_transformation,[],[f19])).
% 1.71/0.98  
% 1.71/0.98  fof(f1,axiom,(
% 1.71/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f13,plain,(
% 1.71/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.71/0.98    inference(ennf_transformation,[],[f1])).
% 1.71/0.98  
% 1.71/0.98  fof(f24,plain,(
% 1.71/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.71/0.98    inference(nnf_transformation,[],[f13])).
% 1.71/0.98  
% 1.71/0.98  fof(f25,plain,(
% 1.71/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.71/0.98    inference(rectify,[],[f24])).
% 1.71/0.98  
% 1.71/0.98  fof(f26,plain,(
% 1.71/0.98    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.71/0.98    introduced(choice_axiom,[])).
% 1.71/0.98  
% 1.71/0.98  fof(f27,plain,(
% 1.71/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.71/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f25,f26])).
% 1.71/0.98  
% 1.71/0.98  fof(f39,plain,(
% 1.71/0.98    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f27])).
% 1.71/0.98  
% 1.71/0.98  fof(f59,plain,(
% 1.71/0.98    r2_hidden(sK5,sK3) | ~v2_funct_1(sK4)),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f60,plain,(
% 1.71/0.98    r2_hidden(sK6,sK3) | ~v2_funct_1(sK4)),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f7,axiom,(
% 1.71/0.98    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f18,plain,(
% 1.71/0.98    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.71/0.98    inference(ennf_transformation,[],[f7])).
% 1.71/0.98  
% 1.71/0.98  fof(f52,plain,(
% 1.71/0.98    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f18])).
% 1.71/0.98  
% 1.71/0.98  fof(f2,axiom,(
% 1.71/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.71/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.98  
% 1.71/0.98  fof(f42,plain,(
% 1.71/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f2])).
% 1.71/0.98  
% 1.71/0.98  fof(f61,plain,(
% 1.71/0.98    k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) | ~v2_funct_1(sK4)),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  fof(f47,plain,(
% 1.71/0.98    ( ! [X4,X0,X3] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.71/0.98    inference(cnf_transformation,[],[f32])).
% 1.71/0.98  
% 1.71/0.98  fof(f62,plain,(
% 1.71/0.98    sK5 != sK6 | ~v2_funct_1(sK4)),
% 1.71/0.98    inference(cnf_transformation,[],[f38])).
% 1.71/0.98  
% 1.71/0.98  cnf(c_15,plain,
% 1.71/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.71/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.98      | ~ r2_hidden(X3,X1)
% 1.71/0.98      | ~ v1_funct_1(X0)
% 1.71/0.98      | ~ v2_funct_1(X0)
% 1.71/0.98      | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
% 1.71/0.98      | k1_xboole_0 = X2 ),
% 1.71/0.98      inference(cnf_transformation,[],[f54]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_22,negated_conjecture,
% 1.71/0.98      ( v1_funct_2(sK4,sK3,sK3) ),
% 1.71/0.98      inference(cnf_transformation,[],[f56]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_267,plain,
% 1.71/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.98      | ~ r2_hidden(X3,X1)
% 1.71/0.98      | ~ v1_funct_1(X0)
% 1.71/0.98      | ~ v2_funct_1(X0)
% 1.71/0.98      | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
% 1.71/0.98      | sK3 != X2
% 1.71/0.98      | sK3 != X1
% 1.71/0.98      | sK4 != X0
% 1.71/0.98      | k1_xboole_0 = X2 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_15,c_22]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_268,plain,
% 1.71/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
% 1.71/0.98      | ~ r2_hidden(X0,sK3)
% 1.71/0.98      | ~ v1_funct_1(sK4)
% 1.71/0.98      | ~ v2_funct_1(sK4)
% 1.71/0.98      | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 1.71/0.98      | k1_xboole_0 = sK3 ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_267]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_23,negated_conjecture,
% 1.71/0.98      ( v1_funct_1(sK4) ),
% 1.71/0.98      inference(cnf_transformation,[],[f55]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_21,negated_conjecture,
% 1.71/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) ),
% 1.71/0.98      inference(cnf_transformation,[],[f57]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_272,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,sK3)
% 1.71/0.98      | ~ v2_funct_1(sK4)
% 1.71/0.98      | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 1.71/0.98      | k1_xboole_0 = sK3 ),
% 1.71/0.98      inference(global_propositional_subsumption,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_268,c_23,c_21]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2045,plain,
% 1.71/0.98      ( ~ v2_funct_1(sK4) | sP1_iProver_split | k1_xboole_0 = sK3 ),
% 1.71/0.98      inference(splitting,
% 1.71/0.98                [splitting(split),new_symbols(definition,[])],
% 1.71/0.98                [c_272]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2443,plain,
% 1.71/0.98      ( k1_xboole_0 = sK3
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top
% 1.71/0.98      | sP1_iProver_split = iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2045]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_24,plain,
% 1.71/0.98      ( v1_funct_1(sK4) = iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_11,plain,
% 1.71/0.98      ( r2_hidden(sK1(X0),k1_relat_1(X0))
% 1.71/0.98      | ~ v1_funct_1(X0)
% 1.71/0.98      | v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f48]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_46,plain,
% 1.71/0.98      ( r2_hidden(sK1(X0),k1_relat_1(X0)) = iProver_top
% 1.71/0.98      | v1_funct_1(X0) != iProver_top
% 1.71/0.98      | v2_funct_1(X0) = iProver_top
% 1.71/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_48,plain,
% 1.71/0.98      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
% 1.71/0.98      | v1_funct_1(sK4) != iProver_top
% 1.71/0.98      | v2_funct_1(sK4) = iProver_top
% 1.71/0.98      | v1_relat_1(sK4) != iProver_top ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_46]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_10,plain,
% 1.71/0.98      ( r2_hidden(sK2(X0),k1_relat_1(X0))
% 1.71/0.98      | ~ v1_funct_1(X0)
% 1.71/0.98      | v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f49]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_49,plain,
% 1.71/0.98      ( r2_hidden(sK2(X0),k1_relat_1(X0)) = iProver_top
% 1.71/0.98      | v1_funct_1(X0) != iProver_top
% 1.71/0.98      | v2_funct_1(X0) = iProver_top
% 1.71/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_51,plain,
% 1.71/0.98      ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) = iProver_top
% 1.71/0.98      | v1_funct_1(sK4) != iProver_top
% 1.71/0.98      | v2_funct_1(sK4) = iProver_top
% 1.71/0.98      | v1_relat_1(sK4) != iProver_top ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_49]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_9,plain,
% 1.71/0.98      ( ~ v1_funct_1(X0)
% 1.71/0.98      | v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0)) ),
% 1.71/0.98      inference(cnf_transformation,[],[f50]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_52,plain,
% 1.71/0.98      ( k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
% 1.71/0.98      | v1_funct_1(X0) != iProver_top
% 1.71/0.98      | v2_funct_1(X0) = iProver_top
% 1.71/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_54,plain,
% 1.71/0.98      ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
% 1.71/0.98      | v1_funct_1(sK4) != iProver_top
% 1.71/0.98      | v2_funct_1(sK4) = iProver_top
% 1.71/0.98      | v1_relat_1(sK4) != iProver_top ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_52]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_8,plain,
% 1.71/0.98      ( ~ v1_funct_1(X0)
% 1.71/0.98      | v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | sK2(X0) != sK1(X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f51]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_55,plain,
% 1.71/0.98      ( sK2(X0) != sK1(X0)
% 1.71/0.98      | v1_funct_1(X0) != iProver_top
% 1.71/0.98      | v2_funct_1(X0) = iProver_top
% 1.71/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_57,plain,
% 1.71/0.98      ( sK2(sK4) != sK1(sK4)
% 1.71/0.98      | v1_funct_1(sK4) != iProver_top
% 1.71/0.98      | v2_funct_1(sK4) = iProver_top
% 1.71/0.98      | v1_relat_1(sK4) != iProver_top ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_55]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2081,plain,
% 1.71/0.98      ( k1_xboole_0 = sK3
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top
% 1.71/0.98      | sP1_iProver_split = iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2045]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2047,plain,( X0 = X0 ),theory(equality) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2654,plain,
% 1.71/0.98      ( k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) = k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2047]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_4,plain,
% 1.71/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.71/0.98      | ~ v1_relat_1(X1)
% 1.71/0.98      | v1_relat_1(X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f43]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_296,plain,
% 1.71/0.98      ( ~ v1_relat_1(X0)
% 1.71/0.98      | v1_relat_1(X1)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(X0)
% 1.71/0.98      | sK4 != X1 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_21]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_297,plain,
% 1.71/0.98      ( ~ v1_relat_1(X0)
% 1.71/0.98      | v1_relat_1(sK4)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(X0) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_296]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2442,plain,
% 1.71/0.98      ( k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(X0)
% 1.71/0.98      | v1_relat_1(X0) != iProver_top
% 1.71/0.98      | v1_relat_1(sK4) = iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_297]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2680,plain,
% 1.71/0.98      ( v1_relat_1(k2_zfmisc_1(sK3,sK3)) != iProver_top
% 1.71/0.98      | v1_relat_1(sK4) = iProver_top ),
% 1.71/0.98      inference(equality_resolution,[status(thm)],[c_2442]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_7,plain,
% 1.71/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.71/0.98      inference(cnf_transformation,[],[f46]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2682,plain,
% 1.71/0.98      ( v1_relat_1(k2_zfmisc_1(sK3,sK3)) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_7]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2683,plain,
% 1.71/0.98      ( v1_relat_1(k2_zfmisc_1(sK3,sK3)) = iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2682]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_20,negated_conjecture,
% 1.71/0.98      ( ~ r2_hidden(X0,sK3)
% 1.71/0.98      | ~ r2_hidden(X1,sK3)
% 1.71/0.98      | v2_funct_1(sK4)
% 1.71/0.98      | X1 = X0
% 1.71/0.98      | k1_funct_1(sK4,X1) != k1_funct_1(sK4,X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f58]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2751,plain,
% 1.71/0.98      ( ~ r2_hidden(sK2(sK4),sK3)
% 1.71/0.98      | ~ r2_hidden(sK1(sK4),sK3)
% 1.71/0.98      | v2_funct_1(sK4)
% 1.71/0.98      | k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
% 1.71/0.98      | sK2(sK4) = sK1(sK4) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_20]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2752,plain,
% 1.71/0.98      ( k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
% 1.71/0.98      | sK2(sK4) = sK1(sK4)
% 1.71/0.98      | r2_hidden(sK2(sK4),sK3) != iProver_top
% 1.71/0.98      | r2_hidden(sK1(sK4),sK3) != iProver_top
% 1.71/0.98      | v2_funct_1(sK4) = iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2751]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_6,plain,
% 1.71/0.98      ( ~ v4_relat_1(X0,X1)
% 1.71/0.98      | r1_tarski(k1_relat_1(X0),X1)
% 1.71/0.98      | ~ v1_relat_1(X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f44]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_14,plain,
% 1.71/0.98      ( v4_relat_1(X0,X1)
% 1.71/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.71/0.98      inference(cnf_transformation,[],[f53]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_309,plain,
% 1.71/0.98      ( v4_relat_1(X0,X1)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))
% 1.71/0.98      | sK4 != X0 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_14,c_21]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_310,plain,
% 1.71/0.98      ( v4_relat_1(sK4,X0)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_309]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_329,plain,
% 1.71/0.98      ( r1_tarski(k1_relat_1(X0),X1)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | X2 != X1
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))
% 1.71/0.98      | sK4 != X0 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_6,c_310]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_330,plain,
% 1.71/0.98      ( r1_tarski(k1_relat_1(sK4),X0)
% 1.71/0.98      | ~ v1_relat_1(sK4)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_329]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2767,plain,
% 1.71/0.98      ( r1_tarski(k1_relat_1(sK4),sK3)
% 1.71/0.98      | ~ v1_relat_1(sK4)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_330]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2768,plain,
% 1.71/0.98      ( k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))
% 1.71/0.98      | r1_tarski(k1_relat_1(sK4),sK3) = iProver_top
% 1.71/0.98      | v1_relat_1(sK4) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2767]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 1.71/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2726,plain,
% 1.71/0.98      ( r2_hidden(sK1(sK4),X0)
% 1.71/0.98      | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ r1_tarski(k1_relat_1(sK4),X0) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2911,plain,
% 1.71/0.98      ( ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 1.71/0.98      | r2_hidden(sK1(sK4),sK3)
% 1.71/0.98      | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2726]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2912,plain,
% 1.71/0.98      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) != iProver_top
% 1.71/0.98      | r2_hidden(sK1(sK4),sK3) = iProver_top
% 1.71/0.98      | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2911]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2739,plain,
% 1.71/0.98      ( r2_hidden(sK2(sK4),X0)
% 1.71/0.98      | ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ r1_tarski(k1_relat_1(sK4),X0) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2910,plain,
% 1.71/0.98      ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 1.71/0.98      | r2_hidden(sK2(sK4),sK3)
% 1.71/0.98      | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2739]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2914,plain,
% 1.71/0.98      ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) != iProver_top
% 1.71/0.98      | r2_hidden(sK2(sK4),sK3) = iProver_top
% 1.71/0.98      | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2910]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3138,plain,
% 1.71/0.98      ( k1_xboole_0 = sK3 | sP1_iProver_split = iProver_top ),
% 1.71/0.98      inference(global_propositional_subsumption,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_2443,c_24,c_48,c_51,c_54,c_57,c_2081,c_2654,c_2680,
% 1.71/0.98                 c_2683,c_2752,c_2768,c_2912,c_2914]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_19,negated_conjecture,
% 1.71/0.98      ( r2_hidden(sK5,sK3) | ~ v2_funct_1(sK4) ),
% 1.71/0.98      inference(cnf_transformation,[],[f59]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2446,plain,
% 1.71/0.98      ( r2_hidden(sK5,sK3) = iProver_top
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2044,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,sK3)
% 1.71/0.98      | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 1.71/0.98      | ~ sP1_iProver_split ),
% 1.71/0.98      inference(splitting,
% 1.71/0.98                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.71/0.98                [c_272]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2444,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 1.71/0.98      | r2_hidden(X0,sK3) != iProver_top
% 1.71/0.98      | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_2044]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2978,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top
% 1.71/0.98      | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(superposition,[status(thm)],[c_2446,c_2444]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3018,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
% 1.71/0.98      | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(global_propositional_subsumption,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_2978,c_24,c_48,c_51,c_54,c_57,c_2654,c_2680,c_2683,
% 1.71/0.98                 c_2752,c_2768,c_2912,c_2914]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3144,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
% 1.71/0.98      | sK3 = k1_xboole_0 ),
% 1.71/0.98      inference(superposition,[status(thm)],[c_3138,c_3018]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_18,negated_conjecture,
% 1.71/0.98      ( r2_hidden(sK6,sK3) | ~ v2_funct_1(sK4) ),
% 1.71/0.98      inference(cnf_transformation,[],[f60]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2447,plain,
% 1.71/0.98      ( r2_hidden(sK6,sK3) = iProver_top
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_13,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f52]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2450,plain,
% 1.71/0.98      ( r2_hidden(X0,X1) != iProver_top
% 1.71/0.98      | r1_tarski(X1,X0) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2788,plain,
% 1.71/0.98      ( r1_tarski(sK3,sK6) != iProver_top
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top ),
% 1.71/0.98      inference(superposition,[status(thm)],[c_2447,c_2450]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2798,plain,
% 1.71/0.98      ( ~ r1_tarski(sK3,sK6) | ~ v2_funct_1(sK4) ),
% 1.71/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_2788]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_361,plain,
% 1.71/0.98      ( r2_hidden(sK2(X0),k1_relat_1(X0))
% 1.71/0.98      | v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | sK4 != X0 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_10,c_23]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_362,plain,
% 1.71/0.98      ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 1.71/0.98      | v2_funct_1(sK4)
% 1.71/0.98      | ~ v1_relat_1(sK4) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_361]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2439,plain,
% 1.71/0.98      ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) = iProver_top
% 1.71/0.98      | v2_funct_1(sK4) = iProver_top
% 1.71/0.98      | v1_relat_1(sK4) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_362]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3155,plain,
% 1.71/0.98      ( v2_funct_1(sK4) = iProver_top ),
% 1.71/0.98      inference(global_propositional_subsumption,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_2439,c_24,c_48,c_51,c_54,c_57,c_2654,c_2680,c_2683,
% 1.71/0.98                 c_2752,c_2768,c_2912,c_2914]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3157,plain,
% 1.71/0.98      ( v2_funct_1(sK4) ),
% 1.71/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_3155]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2049,plain,
% 1.71/0.98      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 1.71/0.98      theory(equality) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3326,plain,
% 1.71/0.98      ( ~ r1_tarski(X0,sK6) | r1_tarski(sK3,sK6) | sK3 != X0 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2049]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3673,plain,
% 1.71/0.98      ( r1_tarski(sK3,sK6)
% 1.71/0.98      | ~ r1_tarski(k1_xboole_0,sK6)
% 1.71/0.98      | sK3 != k1_xboole_0 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_3326]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3,plain,
% 1.71/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 1.71/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3674,plain,
% 1.71/0.98      ( r1_tarski(k1_xboole_0,sK6) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3886,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5 ),
% 1.71/0.98      inference(global_propositional_subsumption,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_3144,c_2798,c_3157,c_3673,c_3674]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_17,negated_conjecture,
% 1.71/0.98      ( ~ v2_funct_1(sK4) | k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) ),
% 1.71/0.98      inference(cnf_transformation,[],[f61]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2448,plain,
% 1.71/0.98      ( k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top ),
% 1.71/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3161,plain,
% 1.71/0.98      ( k1_funct_1(sK4,sK6) = k1_funct_1(sK4,sK5) ),
% 1.71/0.98      inference(superposition,[status(thm)],[c_3155,c_2448]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2977,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
% 1.71/0.98      | v2_funct_1(sK4) != iProver_top
% 1.71/0.98      | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(superposition,[status(thm)],[c_2447,c_2444]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3011,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
% 1.71/0.98      | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(global_propositional_subsumption,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_2977,c_24,c_48,c_51,c_54,c_57,c_2654,c_2680,c_2683,
% 1.71/0.98                 c_2752,c_2768,c_2912,c_2914]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3244,plain,
% 1.71/0.98      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6
% 1.71/0.98      | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(demodulation,[status(thm)],[c_3161,c_3011]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3889,plain,
% 1.71/0.98      ( sK6 = sK5 | sP1_iProver_split != iProver_top ),
% 1.71/0.98      inference(demodulation,[status(thm)],[c_3886,c_3244]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2048,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2782,plain,
% 1.71/0.98      ( X0 != X1 | sK3 != X1 | sK3 = X0 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2048]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2957,plain,
% 1.71/0.98      ( X0 != sK3 | sK3 = X0 | sK3 != sK3 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2782]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3601,plain,
% 1.71/0.98      ( sK3 != sK3 | sK3 = k1_xboole_0 | k1_xboole_0 != sK3 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2957]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_12,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.71/0.98      | ~ r2_hidden(X2,k1_relat_1(X1))
% 1.71/0.98      | ~ v1_funct_1(X1)
% 1.71/0.98      | ~ v2_funct_1(X1)
% 1.71/0.98      | ~ v1_relat_1(X1)
% 1.71/0.98      | X0 = X2
% 1.71/0.98      | k1_funct_1(X1,X0) != k1_funct_1(X1,X2) ),
% 1.71/0.98      inference(cnf_transformation,[],[f47]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_400,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.71/0.98      | ~ r2_hidden(X2,k1_relat_1(X1))
% 1.71/0.98      | ~ v2_funct_1(X1)
% 1.71/0.98      | ~ v1_relat_1(X1)
% 1.71/0.98      | X2 = X0
% 1.71/0.98      | k1_funct_1(X1,X2) != k1_funct_1(X1,X0)
% 1.71/0.98      | sK4 != X1 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_12,c_23]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_401,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 1.71/0.98      | ~ r2_hidden(X1,k1_relat_1(sK4))
% 1.71/0.98      | ~ v2_funct_1(sK4)
% 1.71/0.98      | ~ v1_relat_1(sK4)
% 1.71/0.98      | X0 = X1
% 1.71/0.98      | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_400]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2042,plain,
% 1.71/0.98      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 1.71/0.98      | ~ r2_hidden(X1,k1_relat_1(sK4))
% 1.71/0.98      | X0 = X1
% 1.71/0.98      | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1)
% 1.71/0.98      | ~ sP0_iProver_split ),
% 1.71/0.98      inference(splitting,
% 1.71/0.98                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.71/0.98                [c_401]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3229,plain,
% 1.71/0.98      ( ~ r2_hidden(sK2(X0),k1_relat_1(sK4))
% 1.71/0.98      | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ sP0_iProver_split
% 1.71/0.98      | k1_funct_1(sK4,sK1(sK4)) != k1_funct_1(sK4,sK2(X0))
% 1.71/0.98      | sK1(sK4) = sK2(X0) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2042]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_3231,plain,
% 1.71/0.98      ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ sP0_iProver_split
% 1.71/0.98      | k1_funct_1(sK4,sK1(sK4)) != k1_funct_1(sK4,sK2(sK4))
% 1.71/0.98      | sK1(sK4) = sK2(sK4) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_3229]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2754,plain,
% 1.71/0.98      ( sK2(sK4) != X0 | sK2(sK4) = sK1(sK4) | sK1(sK4) != X0 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2048]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2863,plain,
% 1.71/0.98      ( sK2(sK4) != sK2(sK4)
% 1.71/0.98      | sK2(sK4) = sK1(sK4)
% 1.71/0.98      | sK1(sK4) != sK2(sK4) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2754]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2780,plain,
% 1.71/0.98      ( sK3 = sK3 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2047]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2620,plain,
% 1.71/0.98      ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
% 1.71/0.98      | v1_relat_1(sK4)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_297]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2653,plain,
% 1.71/0.98      ( ~ v1_relat_1(k2_zfmisc_1(sK3,sK3))
% 1.71/0.98      | v1_relat_1(sK4)
% 1.71/0.98      | k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)) ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2620]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2043,plain,
% 1.71/0.98      ( ~ v2_funct_1(sK4) | ~ v1_relat_1(sK4) | sP0_iProver_split ),
% 1.71/0.98      inference(splitting,
% 1.71/0.98                [splitting(split),new_symbols(definition,[])],
% 1.71/0.98                [c_401]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2072,plain,
% 1.71/0.98      ( sK4 = sK4 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2047]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2057,plain,( X0 != X1 | sK2(X0) = sK2(X1) ),theory(equality) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_2068,plain,
% 1.71/0.98      ( sK2(sK4) = sK2(sK4) | sK4 != sK4 ),
% 1.71/0.98      inference(instantiation,[status(thm)],[c_2057]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_348,plain,
% 1.71/0.98      ( r2_hidden(sK1(X0),k1_relat_1(X0))
% 1.71/0.98      | v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | sK4 != X0 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_11,c_23]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_349,plain,
% 1.71/0.98      ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 1.71/0.98      | v2_funct_1(sK4)
% 1.71/0.98      | ~ v1_relat_1(sK4) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_348]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_16,negated_conjecture,
% 1.71/0.98      ( ~ v2_funct_1(sK4) | sK5 != sK6 ),
% 1.71/0.98      inference(cnf_transformation,[],[f62]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_921,plain,
% 1.71/0.98      ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ v1_relat_1(sK4)
% 1.71/0.98      | sK6 != sK5 ),
% 1.71/0.98      inference(resolution,[status(thm)],[c_349,c_16]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_830,plain,
% 1.71/0.98      ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 1.71/0.98      | ~ v1_relat_1(sK4)
% 1.71/0.98      | sK6 != sK5 ),
% 1.71/0.98      inference(resolution,[status(thm)],[c_362,c_16]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_374,plain,
% 1.71/0.98      ( v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
% 1.71/0.98      | sK4 != X0 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_9,c_23]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_375,plain,
% 1.71/0.98      ( v2_funct_1(sK4)
% 1.71/0.98      | ~ v1_relat_1(sK4)
% 1.71/0.98      | k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4)) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_374]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_739,plain,
% 1.71/0.98      ( ~ v1_relat_1(sK4)
% 1.71/0.98      | k1_funct_1(sK4,sK1(sK4)) = k1_funct_1(sK4,sK2(sK4))
% 1.71/0.98      | sK6 != sK5 ),
% 1.71/0.98      inference(resolution,[status(thm)],[c_375,c_16]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_387,plain,
% 1.71/0.98      ( v2_funct_1(X0)
% 1.71/0.98      | ~ v1_relat_1(X0)
% 1.71/0.98      | sK2(X0) != sK1(X0)
% 1.71/0.98      | sK4 != X0 ),
% 1.71/0.98      inference(resolution_lifted,[status(thm)],[c_8,c_23]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_388,plain,
% 1.71/0.98      ( v2_funct_1(sK4) | ~ v1_relat_1(sK4) | sK2(sK4) != sK1(sK4) ),
% 1.71/0.98      inference(unflattening,[status(thm)],[c_387]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(c_648,plain,
% 1.71/0.98      ( ~ v1_relat_1(sK4) | sK2(sK4) != sK1(sK4) | sK6 != sK5 ),
% 1.71/0.98      inference(resolution,[status(thm)],[c_388,c_16]) ).
% 1.71/0.98  
% 1.71/0.98  cnf(contradiction,plain,
% 1.71/0.98      ( $false ),
% 1.71/0.98      inference(minisat,
% 1.71/0.98                [status(thm)],
% 1.71/0.98                [c_3889,c_3674,c_3673,c_3601,c_3231,c_3157,c_3155,c_2863,
% 1.71/0.98                 c_2798,c_2780,c_2682,c_2654,c_2653,c_2081,c_2043,c_2072,
% 1.71/0.98                 c_2068,c_921,c_830,c_739,c_648]) ).
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.71/0.98  
% 1.71/0.98  ------                               Statistics
% 1.71/0.98  
% 1.71/0.98  ------ General
% 1.71/0.98  
% 1.71/0.98  abstr_ref_over_cycles:                  0
% 1.71/0.98  abstr_ref_under_cycles:                 0
% 1.71/0.98  gc_basic_clause_elim:                   0
% 1.71/0.98  forced_gc_time:                         0
% 1.71/0.98  parsing_time:                           0.008
% 1.71/0.98  unif_index_cands_time:                  0.
% 1.71/0.98  unif_index_add_time:                    0.
% 1.71/0.98  orderings_time:                         0.
% 1.71/0.98  out_proof_time:                         0.009
% 1.71/0.98  total_time:                             0.121
% 1.71/0.98  num_of_symbols:                         54
% 1.71/0.98  num_of_terms:                           1608
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing
% 1.71/0.98  
% 1.71/0.98  num_of_splits:                          2
% 1.71/0.98  num_of_split_atoms:                     2
% 1.71/0.98  num_of_reused_defs:                     0
% 1.71/0.98  num_eq_ax_congr_red:                    15
% 1.71/0.98  num_of_sem_filtered_clauses:            1
% 1.71/0.98  num_of_subtypes:                        0
% 1.71/0.98  monotx_restored_types:                  0
% 1.71/0.98  sat_num_of_epr_types:                   0
% 1.71/0.98  sat_num_of_non_cyclic_types:            0
% 1.71/0.98  sat_guarded_non_collapsed_types:        0
% 1.71/0.98  num_pure_diseq_elim:                    0
% 1.71/0.98  simp_replaced_by:                       0
% 1.71/0.98  res_preprocessed:                       112
% 1.71/0.98  prep_upred:                             0
% 1.71/0.98  prep_unflattend:                        44
% 1.71/0.98  smt_new_axioms:                         0
% 1.71/0.98  pred_elim_cands:                        4
% 1.71/0.98  pred_elim:                              4
% 1.71/0.98  pred_elim_cl:                           5
% 1.71/0.98  pred_elim_cycles:                       8
% 1.71/0.98  merged_defs:                            0
% 1.71/0.98  merged_defs_ncl:                        0
% 1.71/0.98  bin_hyper_res:                          0
% 1.71/0.98  prep_cycles:                            4
% 1.71/0.98  pred_elim_time:                         0.026
% 1.71/0.98  splitting_time:                         0.
% 1.71/0.98  sem_filter_time:                        0.
% 1.71/0.98  monotx_time:                            0.
% 1.71/0.98  subtype_inf_time:                       0.
% 1.71/0.98  
% 1.71/0.98  ------ Problem properties
% 1.71/0.98  
% 1.71/0.98  clauses:                                21
% 1.71/0.98  conjectures:                            5
% 1.71/0.98  epr:                                    8
% 1.71/0.98  horn:                                   15
% 1.71/0.98  ground:                                 10
% 1.71/0.98  unary:                                  2
% 1.71/0.98  binary:                                 7
% 1.71/0.98  lits:                                   56
% 1.71/0.98  lits_eq:                                12
% 1.71/0.98  fd_pure:                                0
% 1.71/0.98  fd_pseudo:                              0
% 1.71/0.98  fd_cond:                                0
% 1.71/0.98  fd_pseudo_cond:                         2
% 1.71/0.98  ac_symbols:                             0
% 1.71/0.98  
% 1.71/0.98  ------ Propositional Solver
% 1.71/0.98  
% 1.71/0.98  prop_solver_calls:                      29
% 1.71/0.98  prop_fast_solver_calls:                 1051
% 1.71/0.98  smt_solver_calls:                       0
% 1.71/0.98  smt_fast_solver_calls:                  0
% 1.71/0.98  prop_num_of_clauses:                    839
% 1.71/0.98  prop_preprocess_simplified:             3980
% 1.71/0.98  prop_fo_subsumed:                       20
% 1.71/0.98  prop_solver_time:                       0.
% 1.71/0.98  smt_solver_time:                        0.
% 1.71/0.98  smt_fast_solver_time:                   0.
% 1.71/0.98  prop_fast_solver_time:                  0.
% 1.71/0.98  prop_unsat_core_time:                   0.
% 1.71/0.98  
% 1.71/0.98  ------ QBF
% 1.71/0.98  
% 1.71/0.98  qbf_q_res:                              0
% 1.71/0.98  qbf_num_tautologies:                    0
% 1.71/0.98  qbf_prep_cycles:                        0
% 1.71/0.98  
% 1.71/0.98  ------ BMC1
% 1.71/0.98  
% 1.71/0.98  bmc1_current_bound:                     -1
% 1.71/0.98  bmc1_last_solved_bound:                 -1
% 1.71/0.98  bmc1_unsat_core_size:                   -1
% 1.71/0.98  bmc1_unsat_core_parents_size:           -1
% 1.71/0.98  bmc1_merge_next_fun:                    0
% 1.71/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.71/0.98  
% 1.71/0.98  ------ Instantiation
% 1.71/0.98  
% 1.71/0.98  inst_num_of_clauses:                    236
% 1.71/0.98  inst_num_in_passive:                    24
% 1.71/0.99  inst_num_in_active:                     161
% 1.71/0.99  inst_num_in_unprocessed:                51
% 1.71/0.99  inst_num_of_loops:                      190
% 1.71/0.99  inst_num_of_learning_restarts:          0
% 1.71/0.99  inst_num_moves_active_passive:          24
% 1.71/0.99  inst_lit_activity:                      0
% 1.71/0.99  inst_lit_activity_moves:                0
% 1.71/0.99  inst_num_tautologies:                   0
% 1.71/0.99  inst_num_prop_implied:                  0
% 1.71/0.99  inst_num_existing_simplified:           0
% 1.71/0.99  inst_num_eq_res_simplified:             0
% 1.71/0.99  inst_num_child_elim:                    0
% 1.71/0.99  inst_num_of_dismatching_blockings:      26
% 1.71/0.99  inst_num_of_non_proper_insts:           232
% 1.71/0.99  inst_num_of_duplicates:                 0
% 1.71/0.99  inst_inst_num_from_inst_to_res:         0
% 1.71/0.99  inst_dismatching_checking_time:         0.
% 1.71/0.99  
% 1.71/0.99  ------ Resolution
% 1.71/0.99  
% 1.71/0.99  res_num_of_clauses:                     0
% 1.71/0.99  res_num_in_passive:                     0
% 1.71/0.99  res_num_in_active:                      0
% 1.71/0.99  res_num_of_loops:                       116
% 1.71/0.99  res_forward_subset_subsumed:            37
% 1.71/0.99  res_backward_subset_subsumed:           0
% 1.71/0.99  res_forward_subsumed:                   0
% 1.71/0.99  res_backward_subsumed:                  1
% 1.71/0.99  res_forward_subsumption_resolution:     0
% 1.71/0.99  res_backward_subsumption_resolution:    0
% 1.71/0.99  res_clause_to_clause_subsumption:       111
% 1.71/0.99  res_orphan_elimination:                 0
% 1.71/0.99  res_tautology_del:                      25
% 1.71/0.99  res_num_eq_res_simplified:              0
% 1.71/0.99  res_num_sel_changes:                    0
% 1.71/0.99  res_moves_from_active_to_pass:          0
% 1.71/0.99  
% 1.71/0.99  ------ Superposition
% 1.71/0.99  
% 1.71/0.99  sup_time_total:                         0.
% 1.71/0.99  sup_time_generating:                    0.
% 1.71/0.99  sup_time_sim_full:                      0.
% 1.71/0.99  sup_time_sim_immed:                     0.
% 1.71/0.99  
% 1.71/0.99  sup_num_of_clauses:                     42
% 1.71/0.99  sup_num_in_active:                      30
% 1.71/0.99  sup_num_in_passive:                     12
% 1.71/0.99  sup_num_of_loops:                       37
% 1.71/0.99  sup_fw_superposition:                   16
% 1.71/0.99  sup_bw_superposition:                   19
% 1.71/0.99  sup_immediate_simplified:               1
% 1.71/0.99  sup_given_eliminated:                   0
% 1.71/0.99  comparisons_done:                       0
% 1.71/0.99  comparisons_avoided:                    0
% 1.71/0.99  
% 1.71/0.99  ------ Simplifications
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  sim_fw_subset_subsumed:                 1
% 1.71/0.99  sim_bw_subset_subsumed:                 4
% 1.71/0.99  sim_fw_subsumed:                        0
% 1.71/0.99  sim_bw_subsumed:                        0
% 1.71/0.99  sim_fw_subsumption_res:                 0
% 1.71/0.99  sim_bw_subsumption_res:                 0
% 1.71/0.99  sim_tautology_del:                      1
% 1.71/0.99  sim_eq_tautology_del:                   4
% 1.71/0.99  sim_eq_res_simp:                        0
% 1.71/0.99  sim_fw_demodulated:                     0
% 1.71/0.99  sim_bw_demodulated:                     3
% 1.71/0.99  sim_light_normalised:                   0
% 1.71/0.99  sim_joinable_taut:                      0
% 1.71/0.99  sim_joinable_simp:                      0
% 1.71/0.99  sim_ac_normalised:                      0
% 1.71/0.99  sim_smt_subsumption:                    0
% 1.71/0.99  
%------------------------------------------------------------------------------
