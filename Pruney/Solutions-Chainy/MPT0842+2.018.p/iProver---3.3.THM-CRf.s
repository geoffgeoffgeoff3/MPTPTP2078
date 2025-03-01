%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:57:05 EST 2020

% Result     : Theorem 2.92s
% Output     : CNFRefutation 2.92s
% Verified   : 
% Statistics : Number of formulae       :  115 ( 643 expanded)
%              Number of clauses        :   63 ( 179 expanded)
%              Number of leaves         :   17 ( 214 expanded)
%              Depth                    :   21
%              Number of atoms          :  536 (5701 expanded)
%              Number of equality atoms :  134 ( 317 expanded)
%              Maximal formula depth    :   17 (   6 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1,X2] :
          ( k10_relat_1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ? [X4] :
                  ( r2_hidden(X4,X1)
                  & r2_hidden(k4_tarski(X3,X4),X0) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k10_relat_1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ? [X4] :
                  ( r2_hidden(X4,X1)
                  & r2_hidden(k4_tarski(X3,X4),X0) ) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k10_relat_1(X0,X1) = X2
            | ? [X3] :
                ( ( ! [X4] :
                      ( ~ r2_hidden(X4,X1)
                      | ~ r2_hidden(k4_tarski(X3,X4),X0) )
                  | ~ r2_hidden(X3,X2) )
                & ( ? [X4] :
                      ( r2_hidden(X4,X1)
                      & r2_hidden(k4_tarski(X3,X4),X0) )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X3] :
                ( ( r2_hidden(X3,X2)
                  | ! [X4] :
                      ( ~ r2_hidden(X4,X1)
                      | ~ r2_hidden(k4_tarski(X3,X4),X0) ) )
                & ( ? [X4] :
                      ( r2_hidden(X4,X1)
                      & r2_hidden(k4_tarski(X3,X4),X0) )
                  | ~ r2_hidden(X3,X2) ) )
            | k10_relat_1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k10_relat_1(X0,X1) = X2
            | ? [X3] :
                ( ( ! [X4] :
                      ( ~ r2_hidden(X4,X1)
                      | ~ r2_hidden(k4_tarski(X3,X4),X0) )
                  | ~ r2_hidden(X3,X2) )
                & ( ? [X5] :
                      ( r2_hidden(X5,X1)
                      & r2_hidden(k4_tarski(X3,X5),X0) )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X6] :
                ( ( r2_hidden(X6,X2)
                  | ! [X7] :
                      ( ~ r2_hidden(X7,X1)
                      | ~ r2_hidden(k4_tarski(X6,X7),X0) ) )
                & ( ? [X8] :
                      ( r2_hidden(X8,X1)
                      & r2_hidden(k4_tarski(X6,X8),X0) )
                  | ~ r2_hidden(X6,X2) ) )
            | k10_relat_1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f21])).

fof(f25,plain,(
    ! [X6,X1,X0] :
      ( ? [X8] :
          ( r2_hidden(X8,X1)
          & r2_hidden(k4_tarski(X6,X8),X0) )
     => ( r2_hidden(sK2(X0,X1,X6),X1)
        & r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X5] :
          ( r2_hidden(X5,X1)
          & r2_hidden(k4_tarski(X3,X5),X0) )
     => ( r2_hidden(sK1(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(X3,sK1(X0,X1,X2)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ! [X4] :
                ( ~ r2_hidden(X4,X1)
                | ~ r2_hidden(k4_tarski(X3,X4),X0) )
            | ~ r2_hidden(X3,X2) )
          & ( ? [X5] :
                ( r2_hidden(X5,X1)
                & r2_hidden(k4_tarski(X3,X5),X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ! [X4] :
              ( ~ r2_hidden(X4,X1)
              | ~ r2_hidden(k4_tarski(sK0(X0,X1,X2),X4),X0) )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ? [X5] :
              ( r2_hidden(X5,X1)
              & r2_hidden(k4_tarski(sK0(X0,X1,X2),X5),X0) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k10_relat_1(X0,X1) = X2
            | ( ( ! [X4] :
                    ( ~ r2_hidden(X4,X1)
                    | ~ r2_hidden(k4_tarski(sK0(X0,X1,X2),X4),X0) )
                | ~ r2_hidden(sK0(X0,X1,X2),X2) )
              & ( ( r2_hidden(sK1(X0,X1,X2),X1)
                  & r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X0) )
                | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
          & ( ! [X6] :
                ( ( r2_hidden(X6,X2)
                  | ! [X7] :
                      ( ~ r2_hidden(X7,X1)
                      | ~ r2_hidden(k4_tarski(X6,X7),X0) ) )
                & ( ( r2_hidden(sK2(X0,X1,X6),X1)
                    & r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0) )
                  | ~ r2_hidden(X6,X2) ) )
            | k10_relat_1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f22,f25,f24,f23])).

fof(f51,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_hidden(sK2(X0,X1,X6),X1)
      | ~ r2_hidden(X6,X2)
      | k10_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f72,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(sK2(X0,X1,X6),X1)
      | ~ r2_hidden(X6,k10_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f51])).

fof(f50,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0)
      | ~ r2_hidden(X6,X2)
      | k10_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f73,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0)
      | ~ r2_hidden(X6,k10_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f9,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( ~ v1_xboole_0(X2)
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                 => ! [X4] :
                      ( m1_subset_1(X4,X0)
                     => ( r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))
                      <=> ? [X5] :
                            ( r2_hidden(X5,X1)
                            & r2_hidden(k4_tarski(X4,X5),X3)
                            & m1_subset_1(X5,X2) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( ~ v1_xboole_0(X2)
               => ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                   => ! [X4] :
                        ( m1_subset_1(X4,X0)
                       => ( r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))
                        <=> ? [X5] :
                              ( r2_hidden(X5,X1)
                              & r2_hidden(k4_tarski(X4,X5),X3)
                              & m1_subset_1(X5,X2) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f17,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ( r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))
                      <~> ? [X5] :
                            ( r2_hidden(X5,X1)
                            & r2_hidden(k4_tarski(X4,X5),X3)
                            & m1_subset_1(X5,X2) ) )
                      & m1_subset_1(X4,X0) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
              & ~ v1_xboole_0(X2) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(X5,X1)
                            | ~ r2_hidden(k4_tarski(X4,X5),X3)
                            | ~ m1_subset_1(X5,X2) )
                        | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & ( ? [X5] :
                            ( r2_hidden(X5,X1)
                            & r2_hidden(k4_tarski(X4,X5),X3)
                            & m1_subset_1(X5,X2) )
                        | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & m1_subset_1(X4,X0) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
              & ~ v1_xboole_0(X2) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(X5,X1)
                            | ~ r2_hidden(k4_tarski(X4,X5),X3)
                            | ~ m1_subset_1(X5,X2) )
                        | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & ( ? [X5] :
                            ( r2_hidden(X5,X1)
                            & r2_hidden(k4_tarski(X4,X5),X3)
                            & m1_subset_1(X5,X2) )
                        | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & m1_subset_1(X4,X0) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
              & ~ v1_xboole_0(X2) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(X5,X1)
                            | ~ r2_hidden(k4_tarski(X4,X5),X3)
                            | ~ m1_subset_1(X5,X2) )
                        | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & ( ? [X6] :
                            ( r2_hidden(X6,X1)
                            & r2_hidden(k4_tarski(X4,X6),X3)
                            & m1_subset_1(X6,X2) )
                        | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & m1_subset_1(X4,X0) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
              & ~ v1_xboole_0(X2) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(rectify,[],[f32])).

fof(f39,plain,(
    ! [X4,X2,X3,X1] :
      ( ? [X6] :
          ( r2_hidden(X6,X1)
          & r2_hidden(k4_tarski(X4,X6),X3)
          & m1_subset_1(X6,X2) )
     => ( r2_hidden(sK9,X1)
        & r2_hidden(k4_tarski(X4,sK9),X3)
        & m1_subset_1(sK9,X2) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ( ! [X5] :
                ( ~ r2_hidden(X5,X1)
                | ~ r2_hidden(k4_tarski(X4,X5),X3)
                | ~ m1_subset_1(X5,X2) )
            | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
          & ( ? [X6] :
                ( r2_hidden(X6,X1)
                & r2_hidden(k4_tarski(X4,X6),X3)
                & m1_subset_1(X6,X2) )
            | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
          & m1_subset_1(X4,X0) )
     => ( ( ! [X5] :
              ( ~ r2_hidden(X5,X1)
              | ~ r2_hidden(k4_tarski(sK8,X5),X3)
              | ~ m1_subset_1(X5,X2) )
          | ~ r2_hidden(sK8,k8_relset_1(X0,X2,X3,X1)) )
        & ( ? [X6] :
              ( r2_hidden(X6,X1)
              & r2_hidden(k4_tarski(sK8,X6),X3)
              & m1_subset_1(X6,X2) )
          | r2_hidden(sK8,k8_relset_1(X0,X2,X3,X1)) )
        & m1_subset_1(sK8,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ( ! [X5] :
                    ( ~ r2_hidden(X5,X1)
                    | ~ r2_hidden(k4_tarski(X4,X5),X3)
                    | ~ m1_subset_1(X5,X2) )
                | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
              & ( ? [X6] :
                    ( r2_hidden(X6,X1)
                    & r2_hidden(k4_tarski(X4,X6),X3)
                    & m1_subset_1(X6,X2) )
                | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
              & m1_subset_1(X4,X0) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
     => ( ? [X4] :
            ( ( ! [X5] :
                  ( ~ r2_hidden(X5,X1)
                  | ~ r2_hidden(k4_tarski(X4,X5),sK7)
                  | ~ m1_subset_1(X5,X2) )
              | ~ r2_hidden(X4,k8_relset_1(X0,X2,sK7,X1)) )
            & ( ? [X6] :
                  ( r2_hidden(X6,X1)
                  & r2_hidden(k4_tarski(X4,X6),sK7)
                  & m1_subset_1(X6,X2) )
              | r2_hidden(X4,k8_relset_1(X0,X2,sK7,X1)) )
            & m1_subset_1(X4,X0) )
        & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ( ! [X5] :
                        ( ~ r2_hidden(X5,X1)
                        | ~ r2_hidden(k4_tarski(X4,X5),X3)
                        | ~ m1_subset_1(X5,X2) )
                    | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                  & ( ? [X6] :
                        ( r2_hidden(X6,X1)
                        & r2_hidden(k4_tarski(X4,X6),X3)
                        & m1_subset_1(X6,X2) )
                    | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                  & m1_subset_1(X4,X0) )
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
          & ~ v1_xboole_0(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( ( ! [X5] :
                      ( ~ r2_hidden(X5,X1)
                      | ~ r2_hidden(k4_tarski(X4,X5),X3)
                      | ~ m1_subset_1(X5,sK6) )
                  | ~ r2_hidden(X4,k8_relset_1(X0,sK6,X3,X1)) )
                & ( ? [X6] :
                      ( r2_hidden(X6,X1)
                      & r2_hidden(k4_tarski(X4,X6),X3)
                      & m1_subset_1(X6,sK6) )
                  | r2_hidden(X4,k8_relset_1(X0,sK6,X3,X1)) )
                & m1_subset_1(X4,X0) )
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,sK6))) )
        & ~ v1_xboole_0(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(X5,X1)
                            | ~ r2_hidden(k4_tarski(X4,X5),X3)
                            | ~ m1_subset_1(X5,X2) )
                        | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & ( ? [X6] :
                            ( r2_hidden(X6,X1)
                            & r2_hidden(k4_tarski(X4,X6),X3)
                            & m1_subset_1(X6,X2) )
                        | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                      & m1_subset_1(X4,X0) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
              & ~ v1_xboole_0(X2) )
          & ~ v1_xboole_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ? [X4] :
                    ( ( ! [X5] :
                          ( ~ r2_hidden(X5,sK5)
                          | ~ r2_hidden(k4_tarski(X4,X5),X3)
                          | ~ m1_subset_1(X5,X2) )
                      | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,sK5)) )
                    & ( ? [X6] :
                          ( r2_hidden(X6,sK5)
                          & r2_hidden(k4_tarski(X4,X6),X3)
                          & m1_subset_1(X6,X2) )
                      | r2_hidden(X4,k8_relset_1(X0,X2,X3,sK5)) )
                    & m1_subset_1(X4,X0) )
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
            & ~ v1_xboole_0(X2) )
        & ~ v1_xboole_0(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ( ! [X5] :
                              ( ~ r2_hidden(X5,X1)
                              | ~ r2_hidden(k4_tarski(X4,X5),X3)
                              | ~ m1_subset_1(X5,X2) )
                          | ~ r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                        & ( ? [X6] :
                              ( r2_hidden(X6,X1)
                              & r2_hidden(k4_tarski(X4,X6),X3)
                              & m1_subset_1(X6,X2) )
                          | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) )
                        & m1_subset_1(X4,X0) )
                    & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) )
                & ~ v1_xboole_0(X2) )
            & ~ v1_xboole_0(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(X5,X1)
                            | ~ r2_hidden(k4_tarski(X4,X5),X3)
                            | ~ m1_subset_1(X5,X2) )
                        | ~ r2_hidden(X4,k8_relset_1(sK4,X2,X3,X1)) )
                      & ( ? [X6] :
                            ( r2_hidden(X6,X1)
                            & r2_hidden(k4_tarski(X4,X6),X3)
                            & m1_subset_1(X6,X2) )
                        | r2_hidden(X4,k8_relset_1(sK4,X2,X3,X1)) )
                      & m1_subset_1(X4,sK4) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK4,X2))) )
              & ~ v1_xboole_0(X2) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ( ! [X5] :
          ( ~ r2_hidden(X5,sK5)
          | ~ r2_hidden(k4_tarski(sK8,X5),sK7)
          | ~ m1_subset_1(X5,sK6) )
      | ~ r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) )
    & ( ( r2_hidden(sK9,sK5)
        & r2_hidden(k4_tarski(sK8,sK9),sK7)
        & m1_subset_1(sK9,sK6) )
      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) )
    & m1_subset_1(sK8,sK4)
    & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6)))
    & ~ v1_xboole_0(sK6)
    & ~ v1_xboole_0(sK5)
    & ~ v1_xboole_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7,sK8,sK9])],[f33,f39,f38,f37,f36,f35,f34])).

