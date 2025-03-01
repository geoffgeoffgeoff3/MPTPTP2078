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
% DateTime   : Thu Dec  3 12:09:56 EST 2020

% Result     : Theorem 1.79s
% Output     : CNFRefutation 1.79s
% Verified   : 
% Statistics : Number of formulae       :  155 ( 427 expanded)
%              Number of clauses        :   96 ( 127 expanded)
%              Number of leaves         :   20 ( 143 expanded)
%              Depth                    :   20
%              Number of atoms          :  538 (3240 expanded)
%              Number of equality atoms :  172 ( 815 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
             => ! [X5] :
                  ( m1_subset_1(X5,X1)
                 => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                   => ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                      | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ~ v1_xboole_0(X2)
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
              & v1_funct_2(X3,X1,X2)
              & v1_funct_1(X3) )
           => ! [X4] :
                ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                  & v1_funct_1(X4) )
               => ! [X5] :
                    ( m1_subset_1(X5,X1)
                   => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                     => ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                        | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f28,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  & k1_xboole_0 != X1
                  & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
      & ~ v1_xboole_0(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f29,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  & k1_xboole_0 != X1
                  & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
      & ~ v1_xboole_0(X2) ) ),
    inference(flattening,[],[f28])).

fof(f37,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
          & k1_xboole_0 != X1
          & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
          & m1_subset_1(X5,X1) )
     => ( k7_partfun1(X0,X4,k1_funct_1(X3,sK6)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),sK6)
        & k1_xboole_0 != X1
        & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
        & m1_subset_1(sK6,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
              & k1_xboole_0 != X1
              & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
              & m1_subset_1(X5,X1) )
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( k7_partfun1(X0,sK5,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,sK5),X5)
            & k1_xboole_0 != X1
            & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,sK5))
            & m1_subset_1(X5,X1) )
        & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
        & v1_funct_1(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  & k1_xboole_0 != X1
                  & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( k7_partfun1(X0,X4,k1_funct_1(sK4,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,sK4,X4),X5)
                & k1_xboole_0 != X1
                & r1_tarski(k2_relset_1(X1,X2,sK4),k1_relset_1(X2,X0,X4))
                & m1_subset_1(X5,X1) )
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
            & v1_funct_1(X4) )
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_2(sK4,X1,X2)
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ? [X4] :
                ( ? [X5] :
                    ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                    & k1_xboole_0 != X1
                    & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                    & m1_subset_1(X5,X1) )
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
        & ~ v1_xboole_0(X2) )
   => ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(sK1,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,X3,X4),X5)
                  & k1_xboole_0 != sK2
                  & r1_tarski(k2_relset_1(sK2,sK3,X3),k1_relset_1(sK3,sK1,X4))
                  & m1_subset_1(X5,sK2) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
          & v1_funct_2(X3,sK2,sK3)
          & v1_funct_1(X3) )
      & ~ v1_xboole_0(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6)
    & k1_xboole_0 != sK2
    & r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5))
    & m1_subset_1(sK6,sK2)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1)))
    & v1_funct_1(sK5)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    & v1_funct_2(sK4,sK2,sK3)
    & v1_funct_1(sK4)
    & ~ v1_xboole_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5,sK6])],[f29,f37,f36,f35,f34])).

fof(f58,plain,(
    m1_subset_1(sK6,sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f18,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f17])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f60,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f38])).

fof(f3,axiom,(
    ! [X0,X1] :
      ~ ( v1_xboole_0(X1)
        & X0 != X1
        & v1_xboole_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f26])).

fof(f51,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f54,plain,(
    v1_funct_2(sK4,sK2,sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f53,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f55,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f38])).

fof(f52,plain,(
    ~ v1_xboole_0(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f59,plain,(
    r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f30])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f31,f32])).

fof(f39,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( r2_hidden(X2,k1_relat_1(X1))
         => k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)
          | ~ r2_hidden(X2,k1_relat_1(X1)) )
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)
          | ~ r2_hidden(X2,k1_relat_1(X1)) )
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)
      | ~ r2_hidden(X2,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f56,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f45,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f6,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
             => ! [X5] :
                  ( m1_subset_1(X5,X1)
                 => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                   => ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                      | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ! [X4] :
              ( ! [X5] :
                  ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  | k1_xboole_0 = X1
                  | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  | ~ m1_subset_1(X5,X1) )
              | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              | ~ v1_funct_1(X4) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X3,X1,X2)
          | ~ v1_funct_1(X3) )
      | v1_xboole_0(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ! [X4] :
              ( ! [X5] :
                  ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  | k1_xboole_0 = X1
                  | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  | ~ m1_subset_1(X5,X1) )
              | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              | ~ v1_funct_1(X4) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X3,X1,X2)
          | ~ v1_funct_1(X3) )
      | v1_xboole_0(X2) ) ),
    inference(flattening,[],[f24])).

fof(f50,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
      | k1_xboole_0 = X1
      | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
      | ~ m1_subset_1(X5,X1)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_2(X3,X1,X2)
      | ~ v1_funct_1(X3)
      | v1_xboole_0(X2) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f61,plain,(
    k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK6,sK2) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_901,negated_conjecture,
    ( m1_subset_1(sK6,sK2) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1309,plain,
    ( m1_subset_1(sK6,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_901])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_908,plain,
    ( ~ m1_subset_1(X0_52,X0_53)
    | r2_hidden(X0_52,X0_53)
    | v1_xboole_0(X0_53) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_1304,plain,
    ( m1_subset_1(X0_52,X0_53) != iProver_top
    | r2_hidden(X0_52,X0_53) = iProver_top
    | v1_xboole_0(X0_53) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_908])).

cnf(c_2019,plain,
    ( r2_hidden(sK6,sK2) = iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1309,c_1304])).

cnf(c_29,plain,
    ( m1_subset_1(sK6,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_54,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_14,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_903,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_4,plain,
    ( ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(X1)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_909,plain,
    ( ~ v1_xboole_0(X0_53)
    | ~ v1_xboole_0(X1_53)
    | X0_53 = X1_53 ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_1470,plain,
    ( ~ v1_xboole_0(sK2)
    | ~ v1_xboole_0(k1_xboole_0)
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_909])).

cnf(c_1471,plain,
    ( k1_xboole_0 = sK2
    | v1_xboole_0(sK2) != iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1470])).

cnf(c_1487,plain,
    ( ~ m1_subset_1(sK6,sK2)
    | r2_hidden(sK6,sK2)
    | v1_xboole_0(sK2) ),
    inference(instantiation,[status(thm)],[c_908])).

cnf(c_1488,plain,
    ( m1_subset_1(sK6,sK2) != iProver_top
    | r2_hidden(sK6,sK2) = iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1487])).

cnf(c_2246,plain,
    ( r2_hidden(sK6,sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2019,c_29,c_54,c_903,c_1471,c_1488])).

cnf(c_12,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_20,negated_conjecture,
    ( v1_funct_2(sK4,sK2,sK3) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_256,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | sK3 != X2
    | sK2 != X1
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_20])).

cnf(c_257,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | ~ r2_hidden(X0,sK2)
    | r2_hidden(k1_funct_1(sK4,X0),k2_relset_1(sK2,sK3,sK4))
    | ~ v1_funct_1(sK4)
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_256])).

cnf(c_21,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_261,plain,
    ( r2_hidden(k1_funct_1(sK4,X0),k2_relset_1(sK2,sK3,sK4))
    | ~ r2_hidden(X0,sK2)
    | k1_xboole_0 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_257,c_21,c_19])).

cnf(c_262,plain,
    ( ~ r2_hidden(X0,sK2)
    | r2_hidden(k1_funct_1(sK4,X0),k2_relset_1(sK2,sK3,sK4))
    | k1_xboole_0 = sK3 ),
    inference(renaming,[status(thm)],[c_261])).

cnf(c_897,plain,
    ( ~ r2_hidden(X0_52,sK2)
    | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4))
    | k1_xboole_0 = sK3 ),
    inference(subtyping,[status(esa)],[c_262])).

cnf(c_1313,plain,
    ( k1_xboole_0 = sK3
    | r2_hidden(X0_52,sK2) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_897])).

cnf(c_22,negated_conjecture,
    ( ~ v1_xboole_0(sK3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_916,plain,
    ( X0_53 = X0_53 ),
    theory(equality)).

cnf(c_947,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_916])).

cnf(c_966,plain,
    ( k1_xboole_0 = sK3
    | r2_hidden(X0_52,sK2) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_897])).

cnf(c_921,plain,
    ( ~ v1_xboole_0(X0_53)
    | v1_xboole_0(X1_53)
    | X1_53 != X0_53 ),
    theory(equality)).

cnf(c_1473,plain,
    ( v1_xboole_0(X0_53)
    | ~ v1_xboole_0(k1_xboole_0)
    | X0_53 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_921])).

cnf(c_1475,plain,
    ( v1_xboole_0(sK3)
    | ~ v1_xboole_0(k1_xboole_0)
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1473])).

cnf(c_918,plain,
    ( X0_53 != X1_53
    | X2_53 != X1_53
    | X2_53 = X0_53 ),
    theory(equality)).

cnf(c_1643,plain,
    ( X0_53 != X1_53
    | X0_53 = k1_xboole_0
    | k1_xboole_0 != X1_53 ),
    inference(instantiation,[status(thm)],[c_918])).

cnf(c_1644,plain,
    ( sK3 != sK3
    | sK3 = k1_xboole_0
    | k1_xboole_0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1643])).

cnf(c_2357,plain,
    ( r2_hidden(X0_52,sK2) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1313,c_22,c_3,c_947,c_966,c_1475,c_1644])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_900,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_1310,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_900])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_905,plain,
    ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
    | k1_relset_1(X0_53,X1_53,X0_52) = k1_relat_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1307,plain,
    ( k1_relset_1(X0_53,X1_53,X0_52) = k1_relat_1(X0_52)
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_905])).

cnf(c_2040,plain,
    ( k1_relset_1(sK3,sK1,sK5) = k1_relat_1(sK5) ),
    inference(superposition,[status(thm)],[c_1310,c_1307])).

cnf(c_15,negated_conjecture,
    ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_902,negated_conjecture,
    ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1308,plain,
    ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_902])).

cnf(c_2129,plain,
    ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relat_1(sK5)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2040,c_1308])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_911,plain,
    ( ~ r2_hidden(X0_52,X0_53)
    | r2_hidden(X0_52,X1_53)
    | ~ r1_tarski(X0_53,X1_53) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1301,plain,
    ( r2_hidden(X0_52,X0_53) != iProver_top
    | r2_hidden(X0_52,X1_53) = iProver_top
    | r1_tarski(X0_53,X1_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_911])).