fof(f65,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) ),
    inference(cnf_transformation,[],[f40])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(flattening,[],[f18])).

fof(f42,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X1,X3)
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f49,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f6,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f45,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f64,plain,(
    ~ v1_xboole_0(sK6) ),
    inference(cnf_transformation,[],[f40])).

fof(f67,plain,
    ( m1_subset_1(sK9,sK6)
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f40])).

fof(f70,plain,(
    ! [X5] :
      ( ~ r2_hidden(X5,sK5)
      | ~ r2_hidden(k4_tarski(sK8,X5),sK7)
      | ~ m1_subset_1(X5,sK6)
      | ~ r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f61,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f69,plain,
    ( r2_hidden(sK9,sK5)
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f40])).

fof(f68,plain,
    ( r2_hidden(k4_tarski(sK8,sK9),sK7)
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f40])).

fof(f52,plain,(
    ! [X6,X2,X0,X7,X1] :
      ( r2_hidden(X6,X2)
      | ~ r2_hidden(X7,X1)
      | ~ r2_hidden(k4_tarski(X6,X7),X0)
      | k10_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f71,plain,(
    ! [X6,X0,X7,X1] :
      ( r2_hidden(X6,k10_relat_1(X0,X1))
      | ~ r2_hidden(X7,X1)
      | ~ r2_hidden(k4_tarski(X6,X7),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f52])).

cnf(c_13,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(sK2(X1,X2,X0),X2)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1800,plain,
    ( r2_hidden(X0,k10_relat_1(X1,X2)) != iProver_top
    | r2_hidden(sK2(X1,X2,X0),X2) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_14,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(k4_tarski(X0,sK2(X1,X2,X0)),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1799,plain,
    ( r2_hidden(X0,k10_relat_1(X1,X2)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK2(X1,X2,X0)),X1) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_26,negated_conjecture,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1788,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1806,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_3148,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK4,sK6)) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1788,c_1806])).

cnf(c_1,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1812,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_3458,plain,
    ( r2_hidden(X0,sK6) = iProver_top
    | r2_hidden(k4_tarski(X1,X0),sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_3148,c_1812])).

cnf(c_4212,plain,
    ( r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
    | r2_hidden(sK2(sK7,X1,X0),sK6) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1799,c_3458])).

cnf(c_33,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_2030,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_2344,plain,
    ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6)))
    | ~ v1_relat_1(k2_zfmisc_1(sK4,sK6))
    | v1_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_2030])).

cnf(c_2345,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK4,sK6)) != iProver_top
    | v1_relat_1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2344])).

cnf(c_15,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_2688,plain,
    ( v1_relat_1(k2_zfmisc_1(sK4,sK6)) ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_2689,plain,
    ( v1_relat_1(k2_zfmisc_1(sK4,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2688])).

cnf(c_6421,plain,
    ( r2_hidden(sK2(sK7,X1,X0),sK6) = iProver_top
    | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4212,c_33,c_2345,c_2689])).

cnf(c_6422,plain,
    ( r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
    | r2_hidden(sK2(sK7,X1,X0),sK6) = iProver_top ),
    inference(renaming,[status(thm)],[c_6421])).

cnf(c_5,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1808,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_6429,plain,
    ( m1_subset_1(sK2(sK7,X0,X1),sK6) = iProver_top
    | r2_hidden(X1,k10_relat_1(sK7,X0)) != iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_6422,c_1808])).

cnf(c_27,negated_conjecture,
    ( ~ v1_xboole_0(sK6) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_32,plain,
    ( v1_xboole_0(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_7552,plain,
    ( r2_hidden(X1,k10_relat_1(sK7,X0)) != iProver_top
    | m1_subset_1(sK2(sK7,X0,X1),sK6) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6429,c_32])).

cnf(c_7553,plain,
    ( m1_subset_1(sK2(sK7,X0,X1),sK6) = iProver_top
    | r2_hidden(X1,k10_relat_1(sK7,X0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_7552])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK9,sK6)
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1790,plain,
    ( m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_21,negated_conjecture,
    ( ~ m1_subset_1(X0,sK6)
    | ~ r2_hidden(X0,sK5)
    | ~ r2_hidden(k4_tarski(sK8,X0),sK7)
    | ~ r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1793,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top
    | r2_hidden(k4_tarski(sK8,X0),sK7) != iProver_top
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2138,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top
    | r2_hidden(k4_tarski(sK8,X0),sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1790,c_1793])).

cnf(c_3898,plain,
    ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
    | m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1799,c_2138])).

cnf(c_4472,plain,
    ( r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | m1_subset_1(sK9,sK6) = iProver_top
    | m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3898,c_33,c_2345,c_2689])).

cnf(c_4473,plain,
    ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
    | m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_4472])).

cnf(c_7564,plain,
    ( m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7553,c_4473])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1794,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3132,plain,
    ( k8_relset_1(sK4,sK6,sK7,X0) = k10_relat_1(sK7,X0) ),
    inference(superposition,[status(thm)],[c_1788,c_1794])).

cnf(c_22,negated_conjecture,
    ( r2_hidden(sK9,sK5)
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1792,plain,
    ( r2_hidden(sK9,sK5) = iProver_top
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3258,plain,
    ( r2_hidden(sK9,sK5) = iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3132,c_1792])).

cnf(c_23,negated_conjecture,
    ( r2_hidden(k4_tarski(sK8,sK9),sK7)
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1791,plain,
    ( r2_hidden(k4_tarski(sK8,sK9),sK7) = iProver_top
    | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_3257,plain,
    ( r2_hidden(k4_tarski(sK8,sK9),sK7) = iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3132,c_1791])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k10_relat_1(X3,X1))
    | ~ r2_hidden(k4_tarski(X2,X0),X3)
    | ~ v1_relat_1(X3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1801,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X2,k10_relat_1(X3,X1)) = iProver_top
    | r2_hidden(k4_tarski(X2,X0),X3) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_4491,plain,
    ( r2_hidden(sK9,X0) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) = iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_3257,c_1801])).

cnf(c_6377,plain,
    ( r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) = iProver_top
    | r2_hidden(sK9,X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4491,c_33,c_2345,c_2689])).

cnf(c_6378,plain,
    ( r2_hidden(sK9,X0) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) = iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
    inference(renaming,[status(thm)],[c_6377])).

cnf(c_6390,plain,
    ( r2_hidden(sK9,sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top
    | iProver_top != iProver_top ),
    inference(equality_factoring,[status(thm)],[c_6378])).

cnf(c_6392,plain,
    ( r2_hidden(sK9,sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_6390])).

cnf(c_3260,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top
    | r2_hidden(k4_tarski(sK8,X0),sK7) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3132,c_1793])).

cnf(c_3895,plain,
    ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1799,c_3260])).

cnf(c_5279,plain,
    ( r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3895,c_33,c_2345,c_2689])).

cnf(c_5280,plain,
    ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
    | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5279])).

cnf(c_7562,plain,
    ( r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7553,c_5280])).

cnf(c_8490,plain,
    ( r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
    | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7564,c_3258,c_6392,c_7562])).

cnf(c_8498,plain,
    ( r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1800,c_8490])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8498,c_6392,c_3258,c_2689,c_2345,c_33])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n009.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 19:24:26 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.92/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.92/0.98  