cnf(c_2184,plain,
    ( r2_hidden(X0_52,k2_relset_1(sK2,sK3,sK4)) != iProver_top
    | r2_hidden(X0_52,k1_relat_1(sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2129,c_1301])).

cnf(c_2455,plain,
    ( r2_hidden(X0_52,sK2) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0_52),k1_relat_1(sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2357,c_2184])).

cnf(c_8,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_10,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ r2_hidden(X2,k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k7_partfun1(X1,X0,X2) = k1_funct_1(X0,X2) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_230,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
    inference(resolution,[status(thm)],[c_8,c_10])).

cnf(c_18,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_332,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_230,c_18])).

cnf(c_333,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r2_hidden(X2,k1_relat_1(sK5))
    | ~ v1_relat_1(sK5)
    | k7_partfun1(X1,sK5,X2) = k1_funct_1(sK5,X2) ),
    inference(unflattening,[status(thm)],[c_332])).

cnf(c_895,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
    | ~ r2_hidden(X0_52,k1_relat_1(sK5))
    | ~ v1_relat_1(sK5)
    | k7_partfun1(X1_53,sK5,X0_52) = k1_funct_1(sK5,X0_52) ),
    inference(subtyping,[status(esa)],[c_333])).

cnf(c_1315,plain,
    ( k7_partfun1(X0_53,sK5,X0_52) = k1_funct_1(sK5,X0_52)
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X1_53,X0_53))) != iProver_top
    | r2_hidden(X0_52,k1_relat_1(sK5)) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_895])).

cnf(c_1532,plain,
    ( k7_partfun1(sK1,sK5,X0_52) = k1_funct_1(sK5,X0_52)
    | r2_hidden(X0_52,k1_relat_1(sK5)) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1310,c_1315])).

cnf(c_2474,plain,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,X0_52)) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
    | r2_hidden(X0_52,sK2) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_2455,c_1532])).

cnf(c_28,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_907,plain,
    ( ~ m1_subset_1(X0_52,k1_zfmisc_1(X1_52))
    | ~ v1_relat_1(X1_52)
    | v1_relat_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_1465,plain,
    ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
    | v1_relat_1(X0_52)
    | ~ v1_relat_1(k2_zfmisc_1(X0_53,X1_53)) ),
    inference(instantiation,[status(thm)],[c_907])).

cnf(c_1645,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1)))
    | ~ v1_relat_1(k2_zfmisc_1(sK3,sK1))
    | v1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_1465])).

cnf(c_1646,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK3,sK1)) != iProver_top
    | v1_relat_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1645])).

cnf(c_7,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_906,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_53,X1_53)) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1856,plain,
    ( v1_relat_1(k2_zfmisc_1(sK3,sK1)) ),
    inference(instantiation,[status(thm)],[c_906])).

cnf(c_1857,plain,
    ( v1_relat_1(k2_zfmisc_1(sK3,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1856])).

cnf(c_2503,plain,
    ( r2_hidden(X0_52,sK2) != iProver_top
    | k7_partfun1(sK1,sK5,k1_funct_1(sK4,X0_52)) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2474,c_28,c_1646,c_1857])).

cnf(c_2504,plain,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,X0_52)) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
    | r2_hidden(X0_52,sK2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2503])).

cnf(c_2512,plain,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) = k1_funct_1(sK5,k1_funct_1(sK4,sK6)) ),
    inference(superposition,[status(thm)],[c_2246,c_2504])).

cnf(c_11,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X5)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relset_1(X1,X2,X0),k1_relset_1(X2,X5,X4))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | k1_funct_1(k8_funct_2(X1,X2,X5,X0,X4),X3) = k1_funct_1(X4,k1_funct_1(X0,X3))
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_277,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X5)))
    | ~ r1_tarski(k2_relset_1(X1,X3,X2),k1_relset_1(X3,X5,X4))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X4)
    | v1_xboole_0(X3)
    | k1_funct_1(k8_funct_2(X1,X3,X5,X2,X4),X0) = k1_funct_1(X4,k1_funct_1(X2,X0))
    | sK3 != X3
    | sK2 != X1
    | sK4 != X2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_20])).

cnf(c_278,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
    | ~ m1_subset_1(X2,sK2)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK4)
    | v1_xboole_0(sK3)
    | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2))
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_277])).

cnf(c_282,plain,
    ( k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2))
    | ~ v1_funct_1(X0)
    | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
    | ~ m1_subset_1(X2,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_278,c_22,c_21,c_19,c_14])).

cnf(c_283,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
    | ~ m1_subset_1(X2,sK2)
    | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
    | ~ v1_funct_1(X0)
    | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2)) ),
    inference(renaming,[status(thm)],[c_282])).

cnf(c_314,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
    | ~ m1_subset_1(X2,sK2)
    | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
    | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_283,c_18])).

cnf(c_315,plain,
    ( ~ m1_subset_1(X0,sK2)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
    | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,sK5))
    | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,sK5),X0) = k1_funct_1(sK5,k1_funct_1(sK4,X0)) ),
    inference(unflattening,[status(thm)],[c_314])).

cnf(c_896,plain,
    ( ~ m1_subset_1(X0_52,sK2)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,X0_53)))
    | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X0_53,sK5))
    | k1_funct_1(k8_funct_2(sK2,sK3,X0_53,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52)) ),
    inference(subtyping,[status(esa)],[c_315])).

cnf(c_1314,plain,
    ( k1_funct_1(k8_funct_2(sK2,sK3,X0_53,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
    | m1_subset_1(X0_52,sK2) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,X0_53))) != iProver_top
    | r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X0_53,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_896])).

cnf(c_1882,plain,
    ( k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
    | m1_subset_1(X0_52,sK2) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1308,c_1314])).

cnf(c_1887,plain,
    ( m1_subset_1(X0_52,sK2) != iProver_top
    | k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1882,c_28])).

cnf(c_1888,plain,
    ( k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
    | m1_subset_1(X0_52,sK2) != iProver_top ),
    inference(renaming,[status(thm)],[c_1887])).

cnf(c_1895,plain,
    ( k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) = k1_funct_1(sK5,k1_funct_1(sK4,sK6)) ),
    inference(superposition,[status(thm)],[c_1309,c_1888])).

cnf(c_13,negated_conjecture,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_904,negated_conjecture,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1934,plain,
    ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(sK5,k1_funct_1(sK4,sK6)) ),
    inference(demodulation,[status(thm)],[c_1895,c_904])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2512,c_1934])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:45:19 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.79/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.79/0.98  
% 1.79/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.79/0.98  
% 1.79/0.98  ------  iProver source info
% 1.79/0.98  
% 1.79/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.79/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.79/0.98  git: non_committed_changes: false
% 1.79/0.98  git: last_make_outside_of_git: false
% 1.79/0.98  
% 1.79/0.98  ------ 
% 1.79/0.98  
% 1.79/0.98  ------ Input Options
% 1.79/0.98  
% 1.79/0.98  --out_options                           all
% 1.79/0.98  --tptp_safe_out                         true
% 1.79/0.98  --problem_path                          ""
% 1.79/0.98  --include_path                          ""
% 1.79/0.98  --clausifier                            res/vclausify_rel
% 1.79/0.98  --clausifier_options                    --mode clausify
% 1.79/0.98  --stdin                                 false
% 1.79/0.98  --stats_out                             all
% 1.79/0.98  
% 1.79/0.98  ------ General Options
% 1.79/0.98  
% 1.79/0.98  --fof                                   false
% 1.79/0.98  --time_out_real                         305.
% 1.79/0.98  --time_out_virtual                      -1.
% 1.79/0.98  --symbol_type_check                     false
% 1.79/0.98  --clausify_out                          false
% 1.79/0.98  --sig_cnt_out                           false
% 1.79/0.98  --trig_cnt_out                          false
% 1.79/0.98  --trig_cnt_out_tolerance                1.
% 1.79/0.98  --trig_cnt_out_sk_spl                   false
% 1.79/0.98  --abstr_cl_out                          false
% 1.79/0.98  
% 1.79/0.98  ------ Global Options
% 1.79/0.98  
% 1.79/0.98  --schedule                              default
% 1.79/0.98  --add_important_lit                     false
% 1.79/0.98  --prop_solver_per_cl                    1000
% 1.79/0.98  --min_unsat_core                        false
% 1.79/0.98  --soft_assumptions                      false
% 1.79/0.98  --soft_lemma_size                       3
% 1.79/0.98  --prop_impl_unit_size                   0
% 1.79/0.98  --prop_impl_unit                        []
% 1.79/0.98  --share_sel_clauses                     true
% 1.79/0.98  --reset_solvers                         false
% 1.79/0.98  --bc_imp_inh                            [conj_cone]
% 1.79/0.98  --conj_cone_tolerance                   3.
% 1.79/0.98  --extra_neg_conj                        none
% 1.79/0.98  --large_theory_mode                     true
% 1.79/0.98  --prolific_symb_bound                   200
% 1.79/0.98  --lt_threshold                          2000
% 1.79/0.98  --clause_weak_htbl                      true
% 1.79/0.98  --gc_record_bc_elim                     false
% 1.79/0.98  
% 1.79/0.98  ------ Preprocessing Options
% 1.79/0.98  
% 1.79/0.98  --preprocessing_flag                    true
% 1.79/0.98  --time_out_prep_mult                    0.1
% 1.79/0.98  --splitting_mode                        input
% 1.79/0.98  --splitting_grd                         true
% 1.79/0.98  --splitting_cvd                         false
% 1.79/0.98  --splitting_cvd_svl                     false
% 1.79/0.98  --splitting_nvd                         32
% 1.79/0.98  --sub_typing                            true
% 1.79/0.98  --prep_gs_sim                           true
% 1.79/0.98  --prep_unflatten                        true
% 1.79/0.98  --prep_res_sim                          true
% 1.79/0.98  --prep_upred                            true
% 1.79/0.98  --prep_sem_filter                       exhaustive
% 1.79/0.98  --prep_sem_filter_out                   false
% 1.79/0.98  --pred_elim                             true
% 1.79/0.98  --res_sim_input                         true
% 1.79/0.98  --eq_ax_congr_red                       true
% 1.79/0.98  --pure_diseq_elim                       true
% 1.79/0.98  --brand_transform                       false
% 1.79/0.98  --non_eq_to_eq                          false
% 1.79/0.98  --prep_def_merge                        true
% 1.79/0.98  --prep_def_merge_prop_impl              false
% 1.79/0.98  --prep_def_merge_mbd                    true
% 1.79/0.98  --prep_def_merge_tr_red                 false
% 1.79/0.98  --prep_def_merge_tr_cl                  false
% 1.79/0.98  --smt_preprocessing                     true
% 1.79/0.98  --smt_ac_axioms                         fast
% 1.79/0.98  --preprocessed_out                      false
% 1.79/0.98  --preprocessed_stats                    false
% 1.79/0.98  
% 1.79/0.98  ------ Abstraction refinement Options
% 1.79/0.98  
% 1.79/0.98  --abstr_ref                             []
% 1.79/0.98  --abstr_ref_prep                        false
% 1.79/0.98  --abstr_ref_until_sat                   false
% 1.79/0.98  --abstr_ref_sig_restrict                funpre
% 1.79/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.79/0.98  --abstr_ref_under                       []
% 1.79/0.98  
% 1.79/0.98  ------ SAT Options
% 1.79/0.98  
% 1.79/0.98  --sat_mode                              false
% 1.79/0.98  --sat_fm_restart_options                ""
% 1.79/0.98  --sat_gr_def                            false
% 1.79/0.98  --sat_epr_types                         true
% 1.79/0.98  --sat_non_cyclic_types                  false
% 1.79/0.98  --sat_finite_models                     false
% 1.79/0.98  --sat_fm_lemmas                         false
% 1.79/0.98  --sat_fm_prep                           false
% 1.79/0.98  --sat_fm_uc_incr                        true
% 1.79/0.98  --sat_out_model                         small
% 1.79/0.98  --sat_out_clauses                       false
% 1.79/0.98  
% 1.79/0.98  ------ QBF Options
% 1.79/0.98  
% 1.79/0.98  --qbf_mode                              false
% 1.79/0.98  --qbf_elim_univ                         false
% 1.79/0.98  --qbf_dom_inst                          none
% 1.79/0.98  --qbf_dom_pre_inst                      false
% 1.79/0.98  --qbf_sk_in                             false
% 1.79/0.98  --qbf_pred_elim                         true
% 1.79/0.98  --qbf_split                             512
% 1.79/0.98  
% 1.79/0.98  ------ BMC1 Options
% 1.79/0.98  
% 1.79/0.98  --bmc1_incremental                      false
% 1.79/0.98  --bmc1_axioms                           reachable_all
% 1.79/0.98  --bmc1_min_bound                        0
% 1.79/0.98  --bmc1_max_bound                        -1
% 1.79/0.98  --bmc1_max_bound_default                -1
% 1.79/0.98  --bmc1_symbol_reachability              true
% 1.79/0.98  --bmc1_property_lemmas                  false
% 1.79/0.98  --bmc1_k_induction                      false
% 1.79/0.98  --bmc1_non_equiv_states                 false
% 1.79/0.98  --bmc1_deadlock                         false
% 1.79/0.98  --bmc1_ucm                              false
% 1.79/0.98  --bmc1_add_unsat_core                   none
% 1.79/0.98  --bmc1_unsat_core_children              false
% 1.79/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.79/0.98  --bmc1_out_stat                         full
% 1.79/0.98  --bmc1_ground_init                      false
% 1.79/0.98  --bmc1_pre_inst_next_state              false
% 1.79/0.98  --bmc1_pre_inst_state                   false
% 1.79/0.98  --bmc1_pre_inst_reach_state             false
% 1.79/0.98  --bmc1_out_unsat_core                   false
% 1.79/0.98  --bmc1_aig_witness_out                  false
% 1.79/0.98  --bmc1_verbose                          false
% 1.79/0.98  --bmc1_dump_clauses_tptp                false
% 1.79/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.79/0.98  --bmc1_dump_file                        -
% 1.79/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.79/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.79/0.98  --bmc1_ucm_extend_mode                  1
% 1.79/0.98  --bmc1_ucm_init_mode                    2
% 1.79/0.98  --bmc1_ucm_cone_mode                    none
% 1.79/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.79/0.98  --bmc1_ucm_relax_model                  4
% 1.79/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.79/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.79/0.98  --bmc1_ucm_layered_model                none
% 1.79/0.98  --bmc1_ucm_max_lemma_size               10
% 1.79/0.98  
% 1.79/0.98  ------ AIG Options
% 1.79/0.98  
% 1.79/0.98  --aig_mode                              false
% 1.79/0.98  
% 1.79/0.98  ------ Instantiation Options
% 1.79/0.98  
% 1.79/0.98  --instantiation_flag                    true
% 1.79/0.98  --inst_sos_flag                         false
% 1.79/0.98  --inst_sos_phase                        true
% 1.79/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.79/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.79/0.98  --inst_lit_sel_side                     num_symb
% 1.79/0.98  --inst_solver_per_active                1400
% 1.79/0.98  --inst_solver_calls_frac                1.
% 1.79/0.98  --inst_passive_queue_type               priority_queues
% 1.79/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.79/0.98  --inst_passive_queues_freq              [25;2]
% 1.79/0.98  --inst_dismatching                      true
% 1.79/0.98  --inst_eager_unprocessed_to_passive     true
% 1.79/0.98  --inst_prop_sim_given                   true
% 1.79/0.98  --inst_prop_sim_new                     false
% 1.79/0.98  --inst_subs_new                         false
% 1.79/0.98  --inst_eq_res_simp                      false
% 1.79/0.98  --inst_subs_given                       false
% 1.79/0.98  --inst_orphan_elimination               true
% 1.79/0.98  --inst_learning_loop_flag               true
% 1.79/0.98  --inst_learning_start                   3000
% 1.79/0.98  --inst_learning_factor                  2
% 1.79/0.98  --inst_start_prop_sim_after_learn       3
% 1.79/0.98  --inst_sel_renew                        solver
% 1.79/0.98  --inst_lit_activity_flag                true
% 1.79/0.98  --inst_restr_to_given                   false
% 1.79/0.98  --inst_activity_threshold               500
% 1.79/0.98  --inst_out_proof                        true
% 1.79/0.98  
% 1.79/0.98  ------ Resolution Options
% 1.79/0.98  
% 1.79/0.98  --resolution_flag                       true
% 1.79/0.98  --res_lit_sel                           adaptive
% 1.79/0.98  --res_lit_sel_side                      none
% 1.79/0.98  --res_ordering                          kbo
% 1.79/0.98  --res_to_prop_solver                    active
% 1.79/0.98  --res_prop_simpl_new                    false
% 1.79/0.98  --res_prop_simpl_given                  true
% 1.79/0.98  --res_passive_queue_type                priority_queues
% 1.79/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.79/0.98  --res_passive_queues_freq               [15;5]
% 1.79/0.98  --res_forward_subs                      full
% 1.79/0.98  --res_backward_subs                     full
% 1.79/0.98  --res_forward_subs_resolution           true
% 1.79/0.98  --res_backward_subs_resolution          true
% 1.79/0.98  --res_orphan_elimination                true
% 1.79/0.98  --res_time_limit                        2.
% 1.79/0.98  --res_out_proof                         true
% 1.79/0.98  
% 1.79/0.98  ------ Superposition Options
% 1.79/0.98  
% 1.79/0.98  --superposition_flag                    true
% 1.79/0.98  --sup_passive_queue_type                priority_queues
% 1.79/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.79/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.79/0.98  --demod_completeness_check              fast
% 1.79/0.98  --demod_use_ground                      true
% 1.79/0.98  --sup_to_prop_solver                    passive
% 1.79/0.98  --sup_prop_simpl_new                    true
% 1.79/0.98  --sup_prop_simpl_given                  true
% 1.79/0.98  --sup_fun_splitting                     false
% 1.79/0.98  --sup_smt_interval                      50000
% 1.79/0.98  
% 1.79/0.98  ------ Superposition Simplification Setup
% 1.79/0.98  
% 1.79/0.98  --sup_indices_passive                   []
% 1.79/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.79/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.79/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.79/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.79/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.79/0.98  --sup_full_bw                           [BwDemod]
% 1.79/0.98  --sup_immed_triv                        [TrivRules]
% 1.79/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.79/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.79/0.98  --sup_immed_bw_main                     []
% 1.79/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.79/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.79/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.79/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.79/0.98  
% 1.79/0.98  ------ Combination Options
% 1.79/0.98  
% 1.79/0.98  --comb_res_mult                         3
% 1.79/0.98  --comb_sup_mult                         2
% 1.79/0.98  --comb_inst_mult                        10
% 1.79/0.98  
% 1.79/0.98  ------ Debug Options
% 1.79/0.98  
% 1.79/0.98  --dbg_backtrace                         false
% 1.79/0.98  --dbg_dump_prop_clauses                 false
% 1.79/0.98  --dbg_dump_prop_clauses_file            -
% 1.79/0.98  --dbg_out_stat                          false
% 1.79/0.98  ------ Parsing...
% 1.79/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.79/0.98  
% 1.79/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.79/0.98  
% 1.79/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.79/0.98  
% 1.79/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.79/0.98  ------ Proving...
% 1.79/0.98  ------ Problem Properties 
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  clauses                                 21
% 1.79/0.98  conjectures                             7
% 1.79/0.98  EPR                                     7
% 1.79/0.98  Horn                                    18
% 1.79/0.98  unary                                   9
% 1.79/0.98  binary                                  3
% 1.79/0.98  lits                                    46
% 1.79/0.98  lits eq                                 9
% 1.79/0.98  fd_pure                                 0
% 1.79/0.98  fd_pseudo                               0
% 1.79/0.98  fd_cond                                 0
% 1.79/0.98  fd_pseudo_cond                          1
% 1.79/0.98  AC symbols                              0
% 1.79/0.98  
% 1.79/0.98  ------ Schedule dynamic 5 is on 
% 1.79/0.98  
% 1.79/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  ------ 
% 1.79/0.98  Current options:
% 1.79/0.98  ------ 
% 1.79/0.98  
% 1.79/0.98  ------ Input Options
% 1.79/0.98  
% 1.79/0.98  --out_options                           all
% 1.79/0.98  --tptp_safe_out                         true
% 1.79/0.98  --problem_path                          ""
% 1.79/0.98  --include_path                          ""
% 1.79/0.98  --clausifier                            res/vclausify_rel
% 1.79/0.98  --clausifier_options                    --mode clausify
% 1.79/0.98  --stdin                                 false
% 1.79/0.98  --stats_out                             all
% 1.79/0.98  
% 1.79/0.98  ------ General Options
% 1.79/0.98  
% 1.79/0.98  --fof                                   false
% 1.79/0.98  --time_out_real                         305.
% 1.79/0.98  --time_out_virtual                      -1.
% 1.79/0.98  --symbol_type_check                     false
% 1.79/0.98  --clausify_out                          false
% 1.79/0.98  --sig_cnt_out                           false
% 1.79/0.98  --trig_cnt_out                          false
% 1.79/0.98  --trig_cnt_out_tolerance                1.
% 1.79/0.98  --trig_cnt_out_sk_spl                   false
% 1.79/0.98  --abstr_cl_out                          false
% 1.79/0.98  
% 1.79/0.98  ------ Global Options
% 1.79/0.98  
% 1.79/0.98  --schedule                              default
% 1.79/0.98  --add_important_lit                     false
% 1.79/0.98  --prop_solver_per_cl                    1000
% 1.79/0.98  --min_unsat_core                        false
% 1.79/0.98  --soft_assumptions                      false
% 1.79/0.98  --soft_lemma_size                       3
% 1.79/0.98  --prop_impl_unit_size                   0
% 1.79/0.98  --prop_impl_unit                        []
% 1.79/0.98  --share_sel_clauses                     true
% 1.79/0.98  --reset_solvers                         false
% 1.79/0.98  --bc_imp_inh                            [conj_cone]
% 1.79/0.98  --conj_cone_tolerance                   3.
% 1.79/0.98  --extra_neg_conj                        none
% 1.79/0.98  --large_theory_mode                     true
% 1.79/0.98  --prolific_symb_bound                   200
% 1.79/0.98  --lt_threshold                          2000
% 1.79/0.98  --clause_weak_htbl                      true
% 1.79/0.98  --gc_record_bc_elim                     false
% 1.79/0.98  
% 1.79/0.98  ------ Preprocessing Options
% 1.79/0.98  
% 1.79/0.98  --preprocessing_flag                    true
% 1.79/0.98  --time_out_prep_mult                    0.1
% 1.79/0.98  --splitting_mode                        input
% 1.79/0.98  --splitting_grd                         true
% 1.79/0.98  --splitting_cvd                         false
% 1.79/0.98  --splitting_cvd_svl                     false
% 1.79/0.98  --splitting_nvd                         32
% 1.79/0.98  --sub_typing                            true
% 1.79/0.98  --prep_gs_sim                           true
% 1.79/0.98  --prep_unflatten                        true
% 1.79/0.98  --prep_res_sim                          true
% 1.79/0.98  --prep_upred                            true
% 1.79/0.98  --prep_sem_filter                       exhaustive
% 1.79/0.98  --prep_sem_filter_out                   false
% 1.79/0.98  --pred_elim                             true
% 1.79/0.98  --res_sim_input                         true
% 1.79/0.98  --eq_ax_congr_red                       true
% 1.79/0.98  --pure_diseq_elim                       true
% 1.79/0.98  --brand_transform                       false
% 1.79/0.98  --non_eq_to_eq                          false
% 1.79/0.98  --prep_def_merge                        true
% 1.79/0.98  --prep_def_merge_prop_impl              false
% 1.79/0.98  --prep_def_merge_mbd                    true
% 1.79/0.98  --prep_def_merge_tr_red                 false
% 1.79/0.98  --prep_def_merge_tr_cl                  false
% 1.79/0.98  --smt_preprocessing                     true
% 1.79/0.98  --smt_ac_axioms                         fast
% 1.79/0.98  --preprocessed_out                      false
% 1.79/0.98  --preprocessed_stats                    false
% 1.79/0.98  
% 1.79/0.98  ------ Abstraction refinement Options
% 1.79/0.98  
% 1.79/0.98  --abstr_ref                             []
% 1.79/0.98  --abstr_ref_prep                        false
% 1.79/0.98  --abstr_ref_until_sat                   false
% 1.79/0.98  --abstr_ref_sig_restrict                funpre
% 1.79/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.79/0.98  --abstr_ref_under                       []
% 1.79/0.98  
% 1.79/0.98  ------ SAT Options
% 1.79/0.98  
% 1.79/0.98  --sat_mode                              false
% 1.79/0.98  --sat_fm_restart_options                ""
% 1.79/0.98  --sat_gr_def                            false
% 1.79/0.98  --sat_epr_types                         true
% 1.79/0.98  --sat_non_cyclic_types                  false
% 1.79/0.98  --sat_finite_models                     false
% 1.79/0.98  --sat_fm_lemmas                         false
% 1.79/0.98  --sat_fm_prep                           false
% 1.79/0.98  --sat_fm_uc_incr                        true
% 1.79/0.98  --sat_out_model                         small
% 1.79/0.98  --sat_out_clauses                       false
% 1.79/0.98  
% 1.79/0.98  ------ QBF Options
% 1.79/0.98  
% 1.79/0.98  --qbf_mode                              false
% 1.79/0.98  --qbf_elim_univ                         false
% 1.79/0.98  --qbf_dom_inst                          none
% 1.79/0.98  --qbf_dom_pre_inst                      false
% 1.79/0.98  --qbf_sk_in                             false
% 1.79/0.98  --qbf_pred_elim                         true
% 1.79/0.98  --qbf_split                             512
% 1.79/0.98  
% 1.79/0.98  ------ BMC1 Options
% 1.79/0.98  
% 1.79/0.98  --bmc1_incremental                      false
% 1.79/0.98  --bmc1_axioms                           reachable_all
% 1.79/0.98  --bmc1_min_bound                        0
% 1.79/0.98  --bmc1_max_bound                        -1
% 1.79/0.98  --bmc1_max_bound_default                -1
% 1.79/0.98  --bmc1_symbol_reachability              true
% 1.79/0.98  --bmc1_property_lemmas                  false
% 1.79/0.98  --bmc1_k_induction                      false
% 1.79/0.98  --bmc1_non_equiv_states                 false
% 1.79/0.98  --bmc1_deadlock                         false
% 1.79/0.98  --bmc1_ucm                              false
% 1.79/0.98  --bmc1_add_unsat_core                   none
% 1.79/0.98  --bmc1_unsat_core_children              false
% 1.79/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.79/0.98  --bmc1_out_stat                         full
% 1.79/0.98  --bmc1_ground_init                      false
% 1.79/0.98  --bmc1_pre_inst_next_state              false
% 1.79/0.98  --bmc1_pre_inst_state                   false
% 1.79/0.98  --bmc1_pre_inst_reach_state             false
% 1.79/0.98  --bmc1_out_unsat_core                   false
% 1.79/0.98  --bmc1_aig_witness_out                  false
% 1.79/0.98  --bmc1_verbose                          false
% 1.79/0.98  --bmc1_dump_clauses_tptp                false
% 1.79/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.79/0.98  --bmc1_dump_file                        -
% 1.79/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.79/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.79/0.98  --bmc1_ucm_extend_mode                  1
% 1.79/0.98  --bmc1_ucm_init_mode                    2
% 1.79/0.98  --bmc1_ucm_cone_mode                    none
% 1.79/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.79/0.98  --bmc1_ucm_relax_model                  4
% 1.79/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.79/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.79/0.98  --bmc1_ucm_layered_model                none
% 1.79/0.98  --bmc1_ucm_max_lemma_size               10
% 1.79/0.98  
% 1.79/0.98  ------ AIG Options
% 1.79/0.98  
% 1.79/0.98  --aig_mode                              false
% 1.79/0.98  
% 1.79/0.98  ------ Instantiation Options
% 1.79/0.98  
% 1.79/0.98  --instantiation_flag                    true
% 1.79/0.98  --inst_sos_flag                         false
% 1.79/0.98  --inst_sos_phase                        true
% 1.79/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.79/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.79/0.98  --inst_lit_sel_side                     none
% 1.79/0.98  --inst_solver_per_active                1400
% 1.79/0.98  --inst_solver_calls_frac                1.
% 1.79/0.98  --inst_passive_queue_type               priority_queues
% 1.79/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.79/0.98  --inst_passive_queues_freq              [25;2]
% 1.79/0.98  --inst_dismatching                      true
% 1.79/0.98  --inst_eager_unprocessed_to_passive     true
% 1.79/0.98  --inst_prop_sim_given                   true
% 1.79/0.98  --inst_prop_sim_new                     false
% 1.79/0.98  --inst_subs_new                         false
% 1.79/0.98  --inst_eq_res_simp                      false
% 1.79/0.98  --inst_subs_given                       false
% 1.79/0.98  --inst_orphan_elimination               true
% 1.79/0.98  --inst_learning_loop_flag               true
% 1.79/0.98  --inst_learning_start                   3000
% 1.79/0.98  --inst_learning_factor                  2
% 1.79/0.98  --inst_start_prop_sim_after_learn       3
% 1.79/0.98  --inst_sel_renew                        solver
% 1.79/0.98  --inst_lit_activity_flag                true
% 1.79/0.98  --inst_restr_to_given                   false
% 1.79/0.98  --inst_activity_threshold               500
% 1.79/0.98  --inst_out_proof                        true
% 1.79/0.98  
% 1.79/0.98  ------ Resolution Options
% 1.79/0.98  
% 1.79/0.98  --resolution_flag                       false
% 1.79/0.98  --res_lit_sel                           adaptive
% 1.79/0.98  --res_lit_sel_side                      none
% 1.79/0.98  --res_ordering                          kbo
% 1.79/0.98  --res_to_prop_solver                    active
% 1.79/0.98  --res_prop_simpl_new                    false
% 1.79/0.98  --res_prop_simpl_given                  true
% 1.79/0.98  --res_passive_queue_type                priority_queues
% 1.79/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.79/0.98  --res_passive_queues_freq               [15;5]
% 1.79/0.98  --res_forward_subs                      full
% 1.79/0.98  --res_backward_subs                     full
% 1.79/0.98  --res_forward_subs_resolution           true
% 1.79/0.98  --res_backward_subs_resolution          true
% 1.79/0.98  --res_orphan_elimination                true
% 1.79/0.98  --res_time_limit                        2.
% 1.79/0.98  --res_out_proof                         true
% 1.79/0.98  
% 1.79/0.98  ------ Superposition Options
% 1.79/0.98  
% 1.79/0.98  --superposition_flag                    true
% 1.79/0.98  --sup_passive_queue_type                priority_queues
% 1.79/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.79/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.79/0.98  --demod_completeness_check              fast
% 1.79/0.98  --demod_use_ground                      true
% 1.79/0.98  --sup_to_prop_solver                    passive
% 1.79/0.98  --sup_prop_simpl_new                    true
% 1.79/0.98  --sup_prop_simpl_given                  true
% 1.79/0.98  --sup_fun_splitting                     false
% 1.79/0.98  --sup_smt_interval                      50000
% 1.79/0.98  
% 1.79/0.98  ------ Superposition Simplification Setup
% 1.79/0.98  
% 1.79/0.98  --sup_indices_passive                   []
% 1.79/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.79/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.79/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.79/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.79/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.79/0.98  --sup_full_bw                           [BwDemod]
% 1.79/0.98  --sup_immed_triv                        [TrivRules]
% 1.79/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.79/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.79/0.98  --sup_immed_bw_main                     []
% 1.79/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.79/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.79/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.79/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.79/0.98  
% 1.79/0.98  ------ Combination Options
% 1.79/0.98  
% 1.79/0.98  --comb_res_mult                         3
% 1.79/0.98  --comb_sup_mult                         2
% 1.79/0.98  --comb_inst_mult                        10
% 1.79/0.98  
% 1.79/0.98  ------ Debug Options
% 1.79/0.98  
% 1.79/0.98  --dbg_backtrace                         false
% 1.79/0.98  --dbg_dump_prop_clauses                 false
% 1.79/0.98  --dbg_dump_prop_clauses_file            -
% 1.79/0.98  --dbg_out_stat                          false
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  ------ Proving...
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  % SZS status Theorem for theBenchmark.p
% 1.79/0.98  
% 1.79/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 1.79/0.98  
% 1.79/0.98  fof(f12,conjecture,(
% 1.79/0.98    ! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f13,negated_conjecture,(
% 1.79/0.98    ~! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 1.79/0.98    inference(negated_conjecture,[],[f12])).
% 1.79/0.98  
% 1.79/0.98  fof(f28,plain,(
% 1.79/0.98    ? [X0,X1,X2] : (? [X3] : (? [X4] : (? [X5] : (((k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1) & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))) & m1_subset_1(X5,X1)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3))) & ~v1_xboole_0(X2))),
% 1.79/0.98    inference(ennf_transformation,[],[f13])).
% 1.79/0.98  
% 1.79/0.98  fof(f29,plain,(
% 1.79/0.98    ? [X0,X1,X2] : (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) & ~v1_xboole_0(X2))),
% 1.79/0.98    inference(flattening,[],[f28])).
% 1.79/0.98  
% 1.79/0.98  fof(f37,plain,(
% 1.79/0.98    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) => (k7_partfun1(X0,X4,k1_funct_1(X3,sK6)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),sK6) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(sK6,X1))) )),
% 1.79/0.98    introduced(choice_axiom,[])).
% 1.79/0.98  
% 1.79/0.98  fof(f36,plain,(
% 1.79/0.98    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => (? [X5] : (k7_partfun1(X0,sK5,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,sK5),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,sK5)) & m1_subset_1(X5,X1)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(sK5))) )),
% 1.79/0.98    introduced(choice_axiom,[])).
% 1.79/0.98  
% 1.79/0.98  fof(f35,plain,(
% 1.79/0.98    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(sK4,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,sK4,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,sK4),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(sK4,X1,X2) & v1_funct_1(sK4))) )),
% 1.79/0.98    introduced(choice_axiom,[])).
% 1.79/0.98  
% 1.79/0.98  fof(f34,plain,(
% 1.79/0.98    ? [X0,X1,X2] : (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) & ~v1_xboole_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(sK1,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,X3,X4),X5) & k1_xboole_0 != sK2 & r1_tarski(k2_relset_1(sK2,sK3,X3),k1_relset_1(sK3,sK1,X4)) & m1_subset_1(X5,sK2)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_2(X3,sK2,sK3) & v1_funct_1(X3)) & ~v1_xboole_0(sK3))),
% 1.79/0.98    introduced(choice_axiom,[])).
% 1.79/0.98  
% 1.79/0.98  fof(f38,plain,(
% 1.79/0.98    (((k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) & k1_xboole_0 != sK2 & r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) & m1_subset_1(sK6,sK2)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) & v1_funct_1(sK5)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_2(sK4,sK2,sK3) & v1_funct_1(sK4)) & ~v1_xboole_0(sK3)),
% 1.79/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5,sK6])],[f29,f37,f36,f35,f34])).
% 1.79/0.98  
% 1.79/0.98  fof(f58,plain,(
% 1.79/0.98    m1_subset_1(sK6,sK2)),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f4,axiom,(
% 1.79/0.98    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f17,plain,(
% 1.79/0.98    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.79/0.98    inference(ennf_transformation,[],[f4])).
% 1.79/0.98  
% 1.79/0.98  fof(f18,plain,(
% 1.79/0.98    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.79/0.98    inference(flattening,[],[f17])).
% 1.79/0.98  
% 1.79/0.98  fof(f44,plain,(
% 1.79/0.98    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f18])).
% 1.79/0.98  
% 1.79/0.98  fof(f2,axiom,(
% 1.79/0.98    v1_xboole_0(k1_xboole_0)),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f42,plain,(
% 1.79/0.98    v1_xboole_0(k1_xboole_0)),
% 1.79/0.98    inference(cnf_transformation,[],[f2])).
% 1.79/0.98  
% 1.79/0.98  fof(f60,plain,(
% 1.79/0.98    k1_xboole_0 != sK2),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f3,axiom,(
% 1.79/0.98    ! [X0,X1] : ~(v1_xboole_0(X1) & X0 != X1 & v1_xboole_0(X0))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f16,plain,(
% 1.79/0.98    ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0))),
% 1.79/0.98    inference(ennf_transformation,[],[f3])).
% 1.79/0.98  
% 1.79/0.98  fof(f43,plain,(
% 1.79/0.98    ( ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f16])).
% 1.79/0.98  
% 1.79/0.98  fof(f11,axiom,(
% 1.79/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f26,plain,(
% 1.79/0.98    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.79/0.98    inference(ennf_transformation,[],[f11])).
% 1.79/0.98  
% 1.79/0.98  fof(f27,plain,(
% 1.79/0.98    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.79/0.98    inference(flattening,[],[f26])).
% 1.79/0.98  
% 1.79/0.98  fof(f51,plain,(
% 1.79/0.98    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f27])).
% 1.79/0.98  
% 1.79/0.98  fof(f54,plain,(
% 1.79/0.98    v1_funct_2(sK4,sK2,sK3)),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f53,plain,(
% 1.79/0.98    v1_funct_1(sK4)),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f55,plain,(
% 1.79/0.98    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f52,plain,(
% 1.79/0.98    ~v1_xboole_0(sK3)),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f57,plain,(
% 1.79/0.98    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1)))),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f8,axiom,(
% 1.79/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f21,plain,(
% 1.79/0.98    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.79/0.98    inference(ennf_transformation,[],[f8])).
% 1.79/0.98  
% 1.79/0.98  fof(f48,plain,(
% 1.79/0.98    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.79/0.98    inference(cnf_transformation,[],[f21])).
% 1.79/0.98  
% 1.79/0.98  fof(f59,plain,(
% 1.79/0.98    r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5))),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f1,axiom,(
% 1.79/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f15,plain,(
% 1.79/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.79/0.98    inference(ennf_transformation,[],[f1])).
% 1.79/0.98  
% 1.79/0.98  fof(f30,plain,(
% 1.79/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.79/0.98    inference(nnf_transformation,[],[f15])).
% 1.79/0.98  
% 1.79/0.98  fof(f31,plain,(
% 1.79/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.79/0.98    inference(rectify,[],[f30])).
% 1.79/0.98  
% 1.79/0.98  fof(f32,plain,(
% 1.79/0.98    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.79/0.98    introduced(choice_axiom,[])).
% 1.79/0.98  
% 1.79/0.98  fof(f33,plain,(
% 1.79/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.79/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f31,f32])).
% 1.79/0.98  
% 1.79/0.98  fof(f39,plain,(
% 1.79/0.98    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f33])).
% 1.79/0.98  
% 1.79/0.98  fof(f7,axiom,(
% 1.79/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f14,plain,(
% 1.79/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 1.79/0.98    inference(pure_predicate_removal,[],[f7])).
% 1.79/0.98  
% 1.79/0.98  fof(f20,plain,(
% 1.79/0.98    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.79/0.98    inference(ennf_transformation,[],[f14])).
% 1.79/0.98  
% 1.79/0.98  fof(f47,plain,(
% 1.79/0.98    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.79/0.98    inference(cnf_transformation,[],[f20])).
% 1.79/0.98  
% 1.79/0.98  fof(f9,axiom,(
% 1.79/0.98    ! [X0,X1] : ((v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => ! [X2] : (r2_hidden(X2,k1_relat_1(X1)) => k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f22,plain,(
% 1.79/0.98    ! [X0,X1] : (! [X2] : (k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) | ~r2_hidden(X2,k1_relat_1(X1))) | (~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.79/0.98    inference(ennf_transformation,[],[f9])).
% 1.79/0.98  
% 1.79/0.98  fof(f23,plain,(
% 1.79/0.98    ! [X0,X1] : (! [X2] : (k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) | ~r2_hidden(X2,k1_relat_1(X1))) | ~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.79/0.98    inference(flattening,[],[f22])).
% 1.79/0.98  
% 1.79/0.98  fof(f49,plain,(
% 1.79/0.98    ( ! [X2,X0,X1] : (k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) | ~r2_hidden(X2,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f23])).
% 1.79/0.98  
% 1.79/0.98  fof(f56,plain,(
% 1.79/0.98    v1_funct_1(sK5)),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  fof(f5,axiom,(
% 1.79/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f19,plain,(
% 1.79/0.98    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.79/0.98    inference(ennf_transformation,[],[f5])).
% 1.79/0.98  
% 1.79/0.98  fof(f45,plain,(
% 1.79/0.98    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f19])).
% 1.79/0.98  
% 1.79/0.98  fof(f6,axiom,(
% 1.79/0.98    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f46,plain,(
% 1.79/0.98    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.79/0.98    inference(cnf_transformation,[],[f6])).
% 1.79/0.98  
% 1.79/0.98  fof(f10,axiom,(
% 1.79/0.98    ! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 1.79/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.79/0.98  
% 1.79/0.98  fof(f24,plain,(
% 1.79/0.98    ! [X0,X1,X2] : (! [X3] : (! [X4] : (! [X5] : (((k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1) | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))) | ~m1_subset_1(X5,X1)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3))) | v1_xboole_0(X2))),
% 1.79/0.98    inference(ennf_transformation,[],[f10])).
% 1.79/0.98  
% 1.79/0.98  fof(f25,plain,(
% 1.79/0.98    ! [X0,X1,X2] : (! [X3] : (! [X4] : (! [X5] : (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1 | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) | ~m1_subset_1(X5,X1)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3)) | v1_xboole_0(X2))),
% 1.79/0.98    inference(flattening,[],[f24])).
% 1.79/0.98  
% 1.79/0.98  fof(f50,plain,(
% 1.79/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1 | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) | ~m1_subset_1(X5,X1) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3) | v1_xboole_0(X2)) )),
% 1.79/0.98    inference(cnf_transformation,[],[f25])).
% 1.79/0.98  
% 1.79/0.98  fof(f61,plain,(
% 1.79/0.98    k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6)),
% 1.79/0.98    inference(cnf_transformation,[],[f38])).
% 1.79/0.98  
% 1.79/0.98  cnf(c_16,negated_conjecture,
% 1.79/0.98      ( m1_subset_1(sK6,sK2) ),
% 1.79/0.98      inference(cnf_transformation,[],[f58]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_901,negated_conjecture,
% 1.79/0.98      ( m1_subset_1(sK6,sK2) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_16]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1309,plain,
% 1.79/0.98      ( m1_subset_1(sK6,sK2) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_901]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_5,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 1.79/0.98      inference(cnf_transformation,[],[f44]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_908,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0_52,X0_53)
% 1.79/0.98      | r2_hidden(X0_52,X0_53)
% 1.79/0.98      | v1_xboole_0(X0_53) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_5]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1304,plain,
% 1.79/0.98      ( m1_subset_1(X0_52,X0_53) != iProver_top
% 1.79/0.98      | r2_hidden(X0_52,X0_53) = iProver_top
% 1.79/0.98      | v1_xboole_0(X0_53) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_908]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2019,plain,
% 1.79/0.98      ( r2_hidden(sK6,sK2) = iProver_top
% 1.79/0.98      | v1_xboole_0(sK2) = iProver_top ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_1309,c_1304]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_29,plain,
% 1.79/0.98      ( m1_subset_1(sK6,sK2) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_3,plain,
% 1.79/0.98      ( v1_xboole_0(k1_xboole_0) ),
% 1.79/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_54,plain,
% 1.79/0.98      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_14,negated_conjecture,
% 1.79/0.98      ( k1_xboole_0 != sK2 ),
% 1.79/0.98      inference(cnf_transformation,[],[f60]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_903,negated_conjecture,
% 1.79/0.98      ( k1_xboole_0 != sK2 ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_14]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_4,plain,
% 1.79/0.98      ( ~ v1_xboole_0(X0) | ~ v1_xboole_0(X1) | X0 = X1 ),
% 1.79/0.98      inference(cnf_transformation,[],[f43]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_909,plain,
% 1.79/0.98      ( ~ v1_xboole_0(X0_53) | ~ v1_xboole_0(X1_53) | X0_53 = X1_53 ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_4]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1470,plain,
% 1.79/0.98      ( ~ v1_xboole_0(sK2)
% 1.79/0.98      | ~ v1_xboole_0(k1_xboole_0)
% 1.79/0.98      | k1_xboole_0 = sK2 ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_909]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1471,plain,
% 1.79/0.98      ( k1_xboole_0 = sK2
% 1.79/0.98      | v1_xboole_0(sK2) != iProver_top
% 1.79/0.98      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_1470]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1487,plain,
% 1.79/0.98      ( ~ m1_subset_1(sK6,sK2) | r2_hidden(sK6,sK2) | v1_xboole_0(sK2) ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_908]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1488,plain,
% 1.79/0.98      ( m1_subset_1(sK6,sK2) != iProver_top
% 1.79/0.98      | r2_hidden(sK6,sK2) = iProver_top
% 1.79/0.98      | v1_xboole_0(sK2) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_1487]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2246,plain,
% 1.79/0.98      ( r2_hidden(sK6,sK2) = iProver_top ),
% 1.79/0.98      inference(global_propositional_subsumption,
% 1.79/0.98                [status(thm)],
% 1.79/0.98                [c_2019,c_29,c_54,c_903,c_1471,c_1488]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_12,plain,
% 1.79/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.79/0.98      | ~ r2_hidden(X3,X1)
% 1.79/0.98      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | k1_xboole_0 = X2 ),
% 1.79/0.98      inference(cnf_transformation,[],[f51]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_20,negated_conjecture,
% 1.79/0.98      ( v1_funct_2(sK4,sK2,sK3) ),
% 1.79/0.98      inference(cnf_transformation,[],[f54]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_256,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.79/0.98      | ~ r2_hidden(X3,X1)
% 1.79/0.98      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | sK3 != X2
% 1.79/0.98      | sK2 != X1
% 1.79/0.98      | sK4 != X0
% 1.79/0.98      | k1_xboole_0 = X2 ),
% 1.79/0.98      inference(resolution_lifted,[status(thm)],[c_12,c_20]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_257,plain,
% 1.79/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 1.79/0.98      | ~ r2_hidden(X0,sK2)
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0),k2_relset_1(sK2,sK3,sK4))
% 1.79/0.98      | ~ v1_funct_1(sK4)
% 1.79/0.98      | k1_xboole_0 = sK3 ),
% 1.79/0.98      inference(unflattening,[status(thm)],[c_256]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_21,negated_conjecture,
% 1.79/0.98      ( v1_funct_1(sK4) ),
% 1.79/0.98      inference(cnf_transformation,[],[f53]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_19,negated_conjecture,
% 1.79/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
% 1.79/0.98      inference(cnf_transformation,[],[f55]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_261,plain,
% 1.79/0.98      ( r2_hidden(k1_funct_1(sK4,X0),k2_relset_1(sK2,sK3,sK4))
% 1.79/0.98      | ~ r2_hidden(X0,sK2)
% 1.79/0.98      | k1_xboole_0 = sK3 ),
% 1.79/0.98      inference(global_propositional_subsumption,
% 1.79/0.98                [status(thm)],
% 1.79/0.98                [c_257,c_21,c_19]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_262,plain,
% 1.79/0.98      ( ~ r2_hidden(X0,sK2)
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0),k2_relset_1(sK2,sK3,sK4))
% 1.79/0.98      | k1_xboole_0 = sK3 ),
% 1.79/0.98      inference(renaming,[status(thm)],[c_261]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_897,plain,
% 1.79/0.98      ( ~ r2_hidden(X0_52,sK2)
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4))
% 1.79/0.98      | k1_xboole_0 = sK3 ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_262]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1313,plain,
% 1.79/0.98      ( k1_xboole_0 = sK3
% 1.79/0.98      | r2_hidden(X0_52,sK2) != iProver_top
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_897]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_22,negated_conjecture,
% 1.79/0.98      ( ~ v1_xboole_0(sK3) ),
% 1.79/0.98      inference(cnf_transformation,[],[f52]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_916,plain,( X0_53 = X0_53 ),theory(equality) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_947,plain,
% 1.79/0.98      ( sK3 = sK3 ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_916]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_966,plain,
% 1.79/0.98      ( k1_xboole_0 = sK3
% 1.79/0.98      | r2_hidden(X0_52,sK2) != iProver_top
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_897]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_921,plain,
% 1.79/0.98      ( ~ v1_xboole_0(X0_53) | v1_xboole_0(X1_53) | X1_53 != X0_53 ),
% 1.79/0.98      theory(equality) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1473,plain,
% 1.79/0.98      ( v1_xboole_0(X0_53)
% 1.79/0.98      | ~ v1_xboole_0(k1_xboole_0)
% 1.79/0.98      | X0_53 != k1_xboole_0 ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_921]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1475,plain,
% 1.79/0.98      ( v1_xboole_0(sK3)
% 1.79/0.98      | ~ v1_xboole_0(k1_xboole_0)
% 1.79/0.98      | sK3 != k1_xboole_0 ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_1473]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_918,plain,
% 1.79/0.98      ( X0_53 != X1_53 | X2_53 != X1_53 | X2_53 = X0_53 ),
% 1.79/0.98      theory(equality) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1643,plain,
% 1.79/0.98      ( X0_53 != X1_53 | X0_53 = k1_xboole_0 | k1_xboole_0 != X1_53 ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_918]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1644,plain,
% 1.79/0.98      ( sK3 != sK3 | sK3 = k1_xboole_0 | k1_xboole_0 != sK3 ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_1643]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2357,plain,
% 1.79/0.98      ( r2_hidden(X0_52,sK2) != iProver_top
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0_52),k2_relset_1(sK2,sK3,sK4)) = iProver_top ),
% 1.79/0.98      inference(global_propositional_subsumption,
% 1.79/0.98                [status(thm)],
% 1.79/0.98                [c_1313,c_22,c_3,c_947,c_966,c_1475,c_1644]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_17,negated_conjecture,
% 1.79/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) ),
% 1.79/0.98      inference(cnf_transformation,[],[f57]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_900,negated_conjecture,
% 1.79/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_17]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1310,plain,
% 1.79/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_900]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_9,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.79/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.79/0.98      inference(cnf_transformation,[],[f48]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_905,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
% 1.79/0.98      | k1_relset_1(X0_53,X1_53,X0_52) = k1_relat_1(X0_52) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_9]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1307,plain,
% 1.79/0.98      ( k1_relset_1(X0_53,X1_53,X0_52) = k1_relat_1(X0_52)
% 1.79/0.98      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_905]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2040,plain,
% 1.79/0.98      ( k1_relset_1(sK3,sK1,sK5) = k1_relat_1(sK5) ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_1310,c_1307]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_15,negated_conjecture,
% 1.79/0.98      ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) ),
% 1.79/0.98      inference(cnf_transformation,[],[f59]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_902,negated_conjecture,
% 1.79/0.98      ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_15]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1308,plain,
% 1.79/0.98      ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,sK1,sK5)) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_902]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2129,plain,
% 1.79/0.98      ( r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relat_1(sK5)) = iProver_top ),
% 1.79/0.98      inference(demodulation,[status(thm)],[c_2040,c_1308]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2,plain,
% 1.79/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 1.79/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_911,plain,
% 1.79/0.98      ( ~ r2_hidden(X0_52,X0_53)
% 1.79/0.98      | r2_hidden(X0_52,X1_53)
% 1.79/0.98      | ~ r1_tarski(X0_53,X1_53) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_2]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1301,plain,
% 1.79/0.98      ( r2_hidden(X0_52,X0_53) != iProver_top
% 1.79/0.98      | r2_hidden(X0_52,X1_53) = iProver_top
% 1.79/0.98      | r1_tarski(X0_53,X1_53) != iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_911]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2184,plain,
% 1.79/0.98      ( r2_hidden(X0_52,k2_relset_1(sK2,sK3,sK4)) != iProver_top
% 1.79/0.98      | r2_hidden(X0_52,k1_relat_1(sK5)) = iProver_top ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_2129,c_1301]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2455,plain,
% 1.79/0.98      ( r2_hidden(X0_52,sK2) != iProver_top
% 1.79/0.98      | r2_hidden(k1_funct_1(sK4,X0_52),k1_relat_1(sK5)) = iProver_top ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_2357,c_2184]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_8,plain,
% 1.79/0.98      ( v5_relat_1(X0,X1)
% 1.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 1.79/0.98      inference(cnf_transformation,[],[f47]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_10,plain,
% 1.79/0.98      ( ~ v5_relat_1(X0,X1)
% 1.79/0.98      | ~ r2_hidden(X2,k1_relat_1(X0))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | ~ v1_relat_1(X0)
% 1.79/0.98      | k7_partfun1(X1,X0,X2) = k1_funct_1(X0,X2) ),
% 1.79/0.98      inference(cnf_transformation,[],[f49]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_230,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.79/0.98      | ~ r2_hidden(X3,k1_relat_1(X0))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | ~ v1_relat_1(X0)
% 1.79/0.98      | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
% 1.79/0.98      inference(resolution,[status(thm)],[c_8,c_10]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_18,negated_conjecture,
% 1.79/0.98      ( v1_funct_1(sK5) ),
% 1.79/0.98      inference(cnf_transformation,[],[f56]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_332,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.79/0.98      | ~ r2_hidden(X3,k1_relat_1(X0))
% 1.79/0.98      | ~ v1_relat_1(X0)
% 1.79/0.98      | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3)
% 1.79/0.98      | sK5 != X0 ),
% 1.79/0.98      inference(resolution_lifted,[status(thm)],[c_230,c_18]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_333,plain,
% 1.79/0.98      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.79/0.98      | ~ r2_hidden(X2,k1_relat_1(sK5))
% 1.79/0.98      | ~ v1_relat_1(sK5)
% 1.79/0.98      | k7_partfun1(X1,sK5,X2) = k1_funct_1(sK5,X2) ),
% 1.79/0.98      inference(unflattening,[status(thm)],[c_332]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_895,plain,
% 1.79/0.98      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
% 1.79/0.98      | ~ r2_hidden(X0_52,k1_relat_1(sK5))
% 1.79/0.98      | ~ v1_relat_1(sK5)
% 1.79/0.98      | k7_partfun1(X1_53,sK5,X0_52) = k1_funct_1(sK5,X0_52) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_333]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1315,plain,
% 1.79/0.98      ( k7_partfun1(X0_53,sK5,X0_52) = k1_funct_1(sK5,X0_52)
% 1.79/0.98      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X1_53,X0_53))) != iProver_top
% 1.79/0.98      | r2_hidden(X0_52,k1_relat_1(sK5)) != iProver_top
% 1.79/0.98      | v1_relat_1(sK5) != iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_895]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1532,plain,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,X0_52) = k1_funct_1(sK5,X0_52)
% 1.79/0.98      | r2_hidden(X0_52,k1_relat_1(sK5)) != iProver_top
% 1.79/0.98      | v1_relat_1(sK5) != iProver_top ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_1310,c_1315]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2474,plain,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,X0_52)) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
% 1.79/0.98      | r2_hidden(X0_52,sK2) != iProver_top
% 1.79/0.98      | v1_relat_1(sK5) != iProver_top ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_2455,c_1532]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_28,plain,
% 1.79/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_6,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.79/0.98      | ~ v1_relat_1(X1)
% 1.79/0.98      | v1_relat_1(X0) ),
% 1.79/0.98      inference(cnf_transformation,[],[f45]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_907,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0_52,k1_zfmisc_1(X1_52))
% 1.79/0.98      | ~ v1_relat_1(X1_52)
% 1.79/0.98      | v1_relat_1(X0_52) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_6]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1465,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
% 1.79/0.98      | v1_relat_1(X0_52)
% 1.79/0.98      | ~ v1_relat_1(k2_zfmisc_1(X0_53,X1_53)) ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_907]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1645,plain,
% 1.79/0.98      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1)))
% 1.79/0.98      | ~ v1_relat_1(k2_zfmisc_1(sK3,sK1))
% 1.79/0.98      | v1_relat_1(sK5) ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_1465]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1646,plain,
% 1.79/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) != iProver_top
% 1.79/0.98      | v1_relat_1(k2_zfmisc_1(sK3,sK1)) != iProver_top
% 1.79/0.98      | v1_relat_1(sK5) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_1645]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_7,plain,
% 1.79/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.79/0.98      inference(cnf_transformation,[],[f46]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_906,plain,
% 1.79/0.98      ( v1_relat_1(k2_zfmisc_1(X0_53,X1_53)) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_7]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1856,plain,
% 1.79/0.98      ( v1_relat_1(k2_zfmisc_1(sK3,sK1)) ),
% 1.79/0.98      inference(instantiation,[status(thm)],[c_906]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1857,plain,
% 1.79/0.98      ( v1_relat_1(k2_zfmisc_1(sK3,sK1)) = iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_1856]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2503,plain,
% 1.79/0.98      ( r2_hidden(X0_52,sK2) != iProver_top
% 1.79/0.98      | k7_partfun1(sK1,sK5,k1_funct_1(sK4,X0_52)) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52)) ),
% 1.79/0.98      inference(global_propositional_subsumption,
% 1.79/0.98                [status(thm)],
% 1.79/0.98                [c_2474,c_28,c_1646,c_1857]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2504,plain,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,X0_52)) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
% 1.79/0.98      | r2_hidden(X0_52,sK2) != iProver_top ),
% 1.79/0.98      inference(renaming,[status(thm)],[c_2503]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_2512,plain,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) = k1_funct_1(sK5,k1_funct_1(sK4,sK6)) ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_2246,c_2504]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_11,plain,
% 1.79/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.79/0.98      | ~ m1_subset_1(X3,X1)
% 1.79/0.98      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X5)))
% 1.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(X1,X2,X0),k1_relset_1(X2,X5,X4))
% 1.79/0.98      | ~ v1_funct_1(X4)
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | v1_xboole_0(X2)
% 1.79/0.98      | k1_funct_1(k8_funct_2(X1,X2,X5,X0,X4),X3) = k1_funct_1(X4,k1_funct_1(X0,X3))
% 1.79/0.98      | k1_xboole_0 = X1 ),
% 1.79/0.98      inference(cnf_transformation,[],[f50]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_277,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,X1)
% 1.79/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.79/0.98      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X5)))
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(X1,X3,X2),k1_relset_1(X3,X5,X4))
% 1.79/0.98      | ~ v1_funct_1(X2)
% 1.79/0.98      | ~ v1_funct_1(X4)
% 1.79/0.98      | v1_xboole_0(X3)
% 1.79/0.98      | k1_funct_1(k8_funct_2(X1,X3,X5,X2,X4),X0) = k1_funct_1(X4,k1_funct_1(X2,X0))
% 1.79/0.98      | sK3 != X3
% 1.79/0.98      | sK2 != X1
% 1.79/0.98      | sK4 != X2
% 1.79/0.98      | k1_xboole_0 = X1 ),
% 1.79/0.98      inference(resolution_lifted,[status(thm)],[c_11,c_20]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_278,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
% 1.79/0.98      | ~ m1_subset_1(X2,sK2)
% 1.79/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | ~ v1_funct_1(sK4)
% 1.79/0.98      | v1_xboole_0(sK3)
% 1.79/0.98      | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2))
% 1.79/0.98      | k1_xboole_0 = sK2 ),
% 1.79/0.98      inference(unflattening,[status(thm)],[c_277]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_282,plain,
% 1.79/0.98      ( k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
% 1.79/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
% 1.79/0.98      | ~ m1_subset_1(X2,sK2) ),
% 1.79/0.98      inference(global_propositional_subsumption,
% 1.79/0.98                [status(thm)],
% 1.79/0.98                [c_278,c_22,c_21,c_19,c_14]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_283,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
% 1.79/0.98      | ~ m1_subset_1(X2,sK2)
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
% 1.79/0.98      | ~ v1_funct_1(X0)
% 1.79/0.98      | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2)) ),
% 1.79/0.98      inference(renaming,[status(thm)],[c_282]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_314,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
% 1.79/0.98      | ~ m1_subset_1(X2,sK2)
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,X0))
% 1.79/0.98      | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,X0),X2) = k1_funct_1(X0,k1_funct_1(sK4,X2))
% 1.79/0.98      | sK5 != X0 ),
% 1.79/0.98      inference(resolution_lifted,[status(thm)],[c_283,c_18]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_315,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0,sK2)
% 1.79/0.98      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,X1)))
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X1,sK5))
% 1.79/0.98      | k1_funct_1(k8_funct_2(sK2,sK3,X1,sK4,sK5),X0) = k1_funct_1(sK5,k1_funct_1(sK4,X0)) ),
% 1.79/0.98      inference(unflattening,[status(thm)],[c_314]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_896,plain,
% 1.79/0.98      ( ~ m1_subset_1(X0_52,sK2)
% 1.79/0.98      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,X0_53)))
% 1.79/0.98      | ~ r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X0_53,sK5))
% 1.79/0.98      | k1_funct_1(k8_funct_2(sK2,sK3,X0_53,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52)) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_315]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1314,plain,
% 1.79/0.98      ( k1_funct_1(k8_funct_2(sK2,sK3,X0_53,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
% 1.79/0.98      | m1_subset_1(X0_52,sK2) != iProver_top
% 1.79/0.98      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,X0_53))) != iProver_top
% 1.79/0.98      | r1_tarski(k2_relset_1(sK2,sK3,sK4),k1_relset_1(sK3,X0_53,sK5)) != iProver_top ),
% 1.79/0.98      inference(predicate_to_equality,[status(thm)],[c_896]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1882,plain,
% 1.79/0.98      ( k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
% 1.79/0.98      | m1_subset_1(X0_52,sK2) != iProver_top
% 1.79/0.98      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK1))) != iProver_top ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_1308,c_1314]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1887,plain,
% 1.79/0.98      ( m1_subset_1(X0_52,sK2) != iProver_top
% 1.79/0.98      | k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52)) ),
% 1.79/0.98      inference(global_propositional_subsumption,
% 1.79/0.98                [status(thm)],
% 1.79/0.98                [c_1882,c_28]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1888,plain,
% 1.79/0.98      ( k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),X0_52) = k1_funct_1(sK5,k1_funct_1(sK4,X0_52))
% 1.79/0.98      | m1_subset_1(X0_52,sK2) != iProver_top ),
% 1.79/0.98      inference(renaming,[status(thm)],[c_1887]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1895,plain,
% 1.79/0.98      ( k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) = k1_funct_1(sK5,k1_funct_1(sK4,sK6)) ),
% 1.79/0.98      inference(superposition,[status(thm)],[c_1309,c_1888]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_13,negated_conjecture,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) ),
% 1.79/0.98      inference(cnf_transformation,[],[f61]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_904,negated_conjecture,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(k8_funct_2(sK2,sK3,sK1,sK4,sK5),sK6) ),
% 1.79/0.98      inference(subtyping,[status(esa)],[c_13]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(c_1934,plain,
% 1.79/0.98      ( k7_partfun1(sK1,sK5,k1_funct_1(sK4,sK6)) != k1_funct_1(sK5,k1_funct_1(sK4,sK6)) ),
% 1.79/0.98      inference(demodulation,[status(thm)],[c_1895,c_904]) ).
% 1.79/0.98  
% 1.79/0.98  cnf(contradiction,plain,
% 1.79/0.98      ( $false ),
% 1.79/0.98      inference(minisat,[status(thm)],[c_2512,c_1934]) ).
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.79/0.98  
% 1.79/0.98  ------                               Statistics
% 1.79/0.98  
% 1.79/0.98  ------ General
% 1.79/0.98  
% 1.79/0.98  abstr_ref_over_cycles:                  0
% 1.79/0.98  abstr_ref_under_cycles:                 0
% 1.79/0.98  gc_basic_clause_elim:                   0
% 1.79/0.98  forced_gc_time:                         0
% 1.79/0.98  parsing_time:                           0.009
% 1.79/0.98  unif_index_cands_time:                  0.
% 1.79/0.98  unif_index_add_time:                    0.
% 1.79/0.98  orderings_time:                         0.
% 1.79/0.98  out_proof_time:                         0.009
% 1.79/0.98  total_time:                             0.096
% 1.79/0.98  num_of_symbols:                         57
% 1.79/0.98  num_of_terms:                           2447
% 1.79/0.98  
% 1.79/0.98  ------ Preprocessing
% 1.79/0.98  
% 1.79/0.98  num_of_splits:                          0
% 1.79/0.98  num_of_split_atoms:                     0
% 1.79/0.98  num_of_reused_defs:                     0
% 1.79/0.98  num_eq_ax_congr_red:                    9
% 1.79/0.98  num_of_sem_filtered_clauses:            1
% 1.79/0.98  num_of_subtypes:                        2
% 1.79/0.98  monotx_restored_types:                  1
% 1.79/0.98  sat_num_of_epr_types:                   0
% 1.79/0.98  sat_num_of_non_cyclic_types:            0
% 1.79/0.98  sat_guarded_non_collapsed_types:        0
% 1.79/0.98  num_pure_diseq_elim:                    0
% 1.79/0.98  simp_replaced_by:                       0
% 1.79/0.98  res_preprocessed:                       121
% 1.79/0.98  prep_upred:                             0
% 1.79/0.98  prep_unflattend:                        38
% 1.79/0.98  smt_new_axioms:                         0
% 1.79/0.98  pred_elim_cands:                        5
% 1.79/0.98  pred_elim:                              3
% 1.79/0.98  pred_elim_cl:                           2
% 1.79/0.98  pred_elim_cycles:                       5
% 1.79/0.98  merged_defs:                            0
% 1.79/0.98  merged_defs_ncl:                        0
% 1.79/0.98  bin_hyper_res:                          0
% 1.79/0.98  prep_cycles:                            4
% 1.79/0.98  pred_elim_time:                         0.013
% 1.79/0.98  splitting_time:                         0.
% 1.79/0.98  sem_filter_time:                        0.
% 1.79/0.98  monotx_time:                            0.
% 1.79/0.98  subtype_inf_time:                       0.001
% 1.79/0.98  
% 1.79/0.98  ------ Problem properties
% 1.79/0.98  
% 1.79/0.98  clauses:                                21
% 1.79/0.98  conjectures:                            7
% 1.79/0.98  epr:                                    7
% 1.79/0.98  horn:                                   18
% 1.79/0.98  ground:                                 8
% 1.79/0.98  unary:                                  9
% 1.79/0.98  binary:                                 3
% 1.79/0.98  lits:                                   46
% 1.79/0.98  lits_eq:                                9
% 1.79/0.98  fd_pure:                                0
% 1.79/0.98  fd_pseudo:                              0
% 1.79/0.98  fd_cond:                                0
% 1.79/0.98  fd_pseudo_cond:                         1
% 1.79/0.98  ac_symbols:                             0
% 1.79/0.98  
% 1.79/0.98  ------ Propositional Solver
% 1.79/0.98  
% 1.79/0.98  prop_solver_calls:                      27
% 1.79/0.98  prop_fast_solver_calls:                 802
% 1.79/0.98  smt_solver_calls:                       0
% 1.79/0.98  smt_fast_solver_calls:                  0
% 1.79/0.98  prop_num_of_clauses:                    738
% 1.79/0.98  prop_preprocess_simplified:             3568
% 1.79/0.98  prop_fo_subsumed:                       12
% 1.79/0.98  prop_solver_time:                       0.
% 1.79/0.98  smt_solver_time:                        0.
% 1.79/0.98  smt_fast_solver_time:                   0.
% 1.79/0.98  prop_fast_solver_time:                  0.
% 1.79/0.98  prop_unsat_core_time:                   0.
% 1.79/0.98  
% 1.79/0.98  ------ QBF
% 1.79/0.98  
% 1.79/0.98  qbf_q_res:                              0
% 1.79/0.98  qbf_num_tautologies:                    0
% 1.79/0.98  qbf_prep_cycles:                        0
% 1.79/0.98  
% 1.79/0.98  ------ BMC1
% 1.79/0.98  
% 1.79/0.98  bmc1_current_bound:                     -1
% 1.79/0.98  bmc1_last_solved_bound:                 -1
% 1.79/0.98  bmc1_unsat_core_size:                   -1
% 1.79/0.98  bmc1_unsat_core_parents_size:           -1
% 1.79/0.98  bmc1_merge_next_fun:                    0
% 1.79/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.79/0.98  
% 1.79/0.98  ------ Instantiation
% 1.79/0.98  
% 1.79/0.98  inst_num_of_clauses:                    223
% 1.79/0.98  inst_num_in_passive:                    51
% 1.79/0.98  inst_num_in_active:                     172
% 1.79/0.98  inst_num_in_unprocessed:                0
% 1.79/0.98  inst_num_of_loops:                      200
% 1.79/0.98  inst_num_of_learning_restarts:          0
% 1.79/0.98  inst_num_moves_active_passive:          23
% 1.79/0.98  inst_lit_activity:                      0
% 1.79/0.98  inst_lit_activity_moves:                0
% 1.79/0.98  inst_num_tautologies:                   0
% 1.79/0.98  inst_num_prop_implied:                  0
% 1.79/0.98  inst_num_existing_simplified:           0
% 1.79/0.98  inst_num_eq_res_simplified:             0
% 1.79/0.98  inst_num_child_elim:                    0
% 1.79/0.98  inst_num_of_dismatching_blockings:      29
% 1.79/0.98  inst_num_of_non_proper_insts:           214
% 1.79/0.98  inst_num_of_duplicates:                 0
% 1.79/0.98  inst_inst_num_from_inst_to_res:         0
% 1.79/0.98  inst_dismatching_checking_time:         0.
% 1.79/0.98  
% 1.79/0.98  ------ Resolution
% 1.79/0.98  
% 1.79/0.98  res_num_of_clauses:                     0
% 1.79/0.98  res_num_in_passive:                     0
% 1.79/0.98  res_num_in_active:                      0
% 1.79/0.98  res_num_of_loops:                       125
% 1.79/0.98  res_forward_subset_subsumed:            37
% 1.79/0.98  res_backward_subset_subsumed:           2
% 1.79/0.98  res_forward_subsumed:                   0
% 1.79/0.98  res_backward_subsumed:                  0
% 1.79/0.98  res_forward_subsumption_resolution:     0
% 1.79/0.98  res_backward_subsumption_resolution:    0
% 1.79/0.98  res_clause_to_clause_subsumption:       53
% 1.79/0.98  res_orphan_elimination:                 0
% 1.79/0.98  res_tautology_del:                      26
% 1.79/0.98  res_num_eq_res_simplified:              0
% 1.79/0.98  res_num_sel_changes:                    0
% 1.79/0.98  res_moves_from_active_to_pass:          0
% 1.79/0.98  
% 1.79/0.98  ------ Superposition
% 1.79/0.98  
% 1.79/0.98  sup_time_total:                         0.
% 1.79/0.98  sup_time_generating:                    0.
% 1.79/0.98  sup_time_sim_full:                      0.
% 1.79/0.98  sup_time_sim_immed:                     0.
% 1.79/0.98  
% 1.79/0.98  sup_num_of_clauses:                     45
% 1.79/0.98  sup_num_in_active:                      37
% 1.79/0.98  sup_num_in_passive:                     8
% 1.79/0.98  sup_num_of_loops:                       38
% 1.79/0.98  sup_fw_superposition:                   20
% 1.79/0.98  sup_bw_superposition:                   5
% 1.79/0.98  sup_immediate_simplified:               1
% 1.79/0.98  sup_given_eliminated:                   0
% 1.79/0.98  comparisons_done:                       0
% 1.79/0.98  comparisons_avoided:                    0
% 1.79/0.98  
% 1.79/0.98  ------ Simplifications
% 1.79/0.98  
% 1.79/0.98  
% 1.79/0.98  sim_fw_subset_subsumed:                 1
% 1.79/0.98  sim_bw_subset_subsumed:                 0
% 1.79/0.98  sim_fw_subsumed:                        0
% 1.79/0.98  sim_bw_subsumed:                        0
% 1.79/0.98  sim_fw_subsumption_res:                 0
% 1.79/0.98  sim_bw_subsumption_res:                 0
% 1.79/0.98  sim_tautology_del:                      1
% 1.79/0.98  sim_eq_tautology_del:                   1
% 1.79/0.98  sim_eq_res_simp:                        0
% 1.79/0.98  sim_fw_demodulated:                     0
% 1.79/0.98  sim_bw_demodulated:                     2
% 1.79/0.98  sim_light_normalised:                   1
% 1.79/0.98  sim_joinable_taut:                      0
% 1.79/0.98  sim_joinable_simp:                      0
% 1.79/0.98  sim_ac_normalised:                      0
% 1.79/0.98  sim_smt_subsumption:                    0
% 1.79/0.98  
%------------------------------------------------------------------------------