% 2.92/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.92/0.98  
% 2.92/0.98  ------  iProver source info
% 2.92/0.98  
% 2.92/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.92/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.92/0.98  git: non_committed_changes: false
% 2.92/0.98  git: last_make_outside_of_git: false
% 2.92/0.98  
% 2.92/0.98  ------ 
% 2.92/0.98  
% 2.92/0.98  ------ Input Options
% 2.92/0.98  
% 2.92/0.98  --out_options                           all
% 2.92/0.98  --tptp_safe_out                         true
% 2.92/0.98  --problem_path                          ""
% 2.92/0.98  --include_path                          ""
% 2.92/0.98  --clausifier                            res/vclausify_rel
% 2.92/0.98  --clausifier_options                    --mode clausify
% 2.92/0.98  --stdin                                 false
% 2.92/0.98  --stats_out                             all
% 2.92/0.98  
% 2.92/0.98  ------ General Options
% 2.92/0.98  
% 2.92/0.98  --fof                                   false
% 2.92/0.98  --time_out_real                         305.
% 2.92/0.98  --time_out_virtual                      -1.
% 2.92/0.98  --symbol_type_check                     false
% 2.92/0.98  --clausify_out                          false
% 2.92/0.98  --sig_cnt_out                           false
% 2.92/0.98  --trig_cnt_out                          false
% 2.92/0.98  --trig_cnt_out_tolerance                1.
% 2.92/0.98  --trig_cnt_out_sk_spl                   false
% 2.92/0.98  --abstr_cl_out                          false
% 2.92/0.98  
% 2.92/0.98  ------ Global Options
% 2.92/0.98  
% 2.92/0.98  --schedule                              default
% 2.92/0.98  --add_important_lit                     false
% 2.92/0.98  --prop_solver_per_cl                    1000
% 2.92/0.98  --min_unsat_core                        false
% 2.92/0.98  --soft_assumptions                      false
% 2.92/0.98  --soft_lemma_size                       3
% 2.92/0.98  --prop_impl_unit_size                   0
% 2.92/0.98  --prop_impl_unit                        []
% 2.92/0.98  --share_sel_clauses                     true
% 2.92/0.98  --reset_solvers                         false
% 2.92/0.98  --bc_imp_inh                            [conj_cone]
% 2.92/0.98  --conj_cone_tolerance                   3.
% 2.92/0.98  --extra_neg_conj                        none
% 2.92/0.98  --large_theory_mode                     true
% 2.92/0.98  --prolific_symb_bound                   200
% 2.92/0.98  --lt_threshold                          2000
% 2.92/0.98  --clause_weak_htbl                      true
% 2.92/0.98  --gc_record_bc_elim                     false
% 2.92/0.98  
% 2.92/0.98  ------ Preprocessing Options
% 2.92/0.98  
% 2.92/0.98  --preprocessing_flag                    true
% 2.92/0.98  --time_out_prep_mult                    0.1
% 2.92/0.98  --splitting_mode                        input
% 2.92/0.98  --splitting_grd                         true
% 2.92/0.98  --splitting_cvd                         false
% 2.92/0.98  --splitting_cvd_svl                     false
% 2.92/0.98  --splitting_nvd                         32
% 2.92/0.98  --sub_typing                            true
% 2.92/0.98  --prep_gs_sim                           true
% 2.92/0.98  --prep_unflatten                        true
% 2.92/0.98  --prep_res_sim                          true
% 2.92/0.98  --prep_upred                            true
% 2.92/0.98  --prep_sem_filter                       exhaustive
% 2.92/0.98  --prep_sem_filter_out                   false
% 2.92/0.98  --pred_elim                             true
% 2.92/0.98  --res_sim_input                         true
% 2.92/0.98  --eq_ax_congr_red                       true
% 2.92/0.98  --pure_diseq_elim                       true
% 2.92/0.98  --brand_transform                       false
% 2.92/0.98  --non_eq_to_eq                          false
% 2.92/0.98  --prep_def_merge                        true
% 2.92/0.98  --prep_def_merge_prop_impl              false
% 2.92/0.98  --prep_def_merge_mbd                    true
% 2.92/0.98  --prep_def_merge_tr_red                 false
% 2.92/0.98  --prep_def_merge_tr_cl                  false
% 2.92/0.98  --smt_preprocessing                     true
% 2.92/0.98  --smt_ac_axioms                         fast
% 2.92/0.98  --preprocessed_out                      false
% 2.92/0.98  --preprocessed_stats                    false
% 2.92/0.98  
% 2.92/0.98  ------ Abstraction refinement Options
% 2.92/0.98  
% 2.92/0.98  --abstr_ref                             []
% 2.92/0.98  --abstr_ref_prep                        false
% 2.92/0.98  --abstr_ref_until_sat                   false
% 2.92/0.98  --abstr_ref_sig_restrict                funpre
% 2.92/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.92/0.98  --abstr_ref_under                       []
% 2.92/0.98  
% 2.92/0.98  ------ SAT Options
% 2.92/0.98  
% 2.92/0.98  --sat_mode                              false
% 2.92/0.98  --sat_fm_restart_options                ""
% 2.92/0.98  --sat_gr_def                            false
% 2.92/0.98  --sat_epr_types                         true
% 2.92/0.98  --sat_non_cyclic_types                  false
% 2.92/0.98  --sat_finite_models                     false
% 2.92/0.98  --sat_fm_lemmas                         false
% 2.92/0.98  --sat_fm_prep                           false
% 2.92/0.98  --sat_fm_uc_incr                        true
% 2.92/0.98  --sat_out_model                         small
% 2.92/0.98  --sat_out_clauses                       false
% 2.92/0.98  
% 2.92/0.98  ------ QBF Options
% 2.92/0.98  
% 2.92/0.98  --qbf_mode                              false
% 2.92/0.98  --qbf_elim_univ                         false
% 2.92/0.98  --qbf_dom_inst                          none
% 2.92/0.98  --qbf_dom_pre_inst                      false
% 2.92/0.98  --qbf_sk_in                             false
% 2.92/0.98  --qbf_pred_elim                         true
% 2.92/0.98  --qbf_split                             512
% 2.92/0.98  
% 2.92/0.98  ------ BMC1 Options
% 2.92/0.98  
% 2.92/0.98  --bmc1_incremental                      false
% 2.92/0.98  --bmc1_axioms                           reachable_all
% 2.92/0.98  --bmc1_min_bound                        0
% 2.92/0.98  --bmc1_max_bound                        -1
% 2.92/0.98  --bmc1_max_bound_default                -1
% 2.92/0.98  --bmc1_symbol_reachability              true
% 2.92/0.98  --bmc1_property_lemmas                  false
% 2.92/0.98  --bmc1_k_induction                      false
% 2.92/0.98  --bmc1_non_equiv_states                 false
% 2.92/0.98  --bmc1_deadlock                         false
% 2.92/0.98  --bmc1_ucm                              false
% 2.92/0.98  --bmc1_add_unsat_core                   none
% 2.92/0.98  --bmc1_unsat_core_children              false
% 2.92/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.92/0.98  --bmc1_out_stat                         full
% 2.92/0.98  --bmc1_ground_init                      false
% 2.92/0.98  --bmc1_pre_inst_next_state              false
% 2.92/0.98  --bmc1_pre_inst_state                   false
% 2.92/0.98  --bmc1_pre_inst_reach_state             false
% 2.92/0.98  --bmc1_out_unsat_core                   false
% 2.92/0.98  --bmc1_aig_witness_out                  false
% 2.92/0.98  --bmc1_verbose                          false
% 2.92/0.98  --bmc1_dump_clauses_tptp                false
% 2.92/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.92/0.98  --bmc1_dump_file                        -
% 2.92/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.92/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.92/0.98  --bmc1_ucm_extend_mode                  1
% 2.92/0.98  --bmc1_ucm_init_mode                    2
% 2.92/0.98  --bmc1_ucm_cone_mode                    none
% 2.92/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.92/0.98  --bmc1_ucm_relax_model                  4
% 2.92/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.92/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.92/0.98  --bmc1_ucm_layered_model                none
% 2.92/0.98  --bmc1_ucm_max_lemma_size               10
% 2.92/0.98  
% 2.92/0.98  ------ AIG Options
% 2.92/0.98  
% 2.92/0.98  --aig_mode                              false
% 2.92/0.98  
% 2.92/0.98  ------ Instantiation Options
% 2.92/0.98  
% 2.92/0.98  --instantiation_flag                    true
% 2.92/0.98  --inst_sos_flag                         false
% 2.92/0.98  --inst_sos_phase                        true
% 2.92/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.92/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.92/0.98  --inst_lit_sel_side                     num_symb
% 2.92/0.98  --inst_solver_per_active                1400
% 2.92/0.98  --inst_solver_calls_frac                1.
% 2.92/0.98  --inst_passive_queue_type               priority_queues
% 2.92/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.92/0.98  --inst_passive_queues_freq              [25;2]
% 2.92/0.98  --inst_dismatching                      true
% 2.92/0.98  --inst_eager_unprocessed_to_passive     true
% 2.92/0.98  --inst_prop_sim_given                   true
% 2.92/0.98  --inst_prop_sim_new                     false
% 2.92/0.98  --inst_subs_new                         false
% 2.92/0.98  --inst_eq_res_simp                      false
% 2.92/0.98  --inst_subs_given                       false
% 2.92/0.98  --inst_orphan_elimination               true
% 2.92/0.98  --inst_learning_loop_flag               true
% 2.92/0.98  --inst_learning_start                   3000
% 2.92/0.98  --inst_learning_factor                  2
% 2.92/0.98  --inst_start_prop_sim_after_learn       3
% 2.92/0.98  --inst_sel_renew                        solver
% 2.92/0.98  --inst_lit_activity_flag                true
% 2.92/0.98  --inst_restr_to_given                   false
% 2.92/0.98  --inst_activity_threshold               500
% 2.92/0.98  --inst_out_proof                        true
% 2.92/0.98  
% 2.92/0.98  ------ Resolution Options
% 2.92/0.98  
% 2.92/0.98  --resolution_flag                       true
% 2.92/0.98  --res_lit_sel                           adaptive
% 2.92/0.98  --res_lit_sel_side                      none
% 2.92/0.98  --res_ordering                          kbo
% 2.92/0.98  --res_to_prop_solver                    active
% 2.92/0.98  --res_prop_simpl_new                    false
% 2.92/0.98  --res_prop_simpl_given                  true
% 2.92/0.98  --res_passive_queue_type                priority_queues
% 2.92/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.92/0.98  --res_passive_queues_freq               [15;5]
% 2.92/0.98  --res_forward_subs                      full
% 2.92/0.98  --res_backward_subs                     full
% 2.92/0.98  --res_forward_subs_resolution           true
% 2.92/0.98  --res_backward_subs_resolution          true
% 2.92/0.98  --res_orphan_elimination                true
% 2.92/0.98  --res_time_limit                        2.
% 2.92/0.98  --res_out_proof                         true
% 2.92/0.98  
% 2.92/0.98  ------ Superposition Options
% 2.92/0.98  
% 2.92/0.98  --superposition_flag                    true
% 2.92/0.98  --sup_passive_queue_type                priority_queues
% 2.92/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.92/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.92/0.98  --demod_completeness_check              fast
% 2.92/0.98  --demod_use_ground                      true
% 2.92/0.98  --sup_to_prop_solver                    passive
% 2.92/0.98  --sup_prop_simpl_new                    true
% 2.92/0.98  --sup_prop_simpl_given                  true
% 2.92/0.98  --sup_fun_splitting                     false
% 2.92/0.98  --sup_smt_interval                      50000
% 2.92/0.98  
% 2.92/0.98  ------ Superposition Simplification Setup
% 2.92/0.98  
% 2.92/0.98  --sup_indices_passive                   []
% 2.92/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.92/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.92/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.92/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.92/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.92/0.98  --sup_full_bw                           [BwDemod]
% 2.92/0.98  --sup_immed_triv                        [TrivRules]
% 2.92/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.92/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.92/0.98  --sup_immed_bw_main                     []
% 2.92/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.92/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.92/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.92/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.92/0.98  
% 2.92/0.98  ------ Combination Options
% 2.92/0.98  
% 2.92/0.98  --comb_res_mult                         3
% 2.92/0.98  --comb_sup_mult                         2
% 2.92/0.98  --comb_inst_mult                        10
% 2.92/0.98  
% 2.92/0.98  ------ Debug Options
% 2.92/0.98  
% 2.92/0.98  --dbg_backtrace                         false
% 2.92/0.98  --dbg_dump_prop_clauses                 false
% 2.92/0.98  --dbg_dump_prop_clauses_file            -
% 2.92/0.98  --dbg_out_stat                          false
% 2.92/0.98  ------ Parsing...
% 2.92/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.92/0.98  
% 2.92/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.92/0.98  
% 2.92/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.92/0.98  
% 2.92/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.92/0.98  ------ Proving...
% 2.92/0.98  ------ Problem Properties 
% 2.92/0.98  
% 2.92/0.98  
% 2.92/0.98  clauses                                 29
% 2.92/0.98  conjectures                             9
% 2.92/0.98  EPR                                     8
% 2.92/0.98  Horn                                    22
% 2.92/0.98  unary                                   6
% 2.92/0.98  binary                                  6
% 2.92/0.98  lits                                    75
% 2.92/0.98  lits eq                                 4
% 2.92/0.98  fd_pure                                 0
% 2.92/0.98  fd_pseudo                               0
% 2.92/0.98  fd_cond                                 0
% 2.92/0.98  fd_pseudo_cond                          3
% 2.92/0.98  AC symbols                              0
% 2.92/0.98  
% 2.92/0.98  ------ Schedule dynamic 5 is on 
% 2.92/0.98  
% 2.92/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.92/0.98  
% 2.92/0.98  
% 2.92/0.98  ------ 
% 2.92/0.98  Current options:
% 2.92/0.98  ------ 
% 2.92/0.98  
% 2.92/0.98  ------ Input Options
% 2.92/0.98  
% 2.92/0.98  --out_options                           all
% 2.92/0.98  --tptp_safe_out                         true
% 2.92/0.98  --problem_path                          ""
% 2.92/0.98  --include_path                          ""
% 2.92/0.98  --clausifier                            res/vclausify_rel
% 2.92/0.98  --clausifier_options                    --mode clausify
% 2.92/0.98  --stdin                                 false
% 2.92/0.98  --stats_out                             all
% 2.92/0.98  
% 2.92/0.98  ------ General Options
% 2.92/0.98  
% 2.92/0.98  --fof                                   false
% 2.92/0.98  --time_out_real                         305.
% 2.92/0.98  --time_out_virtual                      -1.
% 2.92/0.98  --symbol_type_check                     false
% 2.92/0.98  --clausify_out                          false
% 2.92/0.98  --sig_cnt_out                           false
% 2.92/0.98  --trig_cnt_out                          false
% 2.92/0.98  --trig_cnt_out_tolerance                1.
% 2.92/0.98  --trig_cnt_out_sk_spl                   false
% 2.92/0.98  --abstr_cl_out                          false
% 2.92/0.98  
% 2.92/0.98  ------ Global Options
% 2.92/0.98  
% 2.92/0.98  --schedule                              default
% 2.92/0.98  --add_important_lit                     false
% 2.92/0.98  --prop_solver_per_cl                    1000
% 2.92/0.98  --min_unsat_core                        false
% 2.92/0.98  --soft_assumptions                      false
% 2.92/0.98  --soft_lemma_size                       3
% 2.92/0.98  --prop_impl_unit_size                   0
% 2.92/0.98  --prop_impl_unit                        []
% 2.92/0.98  --share_sel_clauses                     true
% 2.92/0.98  --reset_solvers                         false
% 2.92/0.98  --bc_imp_inh                            [conj_cone]
% 2.92/0.98  --conj_cone_tolerance                   3.
% 2.92/0.98  --extra_neg_conj                        none
% 2.92/0.98  --large_theory_mode                     true
% 2.92/0.98  --prolific_symb_bound                   200
% 2.92/0.98  --lt_threshold                          2000
% 2.92/0.98  --clause_weak_htbl                      true
% 2.92/0.98  --gc_record_bc_elim                     false
% 2.92/0.98  
% 2.92/0.98  ------ Preprocessing Options
% 2.92/0.98  
% 2.92/0.98  --preprocessing_flag                    true
% 2.92/0.98  --time_out_prep_mult                    0.1
% 2.92/0.98  --splitting_mode                        input
% 2.92/0.98  --splitting_grd                         true
% 2.92/0.98  --splitting_cvd                         false
% 2.92/0.98  --splitting_cvd_svl                     false
% 2.92/0.98  --splitting_nvd                         32
% 2.92/0.98  --sub_typing                            true
% 2.92/0.98  --prep_gs_sim                           true
% 2.92/0.98  --prep_unflatten                        true
% 2.92/0.98  --prep_res_sim                          true
% 2.92/0.98  --prep_upred                            true
% 2.92/0.98  --prep_sem_filter                       exhaustive
% 2.92/0.98  --prep_sem_filter_out                   false
% 2.92/0.98  --pred_elim                             true
% 2.92/0.98  --res_sim_input                         true
% 2.92/0.98  --eq_ax_congr_red                       true
% 2.92/0.98  --pure_diseq_elim                       true
% 2.92/0.98  --brand_transform                       false
% 2.92/0.98  --non_eq_to_eq                          false
% 2.92/0.98  --prep_def_merge                        true
% 2.92/0.98  --prep_def_merge_prop_impl              false
% 2.92/0.98  --prep_def_merge_mbd                    true
% 2.92/0.98  --prep_def_merge_tr_red                 false
% 2.92/0.98  --prep_def_merge_tr_cl                  false
% 2.92/0.98  --smt_preprocessing                     true
% 2.92/0.98  --smt_ac_axioms                         fast
% 2.92/0.98  --preprocessed_out                      false
% 2.92/0.98  --preprocessed_stats                    false
% 2.92/0.98  
% 2.92/0.98  ------ Abstraction refinement Options
% 2.92/0.98  
% 2.92/0.98  --abstr_ref                             []
% 2.92/0.98  --abstr_ref_prep                        false
% 2.92/0.98  --abstr_ref_until_sat                   false
% 2.92/0.98  --abstr_ref_sig_restrict                funpre
% 2.92/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.92/0.98  --abstr_ref_under                       []
% 2.92/0.98  
% 2.92/0.98  ------ SAT Options
% 2.92/0.98  
% 2.92/0.98  --sat_mode                              false
% 2.92/0.98  --sat_fm_restart_options                ""
% 2.92/0.98  --sat_gr_def                            false
% 2.92/0.98  --sat_epr_types                         true
% 2.92/0.98  --sat_non_cyclic_types                  false
% 2.92/0.98  --sat_finite_models                     false
% 2.92/0.98  --sat_fm_lemmas                         false
% 2.92/0.98  --sat_fm_prep                           false
% 2.92/0.98  --sat_fm_uc_incr                        true
% 2.92/0.98  --sat_out_model                         small
% 2.92/0.98  --sat_out_clauses                       false
% 2.92/0.98  
% 2.92/0.98  ------ QBF Options
% 2.92/0.98  
% 2.92/0.98  --qbf_mode                              false
% 2.92/0.98  --qbf_elim_univ                         false
% 2.92/0.98  --qbf_dom_inst                          none
% 2.92/0.98  --qbf_dom_pre_inst                      false
% 2.92/0.98  --qbf_sk_in                             false
% 2.92/0.98  --qbf_pred_elim                         true
% 2.92/0.98  --qbf_split                             512
% 2.92/0.98  
% 2.92/0.98  ------ BMC1 Options
% 2.92/0.98  
% 2.92/0.98  --bmc1_incremental                      false
% 2.92/0.98  --bmc1_axioms                           reachable_all
% 2.92/0.98  --bmc1_min_bound                        0
% 2.92/0.98  --bmc1_max_bound                        -1
% 2.92/0.98  --bmc1_max_bound_default                -1
% 2.92/0.98  --bmc1_symbol_reachability              true
% 2.92/0.98  --bmc1_property_lemmas                  false
% 2.92/0.98  --bmc1_k_induction                      false
% 2.92/0.98  --bmc1_non_equiv_states                 false
% 2.92/0.98  --bmc1_deadlock                         false
% 2.92/0.98  --bmc1_ucm                              false
% 2.92/0.98  --bmc1_add_unsat_core                   none
% 2.92/0.98  --bmc1_unsat_core_children              false
% 2.92/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.92/0.98  --bmc1_out_stat                         full
% 2.92/0.98  --bmc1_ground_init                      false
% 2.92/0.98  --bmc1_pre_inst_next_state              false
% 2.92/0.98  --bmc1_pre_inst_state                   false
% 2.92/0.98  --bmc1_pre_inst_reach_state             false
% 2.92/0.98  --bmc1_out_unsat_core                   false
% 2.92/0.98  --bmc1_aig_witness_out                  false
% 2.92/0.98  --bmc1_verbose                          false
% 2.92/0.98  --bmc1_dump_clauses_tptp                false
% 2.92/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.92/0.98  --bmc1_dump_file                        -
% 2.92/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.92/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.92/0.98  --bmc1_ucm_extend_mode                  1
% 2.92/0.98  --bmc1_ucm_init_mode                    2
% 2.92/0.98  --bmc1_ucm_cone_mode                    none
% 2.92/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.92/0.98  --bmc1_ucm_relax_model                  4
% 2.92/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.92/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.92/0.98  --bmc1_ucm_layered_model                none
% 2.92/0.98  --bmc1_ucm_max_lemma_size               10
% 2.92/0.98  
% 2.92/0.98  ------ AIG Options
% 2.92/0.98  
% 2.92/0.98  --aig_mode                              false
% 2.92/0.98  
% 2.92/0.98  ------ Instantiation Options
% 2.92/0.98  
% 2.92/0.98  --instantiation_flag                    true
% 2.92/0.98  --inst_sos_flag                         false
% 2.92/0.98  --inst_sos_phase                        true
% 2.92/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.92/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.92/0.98  --inst_lit_sel_side                     none
% 2.92/0.98  --inst_solver_per_active                1400
% 2.92/0.98  --inst_solver_calls_frac                1.
% 2.92/0.98  --inst_passive_queue_type               priority_queues
% 2.92/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.92/0.98  --inst_passive_queues_freq              [25;2]
% 2.92/0.98  --inst_dismatching                      true
% 2.92/0.98  --inst_eager_unprocessed_to_passive     true
% 2.92/0.98  --inst_prop_sim_given                   true
% 2.92/0.98  --inst_prop_sim_new                     false
% 2.92/0.98  --inst_subs_new                         false
% 2.92/0.98  --inst_eq_res_simp                      false
% 2.92/0.98  --inst_subs_given                       false
% 2.92/0.98  --inst_orphan_elimination               true
% 2.92/0.98  --inst_learning_loop_flag               true
% 2.92/0.98  --inst_learning_start                   3000
% 2.92/0.98  --inst_learning_factor                  2
% 2.92/0.98  --inst_start_prop_sim_after_learn       3
% 2.92/0.98  --inst_sel_renew                        solver
% 2.92/0.98  --inst_lit_activity_flag                true
% 2.92/0.98  --inst_restr_to_given                   false
% 2.92/0.98  --inst_activity_threshold               500
% 2.92/0.98  --inst_out_proof                        true
% 2.92/0.98  
% 2.92/0.98  ------ Resolution Options
% 2.92/0.98  
% 2.92/0.98  --resolution_flag                       false
% 2.92/0.98  --res_lit_sel                           adaptive
% 2.92/0.98  --res_lit_sel_side                      none
% 2.92/0.98  --res_ordering                          kbo
% 2.92/0.98  --res_to_prop_solver                    active
% 2.92/0.98  --res_prop_simpl_new                    false
% 2.92/0.98  --res_prop_simpl_given                  true
% 2.92/0.98  --res_passive_queue_type                priority_queues
% 2.92/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.92/0.98  --res_passive_queues_freq               [15;5]
% 2.92/0.98  --res_forward_subs                      full
% 2.92/0.98  --res_backward_subs                     full
% 2.92/0.98  --res_forward_subs_resolution           true
% 2.92/0.98  --res_backward_subs_resolution          true
% 2.92/0.98  --res_orphan_elimination                true
% 2.92/0.98  --res_time_limit                        2.
% 2.92/0.98  --res_out_proof                         true
% 2.92/0.98  
% 2.92/0.98  ------ Superposition Options
% 2.92/0.98  
% 2.92/0.98  --superposition_flag                    true
% 2.92/0.98  --sup_passive_queue_type                priority_queues
% 2.92/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.92/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.92/0.98  --demod_completeness_check              fast
% 2.92/0.98  --demod_use_ground                      true
% 2.92/0.98  --sup_to_prop_solver                    passive
% 2.92/0.98  --sup_prop_simpl_new                    true
% 2.92/0.98  --sup_prop_simpl_given                  true
% 2.92/0.98  --sup_fun_splitting                     false
% 2.92/0.98  --sup_smt_interval                      50000
% 2.92/0.98  
% 2.92/0.98  ------ Superposition Simplification Setup
% 2.92/0.98  
% 2.92/0.98  --sup_indices_passive                   []
% 2.92/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.92/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.92/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.92/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.92/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.92/0.98  --sup_full_bw                           [BwDemod]
% 2.92/0.98  --sup_immed_triv                        [TrivRules]
% 2.92/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.92/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.92/0.98  --sup_immed_bw_main                     []
% 2.92/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.92/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.92/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.92/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.92/0.98  
% 2.92/0.98  ------ Combination Options
% 2.92/0.98  
% 2.92/0.98  --comb_res_mult                         3
% 2.92/0.98  --comb_sup_mult                         2
% 2.92/0.98  --comb_inst_mult                        10
% 2.92/0.98  
% 2.92/0.98  ------ Debug Options
% 2.92/0.98  
% 2.92/0.98  --dbg_backtrace                         false
% 2.92/0.98  --dbg_dump_prop_clauses                 false
% 2.92/0.98  --dbg_dump_prop_clauses_file            -
% 2.92/0.98  --dbg_out_stat                          false
% 2.92/0.98  
% 2.92/0.98  
% 2.92/0.98  
% 2.92/0.98  
% 2.92/0.98  ------ Proving...
% 2.92/0.98  
% 2.92/0.98  
% 2.92/0.98  % SZS status Theorem for theBenchmark.p
% 2.92/0.98  
% 2.92/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.92/0.98  
% 2.92/0.98  fof(f5,axiom,(
% 2.92/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1,X2] : (k10_relat_1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X3,X4),X0)))))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f14,plain,(
% 2.92/0.98    ! [X0] : (! [X1,X2] : (k10_relat_1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X3,X4),X0)))) | ~v1_relat_1(X0))),
% 2.92/0.98    inference(ennf_transformation,[],[f5])).
% 2.92/0.98  
% 2.92/0.98  fof(f21,plain,(
% 2.92/0.98    ! [X0] : (! [X1,X2] : ((k10_relat_1(X0,X1) = X2 | ? [X3] : ((! [X4] : (~r2_hidden(X4,X1) | ~r2_hidden(k4_tarski(X3,X4),X0)) | ~r2_hidden(X3,X2)) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X3,X4),X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ! [X4] : (~r2_hidden(X4,X1) | ~r2_hidden(k4_tarski(X3,X4),X0))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X3,X4),X0)) | ~r2_hidden(X3,X2))) | k10_relat_1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 2.92/0.98    inference(nnf_transformation,[],[f14])).
% 2.92/0.98  
% 2.92/0.98  fof(f22,plain,(
% 2.92/0.98    ! [X0] : (! [X1,X2] : ((k10_relat_1(X0,X1) = X2 | ? [X3] : ((! [X4] : (~r2_hidden(X4,X1) | ~r2_hidden(k4_tarski(X3,X4),X0)) | ~r2_hidden(X3,X2)) & (? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X3,X5),X0)) | r2_hidden(X3,X2)))) & (! [X6] : ((r2_hidden(X6,X2) | ! [X7] : (~r2_hidden(X7,X1) | ~r2_hidden(k4_tarski(X6,X7),X0))) & (? [X8] : (r2_hidden(X8,X1) & r2_hidden(k4_tarski(X6,X8),X0)) | ~r2_hidden(X6,X2))) | k10_relat_1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 2.92/0.98    inference(rectify,[],[f21])).
% 2.92/0.98  
% 2.92/0.98  fof(f25,plain,(
% 2.92/0.98    ! [X6,X1,X0] : (? [X8] : (r2_hidden(X8,X1) & r2_hidden(k4_tarski(X6,X8),X0)) => (r2_hidden(sK2(X0,X1,X6),X1) & r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0)))),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f24,plain,(
% 2.92/0.98    ( ! [X3] : (! [X2,X1,X0] : (? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X3,X5),X0)) => (r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(k4_tarski(X3,sK1(X0,X1,X2)),X0)))) )),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f23,plain,(
% 2.92/0.98    ! [X2,X1,X0] : (? [X3] : ((! [X4] : (~r2_hidden(X4,X1) | ~r2_hidden(k4_tarski(X3,X4),X0)) | ~r2_hidden(X3,X2)) & (? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X3,X5),X0)) | r2_hidden(X3,X2))) => ((! [X4] : (~r2_hidden(X4,X1) | ~r2_hidden(k4_tarski(sK0(X0,X1,X2),X4),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),X5),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f26,plain,(
% 2.92/0.98    ! [X0] : (! [X1,X2] : ((k10_relat_1(X0,X1) = X2 | ((! [X4] : (~r2_hidden(X4,X1) | ~r2_hidden(k4_tarski(sK0(X0,X1,X2),X4),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X6] : ((r2_hidden(X6,X2) | ! [X7] : (~r2_hidden(X7,X1) | ~r2_hidden(k4_tarski(X6,X7),X0))) & ((r2_hidden(sK2(X0,X1,X6),X1) & r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0)) | ~r2_hidden(X6,X2))) | k10_relat_1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 2.92/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f22,f25,f24,f23])).
% 2.92/0.98  
% 2.92/0.98  fof(f51,plain,(
% 2.92/0.98    ( ! [X6,X2,X0,X1] : (r2_hidden(sK2(X0,X1,X6),X1) | ~r2_hidden(X6,X2) | k10_relat_1(X0,X1) != X2 | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(cnf_transformation,[],[f26])).
% 2.92/0.98  
% 2.92/0.98  fof(f72,plain,(
% 2.92/0.98    ( ! [X6,X0,X1] : (r2_hidden(sK2(X0,X1,X6),X1) | ~r2_hidden(X6,k10_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(equality_resolution,[],[f51])).
% 2.92/0.98  
% 2.92/0.98  fof(f50,plain,(
% 2.92/0.98    ( ! [X6,X2,X0,X1] : (r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0) | ~r2_hidden(X6,X2) | k10_relat_1(X0,X1) != X2 | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(cnf_transformation,[],[f26])).
% 2.92/0.98  
% 2.92/0.98  fof(f73,plain,(
% 2.92/0.98    ( ! [X6,X0,X1] : (r2_hidden(k4_tarski(X6,sK2(X0,X1,X6)),X0) | ~r2_hidden(X6,k10_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(equality_resolution,[],[f50])).
% 2.92/0.98  
% 2.92/0.98  fof(f9,conjecture,(
% 2.92/0.98    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (~v1_xboole_0(X2) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) => ! [X4] : (m1_subset_1(X4,X0) => (r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) <=> ? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X4,X5),X3) & m1_subset_1(X5,X2))))))))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f10,negated_conjecture,(
% 2.92/0.98    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (~v1_xboole_0(X2) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) => ! [X4] : (m1_subset_1(X4,X0) => (r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) <=> ? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X4,X5),X3) & m1_subset_1(X5,X2))))))))),
% 2.92/0.98    inference(negated_conjecture,[],[f9])).
% 2.92/0.98  
% 2.92/0.98  fof(f17,plain,(
% 2.92/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)) <~> ? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X4,X5),X3) & m1_subset_1(X5,X2))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.92/0.98    inference(ennf_transformation,[],[f10])).
% 2.92/0.98  
% 2.92/0.98  fof(f31,plain,(
% 2.92/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X4,X5),X3) & m1_subset_1(X5,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1)))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.92/0.98    inference(nnf_transformation,[],[f17])).
% 2.92/0.98  
% 2.92/0.98  fof(f32,plain,(
% 2.92/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X5] : (r2_hidden(X5,X1) & r2_hidden(k4_tarski(X4,X5),X3) & m1_subset_1(X5,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.92/0.98    inference(flattening,[],[f31])).
% 2.92/0.98  
% 2.92/0.98  fof(f33,plain,(
% 2.92/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.92/0.98    inference(rectify,[],[f32])).
% 2.92/0.98  
% 2.92/0.98  fof(f39,plain,(
% 2.92/0.98    ( ! [X4,X2,X3,X1] : (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) => (r2_hidden(sK9,X1) & r2_hidden(k4_tarski(X4,sK9),X3) & m1_subset_1(sK9,X2))) )),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f38,plain,(
% 2.92/0.98    ( ! [X2,X0,X3,X1] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) => ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(sK8,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(sK8,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(sK8,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(sK8,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(sK8,X0))) )),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f37,plain,(
% 2.92/0.98    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) => (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),sK7) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,sK7,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),sK7) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,sK7,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))) )),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f36,plain,(
% 2.92/0.98    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) => (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,sK6)) | ~r2_hidden(X4,k8_relset_1(X0,sK6,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,sK6)) | r2_hidden(X4,k8_relset_1(X0,sK6,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,sK6)))) & ~v1_xboole_0(sK6))) )),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f35,plain,(
% 2.92/0.98    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) => (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,sK5) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,sK5))) & (? [X6] : (r2_hidden(X6,sK5) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,sK5))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(sK5))) )),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f34,plain,(
% 2.92/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(X0,X2,X3,X1))) & m1_subset_1(X4,X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((! [X5] : (~r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X4,X5),X3) | ~m1_subset_1(X5,X2)) | ~r2_hidden(X4,k8_relset_1(sK4,X2,X3,X1))) & (? [X6] : (r2_hidden(X6,X1) & r2_hidden(k4_tarski(X4,X6),X3) & m1_subset_1(X6,X2)) | r2_hidden(X4,k8_relset_1(sK4,X2,X3,X1))) & m1_subset_1(X4,sK4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK4,X2)))) & ~v1_xboole_0(X2)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK4))),
% 2.92/0.98    introduced(choice_axiom,[])).
% 2.92/0.98  
% 2.92/0.98  fof(f40,plain,(
% 2.92/0.98    (((((! [X5] : (~r2_hidden(X5,sK5) | ~r2_hidden(k4_tarski(sK8,X5),sK7) | ~m1_subset_1(X5,sK6)) | ~r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5))) & ((r2_hidden(sK9,sK5) & r2_hidden(k4_tarski(sK8,sK9),sK7) & m1_subset_1(sK9,sK6)) | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5))) & m1_subset_1(sK8,sK4)) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6)))) & ~v1_xboole_0(sK6)) & ~v1_xboole_0(sK5)) & ~v1_xboole_0(sK4)),
% 2.92/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7,sK8,sK9])],[f33,f39,f38,f37,f36,f35,f34])).
% 2.92/0.98  
% 2.92/0.98  fof(f65,plain,(
% 2.92/0.98    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6)))),
% 2.92/0.98    inference(cnf_transformation,[],[f40])).
% 2.92/0.98  
% 2.92/0.98  fof(f3,axiom,(
% 2.92/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f12,plain,(
% 2.92/0.98    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.92/0.98    inference(ennf_transformation,[],[f3])).
% 2.92/0.98  
% 2.92/0.98  fof(f48,plain,(
% 2.92/0.98    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.92/0.98    inference(cnf_transformation,[],[f12])).
% 2.92/0.98  
% 2.92/0.98  fof(f1,axiom,(
% 2.92/0.98    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) <=> (r2_hidden(X1,X3) & r2_hidden(X0,X2)))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f18,plain,(
% 2.92/0.98    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | (~r2_hidden(X1,X3) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.92/0.98    inference(nnf_transformation,[],[f1])).
% 2.92/0.98  
% 2.92/0.98  fof(f19,plain,(
% 2.92/0.98    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.92/0.98    inference(flattening,[],[f18])).
% 2.92/0.98  
% 2.92/0.98  fof(f42,plain,(
% 2.92/0.98    ( ! [X2,X0,X3,X1] : (r2_hidden(X1,X3) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))) )),
% 2.92/0.98    inference(cnf_transformation,[],[f19])).
% 2.92/0.98  
% 2.92/0.98  fof(f4,axiom,(
% 2.92/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f13,plain,(
% 2.92/0.98    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.92/0.98    inference(ennf_transformation,[],[f4])).
% 2.92/0.98  
% 2.92/0.98  fof(f49,plain,(
% 2.92/0.98    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(cnf_transformation,[],[f13])).
% 2.92/0.98  
% 2.92/0.98  fof(f6,axiom,(
% 2.92/0.98    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f56,plain,(
% 2.92/0.98    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.92/0.98    inference(cnf_transformation,[],[f6])).
% 2.92/0.98  
% 2.92/0.98  fof(f2,axiom,(
% 2.92/0.98    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f11,plain,(
% 2.92/0.98    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 2.92/0.98    inference(ennf_transformation,[],[f2])).
% 2.92/0.98  
% 2.92/0.98  fof(f20,plain,(
% 2.92/0.98    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 2.92/0.98    inference(nnf_transformation,[],[f11])).
% 2.92/0.98  
% 2.92/0.98  fof(f45,plain,(
% 2.92/0.98    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 2.92/0.98    inference(cnf_transformation,[],[f20])).
% 2.92/0.98  
% 2.92/0.98  fof(f64,plain,(
% 2.92/0.98    ~v1_xboole_0(sK6)),
% 2.92/0.98    inference(cnf_transformation,[],[f40])).
% 2.92/0.98  
% 2.92/0.98  fof(f67,plain,(
% 2.92/0.98    m1_subset_1(sK9,sK6) | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5))),
% 2.92/0.98    inference(cnf_transformation,[],[f40])).
% 2.92/0.98  
% 2.92/0.98  fof(f70,plain,(
% 2.92/0.98    ( ! [X5] : (~r2_hidden(X5,sK5) | ~r2_hidden(k4_tarski(sK8,X5),sK7) | ~m1_subset_1(X5,sK6) | ~r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5))) )),
% 2.92/0.98    inference(cnf_transformation,[],[f40])).
% 2.92/0.98  
% 2.92/0.98  fof(f8,axiom,(
% 2.92/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 2.92/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.92/0.98  
% 2.92/0.98  fof(f16,plain,(
% 2.92/0.98    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.92/0.98    inference(ennf_transformation,[],[f8])).
% 2.92/0.98  
% 2.92/0.98  fof(f61,plain,(
% 2.92/0.98    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.92/0.98    inference(cnf_transformation,[],[f16])).
% 2.92/0.98  
% 2.92/0.98  fof(f69,plain,(
% 2.92/0.98    r2_hidden(sK9,sK5) | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5))),
% 2.92/0.98    inference(cnf_transformation,[],[f40])).
% 2.92/0.98  
% 2.92/0.98  fof(f68,plain,(
% 2.92/0.98    r2_hidden(k4_tarski(sK8,sK9),sK7) | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5))),
% 2.92/0.98    inference(cnf_transformation,[],[f40])).
% 2.92/0.98  
% 2.92/0.98  fof(f52,plain,(
% 2.92/0.98    ( ! [X6,X2,X0,X7,X1] : (r2_hidden(X6,X2) | ~r2_hidden(X7,X1) | ~r2_hidden(k4_tarski(X6,X7),X0) | k10_relat_1(X0,X1) != X2 | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(cnf_transformation,[],[f26])).
% 2.92/0.98  
% 2.92/0.98  fof(f71,plain,(
% 2.92/0.98    ( ! [X6,X0,X7,X1] : (r2_hidden(X6,k10_relat_1(X0,X1)) | ~r2_hidden(X7,X1) | ~r2_hidden(k4_tarski(X6,X7),X0) | ~v1_relat_1(X0)) )),
% 2.92/0.98    inference(equality_resolution,[],[f52])).
% 2.92/0.98  
% 2.92/0.98  cnf(c_13,plain,
% 2.92/0.98      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 2.92/0.98      | r2_hidden(sK2(X1,X2,X0),X2)
% 2.92/0.98      | ~ v1_relat_1(X1) ),
% 2.92/0.98      inference(cnf_transformation,[],[f72]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1800,plain,
% 2.92/0.98      ( r2_hidden(X0,k10_relat_1(X1,X2)) != iProver_top
% 2.92/0.98      | r2_hidden(sK2(X1,X2,X0),X2) = iProver_top
% 2.92/0.98      | v1_relat_1(X1) != iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_14,plain,
% 2.92/0.98      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 2.92/0.98      | r2_hidden(k4_tarski(X0,sK2(X1,X2,X0)),X1)
% 2.92/0.98      | ~ v1_relat_1(X1) ),
% 2.92/0.98      inference(cnf_transformation,[],[f73]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1799,plain,
% 2.92/0.98      ( r2_hidden(X0,k10_relat_1(X1,X2)) != iProver_top
% 2.92/0.98      | r2_hidden(k4_tarski(X0,sK2(X1,X2,X0)),X1) = iProver_top
% 2.92/0.98      | v1_relat_1(X1) != iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_26,negated_conjecture,
% 2.92/0.98      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) ),
% 2.92/0.98      inference(cnf_transformation,[],[f65]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1788,plain,
% 2.92/0.98      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_7,plain,
% 2.92/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.92/0.98      | ~ r2_hidden(X2,X0)
% 2.92/0.98      | r2_hidden(X2,X1) ),
% 2.92/0.98      inference(cnf_transformation,[],[f48]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1806,plain,
% 2.92/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.92/0.98      | r2_hidden(X2,X0) != iProver_top
% 2.92/0.98      | r2_hidden(X2,X1) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_3148,plain,
% 2.92/0.98      ( r2_hidden(X0,k2_zfmisc_1(sK4,sK6)) = iProver_top
% 2.92/0.98      | r2_hidden(X0,sK7) != iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_1788,c_1806]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1,plain,
% 2.92/0.98      ( r2_hidden(X0,X1)
% 2.92/0.98      | ~ r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) ),
% 2.92/0.98      inference(cnf_transformation,[],[f42]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1812,plain,
% 2.92/0.98      ( r2_hidden(X0,X1) = iProver_top
% 2.92/0.98      | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) != iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_3458,plain,
% 2.92/0.98      ( r2_hidden(X0,sK6) = iProver_top
% 2.92/0.98      | r2_hidden(k4_tarski(X1,X0),sK7) != iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_3148,c_1812]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_4212,plain,
% 2.92/0.98      ( r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
% 2.92/0.98      | r2_hidden(sK2(sK7,X1,X0),sK6) = iProver_top
% 2.92/0.98      | v1_relat_1(sK7) != iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_1799,c_3458]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_33,plain,
% 2.92/0.98      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_8,plain,
% 2.92/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.92/0.98      | ~ v1_relat_1(X1)
% 2.92/0.98      | v1_relat_1(X0) ),
% 2.92/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_2030,plain,
% 2.92/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.92/0.98      | v1_relat_1(X0)
% 2.92/0.98      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 2.92/0.98      inference(instantiation,[status(thm)],[c_8]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_2344,plain,
% 2.92/0.98      ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6)))
% 2.92/0.98      | ~ v1_relat_1(k2_zfmisc_1(sK4,sK6))
% 2.92/0.98      | v1_relat_1(sK7) ),
% 2.92/0.98      inference(instantiation,[status(thm)],[c_2030]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_2345,plain,
% 2.92/0.98      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK6))) != iProver_top
% 2.92/0.98      | v1_relat_1(k2_zfmisc_1(sK4,sK6)) != iProver_top
% 2.92/0.98      | v1_relat_1(sK7) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_2344]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_15,plain,
% 2.92/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.92/0.98      inference(cnf_transformation,[],[f56]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_2688,plain,
% 2.92/0.98      ( v1_relat_1(k2_zfmisc_1(sK4,sK6)) ),
% 2.92/0.98      inference(instantiation,[status(thm)],[c_15]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_2689,plain,
% 2.92/0.98      ( v1_relat_1(k2_zfmisc_1(sK4,sK6)) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_2688]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_6421,plain,
% 2.92/0.98      ( r2_hidden(sK2(sK7,X1,X0),sK6) = iProver_top
% 2.92/0.98      | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top ),
% 2.92/0.98      inference(global_propositional_subsumption,
% 2.92/0.98                [status(thm)],
% 2.92/0.98                [c_4212,c_33,c_2345,c_2689]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_6422,plain,
% 2.92/0.98      ( r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
% 2.92/0.98      | r2_hidden(sK2(sK7,X1,X0),sK6) = iProver_top ),
% 2.92/0.98      inference(renaming,[status(thm)],[c_6421]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_5,plain,
% 2.92/0.98      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.92/0.98      inference(cnf_transformation,[],[f45]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1808,plain,
% 2.92/0.98      ( m1_subset_1(X0,X1) = iProver_top
% 2.92/0.98      | r2_hidden(X0,X1) != iProver_top
% 2.92/0.98      | v1_xboole_0(X1) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_6429,plain,
% 2.92/0.98      ( m1_subset_1(sK2(sK7,X0,X1),sK6) = iProver_top
% 2.92/0.98      | r2_hidden(X1,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.98      | v1_xboole_0(sK6) = iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_6422,c_1808]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_27,negated_conjecture,
% 2.92/0.98      ( ~ v1_xboole_0(sK6) ),
% 2.92/0.98      inference(cnf_transformation,[],[f64]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_32,plain,
% 2.92/0.98      ( v1_xboole_0(sK6) != iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_7552,plain,
% 2.92/0.98      ( r2_hidden(X1,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.98      | m1_subset_1(sK2(sK7,X0,X1),sK6) = iProver_top ),
% 2.92/0.98      inference(global_propositional_subsumption,
% 2.92/0.98                [status(thm)],
% 2.92/0.98                [c_6429,c_32]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_7553,plain,
% 2.92/0.98      ( m1_subset_1(sK2(sK7,X0,X1),sK6) = iProver_top
% 2.92/0.98      | r2_hidden(X1,k10_relat_1(sK7,X0)) != iProver_top ),
% 2.92/0.98      inference(renaming,[status(thm)],[c_7552]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_24,negated_conjecture,
% 2.92/0.98      ( m1_subset_1(sK9,sK6)
% 2.92/0.98      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
% 2.92/0.98      inference(cnf_transformation,[],[f67]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1790,plain,
% 2.92/0.98      ( m1_subset_1(sK9,sK6) = iProver_top
% 2.92/0.98      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_21,negated_conjecture,
% 2.92/0.98      ( ~ m1_subset_1(X0,sK6)
% 2.92/0.98      | ~ r2_hidden(X0,sK5)
% 2.92/0.98      | ~ r2_hidden(k4_tarski(sK8,X0),sK7)
% 2.92/0.98      | ~ r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
% 2.92/0.98      inference(cnf_transformation,[],[f70]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1793,plain,
% 2.92/0.98      ( m1_subset_1(X0,sK6) != iProver_top
% 2.92/0.98      | r2_hidden(X0,sK5) != iProver_top
% 2.92/0.98      | r2_hidden(k4_tarski(sK8,X0),sK7) != iProver_top
% 2.92/0.98      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) != iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_2138,plain,
% 2.92/0.98      ( m1_subset_1(X0,sK6) != iProver_top
% 2.92/0.98      | m1_subset_1(sK9,sK6) = iProver_top
% 2.92/0.98      | r2_hidden(X0,sK5) != iProver_top
% 2.92/0.98      | r2_hidden(k4_tarski(sK8,X0),sK7) != iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_1790,c_1793]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_3898,plain,
% 2.92/0.98      ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
% 2.92/0.98      | m1_subset_1(sK9,sK6) = iProver_top
% 2.92/0.98      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.98      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.98      | v1_relat_1(sK7) != iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_1799,c_2138]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_4472,plain,
% 2.92/0.98      ( r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.98      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.98      | m1_subset_1(sK9,sK6) = iProver_top
% 2.92/0.98      | m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top ),
% 2.92/0.98      inference(global_propositional_subsumption,
% 2.92/0.98                [status(thm)],
% 2.92/0.98                [c_3898,c_33,c_2345,c_2689]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_4473,plain,
% 2.92/0.98      ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
% 2.92/0.98      | m1_subset_1(sK9,sK6) = iProver_top
% 2.92/0.98      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.98      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top ),
% 2.92/0.98      inference(renaming,[status(thm)],[c_4472]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_7564,plain,
% 2.92/0.98      ( m1_subset_1(sK9,sK6) = iProver_top
% 2.92/0.98      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.98      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_7553,c_4473]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_20,plain,
% 2.92/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.92/0.98      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 2.92/0.98      inference(cnf_transformation,[],[f61]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1794,plain,
% 2.92/0.98      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 2.92/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_3132,plain,
% 2.92/0.98      ( k8_relset_1(sK4,sK6,sK7,X0) = k10_relat_1(sK7,X0) ),
% 2.92/0.98      inference(superposition,[status(thm)],[c_1788,c_1794]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_22,negated_conjecture,
% 2.92/0.98      ( r2_hidden(sK9,sK5)
% 2.92/0.98      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
% 2.92/0.98      inference(cnf_transformation,[],[f69]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_1792,plain,
% 2.92/0.98      ( r2_hidden(sK9,sK5) = iProver_top
% 2.92/0.98      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) = iProver_top ),
% 2.92/0.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.92/0.98  
% 2.92/0.98  cnf(c_3258,plain,
% 2.92/0.98      ( r2_hidden(sK9,sK5) = iProver_top
% 2.92/0.98      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
% 2.92/0.98      inference(demodulation,[status(thm)],[c_3132,c_1792]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_23,negated_conjecture,
% 2.92/0.99      ( r2_hidden(k4_tarski(sK8,sK9),sK7)
% 2.92/0.99      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) ),
% 2.92/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_1791,plain,
% 2.92/0.99      ( r2_hidden(k4_tarski(sK8,sK9),sK7) = iProver_top
% 2.92/0.99      | r2_hidden(sK8,k8_relset_1(sK4,sK6,sK7,sK5)) = iProver_top ),
% 2.92/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_3257,plain,
% 2.92/0.99      ( r2_hidden(k4_tarski(sK8,sK9),sK7) = iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
% 2.92/0.99      inference(demodulation,[status(thm)],[c_3132,c_1791]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_12,plain,
% 2.92/0.99      ( ~ r2_hidden(X0,X1)
% 2.92/0.99      | r2_hidden(X2,k10_relat_1(X3,X1))
% 2.92/0.99      | ~ r2_hidden(k4_tarski(X2,X0),X3)
% 2.92/0.99      | ~ v1_relat_1(X3) ),
% 2.92/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_1801,plain,
% 2.92/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.92/0.99      | r2_hidden(X2,k10_relat_1(X3,X1)) = iProver_top
% 2.92/0.99      | r2_hidden(k4_tarski(X2,X0),X3) != iProver_top
% 2.92/0.99      | v1_relat_1(X3) != iProver_top ),
% 2.92/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_4491,plain,
% 2.92/0.99      ( r2_hidden(sK9,X0) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) = iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top
% 2.92/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.92/0.99      inference(superposition,[status(thm)],[c_3257,c_1801]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_6377,plain,
% 2.92/0.99      ( r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) = iProver_top
% 2.92/0.99      | r2_hidden(sK9,X0) != iProver_top ),
% 2.92/0.99      inference(global_propositional_subsumption,
% 2.92/0.99                [status(thm)],
% 2.92/0.99                [c_4491,c_33,c_2345,c_2689]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_6378,plain,
% 2.92/0.99      ( r2_hidden(sK9,X0) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) = iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
% 2.92/0.99      inference(renaming,[status(thm)],[c_6377]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_6390,plain,
% 2.92/0.99      ( r2_hidden(sK9,sK5) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top
% 2.92/0.99      | iProver_top != iProver_top ),
% 2.92/0.99      inference(equality_factoring,[status(thm)],[c_6378]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_6392,plain,
% 2.92/0.99      ( r2_hidden(sK9,sK5) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) = iProver_top ),
% 2.92/0.99      inference(equality_resolution_simp,[status(thm)],[c_6390]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_3260,plain,
% 2.92/0.99      ( m1_subset_1(X0,sK6) != iProver_top
% 2.92/0.99      | r2_hidden(X0,sK5) != iProver_top
% 2.92/0.99      | r2_hidden(k4_tarski(sK8,X0),sK7) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top ),
% 2.92/0.99      inference(demodulation,[status(thm)],[c_3132,c_1793]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_3895,plain,
% 2.92/0.99      ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
% 2.92/0.99      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top
% 2.92/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.92/0.99      inference(superposition,[status(thm)],[c_1799,c_3260]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_5279,plain,
% 2.92/0.99      ( r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.99      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.99      | m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top ),
% 2.92/0.99      inference(global_propositional_subsumption,
% 2.92/0.99                [status(thm)],
% 2.92/0.99                [c_3895,c_33,c_2345,c_2689]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_5280,plain,
% 2.92/0.99      ( m1_subset_1(sK2(sK7,X0,sK8),sK6) != iProver_top
% 2.92/0.99      | r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top ),
% 2.92/0.99      inference(renaming,[status(thm)],[c_5279]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_7562,plain,
% 2.92/0.99      ( r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top ),
% 2.92/0.99      inference(superposition,[status(thm)],[c_7553,c_5280]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_8490,plain,
% 2.92/0.99      ( r2_hidden(sK2(sK7,X0,sK8),sK5) != iProver_top
% 2.92/0.99      | r2_hidden(sK8,k10_relat_1(sK7,X0)) != iProver_top ),
% 2.92/0.99      inference(global_propositional_subsumption,
% 2.92/0.99                [status(thm)],
% 2.92/0.99                [c_7564,c_3258,c_6392,c_7562]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(c_8498,plain,
% 2.92/0.99      ( r2_hidden(sK8,k10_relat_1(sK7,sK5)) != iProver_top
% 2.92/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.92/0.99      inference(superposition,[status(thm)],[c_1800,c_8490]) ).
% 2.92/0.99  
% 2.92/0.99  cnf(contradiction,plain,
% 2.92/0.99      ( $false ),
% 2.92/0.99      inference(minisat,
% 2.92/0.99                [status(thm)],
% 2.92/0.99                [c_8498,c_6392,c_3258,c_2689,c_2345,c_33]) ).
% 2.92/0.99  
% 2.92/0.99  
% 2.92/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.92/0.99  
% 2.92/0.99  ------                               Statistics
% 2.92/0.99  
% 2.92/0.99  ------ General
% 2.92/0.99  
% 2.92/0.99  abstr_ref_over_cycles:                  0
% 2.92/0.99  abstr_ref_under_cycles:                 0
% 2.92/0.99  gc_basic_clause_elim:                   0
% 2.92/0.99  forced_gc_time:                         0
% 2.92/0.99  parsing_time:                           0.009
% 2.92/0.99  unif_index_cands_time:                  0.
% 2.92/0.99  unif_index_add_time:                    0.
% 2.92/0.99  orderings_time:                         0.
% 2.92/0.99  out_proof_time:                         0.009
% 2.92/0.99  total_time:                             0.238
% 2.92/0.99  num_of_symbols:                         51
% 2.92/0.99  num_of_terms:                           9817
% 2.92/0.99  
% 2.92/0.99  ------ Preprocessing
% 2.92/0.99  
% 2.92/0.99  num_of_splits:                          0
% 2.92/0.99  num_of_split_atoms:                     0
% 2.92/0.99  num_of_reused_defs:                     0
% 2.92/0.99  num_eq_ax_congr_red:                    45
% 2.92/0.99  num_of_sem_filtered_clauses:            1
% 2.92/0.99  num_of_subtypes:                        0
% 2.92/0.99  monotx_restored_types:                  0
% 2.92/0.99  sat_num_of_epr_types:                   0
% 2.92/0.99  sat_num_of_non_cyclic_types:            0
% 2.92/0.99  sat_guarded_non_collapsed_types:        0
% 2.92/0.99  num_pure_diseq_elim:                    0
% 2.92/0.99  simp_replaced_by:                       0
% 2.92/0.99  res_preprocessed:                       137
% 2.92/0.99  prep_upred:                             0
% 2.92/0.99  prep_unflattend:                        80
% 2.92/0.99  smt_new_axioms:                         0
% 2.92/0.99  pred_elim_cands:                        4
% 2.92/0.99  pred_elim:                              0
% 2.92/0.99  pred_elim_cl:                           0
% 2.92/0.99  pred_elim_cycles:                       2
% 2.92/0.99  merged_defs:                            0
% 2.92/0.99  merged_defs_ncl:                        0
% 2.92/0.99  bin_hyper_res:                          0
% 2.92/0.99  prep_cycles:                            4
% 2.92/0.99  pred_elim_time:                         0.013
% 2.92/0.99  splitting_time:                         0.
% 2.92/0.99  sem_filter_time:                        0.
% 2.92/0.99  monotx_time:                            0.001
% 2.92/0.99  subtype_inf_time:                       0.
% 2.92/0.99  
% 2.92/0.99  ------ Problem properties
% 2.92/0.99  
% 2.92/0.99  clauses:                                29
% 2.92/0.99  conjectures:                            9
% 2.92/0.99  epr:                                    8
% 2.92/0.99  horn:                                   22
% 2.92/0.99  ground:                                 8
% 2.92/0.99  unary:                                  6
% 2.92/0.99  binary:                                 6
% 2.92/0.99  lits:                                   75
% 2.92/0.99  lits_eq:                                4
% 2.92/0.99  fd_pure:                                0
% 2.92/0.99  fd_pseudo:                              0
% 2.92/0.99  fd_cond:                                0
% 2.92/0.99  fd_pseudo_cond:                         3
% 2.92/0.99  ac_symbols:                             0
% 2.92/0.99  
% 2.92/0.99  ------ Propositional Solver
% 2.92/0.99  
% 2.92/0.99  prop_solver_calls:                      28
% 2.92/0.99  prop_fast_solver_calls:                 1203
% 2.92/0.99  smt_solver_calls:                       0
% 2.92/0.99  smt_fast_solver_calls:                  0
% 2.92/0.99  prop_num_of_clauses:                    3412
% 2.92/0.99  prop_preprocess_simplified:             8343
% 2.92/0.99  prop_fo_subsumed:                       29
% 2.92/0.99  prop_solver_time:                       0.
% 2.92/0.99  smt_solver_time:                        0.
% 2.92/0.99  smt_fast_solver_time:                   0.
% 2.92/0.99  prop_fast_solver_time:                  0.
% 2.92/0.99  prop_unsat_core_time:                   0.
% 2.92/0.99  
% 2.92/0.99  ------ QBF
% 2.92/0.99  
% 2.92/0.99  qbf_q_res:                              0
% 2.92/0.99  qbf_num_tautologies:                    0
% 2.92/0.99  qbf_prep_cycles:                        0
% 2.92/0.99  
% 2.92/0.99  ------ BMC1
% 2.92/0.99  
% 2.92/0.99  bmc1_current_bound:                     -1
% 2.92/0.99  bmc1_last_solved_bound:                 -1
% 2.92/0.99  bmc1_unsat_core_size:                   -1
% 2.92/0.99  bmc1_unsat_core_parents_size:           -1
% 2.92/0.99  bmc1_merge_next_fun:                    0
% 2.92/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.92/0.99  
% 2.92/0.99  ------ Instantiation
% 2.92/0.99  
% 2.92/0.99  inst_num_of_clauses:                    941
% 2.92/0.99  inst_num_in_passive:                    445
% 2.92/0.99  inst_num_in_active:                     247
% 2.92/0.99  inst_num_in_unprocessed:                249
% 2.92/0.99  inst_num_of_loops:                      390
% 2.92/0.99  inst_num_of_learning_restarts:          0
% 2.92/0.99  inst_num_moves_active_passive:          140
% 2.92/0.99  inst_lit_activity:                      0
% 2.92/0.99  inst_lit_activity_moves:                0
% 2.92/0.99  inst_num_tautologies:                   0
% 2.92/0.99  inst_num_prop_implied:                  0
% 2.92/0.99  inst_num_existing_simplified:           0
% 2.92/0.99  inst_num_eq_res_simplified:             0
% 2.92/0.99  inst_num_child_elim:                    0
% 2.92/0.99  inst_num_of_dismatching_blockings:      109
% 2.92/0.99  inst_num_of_non_proper_insts:           503
% 2.92/0.99  inst_num_of_duplicates:                 0
% 2.92/0.99  inst_inst_num_from_inst_to_res:         0
% 2.92/0.99  inst_dismatching_checking_time:         0.
% 2.92/0.99  
% 2.92/0.99  ------ Resolution
% 2.92/0.99  
% 2.92/0.99  res_num_of_clauses:                     0
% 2.92/0.99  res_num_in_passive:                     0
% 2.92/0.99  res_num_in_active:                      0
% 2.92/0.99  res_num_of_loops:                       141
% 2.92/0.99  res_forward_subset_subsumed:            34
% 2.92/0.99  res_backward_subset_subsumed:           0
% 2.92/0.99  res_forward_subsumed:                   0
% 2.92/0.99  res_backward_subsumed:                  0
% 2.92/0.99  res_forward_subsumption_resolution:     0
% 2.92/0.99  res_backward_subsumption_resolution:    0
% 2.92/0.99  res_clause_to_clause_subsumption:       225
% 2.92/0.99  res_orphan_elimination:                 0
% 2.92/0.99  res_tautology_del:                      36
% 2.92/0.99  res_num_eq_res_simplified:              0
% 2.92/0.99  res_num_sel_changes:                    0
% 2.92/0.99  res_moves_from_active_to_pass:          0
% 2.92/0.99  
% 2.92/0.99  ------ Superposition
% 2.92/0.99  
% 2.92/0.99  sup_time_total:                         0.
% 2.92/0.99  sup_time_generating:                    0.
% 2.92/0.99  sup_time_sim_full:                      0.
% 2.92/0.99  sup_time_sim_immed:                     0.
% 2.92/0.99  
% 2.92/0.99  sup_num_of_clauses:                     134
% 2.92/0.99  sup_num_in_active:                      74
% 2.92/0.99  sup_num_in_passive:                     60
% 2.92/0.99  sup_num_of_loops:                       77
% 2.92/0.99  sup_fw_superposition:                   76
% 2.92/0.99  sup_bw_superposition:                   80
% 2.92/0.99  sup_immediate_simplified:               30
% 2.92/0.99  sup_given_eliminated:                   0
% 2.92/0.99  comparisons_done:                       0
% 2.92/0.99  comparisons_avoided:                    0
% 2.92/0.99  
% 2.92/0.99  ------ Simplifications
% 2.92/0.99  
% 2.92/0.99  
% 2.92/0.99  sim_fw_subset_subsumed:                 28
% 2.92/0.99  sim_bw_subset_subsumed:                 1
% 2.92/0.99  sim_fw_subsumed:                        2
% 2.92/0.99  sim_bw_subsumed:                        0
% 2.92/0.99  sim_fw_subsumption_res:                 1
% 2.92/0.99  sim_bw_subsumption_res:                 0
% 2.92/0.99  sim_tautology_del:                      15
% 2.92/0.99  sim_eq_tautology_del:                   0
% 2.92/0.99  sim_eq_res_simp:                        1
% 2.92/0.99  sim_fw_demodulated:                     3
% 2.92/0.99  sim_bw_demodulated:                     4
% 2.92/0.99  sim_light_normalised:                   0
% 2.92/0.99  sim_joinable_taut:                      0
% 2.92/0.99  sim_joinable_simp:                      0
% 2.92/0.99  sim_ac_normalised:                      0
% 2.92/0.99  sim_smt_subsumption:                    0
% 2.92/0.99  
%------------------------------------------------------------------------------
