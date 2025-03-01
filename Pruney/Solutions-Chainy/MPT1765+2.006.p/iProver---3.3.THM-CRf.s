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
% DateTime   : Thu Dec  3 12:22:58 EST 2020

% Result     : Theorem 2.26s
% Output     : CNFRefutation 2.26s
% Verified   : 
% Statistics : Number of formulae       :  134 ( 574 expanded)
%              Number of clauses        :   85 ( 137 expanded)
%              Number of leaves         :   14 ( 243 expanded)
%              Depth                    :   21
%              Number of atoms          :  651 (7417 expanded)
%              Number of equality atoms :  211 ( 806 expanded)
%              Maximal formula depth    :   19 (   5 average)
%              Maximal clause size      :   34 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => ( m1_pre_topc(X2,X3)
                       => ! [X5] :
                            ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))
                           => ( r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                             => k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) = k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_pre_topc(X1)
              & v2_pre_topc(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_pre_topc(X2,X0)
                  & ~ v2_struct_0(X2) )
               => ! [X3] :
                    ( ( m1_pre_topc(X3,X0)
                      & ~ v2_struct_0(X3) )
                   => ! [X4] :
                        ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                          & v1_funct_1(X4) )
                       => ( m1_pre_topc(X2,X3)
                         => ! [X5] :
                              ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))
                             => ( r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                               => k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) = k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                          & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                          & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f27,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
          & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
     => ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,sK5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),sK5)
        & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,sK5),u1_struct_0(X2))
        & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
              & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
              & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
          & m1_pre_topc(X2,X3)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),sK4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,sK4),X5)
            & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),sK4,X5),u1_struct_0(X2))
            & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
        & m1_pre_topc(X2,X3)
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(sK4,u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                  & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                  & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
              & m1_pre_topc(X2,X3)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
              & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
              & v1_funct_1(X4) )
          & m1_pre_topc(X3,X0)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,sK3,X2,X4),X5)
                & r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
            & m1_pre_topc(X2,sK3)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
            & v1_funct_2(X4,u1_struct_0(sK3),u1_struct_0(X1))
            & v1_funct_1(X4) )
        & m1_pre_topc(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                      & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                      & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                  & m1_pre_topc(X2,X3)
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                  & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                  & v1_funct_1(X4) )
              & m1_pre_topc(X3,X0)
              & ~ v2_struct_0(X3) )
          & m1_pre_topc(X2,X0)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( ? [X5] :
                    ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,sK2,X4),X5)
                    & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(sK2))
                    & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                & m1_pre_topc(sK2,X3)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                & v1_funct_1(X4) )
            & m1_pre_topc(X3,X0)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK2,X0)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                          & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ? [X4] :
                    ( ? [X5] :
                        ( k8_relset_1(u1_struct_0(X3),u1_struct_0(sK1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(sK1),k3_tmap_1(X0,sK1,X3,X2,X4),X5)
                        & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(sK1),X4,X5),u1_struct_0(X2))
                        & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK1))) )
                    & m1_pre_topc(X2,X3)
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK1))))
                    & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK1))
                    & v1_funct_1(X4) )
                & m1_pre_topc(X3,X0)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ? [X5] :
                            ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                            & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                            & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                        & m1_pre_topc(X2,X3)
                        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                    & m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                & m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
            & l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(sK0,X1,X3,X2,X4),X5)
                          & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,sK0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,sK0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5)
    & r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5),u1_struct_0(sK2))
    & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK1)))
    & m1_pre_topc(sK2,sK3)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    & v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1))
    & v1_funct_1(sK4)
    & m1_pre_topc(sK3,sK0)
    & ~ v2_struct_0(sK3)
    & m1_pre_topc(sK2,sK0)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f21,f27,f26,f25,f24,f23,f22])).

fof(f45,plain,(
    m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f47,plain,(
    m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f50,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => ( m1_pre_topc(X3,X2)
                       => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)
                      | ~ m1_pre_topc(X3,X2)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)
                      | ~ m1_pre_topc(X3,X2)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f34,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)
      | ~ m1_pre_topc(X3,X2)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2,X3] :
      ( k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0,X1,X2,X3] :
      ( k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f12])).

fof(f32,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f48,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f28])).

fof(f41,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f42,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f43,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f49,plain,(
    v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f28])).

fof(f38,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f39,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f40,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f51,plain,(
    m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f28])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
        & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
        & v1_funct_1(X4)
        & m1_pre_topc(X3,X0)
        & m1_pre_topc(X2,X0)
        & l1_pre_topc(X1)
        & v2_pre_topc(X1)
        & ~ v2_struct_0(X1)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(k3_tmap_1(X0,X1,X2,X3,X4),u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(k3_tmap_1(X0,X1,X2,X3,X4)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(k3_tmap_1(X0,X1,X2,X3,X4),u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(k3_tmap_1(X0,X1,X2,X3,X4)) )
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f19,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(k3_tmap_1(X0,X1,X2,X3,X4),u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(k3_tmap_1(X0,X1,X2,X3,X4)) )
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f37,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2,X3] :
      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f31,plain,(
    ! [X2,X0,X3,X1] :
      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f54,plain,(
    k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) ),
    inference(cnf_transformation,[],[f28])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1,X2] :
          ( r1_tarski(k10_relat_1(X0,X2),X1)
         => k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2)
          | ~ r1_tarski(k10_relat_1(X0,X2),X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2)
          | ~ r1_tarski(k10_relat_1(X0,X2),X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f14])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2)
      | ~ r1_tarski(k10_relat_1(X0,X2),X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f53,plain,(
    r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f29,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_18,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_457,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(subtyping,[status(esa)],[c_18])).

cnf(c_927,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_457])).

cnf(c_16,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_459,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_925,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_459])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_462,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_922,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_462])).

cnf(c_5,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X1,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X4)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_469,plain,
    ( ~ v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53))
    | ~ m1_pre_topc(X2_53,X3_53)
    | ~ m1_pre_topc(X0_53,X3_53)
    | ~ m1_pre_topc(X2_53,X0_53)
    | ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53))))
    | v2_struct_0(X3_53)
    | v2_struct_0(X1_53)
    | ~ v2_pre_topc(X1_53)
    | ~ v2_pre_topc(X3_53)
    | ~ l1_pre_topc(X1_53)
    | ~ l1_pre_topc(X3_53)
    | ~ v1_funct_1(X0_51)
    | k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_51,u1_struct_0(X2_53)) = k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_916,plain,
    ( k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_51,u1_struct_0(X2_53)) = k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51)
    | v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53)) != iProver_top
    | m1_pre_topc(X2_53,X3_53) != iProver_top
    | m1_pre_topc(X0_53,X3_53) != iProver_top
    | m1_pre_topc(X2_53,X0_53) != iProver_top
    | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53)))) != iProver_top
    | v2_struct_0(X3_53) = iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | v2_pre_topc(X3_53) != iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(X3_53) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top
    | v1_funct_1(X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_469])).

cnf(c_2340,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_53)) = k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4)
    | v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | m1_pre_topc(X0_53,X1_53) != iProver_top
    | m1_pre_topc(X0_53,sK3) != iProver_top
    | m1_pre_topc(sK3,X1_53) != iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_922,c_916])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_470,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | ~ v1_funct_1(X0_51)
    | k2_partfun1(X1_51,X2_51,X0_51,X3_51) = k7_relat_1(X0_51,X3_51) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_915,plain,
    ( k2_partfun1(X0_51,X1_51,X2_51,X3_51) = k7_relat_1(X2_51,X3_51)
    | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X2_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_470])).

cnf(c_1716,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k7_relat_1(sK4,X0_51)
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_922,c_915])).

cnf(c_15,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1187,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    | ~ v1_funct_1(sK4)
    | k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k7_relat_1(sK4,X0_51) ),
    inference(instantiation,[status(thm)],[c_470])).

cnf(c_2050,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k7_relat_1(sK4,X0_51) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1716,c_15,c_13,c_1187])).

cnf(c_2394,plain,
    ( k3_tmap_1(X0_53,sK1,sK3,X1_53,sK4) = k7_relat_1(sK4,u1_struct_0(X1_53))
    | v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | m1_pre_topc(X1_53,X0_53) != iProver_top
    | m1_pre_topc(X1_53,sK3) != iProver_top
    | m1_pre_topc(sK3,X0_53) != iProver_top
    | v2_struct_0(X0_53) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_pre_topc(X0_53) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | l1_pre_topc(X0_53) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2340,c_2050])).

cnf(c_22,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_29,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_21,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_30,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_20,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_31,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_36,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_14,negated_conjecture,
    ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_37,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2840,plain,
    ( v2_pre_topc(X0_53) != iProver_top
    | k3_tmap_1(X0_53,sK1,sK3,X1_53,sK4) = k7_relat_1(sK4,u1_struct_0(X1_53))
    | m1_pre_topc(X1_53,X0_53) != iProver_top
    | m1_pre_topc(X1_53,sK3) != iProver_top
    | m1_pre_topc(sK3,X0_53) != iProver_top
    | v2_struct_0(X0_53) = iProver_top
    | l1_pre_topc(X0_53) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2394,c_29,c_30,c_31,c_36,c_37])).

cnf(c_2841,plain,
    ( k3_tmap_1(X0_53,sK1,sK3,X1_53,sK4) = k7_relat_1(sK4,u1_struct_0(X1_53))
    | m1_pre_topc(X1_53,X0_53) != iProver_top
    | m1_pre_topc(X1_53,sK3) != iProver_top
    | m1_pre_topc(sK3,X0_53) != iProver_top
    | v2_struct_0(X0_53) = iProver_top
    | v2_pre_topc(X0_53) != iProver_top
    | l1_pre_topc(X0_53) != iProver_top ),
    inference(renaming,[status(thm)],[c_2840])).

cnf(c_2853,plain,
    ( k3_tmap_1(sK0,sK1,sK3,X0_53,sK4) = k7_relat_1(sK4,u1_struct_0(X0_53))
    | m1_pre_topc(X0_53,sK0) != iProver_top
    | m1_pre_topc(X0_53,sK3) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_925,c_2841])).

cnf(c_25,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_26,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_24,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_27,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_23,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_28,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2858,plain,
    ( m1_pre_topc(X0_53,sK3) != iProver_top
    | m1_pre_topc(X0_53,sK0) != iProver_top
    | k3_tmap_1(sK0,sK1,sK3,X0_53,sK4) = k7_relat_1(sK4,u1_struct_0(X0_53)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2853,c_26,c_27,c_28])).

cnf(c_2859,plain,
    ( k3_tmap_1(sK0,sK1,sK3,X0_53,sK4) = k7_relat_1(sK4,u1_struct_0(X0_53))
    | m1_pre_topc(X0_53,sK0) != iProver_top
    | m1_pre_topc(X0_53,sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_2858])).

cnf(c_2868,plain,
    ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k7_relat_1(sK4,u1_struct_0(sK2))
    | m1_pre_topc(sK2,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_927,c_2859])).

cnf(c_12,negated_conjecture,
    ( m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_39,plain,
    ( m1_pre_topc(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_2939,plain,
    ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k7_relat_1(sK4,u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2868,c_39])).

cnf(c_6,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X1,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | m1_subset_1(k3_tmap_1(X4,X2,X1,X3,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X4)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_468,plain,
    ( ~ v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53))
    | ~ m1_pre_topc(X2_53,X3_53)
    | ~ m1_pre_topc(X0_53,X3_53)
    | ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53))))
    | m1_subset_1(k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_53),u1_struct_0(X1_53))))
    | v2_struct_0(X3_53)
    | v2_struct_0(X1_53)
    | ~ v2_pre_topc(X1_53)
    | ~ v2_pre_topc(X3_53)
    | ~ l1_pre_topc(X1_53)
    | ~ l1_pre_topc(X3_53)
    | ~ v1_funct_1(X0_51) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_917,plain,
    ( v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53)) != iProver_top
    | m1_pre_topc(X2_53,X3_53) != iProver_top
    | m1_pre_topc(X0_53,X3_53) != iProver_top
    | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53)))) != iProver_top
    | m1_subset_1(k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_53),u1_struct_0(X1_53)))) = iProver_top
    | v2_struct_0(X3_53) = iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | v2_pre_topc(X3_53) != iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(X3_53) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top
    | v1_funct_1(X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_468])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_471,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | k8_relset_1(X1_51,X2_51,X0_51,X3_51) = k10_relat_1(X0_51,X3_51) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_914,plain,
    ( k8_relset_1(X0_51,X1_51,X2_51,X3_51) = k10_relat_1(X2_51,X3_51)
    | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_471])).

cnf(c_1795,plain,
    ( k8_relset_1(u1_struct_0(X0_53),u1_struct_0(X1_53),k3_tmap_1(X2_53,X1_53,X3_53,X0_53,X0_51),X1_51) = k10_relat_1(k3_tmap_1(X2_53,X1_53,X3_53,X0_53,X0_51),X1_51)
    | v1_funct_2(X0_51,u1_struct_0(X3_53),u1_struct_0(X1_53)) != iProver_top
    | m1_pre_topc(X0_53,X2_53) != iProver_top
    | m1_pre_topc(X3_53,X2_53) != iProver_top
    | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_53),u1_struct_0(X1_53)))) != iProver_top
    | v2_struct_0(X2_53) = iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | v2_pre_topc(X2_53) != iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(X2_53) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top
    | v1_funct_1(X0_51) != iProver_top ),
    inference(superposition,[status(thm)],[c_917,c_914])).

cnf(c_2478,plain,
    ( k8_relset_1(u1_struct_0(X0_53),u1_struct_0(sK1),k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51) = k10_relat_1(k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51)
    | v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | m1_pre_topc(X0_53,X1_53) != iProver_top
    | m1_pre_topc(sK3,X1_53) != iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_922,c_1795])).

cnf(c_2547,plain,
    ( v2_pre_topc(X1_53) != iProver_top
    | k8_relset_1(u1_struct_0(X0_53),u1_struct_0(sK1),k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51) = k10_relat_1(k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51)
    | m1_pre_topc(X0_53,X1_53) != iProver_top
    | m1_pre_topc(sK3,X1_53) != iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | l1_pre_topc(X1_53) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2478,c_29,c_30,c_31,c_36,c_37])).

cnf(c_2548,plain,
    ( k8_relset_1(u1_struct_0(X0_53),u1_struct_0(sK1),k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51) = k10_relat_1(k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51)
    | m1_pre_topc(X0_53,X1_53) != iProver_top
    | m1_pre_topc(sK3,X1_53) != iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top ),
    inference(renaming,[status(thm)],[c_2547])).

cnf(c_2561,plain,
    ( k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51) = k10_relat_1(k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51)
    | m1_pre_topc(sK3,sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_927,c_2548])).

cnf(c_35,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2749,plain,
    ( k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51) = k10_relat_1(k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2561,c_26,c_27,c_28,c_35])).

cnf(c_1667,plain,
    ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k10_relat_1(sK4,X0_51) ),
    inference(superposition,[status(thm)],[c_922,c_914])).

cnf(c_9,negated_conjecture,
    ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_465,negated_conjecture,
    ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1988,plain,
    ( k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) != k10_relat_1(sK4,sK5) ),
    inference(demodulation,[status(thm)],[c_1667,c_465])).

cnf(c_2753,plain,
    ( k10_relat_1(k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) != k10_relat_1(sK4,sK5) ),
    inference(demodulation,[status(thm)],[c_2749,c_1988])).

cnf(c_2942,plain,
    ( k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) != k10_relat_1(sK4,sK5) ),
    inference(demodulation,[status(thm)],[c_2939,c_2753])).

cnf(c_4,plain,
    ( ~ r1_tarski(k10_relat_1(X0,X1),X2)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k10_relat_1(k7_relat_1(X0,X2),X1) = k10_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_10,negated_conjecture,
    ( r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_262,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0,X1)
    | k10_relat_1(k7_relat_1(X0,X2),X1) = k10_relat_1(X0,X1)
    | u1_struct_0(sK2) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_10])).

cnf(c_263,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0,X1)
    | k10_relat_1(k7_relat_1(X0,u1_struct_0(sK2)),X1) = k10_relat_1(X0,X1) ),
    inference(unflattening,[status(thm)],[c_262])).

cnf(c_449,plain,
    ( ~ v1_funct_1(X0_51)
    | ~ v1_relat_1(X0_51)
    | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0_51,X1_51)
    | k10_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),X1_51) = k10_relat_1(X0_51,X1_51) ),
    inference(subtyping,[status(esa)],[c_263])).

cnf(c_935,plain,
    ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0_51,X1_51)
    | k10_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),X1_51) = k10_relat_1(X0_51,X1_51)
    | v1_funct_1(X0_51) != iProver_top
    | v1_relat_1(X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_449])).

cnf(c_1987,plain,
    ( k10_relat_1(X0_51,X1_51) != k10_relat_1(sK4,sK5)
    | k10_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),X1_51) = k10_relat_1(X0_51,X1_51)
    | v1_funct_1(X0_51) != iProver_top
    | v1_relat_1(X0_51) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1667,c_935])).

cnf(c_2121,plain,
    ( k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) = k10_relat_1(sK4,sK5)
    | v1_funct_1(sK4) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1987])).

cnf(c_1182,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k10_relat_1(sK4,X0_51) ),
    inference(instantiation,[status(thm)],[c_471])).

cnf(c_1271,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) = k10_relat_1(sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_1182])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_473,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(X1_51))
    | ~ v1_relat_1(X1_51)
    | v1_relat_1(X0_51) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1156,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | v1_relat_1(X0_51)
    | ~ v1_relat_1(k2_zfmisc_1(X1_51,X2_51)) ),
    inference(instantiation,[status(thm)],[c_473])).

cnf(c_1324,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    | ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1156])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_472,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_51,X1_51)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1342,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_472])).

cnf(c_1634,plain,
    ( ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(sK4,sK5)
    | k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) = k10_relat_1(sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_449])).

cnf(c_2124,plain,
    ( k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) = k10_relat_1(sK4,sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2121,c_15,c_13,c_1271,c_1324,c_1342,c_1634])).

cnf(c_2947,plain,
    ( k10_relat_1(sK4,sK5) != k10_relat_1(sK4,sK5) ),
    inference(light_normalisation,[status(thm)],[c_2942,c_2124])).

cnf(c_2948,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_2947])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n007.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:17:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.26/1.02  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.26/1.02  
% 2.26/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.26/1.02  
% 2.26/1.02  ------  iProver source info
% 2.26/1.02  
% 2.26/1.02  git: date: 2020-06-30 10:37:57 +0100
% 2.26/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.26/1.02  git: non_committed_changes: false
% 2.26/1.02  git: last_make_outside_of_git: false
% 2.26/1.02  
% 2.26/1.02  ------ 
% 2.26/1.02  
% 2.26/1.02  ------ Input Options
% 2.26/1.02  
% 2.26/1.02  --out_options                           all
% 2.26/1.02  --tptp_safe_out                         true
% 2.26/1.02  --problem_path                          ""
% 2.26/1.02  --include_path                          ""
% 2.26/1.02  --clausifier                            res/vclausify_rel
% 2.26/1.02  --clausifier_options                    --mode clausify
% 2.26/1.02  --stdin                                 false
% 2.26/1.02  --stats_out                             all
% 2.26/1.02  
% 2.26/1.02  ------ General Options
% 2.26/1.02  
% 2.26/1.02  --fof                                   false
% 2.26/1.02  --time_out_real                         305.
% 2.26/1.02  --time_out_virtual                      -1.
% 2.26/1.02  --symbol_type_check                     false
% 2.26/1.02  --clausify_out                          false
% 2.26/1.02  --sig_cnt_out                           false
% 2.26/1.02  --trig_cnt_out                          false
% 2.26/1.02  --trig_cnt_out_tolerance                1.
% 2.26/1.02  --trig_cnt_out_sk_spl                   false
% 2.26/1.02  --abstr_cl_out                          false
% 2.26/1.02  
% 2.26/1.02  ------ Global Options
% 2.26/1.02  
% 2.26/1.02  --schedule                              default
% 2.26/1.02  --add_important_lit                     false
% 2.26/1.02  --prop_solver_per_cl                    1000
% 2.26/1.02  --min_unsat_core                        false
% 2.26/1.02  --soft_assumptions                      false
% 2.26/1.02  --soft_lemma_size                       3
% 2.26/1.02  --prop_impl_unit_size                   0
% 2.26/1.02  --prop_impl_unit                        []
% 2.26/1.02  --share_sel_clauses                     true
% 2.26/1.02  --reset_solvers                         false
% 2.26/1.02  --bc_imp_inh                            [conj_cone]
% 2.26/1.02  --conj_cone_tolerance                   3.
% 2.26/1.02  --extra_neg_conj                        none
% 2.26/1.02  --large_theory_mode                     true
% 2.26/1.02  --prolific_symb_bound                   200
% 2.26/1.02  --lt_threshold                          2000
% 2.26/1.02  --clause_weak_htbl                      true
% 2.26/1.02  --gc_record_bc_elim                     false
% 2.26/1.02  
% 2.26/1.02  ------ Preprocessing Options
% 2.26/1.02  
% 2.26/1.02  --preprocessing_flag                    true
% 2.26/1.02  --time_out_prep_mult                    0.1
% 2.26/1.02  --splitting_mode                        input
% 2.26/1.02  --splitting_grd                         true
% 2.26/1.02  --splitting_cvd                         false
% 2.26/1.02  --splitting_cvd_svl                     false
% 2.26/1.02  --splitting_nvd                         32
% 2.26/1.02  --sub_typing                            true
% 2.26/1.02  --prep_gs_sim                           true
% 2.26/1.02  --prep_unflatten                        true
% 2.26/1.02  --prep_res_sim                          true
% 2.26/1.02  --prep_upred                            true
% 2.26/1.02  --prep_sem_filter                       exhaustive
% 2.26/1.02  --prep_sem_filter_out                   false
% 2.26/1.02  --pred_elim                             true
% 2.26/1.02  --res_sim_input                         true
% 2.26/1.02  --eq_ax_congr_red                       true
% 2.26/1.02  --pure_diseq_elim                       true
% 2.26/1.02  --brand_transform                       false
% 2.26/1.02  --non_eq_to_eq                          false
% 2.26/1.02  --prep_def_merge                        true
% 2.26/1.02  --prep_def_merge_prop_impl              false
% 2.26/1.02  --prep_def_merge_mbd                    true
% 2.26/1.02  --prep_def_merge_tr_red                 false
% 2.26/1.02  --prep_def_merge_tr_cl                  false
% 2.26/1.02  --smt_preprocessing                     true
% 2.26/1.02  --smt_ac_axioms                         fast
% 2.26/1.02  --preprocessed_out                      false
% 2.26/1.02  --preprocessed_stats                    false
% 2.26/1.02  
% 2.26/1.02  ------ Abstraction refinement Options
% 2.26/1.02  
% 2.26/1.02  --abstr_ref                             []
% 2.26/1.02  --abstr_ref_prep                        false
% 2.26/1.02  --abstr_ref_until_sat                   false
% 2.26/1.02  --abstr_ref_sig_restrict                funpre
% 2.26/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.26/1.02  --abstr_ref_under                       []
% 2.26/1.02  
% 2.26/1.02  ------ SAT Options
% 2.26/1.02  
% 2.26/1.02  --sat_mode                              false
% 2.26/1.02  --sat_fm_restart_options                ""
% 2.26/1.02  --sat_gr_def                            false
% 2.26/1.02  --sat_epr_types                         true
% 2.26/1.02  --sat_non_cyclic_types                  false
% 2.26/1.02  --sat_finite_models                     false
% 2.26/1.02  --sat_fm_lemmas                         false
% 2.26/1.02  --sat_fm_prep                           false
% 2.26/1.02  --sat_fm_uc_incr                        true
% 2.26/1.02  --sat_out_model                         small
% 2.26/1.02  --sat_out_clauses                       false
% 2.26/1.02  
% 2.26/1.02  ------ QBF Options
% 2.26/1.02  
% 2.26/1.02  --qbf_mode                              false
% 2.26/1.02  --qbf_elim_univ                         false
% 2.26/1.02  --qbf_dom_inst                          none
% 2.26/1.02  --qbf_dom_pre_inst                      false
% 2.26/1.02  --qbf_sk_in                             false
% 2.26/1.02  --qbf_pred_elim                         true
% 2.26/1.02  --qbf_split                             512
% 2.26/1.02  
% 2.26/1.02  ------ BMC1 Options
% 2.26/1.02  
% 2.26/1.02  --bmc1_incremental                      false
% 2.26/1.02  --bmc1_axioms                           reachable_all
% 2.26/1.02  --bmc1_min_bound                        0
% 2.26/1.02  --bmc1_max_bound                        -1
% 2.26/1.02  --bmc1_max_bound_default                -1
% 2.26/1.02  --bmc1_symbol_reachability              true
% 2.26/1.02  --bmc1_property_lemmas                  false
% 2.26/1.02  --bmc1_k_induction                      false
% 2.26/1.02  --bmc1_non_equiv_states                 false
% 2.26/1.02  --bmc1_deadlock                         false
% 2.26/1.02  --bmc1_ucm                              false
% 2.26/1.02  --bmc1_add_unsat_core                   none
% 2.26/1.02  --bmc1_unsat_core_children              false
% 2.26/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.26/1.02  --bmc1_out_stat                         full
% 2.26/1.02  --bmc1_ground_init                      false
% 2.26/1.02  --bmc1_pre_inst_next_state              false
% 2.26/1.02  --bmc1_pre_inst_state                   false
% 2.26/1.02  --bmc1_pre_inst_reach_state             false
% 2.26/1.02  --bmc1_out_unsat_core                   false
% 2.26/1.02  --bmc1_aig_witness_out                  false
% 2.26/1.02  --bmc1_verbose                          false
% 2.26/1.02  --bmc1_dump_clauses_tptp                false
% 2.26/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.26/1.02  --bmc1_dump_file                        -
% 2.26/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.26/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.26/1.02  --bmc1_ucm_extend_mode                  1
% 2.26/1.02  --bmc1_ucm_init_mode                    2
% 2.26/1.02  --bmc1_ucm_cone_mode                    none
% 2.26/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.26/1.02  --bmc1_ucm_relax_model                  4
% 2.26/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.26/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.26/1.02  --bmc1_ucm_layered_model                none
% 2.26/1.02  --bmc1_ucm_max_lemma_size               10
% 2.26/1.02  
% 2.26/1.02  ------ AIG Options
% 2.26/1.02  
% 2.26/1.02  --aig_mode                              false
% 2.26/1.02  
% 2.26/1.02  ------ Instantiation Options
% 2.26/1.02  
% 2.26/1.02  --instantiation_flag                    true
% 2.26/1.02  --inst_sos_flag                         false
% 2.26/1.02  --inst_sos_phase                        true
% 2.26/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.26/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.26/1.02  --inst_lit_sel_side                     num_symb
% 2.26/1.02  --inst_solver_per_active                1400
% 2.26/1.02  --inst_solver_calls_frac                1.
% 2.26/1.02  --inst_passive_queue_type               priority_queues
% 2.26/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.26/1.02  --inst_passive_queues_freq              [25;2]
% 2.26/1.02  --inst_dismatching                      true
% 2.26/1.02  --inst_eager_unprocessed_to_passive     true
% 2.26/1.02  --inst_prop_sim_given                   true
% 2.26/1.02  --inst_prop_sim_new                     false
% 2.26/1.02  --inst_subs_new                         false
% 2.26/1.02  --inst_eq_res_simp                      false
% 2.26/1.02  --inst_subs_given                       false
% 2.26/1.02  --inst_orphan_elimination               true
% 2.26/1.02  --inst_learning_loop_flag               true
% 2.26/1.02  --inst_learning_start                   3000
% 2.26/1.02  --inst_learning_factor                  2
% 2.26/1.02  --inst_start_prop_sim_after_learn       3
% 2.26/1.02  --inst_sel_renew                        solver
% 2.26/1.02  --inst_lit_activity_flag                true
% 2.26/1.02  --inst_restr_to_given                   false
% 2.26/1.02  --inst_activity_threshold               500
% 2.26/1.02  --inst_out_proof                        true
% 2.26/1.02  
% 2.26/1.02  ------ Resolution Options
% 2.26/1.02  
% 2.26/1.02  --resolution_flag                       true
% 2.26/1.02  --res_lit_sel                           adaptive
% 2.26/1.02  --res_lit_sel_side                      none
% 2.26/1.02  --res_ordering                          kbo
% 2.26/1.02  --res_to_prop_solver                    active
% 2.26/1.02  --res_prop_simpl_new                    false
% 2.26/1.02  --res_prop_simpl_given                  true
% 2.26/1.02  --res_passive_queue_type                priority_queues
% 2.26/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.26/1.02  --res_passive_queues_freq               [15;5]
% 2.26/1.02  --res_forward_subs                      full
% 2.26/1.02  --res_backward_subs                     full
% 2.26/1.02  --res_forward_subs_resolution           true
% 2.26/1.02  --res_backward_subs_resolution          true
% 2.26/1.02  --res_orphan_elimination                true
% 2.26/1.02  --res_time_limit                        2.
% 2.26/1.02  --res_out_proof                         true
% 2.26/1.02  
% 2.26/1.02  ------ Superposition Options
% 2.26/1.02  
% 2.26/1.02  --superposition_flag                    true
% 2.26/1.02  --sup_passive_queue_type                priority_queues
% 2.26/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.26/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.26/1.02  --demod_completeness_check              fast
% 2.26/1.02  --demod_use_ground                      true
% 2.26/1.02  --sup_to_prop_solver                    passive
% 2.26/1.02  --sup_prop_simpl_new                    true
% 2.26/1.02  --sup_prop_simpl_given                  true
% 2.26/1.02  --sup_fun_splitting                     false
% 2.26/1.02  --sup_smt_interval                      50000
% 2.26/1.02  
% 2.26/1.02  ------ Superposition Simplification Setup
% 2.26/1.02  
% 2.26/1.02  --sup_indices_passive                   []
% 2.26/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.26/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.26/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.26/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.26/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.26/1.02  --sup_full_bw                           [BwDemod]
% 2.26/1.02  --sup_immed_triv                        [TrivRules]
% 2.26/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.26/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.26/1.02  --sup_immed_bw_main                     []
% 2.26/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.26/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.26/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.26/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.26/1.02  
% 2.26/1.02  ------ Combination Options
% 2.26/1.02  
% 2.26/1.02  --comb_res_mult                         3
% 2.26/1.02  --comb_sup_mult                         2
% 2.26/1.02  --comb_inst_mult                        10
% 2.26/1.02  
% 2.26/1.02  ------ Debug Options
% 2.26/1.02  
% 2.26/1.02  --dbg_backtrace                         false
% 2.26/1.02  --dbg_dump_prop_clauses                 false
% 2.26/1.02  --dbg_dump_prop_clauses_file            -
% 2.26/1.02  --dbg_out_stat                          false
% 2.26/1.02  ------ Parsing...
% 2.26/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.26/1.02  
% 2.26/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.26/1.02  
% 2.26/1.02  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.26/1.02  
% 2.26/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.26/1.02  ------ Proving...
% 2.26/1.02  ------ Problem Properties 
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  clauses                                 25
% 2.26/1.02  conjectures                             16
% 2.26/1.02  EPR                                     12
% 2.26/1.02  Horn                                    21
% 2.26/1.02  unary                                   17
% 2.26/1.02  binary                                  1
% 2.26/1.02  lits                                    78
% 2.26/1.02  lits eq                                 6
% 2.26/1.02  fd_pure                                 0
% 2.26/1.02  fd_pseudo                               0
% 2.26/1.02  fd_cond                                 0
% 2.26/1.02  fd_pseudo_cond                          0
% 2.26/1.02  AC symbols                              0
% 2.26/1.02  
% 2.26/1.02  ------ Schedule dynamic 5 is on 
% 2.26/1.02  
% 2.26/1.02  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  ------ 
% 2.26/1.02  Current options:
% 2.26/1.02  ------ 
% 2.26/1.02  
% 2.26/1.02  ------ Input Options
% 2.26/1.02  
% 2.26/1.02  --out_options                           all
% 2.26/1.02  --tptp_safe_out                         true
% 2.26/1.02  --problem_path                          ""
% 2.26/1.02  --include_path                          ""
% 2.26/1.02  --clausifier                            res/vclausify_rel
% 2.26/1.02  --clausifier_options                    --mode clausify
% 2.26/1.02  --stdin                                 false
% 2.26/1.02  --stats_out                             all
% 2.26/1.02  
% 2.26/1.02  ------ General Options
% 2.26/1.02  
% 2.26/1.02  --fof                                   false
% 2.26/1.02  --time_out_real                         305.
% 2.26/1.02  --time_out_virtual                      -1.
% 2.26/1.02  --symbol_type_check                     false
% 2.26/1.02  --clausify_out                          false
% 2.26/1.02  --sig_cnt_out                           false
% 2.26/1.02  --trig_cnt_out                          false
% 2.26/1.02  --trig_cnt_out_tolerance                1.
% 2.26/1.02  --trig_cnt_out_sk_spl                   false
% 2.26/1.02  --abstr_cl_out                          false
% 2.26/1.02  
% 2.26/1.02  ------ Global Options
% 2.26/1.02  
% 2.26/1.02  --schedule                              default
% 2.26/1.02  --add_important_lit                     false
% 2.26/1.02  --prop_solver_per_cl                    1000
% 2.26/1.02  --min_unsat_core                        false
% 2.26/1.02  --soft_assumptions                      false
% 2.26/1.02  --soft_lemma_size                       3
% 2.26/1.02  --prop_impl_unit_size                   0
% 2.26/1.02  --prop_impl_unit                        []
% 2.26/1.02  --share_sel_clauses                     true
% 2.26/1.02  --reset_solvers                         false
% 2.26/1.02  --bc_imp_inh                            [conj_cone]
% 2.26/1.02  --conj_cone_tolerance                   3.
% 2.26/1.02  --extra_neg_conj                        none
% 2.26/1.02  --large_theory_mode                     true
% 2.26/1.02  --prolific_symb_bound                   200
% 2.26/1.02  --lt_threshold                          2000
% 2.26/1.02  --clause_weak_htbl                      true
% 2.26/1.02  --gc_record_bc_elim                     false
% 2.26/1.02  
% 2.26/1.02  ------ Preprocessing Options
% 2.26/1.02  
% 2.26/1.02  --preprocessing_flag                    true
% 2.26/1.02  --time_out_prep_mult                    0.1
% 2.26/1.02  --splitting_mode                        input
% 2.26/1.02  --splitting_grd                         true
% 2.26/1.02  --splitting_cvd                         false
% 2.26/1.02  --splitting_cvd_svl                     false
% 2.26/1.02  --splitting_nvd                         32
% 2.26/1.02  --sub_typing                            true
% 2.26/1.02  --prep_gs_sim                           true
% 2.26/1.02  --prep_unflatten                        true
% 2.26/1.02  --prep_res_sim                          true
% 2.26/1.02  --prep_upred                            true
% 2.26/1.02  --prep_sem_filter                       exhaustive
% 2.26/1.02  --prep_sem_filter_out                   false
% 2.26/1.02  --pred_elim                             true
% 2.26/1.02  --res_sim_input                         true
% 2.26/1.02  --eq_ax_congr_red                       true
% 2.26/1.02  --pure_diseq_elim                       true
% 2.26/1.02  --brand_transform                       false
% 2.26/1.02  --non_eq_to_eq                          false
% 2.26/1.02  --prep_def_merge                        true
% 2.26/1.02  --prep_def_merge_prop_impl              false
% 2.26/1.02  --prep_def_merge_mbd                    true
% 2.26/1.02  --prep_def_merge_tr_red                 false
% 2.26/1.02  --prep_def_merge_tr_cl                  false
% 2.26/1.02  --smt_preprocessing                     true
% 2.26/1.02  --smt_ac_axioms                         fast
% 2.26/1.02  --preprocessed_out                      false
% 2.26/1.02  --preprocessed_stats                    false
% 2.26/1.02  
% 2.26/1.02  ------ Abstraction refinement Options
% 2.26/1.02  
% 2.26/1.02  --abstr_ref                             []
% 2.26/1.02  --abstr_ref_prep                        false
% 2.26/1.02  --abstr_ref_until_sat                   false
% 2.26/1.02  --abstr_ref_sig_restrict                funpre
% 2.26/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.26/1.02  --abstr_ref_under                       []
% 2.26/1.02  
% 2.26/1.02  ------ SAT Options
% 2.26/1.02  
% 2.26/1.02  --sat_mode                              false
% 2.26/1.02  --sat_fm_restart_options                ""
% 2.26/1.02  --sat_gr_def                            false
% 2.26/1.02  --sat_epr_types                         true
% 2.26/1.02  --sat_non_cyclic_types                  false
% 2.26/1.02  --sat_finite_models                     false
% 2.26/1.02  --sat_fm_lemmas                         false
% 2.26/1.02  --sat_fm_prep                           false
% 2.26/1.02  --sat_fm_uc_incr                        true
% 2.26/1.02  --sat_out_model                         small
% 2.26/1.02  --sat_out_clauses                       false
% 2.26/1.02  
% 2.26/1.02  ------ QBF Options
% 2.26/1.02  
% 2.26/1.02  --qbf_mode                              false
% 2.26/1.02  --qbf_elim_univ                         false
% 2.26/1.02  --qbf_dom_inst                          none
% 2.26/1.02  --qbf_dom_pre_inst                      false
% 2.26/1.02  --qbf_sk_in                             false
% 2.26/1.02  --qbf_pred_elim                         true
% 2.26/1.02  --qbf_split                             512
% 2.26/1.02  
% 2.26/1.02  ------ BMC1 Options
% 2.26/1.02  
% 2.26/1.02  --bmc1_incremental                      false
% 2.26/1.02  --bmc1_axioms                           reachable_all
% 2.26/1.02  --bmc1_min_bound                        0
% 2.26/1.02  --bmc1_max_bound                        -1
% 2.26/1.02  --bmc1_max_bound_default                -1
% 2.26/1.02  --bmc1_symbol_reachability              true
% 2.26/1.02  --bmc1_property_lemmas                  false
% 2.26/1.02  --bmc1_k_induction                      false
% 2.26/1.02  --bmc1_non_equiv_states                 false
% 2.26/1.02  --bmc1_deadlock                         false
% 2.26/1.02  --bmc1_ucm                              false
% 2.26/1.02  --bmc1_add_unsat_core                   none
% 2.26/1.02  --bmc1_unsat_core_children              false
% 2.26/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.26/1.02  --bmc1_out_stat                         full
% 2.26/1.02  --bmc1_ground_init                      false
% 2.26/1.02  --bmc1_pre_inst_next_state              false
% 2.26/1.02  --bmc1_pre_inst_state                   false
% 2.26/1.02  --bmc1_pre_inst_reach_state             false
% 2.26/1.02  --bmc1_out_unsat_core                   false
% 2.26/1.02  --bmc1_aig_witness_out                  false
% 2.26/1.02  --bmc1_verbose                          false
% 2.26/1.02  --bmc1_dump_clauses_tptp                false
% 2.26/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.26/1.02  --bmc1_dump_file                        -
% 2.26/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.26/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.26/1.02  --bmc1_ucm_extend_mode                  1
% 2.26/1.02  --bmc1_ucm_init_mode                    2
% 2.26/1.02  --bmc1_ucm_cone_mode                    none
% 2.26/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.26/1.02  --bmc1_ucm_relax_model                  4
% 2.26/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.26/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.26/1.02  --bmc1_ucm_layered_model                none
% 2.26/1.02  --bmc1_ucm_max_lemma_size               10
% 2.26/1.02  
% 2.26/1.02  ------ AIG Options
% 2.26/1.02  
% 2.26/1.02  --aig_mode                              false
% 2.26/1.02  
% 2.26/1.02  ------ Instantiation Options
% 2.26/1.02  
% 2.26/1.02  --instantiation_flag                    true
% 2.26/1.02  --inst_sos_flag                         false
% 2.26/1.02  --inst_sos_phase                        true
% 2.26/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.26/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.26/1.02  --inst_lit_sel_side                     none
% 2.26/1.02  --inst_solver_per_active                1400
% 2.26/1.02  --inst_solver_calls_frac                1.
% 2.26/1.02  --inst_passive_queue_type               priority_queues
% 2.26/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.26/1.02  --inst_passive_queues_freq              [25;2]
% 2.26/1.02  --inst_dismatching                      true
% 2.26/1.02  --inst_eager_unprocessed_to_passive     true
% 2.26/1.02  --inst_prop_sim_given                   true
% 2.26/1.02  --inst_prop_sim_new                     false
% 2.26/1.02  --inst_subs_new                         false
% 2.26/1.02  --inst_eq_res_simp                      false
% 2.26/1.02  --inst_subs_given                       false
% 2.26/1.02  --inst_orphan_elimination               true
% 2.26/1.02  --inst_learning_loop_flag               true
% 2.26/1.02  --inst_learning_start                   3000
% 2.26/1.02  --inst_learning_factor                  2
% 2.26/1.02  --inst_start_prop_sim_after_learn       3
% 2.26/1.02  --inst_sel_renew                        solver
% 2.26/1.02  --inst_lit_activity_flag                true
% 2.26/1.02  --inst_restr_to_given                   false
% 2.26/1.02  --inst_activity_threshold               500
% 2.26/1.02  --inst_out_proof                        true
% 2.26/1.02  
% 2.26/1.02  ------ Resolution Options
% 2.26/1.02  
% 2.26/1.02  --resolution_flag                       false
% 2.26/1.02  --res_lit_sel                           adaptive
% 2.26/1.02  --res_lit_sel_side                      none
% 2.26/1.02  --res_ordering                          kbo
% 2.26/1.02  --res_to_prop_solver                    active
% 2.26/1.02  --res_prop_simpl_new                    false
% 2.26/1.02  --res_prop_simpl_given                  true
% 2.26/1.02  --res_passive_queue_type                priority_queues
% 2.26/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.26/1.02  --res_passive_queues_freq               [15;5]
% 2.26/1.02  --res_forward_subs                      full
% 2.26/1.02  --res_backward_subs                     full
% 2.26/1.02  --res_forward_subs_resolution           true
% 2.26/1.02  --res_backward_subs_resolution          true
% 2.26/1.02  --res_orphan_elimination                true
% 2.26/1.02  --res_time_limit                        2.
% 2.26/1.02  --res_out_proof                         true
% 2.26/1.02  
% 2.26/1.02  ------ Superposition Options
% 2.26/1.02  
% 2.26/1.02  --superposition_flag                    true
% 2.26/1.02  --sup_passive_queue_type                priority_queues
% 2.26/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.26/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.26/1.02  --demod_completeness_check              fast
% 2.26/1.02  --demod_use_ground                      true
% 2.26/1.02  --sup_to_prop_solver                    passive
% 2.26/1.02  --sup_prop_simpl_new                    true
% 2.26/1.02  --sup_prop_simpl_given                  true
% 2.26/1.02  --sup_fun_splitting                     false
% 2.26/1.02  --sup_smt_interval                      50000
% 2.26/1.02  
% 2.26/1.02  ------ Superposition Simplification Setup
% 2.26/1.02  
% 2.26/1.02  --sup_indices_passive                   []
% 2.26/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.26/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.26/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.26/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.26/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.26/1.02  --sup_full_bw                           [BwDemod]
% 2.26/1.02  --sup_immed_triv                        [TrivRules]
% 2.26/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.26/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.26/1.02  --sup_immed_bw_main                     []
% 2.26/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.26/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.26/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.26/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.26/1.02  
% 2.26/1.02  ------ Combination Options
% 2.26/1.02  
% 2.26/1.02  --comb_res_mult                         3
% 2.26/1.02  --comb_sup_mult                         2
% 2.26/1.02  --comb_inst_mult                        10
% 2.26/1.02  
% 2.26/1.02  ------ Debug Options
% 2.26/1.02  
% 2.26/1.02  --dbg_backtrace                         false
% 2.26/1.02  --dbg_dump_prop_clauses                 false
% 2.26/1.02  --dbg_dump_prop_clauses_file            -
% 2.26/1.02  --dbg_out_stat                          false
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  ------ Proving...
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  % SZS status Theorem for theBenchmark.p
% 2.26/1.02  
% 2.26/1.02   Resolution empty clause
% 2.26/1.02  
% 2.26/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 2.26/1.02  
% 2.26/1.02  fof(f8,conjecture,(
% 2.26/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : (m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) => (r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) => k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) = k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)))))))))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f9,negated_conjecture,(
% 2.26/1.02    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : (m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1))) => (r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) => k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) = k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)))))))))),
% 2.26/1.02    inference(negated_conjecture,[],[f8])).
% 2.26/1.02  
% 2.26/1.02  fof(f20,plain,(
% 2.26/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((? [X5] : ((k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4))) & (m1_pre_topc(X3,X0) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.26/1.02    inference(ennf_transformation,[],[f9])).
% 2.26/1.02  
% 2.26/1.02  fof(f21,plain,(
% 2.26/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.26/1.02    inference(flattening,[],[f20])).
% 2.26/1.02  
% 2.26/1.02  fof(f27,plain,(
% 2.26/1.02    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) => (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,sK5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),sK5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,sK5),u1_struct_0(X2)) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X1))))) )),
% 2.26/1.02    introduced(choice_axiom,[])).
% 2.26/1.02  
% 2.26/1.02  fof(f26,plain,(
% 2.26/1.02    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),sK4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,sK4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),sK4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(sK4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(sK4))) )),
% 2.26/1.02    introduced(choice_axiom,[])).
% 2.26/1.02  
% 2.26/1.02  fof(f25,plain,(
% 2.26/1.02    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(sK3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,sK3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,sK3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(sK3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(sK3,X0) & ~v2_struct_0(sK3))) )),
% 2.26/1.02    introduced(choice_axiom,[])).
% 2.26/1.02  
% 2.26/1.02  fof(f24,plain,(
% 2.26/1.02    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,sK2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(sK2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(sK2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(sK2,X0) & ~v2_struct_0(sK2))) )),
% 2.26/1.02    introduced(choice_axiom,[])).
% 2.26/1.02  
% 2.26/1.02  fof(f23,plain,(
% 2.26/1.02    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(sK1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(sK1),k3_tmap_1(X0,sK1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(sK1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 2.26/1.02    introduced(choice_axiom,[])).
% 2.26/1.02  
% 2.26/1.02  fof(f22,plain,(
% 2.26/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5) != k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(sK0,X1,X3,X2,X4),X5) & r1_tarski(k8_relset_1(u1_struct_0(X3),u1_struct_0(X1),X4,X5),u1_struct_0(X2)) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X1)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,sK0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 2.26/1.02    introduced(choice_axiom,[])).
% 2.26/1.02  
% 2.26/1.02  fof(f28,plain,(
% 2.26/1.02    (((((k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) & r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5),u1_struct_0(sK2)) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_pre_topc(sK2,sK3) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) & v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) & v1_funct_1(sK4)) & m1_pre_topc(sK3,sK0) & ~v2_struct_0(sK3)) & m1_pre_topc(sK2,sK0) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 2.26/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f21,f27,f26,f25,f24,f23,f22])).
% 2.26/1.02  
% 2.26/1.02  fof(f45,plain,(
% 2.26/1.02    m1_pre_topc(sK2,sK0)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f47,plain,(
% 2.26/1.02    m1_pre_topc(sK3,sK0)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f50,plain,(
% 2.26/1.02    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f6,axiom,(
% 2.26/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X3,X2) => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)))))))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f16,plain,(
% 2.26/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.26/1.02    inference(ennf_transformation,[],[f6])).
% 2.26/1.02  
% 2.26/1.02  fof(f17,plain,(
% 2.26/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.26/1.02    inference(flattening,[],[f16])).
% 2.26/1.02  
% 2.26/1.02  fof(f34,plain,(
% 2.26/1.02    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.26/1.02    inference(cnf_transformation,[],[f17])).
% 2.26/1.02  
% 2.26/1.02  fof(f4,axiom,(
% 2.26/1.02    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f12,plain,(
% 2.26/1.02    ! [X0,X1,X2,X3] : (k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 2.26/1.02    inference(ennf_transformation,[],[f4])).
% 2.26/1.02  
% 2.26/1.02  fof(f13,plain,(
% 2.26/1.02    ! [X0,X1,X2,X3] : (k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 2.26/1.02    inference(flattening,[],[f12])).
% 2.26/1.02  
% 2.26/1.02  fof(f32,plain,(
% 2.26/1.02    ( ! [X2,X0,X3,X1] : (k2_partfun1(X0,X1,X2,X3) = k7_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 2.26/1.02    inference(cnf_transformation,[],[f13])).
% 2.26/1.02  
% 2.26/1.02  fof(f48,plain,(
% 2.26/1.02    v1_funct_1(sK4)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f41,plain,(
% 2.26/1.02    ~v2_struct_0(sK1)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f42,plain,(
% 2.26/1.02    v2_pre_topc(sK1)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f43,plain,(
% 2.26/1.02    l1_pre_topc(sK1)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f49,plain,(
% 2.26/1.02    v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1))),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f38,plain,(
% 2.26/1.02    ~v2_struct_0(sK0)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f39,plain,(
% 2.26/1.02    v2_pre_topc(sK0)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f40,plain,(
% 2.26/1.02    l1_pre_topc(sK0)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f51,plain,(
% 2.26/1.02    m1_pre_topc(sK2,sK3)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f7,axiom,(
% 2.26/1.02    ! [X0,X1,X2,X3,X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4) & m1_pre_topc(X3,X0) & m1_pre_topc(X2,X0) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(k3_tmap_1(X0,X1,X2,X3,X4),u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(k3_tmap_1(X0,X1,X2,X3,X4))))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f18,plain,(
% 2.26/1.02    ! [X0,X1,X2,X3,X4] : ((m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(k3_tmap_1(X0,X1,X2,X3,X4),u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(k3_tmap_1(X0,X1,X2,X3,X4))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.26/1.02    inference(ennf_transformation,[],[f7])).
% 2.26/1.02  
% 2.26/1.02  fof(f19,plain,(
% 2.26/1.02    ! [X0,X1,X2,X3,X4] : ((m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(k3_tmap_1(X0,X1,X2,X3,X4),u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(k3_tmap_1(X0,X1,X2,X3,X4))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.26/1.02    inference(flattening,[],[f18])).
% 2.26/1.02  
% 2.26/1.02  fof(f37,plain,(
% 2.26/1.02    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k3_tmap_1(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.26/1.02    inference(cnf_transformation,[],[f19])).
% 2.26/1.02  
% 2.26/1.02  fof(f3,axiom,(
% 2.26/1.02    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f11,plain,(
% 2.26/1.02    ! [X0,X1,X2,X3] : (k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.26/1.02    inference(ennf_transformation,[],[f3])).
% 2.26/1.02  
% 2.26/1.02  fof(f31,plain,(
% 2.26/1.02    ( ! [X2,X0,X3,X1] : (k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.26/1.02    inference(cnf_transformation,[],[f11])).
% 2.26/1.02  
% 2.26/1.02  fof(f54,plain,(
% 2.26/1.02    k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5)),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f5,axiom,(
% 2.26/1.02    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1,X2] : (r1_tarski(k10_relat_1(X0,X2),X1) => k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2)))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f14,plain,(
% 2.26/1.02    ! [X0] : (! [X1,X2] : (k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2) | ~r1_tarski(k10_relat_1(X0,X2),X1)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.26/1.02    inference(ennf_transformation,[],[f5])).
% 2.26/1.02  
% 2.26/1.02  fof(f15,plain,(
% 2.26/1.02    ! [X0] : (! [X1,X2] : (k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2) | ~r1_tarski(k10_relat_1(X0,X2),X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.26/1.02    inference(flattening,[],[f14])).
% 2.26/1.02  
% 2.26/1.02  fof(f33,plain,(
% 2.26/1.02    ( ! [X2,X0,X1] : (k10_relat_1(X0,X2) = k10_relat_1(k7_relat_1(X0,X1),X2) | ~r1_tarski(k10_relat_1(X0,X2),X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.26/1.02    inference(cnf_transformation,[],[f15])).
% 2.26/1.02  
% 2.26/1.02  fof(f53,plain,(
% 2.26/1.02    r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5),u1_struct_0(sK2))),
% 2.26/1.02    inference(cnf_transformation,[],[f28])).
% 2.26/1.02  
% 2.26/1.02  fof(f1,axiom,(
% 2.26/1.02    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f10,plain,(
% 2.26/1.02    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.26/1.02    inference(ennf_transformation,[],[f1])).
% 2.26/1.02  
% 2.26/1.02  fof(f29,plain,(
% 2.26/1.02    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.26/1.02    inference(cnf_transformation,[],[f10])).
% 2.26/1.02  
% 2.26/1.02  fof(f2,axiom,(
% 2.26/1.02    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.26/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.26/1.02  
% 2.26/1.02  fof(f30,plain,(
% 2.26/1.02    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.26/1.02    inference(cnf_transformation,[],[f2])).
% 2.26/1.02  
% 2.26/1.02  cnf(c_18,negated_conjecture,
% 2.26/1.02      ( m1_pre_topc(sK2,sK0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f45]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_457,negated_conjecture,
% 2.26/1.02      ( m1_pre_topc(sK2,sK0) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_18]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_927,plain,
% 2.26/1.02      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_457]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_16,negated_conjecture,
% 2.26/1.02      ( m1_pre_topc(sK3,sK0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f47]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_459,negated_conjecture,
% 2.26/1.02      ( m1_pre_topc(sK3,sK0) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_16]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_925,plain,
% 2.26/1.02      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_459]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_13,negated_conjecture,
% 2.26/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
% 2.26/1.02      inference(cnf_transformation,[],[f50]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_462,negated_conjecture,
% 2.26/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_13]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_922,plain,
% 2.26/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_462]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_5,plain,
% 2.26/1.02      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.26/1.02      | ~ m1_pre_topc(X3,X1)
% 2.26/1.02      | ~ m1_pre_topc(X3,X4)
% 2.26/1.02      | ~ m1_pre_topc(X1,X4)
% 2.26/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.26/1.02      | v2_struct_0(X4)
% 2.26/1.02      | v2_struct_0(X2)
% 2.26/1.02      | ~ v2_pre_topc(X2)
% 2.26/1.02      | ~ v2_pre_topc(X4)
% 2.26/1.02      | ~ l1_pre_topc(X2)
% 2.26/1.02      | ~ l1_pre_topc(X4)
% 2.26/1.02      | ~ v1_funct_1(X0)
% 2.26/1.02      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f34]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_469,plain,
% 2.26/1.02      ( ~ v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53))
% 2.26/1.02      | ~ m1_pre_topc(X2_53,X3_53)
% 2.26/1.02      | ~ m1_pre_topc(X0_53,X3_53)
% 2.26/1.02      | ~ m1_pre_topc(X2_53,X0_53)
% 2.26/1.02      | ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53))))
% 2.26/1.02      | v2_struct_0(X3_53)
% 2.26/1.02      | v2_struct_0(X1_53)
% 2.26/1.02      | ~ v2_pre_topc(X1_53)
% 2.26/1.02      | ~ v2_pre_topc(X3_53)
% 2.26/1.02      | ~ l1_pre_topc(X1_53)
% 2.26/1.02      | ~ l1_pre_topc(X3_53)
% 2.26/1.02      | ~ v1_funct_1(X0_51)
% 2.26/1.02      | k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_51,u1_struct_0(X2_53)) = k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_5]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_916,plain,
% 2.26/1.02      ( k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_51,u1_struct_0(X2_53)) = k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51)
% 2.26/1.02      | v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53)) != iProver_top
% 2.26/1.02      | m1_pre_topc(X2_53,X3_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,X3_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X2_53,X0_53) != iProver_top
% 2.26/1.02      | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53)))) != iProver_top
% 2.26/1.02      | v2_struct_0(X3_53) = iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | v2_pre_topc(X3_53) != iProver_top
% 2.26/1.02      | v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X3_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | v1_funct_1(X0_51) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_469]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2340,plain,
% 2.26/1.02      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_53)) = k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4)
% 2.26/1.02      | v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,X1_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,sK3) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X1_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | v2_struct_0(sK1) = iProver_top
% 2.26/1.02      | v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | v2_pre_topc(sK1) != iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(sK1) != iProver_top
% 2.26/1.02      | v1_funct_1(sK4) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_922,c_916]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_3,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.26/1.02      | ~ v1_funct_1(X0)
% 2.26/1.02      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 2.26/1.02      inference(cnf_transformation,[],[f32]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_470,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.26/1.02      | ~ v1_funct_1(X0_51)
% 2.26/1.02      | k2_partfun1(X1_51,X2_51,X0_51,X3_51) = k7_relat_1(X0_51,X3_51) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_3]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_915,plain,
% 2.26/1.02      ( k2_partfun1(X0_51,X1_51,X2_51,X3_51) = k7_relat_1(X2_51,X3_51)
% 2.26/1.02      | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 2.26/1.02      | v1_funct_1(X2_51) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_470]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1716,plain,
% 2.26/1.02      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k7_relat_1(sK4,X0_51)
% 2.26/1.02      | v1_funct_1(sK4) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_922,c_915]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_15,negated_conjecture,
% 2.26/1.02      ( v1_funct_1(sK4) ),
% 2.26/1.02      inference(cnf_transformation,[],[f48]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1187,plain,
% 2.26/1.02      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
% 2.26/1.02      | ~ v1_funct_1(sK4)
% 2.26/1.02      | k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k7_relat_1(sK4,X0_51) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_470]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2050,plain,
% 2.26/1.02      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k7_relat_1(sK4,X0_51) ),
% 2.26/1.02      inference(global_propositional_subsumption,
% 2.26/1.02                [status(thm)],
% 2.26/1.02                [c_1716,c_15,c_13,c_1187]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2394,plain,
% 2.26/1.02      ( k3_tmap_1(X0_53,sK1,sK3,X1_53,sK4) = k7_relat_1(sK4,u1_struct_0(X1_53))
% 2.26/1.02      | v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 2.26/1.02      | m1_pre_topc(X1_53,X0_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X1_53,sK3) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X0_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X0_53) = iProver_top
% 2.26/1.02      | v2_struct_0(sK1) = iProver_top
% 2.26/1.02      | v2_pre_topc(X0_53) != iProver_top
% 2.26/1.02      | v2_pre_topc(sK1) != iProver_top
% 2.26/1.02      | l1_pre_topc(X0_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(sK1) != iProver_top
% 2.26/1.02      | v1_funct_1(sK4) != iProver_top ),
% 2.26/1.02      inference(demodulation,[status(thm)],[c_2340,c_2050]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_22,negated_conjecture,
% 2.26/1.02      ( ~ v2_struct_0(sK1) ),
% 2.26/1.02      inference(cnf_transformation,[],[f41]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_29,plain,
% 2.26/1.02      ( v2_struct_0(sK1) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_21,negated_conjecture,
% 2.26/1.02      ( v2_pre_topc(sK1) ),
% 2.26/1.02      inference(cnf_transformation,[],[f42]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_30,plain,
% 2.26/1.02      ( v2_pre_topc(sK1) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_20,negated_conjecture,
% 2.26/1.02      ( l1_pre_topc(sK1) ),
% 2.26/1.02      inference(cnf_transformation,[],[f43]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_31,plain,
% 2.26/1.02      ( l1_pre_topc(sK1) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_36,plain,
% 2.26/1.02      ( v1_funct_1(sK4) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_14,negated_conjecture,
% 2.26/1.02      ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) ),
% 2.26/1.02      inference(cnf_transformation,[],[f49]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_37,plain,
% 2.26/1.02      ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2840,plain,
% 2.26/1.02      ( v2_pre_topc(X0_53) != iProver_top
% 2.26/1.02      | k3_tmap_1(X0_53,sK1,sK3,X1_53,sK4) = k7_relat_1(sK4,u1_struct_0(X1_53))
% 2.26/1.02      | m1_pre_topc(X1_53,X0_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X1_53,sK3) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X0_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X0_53) = iProver_top
% 2.26/1.02      | l1_pre_topc(X0_53) != iProver_top ),
% 2.26/1.02      inference(global_propositional_subsumption,
% 2.26/1.02                [status(thm)],
% 2.26/1.02                [c_2394,c_29,c_30,c_31,c_36,c_37]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2841,plain,
% 2.26/1.02      ( k3_tmap_1(X0_53,sK1,sK3,X1_53,sK4) = k7_relat_1(sK4,u1_struct_0(X1_53))
% 2.26/1.02      | m1_pre_topc(X1_53,X0_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X1_53,sK3) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X0_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X0_53) = iProver_top
% 2.26/1.02      | v2_pre_topc(X0_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X0_53) != iProver_top ),
% 2.26/1.02      inference(renaming,[status(thm)],[c_2840]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2853,plain,
% 2.26/1.02      ( k3_tmap_1(sK0,sK1,sK3,X0_53,sK4) = k7_relat_1(sK4,u1_struct_0(X0_53))
% 2.26/1.02      | m1_pre_topc(X0_53,sK0) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,sK3) != iProver_top
% 2.26/1.02      | v2_struct_0(sK0) = iProver_top
% 2.26/1.02      | v2_pre_topc(sK0) != iProver_top
% 2.26/1.02      | l1_pre_topc(sK0) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_925,c_2841]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_25,negated_conjecture,
% 2.26/1.02      ( ~ v2_struct_0(sK0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f38]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_26,plain,
% 2.26/1.02      ( v2_struct_0(sK0) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_24,negated_conjecture,
% 2.26/1.02      ( v2_pre_topc(sK0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f39]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_27,plain,
% 2.26/1.02      ( v2_pre_topc(sK0) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_23,negated_conjecture,
% 2.26/1.02      ( l1_pre_topc(sK0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f40]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_28,plain,
% 2.26/1.02      ( l1_pre_topc(sK0) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2858,plain,
% 2.26/1.02      ( m1_pre_topc(X0_53,sK3) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,sK0) != iProver_top
% 2.26/1.02      | k3_tmap_1(sK0,sK1,sK3,X0_53,sK4) = k7_relat_1(sK4,u1_struct_0(X0_53)) ),
% 2.26/1.02      inference(global_propositional_subsumption,
% 2.26/1.02                [status(thm)],
% 2.26/1.02                [c_2853,c_26,c_27,c_28]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2859,plain,
% 2.26/1.02      ( k3_tmap_1(sK0,sK1,sK3,X0_53,sK4) = k7_relat_1(sK4,u1_struct_0(X0_53))
% 2.26/1.02      | m1_pre_topc(X0_53,sK0) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,sK3) != iProver_top ),
% 2.26/1.02      inference(renaming,[status(thm)],[c_2858]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2868,plain,
% 2.26/1.02      ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k7_relat_1(sK4,u1_struct_0(sK2))
% 2.26/1.02      | m1_pre_topc(sK2,sK3) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_927,c_2859]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_12,negated_conjecture,
% 2.26/1.02      ( m1_pre_topc(sK2,sK3) ),
% 2.26/1.02      inference(cnf_transformation,[],[f51]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_39,plain,
% 2.26/1.02      ( m1_pre_topc(sK2,sK3) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2939,plain,
% 2.26/1.02      ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k7_relat_1(sK4,u1_struct_0(sK2)) ),
% 2.26/1.02      inference(global_propositional_subsumption,[status(thm)],[c_2868,c_39]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_6,plain,
% 2.26/1.02      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.26/1.02      | ~ m1_pre_topc(X3,X4)
% 2.26/1.02      | ~ m1_pre_topc(X1,X4)
% 2.26/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.26/1.02      | m1_subset_1(k3_tmap_1(X4,X2,X1,X3,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
% 2.26/1.02      | v2_struct_0(X4)
% 2.26/1.02      | v2_struct_0(X2)
% 2.26/1.02      | ~ v2_pre_topc(X2)
% 2.26/1.02      | ~ v2_pre_topc(X4)
% 2.26/1.02      | ~ l1_pre_topc(X2)
% 2.26/1.02      | ~ l1_pre_topc(X4)
% 2.26/1.02      | ~ v1_funct_1(X0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f37]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_468,plain,
% 2.26/1.02      ( ~ v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53))
% 2.26/1.02      | ~ m1_pre_topc(X2_53,X3_53)
% 2.26/1.02      | ~ m1_pre_topc(X0_53,X3_53)
% 2.26/1.02      | ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53))))
% 2.26/1.02      | m1_subset_1(k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_53),u1_struct_0(X1_53))))
% 2.26/1.02      | v2_struct_0(X3_53)
% 2.26/1.02      | v2_struct_0(X1_53)
% 2.26/1.02      | ~ v2_pre_topc(X1_53)
% 2.26/1.02      | ~ v2_pre_topc(X3_53)
% 2.26/1.02      | ~ l1_pre_topc(X1_53)
% 2.26/1.02      | ~ l1_pre_topc(X3_53)
% 2.26/1.02      | ~ v1_funct_1(X0_51) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_6]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_917,plain,
% 2.26/1.02      ( v1_funct_2(X0_51,u1_struct_0(X0_53),u1_struct_0(X1_53)) != iProver_top
% 2.26/1.02      | m1_pre_topc(X2_53,X3_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,X3_53) != iProver_top
% 2.26/1.02      | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53)))) != iProver_top
% 2.26/1.02      | m1_subset_1(k3_tmap_1(X3_53,X1_53,X0_53,X2_53,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_53),u1_struct_0(X1_53)))) = iProver_top
% 2.26/1.02      | v2_struct_0(X3_53) = iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | v2_pre_topc(X3_53) != iProver_top
% 2.26/1.02      | v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X3_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | v1_funct_1(X0_51) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_468]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.26/1.02      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 2.26/1.02      inference(cnf_transformation,[],[f31]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_471,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.26/1.02      | k8_relset_1(X1_51,X2_51,X0_51,X3_51) = k10_relat_1(X0_51,X3_51) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_2]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_914,plain,
% 2.26/1.02      ( k8_relset_1(X0_51,X1_51,X2_51,X3_51) = k10_relat_1(X2_51,X3_51)
% 2.26/1.02      | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_471]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1795,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(X0_53),u1_struct_0(X1_53),k3_tmap_1(X2_53,X1_53,X3_53,X0_53,X0_51),X1_51) = k10_relat_1(k3_tmap_1(X2_53,X1_53,X3_53,X0_53,X0_51),X1_51)
% 2.26/1.02      | v1_funct_2(X0_51,u1_struct_0(X3_53),u1_struct_0(X1_53)) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,X2_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(X3_53,X2_53) != iProver_top
% 2.26/1.02      | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_53),u1_struct_0(X1_53)))) != iProver_top
% 2.26/1.02      | v2_struct_0(X2_53) = iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | v2_pre_topc(X2_53) != iProver_top
% 2.26/1.02      | v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X2_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | v1_funct_1(X0_51) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_917,c_914]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2478,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(X0_53),u1_struct_0(sK1),k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51) = k10_relat_1(k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51)
% 2.26/1.02      | v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 2.26/1.02      | m1_pre_topc(X0_53,X1_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X1_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | v2_struct_0(sK1) = iProver_top
% 2.26/1.02      | v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | v2_pre_topc(sK1) != iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(sK1) != iProver_top
% 2.26/1.02      | v1_funct_1(sK4) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_922,c_1795]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2547,plain,
% 2.26/1.02      ( v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | k8_relset_1(u1_struct_0(X0_53),u1_struct_0(sK1),k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51) = k10_relat_1(k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51)
% 2.26/1.02      | m1_pre_topc(X0_53,X1_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X1_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top ),
% 2.26/1.02      inference(global_propositional_subsumption,
% 2.26/1.02                [status(thm)],
% 2.26/1.02                [c_2478,c_29,c_30,c_31,c_36,c_37]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2548,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(X0_53),u1_struct_0(sK1),k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51) = k10_relat_1(k3_tmap_1(X1_53,sK1,sK3,X0_53,sK4),X0_51)
% 2.26/1.02      | m1_pre_topc(X0_53,X1_53) != iProver_top
% 2.26/1.02      | m1_pre_topc(sK3,X1_53) != iProver_top
% 2.26/1.02      | v2_struct_0(X1_53) = iProver_top
% 2.26/1.02      | v2_pre_topc(X1_53) != iProver_top
% 2.26/1.02      | l1_pre_topc(X1_53) != iProver_top ),
% 2.26/1.02      inference(renaming,[status(thm)],[c_2547]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2561,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51) = k10_relat_1(k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51)
% 2.26/1.02      | m1_pre_topc(sK3,sK0) != iProver_top
% 2.26/1.02      | v2_struct_0(sK0) = iProver_top
% 2.26/1.02      | v2_pre_topc(sK0) != iProver_top
% 2.26/1.02      | l1_pre_topc(sK0) != iProver_top ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_927,c_2548]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_35,plain,
% 2.26/1.02      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2749,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51) = k10_relat_1(k3_tmap_1(sK0,sK1,sK3,sK2,sK4),X0_51) ),
% 2.26/1.02      inference(global_propositional_subsumption,
% 2.26/1.02                [status(thm)],
% 2.26/1.02                [c_2561,c_26,c_27,c_28,c_35]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1667,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k10_relat_1(sK4,X0_51) ),
% 2.26/1.02      inference(superposition,[status(thm)],[c_922,c_914]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_9,negated_conjecture,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) ),
% 2.26/1.02      inference(cnf_transformation,[],[f54]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_465,negated_conjecture,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_9]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1988,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) != k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(demodulation,[status(thm)],[c_1667,c_465]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2753,plain,
% 2.26/1.02      ( k10_relat_1(k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK5) != k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(demodulation,[status(thm)],[c_2749,c_1988]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2942,plain,
% 2.26/1.02      ( k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) != k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(demodulation,[status(thm)],[c_2939,c_2753]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_4,plain,
% 2.26/1.02      ( ~ r1_tarski(k10_relat_1(X0,X1),X2)
% 2.26/1.02      | ~ v1_funct_1(X0)
% 2.26/1.02      | ~ v1_relat_1(X0)
% 2.26/1.02      | k10_relat_1(k7_relat_1(X0,X2),X1) = k10_relat_1(X0,X1) ),
% 2.26/1.02      inference(cnf_transformation,[],[f33]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_10,negated_conjecture,
% 2.26/1.02      ( r1_tarski(k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5),u1_struct_0(sK2)) ),
% 2.26/1.02      inference(cnf_transformation,[],[f53]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_262,plain,
% 2.26/1.02      ( ~ v1_funct_1(X0)
% 2.26/1.02      | ~ v1_relat_1(X0)
% 2.26/1.02      | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0,X1)
% 2.26/1.02      | k10_relat_1(k7_relat_1(X0,X2),X1) = k10_relat_1(X0,X1)
% 2.26/1.02      | u1_struct_0(sK2) != X2 ),
% 2.26/1.02      inference(resolution_lifted,[status(thm)],[c_4,c_10]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_263,plain,
% 2.26/1.02      ( ~ v1_funct_1(X0)
% 2.26/1.02      | ~ v1_relat_1(X0)
% 2.26/1.02      | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0,X1)
% 2.26/1.02      | k10_relat_1(k7_relat_1(X0,u1_struct_0(sK2)),X1) = k10_relat_1(X0,X1) ),
% 2.26/1.02      inference(unflattening,[status(thm)],[c_262]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_449,plain,
% 2.26/1.02      ( ~ v1_funct_1(X0_51)
% 2.26/1.02      | ~ v1_relat_1(X0_51)
% 2.26/1.02      | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0_51,X1_51)
% 2.26/1.02      | k10_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),X1_51) = k10_relat_1(X0_51,X1_51) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_263]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_935,plain,
% 2.26/1.02      ( k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(X0_51,X1_51)
% 2.26/1.02      | k10_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),X1_51) = k10_relat_1(X0_51,X1_51)
% 2.26/1.02      | v1_funct_1(X0_51) != iProver_top
% 2.26/1.02      | v1_relat_1(X0_51) != iProver_top ),
% 2.26/1.02      inference(predicate_to_equality,[status(thm)],[c_449]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1987,plain,
% 2.26/1.02      ( k10_relat_1(X0_51,X1_51) != k10_relat_1(sK4,sK5)
% 2.26/1.02      | k10_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),X1_51) = k10_relat_1(X0_51,X1_51)
% 2.26/1.02      | v1_funct_1(X0_51) != iProver_top
% 2.26/1.02      | v1_relat_1(X0_51) != iProver_top ),
% 2.26/1.02      inference(demodulation,[status(thm)],[c_1667,c_935]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2121,plain,
% 2.26/1.02      ( k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) = k10_relat_1(sK4,sK5)
% 2.26/1.02      | v1_funct_1(sK4) != iProver_top
% 2.26/1.02      | v1_relat_1(sK4) != iProver_top ),
% 2.26/1.02      inference(equality_resolution,[status(thm)],[c_1987]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1182,plain,
% 2.26/1.02      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
% 2.26/1.02      | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,X0_51) = k10_relat_1(sK4,X0_51) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_471]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1271,plain,
% 2.26/1.02      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
% 2.26/1.02      | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) = k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_1182]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_0,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.26/1.02      inference(cnf_transformation,[],[f29]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_473,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(X1_51))
% 2.26/1.02      | ~ v1_relat_1(X1_51)
% 2.26/1.02      | v1_relat_1(X0_51) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_0]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1156,plain,
% 2.26/1.02      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.26/1.02      | v1_relat_1(X0_51)
% 2.26/1.02      | ~ v1_relat_1(k2_zfmisc_1(X1_51,X2_51)) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_473]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1324,plain,
% 2.26/1.02      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
% 2.26/1.02      | ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))
% 2.26/1.02      | v1_relat_1(sK4) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_1156]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1,plain,
% 2.26/1.02      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.26/1.02      inference(cnf_transformation,[],[f30]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_472,plain,
% 2.26/1.02      ( v1_relat_1(k2_zfmisc_1(X0_51,X1_51)) ),
% 2.26/1.02      inference(subtyping,[status(esa)],[c_1]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1342,plain,
% 2.26/1.02      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_472]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_1634,plain,
% 2.26/1.02      ( ~ v1_funct_1(sK4)
% 2.26/1.02      | ~ v1_relat_1(sK4)
% 2.26/1.02      | k8_relset_1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,sK5) != k10_relat_1(sK4,sK5)
% 2.26/1.02      | k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) = k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(instantiation,[status(thm)],[c_449]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2124,plain,
% 2.26/1.02      ( k10_relat_1(k7_relat_1(sK4,u1_struct_0(sK2)),sK5) = k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(global_propositional_subsumption,
% 2.26/1.02                [status(thm)],
% 2.26/1.02                [c_2121,c_15,c_13,c_1271,c_1324,c_1342,c_1634]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2947,plain,
% 2.26/1.02      ( k10_relat_1(sK4,sK5) != k10_relat_1(sK4,sK5) ),
% 2.26/1.02      inference(light_normalisation,[status(thm)],[c_2942,c_2124]) ).
% 2.26/1.02  
% 2.26/1.02  cnf(c_2948,plain,
% 2.26/1.02      ( $false ),
% 2.26/1.02      inference(equality_resolution_simp,[status(thm)],[c_2947]) ).
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 2.26/1.02  
% 2.26/1.02  ------                               Statistics
% 2.26/1.02  
% 2.26/1.02  ------ General
% 2.26/1.02  
% 2.26/1.02  abstr_ref_over_cycles:                  0
% 2.26/1.02  abstr_ref_under_cycles:                 0
% 2.26/1.02  gc_basic_clause_elim:                   0
% 2.26/1.02  forced_gc_time:                         0
% 2.26/1.02  parsing_time:                           0.01
% 2.26/1.02  unif_index_cands_time:                  0.
% 2.26/1.02  unif_index_add_time:                    0.
% 2.26/1.02  orderings_time:                         0.
% 2.26/1.02  out_proof_time:                         0.02
% 2.26/1.02  total_time:                             0.171
% 2.26/1.02  num_of_symbols:                         58
% 2.26/1.02  num_of_terms:                           2907
% 2.26/1.02  
% 2.26/1.02  ------ Preprocessing
% 2.26/1.02  
% 2.26/1.02  num_of_splits:                          0
% 2.26/1.02  num_of_split_atoms:                     0
% 2.26/1.02  num_of_reused_defs:                     0
% 2.26/1.02  num_eq_ax_congr_red:                    20
% 2.26/1.02  num_of_sem_filtered_clauses:            1
% 2.26/1.02  num_of_subtypes:                        4
% 2.26/1.02  monotx_restored_types:                  0
% 2.26/1.02  sat_num_of_epr_types:                   0
% 2.26/1.02  sat_num_of_non_cyclic_types:            0
% 2.26/1.02  sat_guarded_non_collapsed_types:        0
% 2.26/1.02  num_pure_diseq_elim:                    0
% 2.26/1.02  simp_replaced_by:                       0
% 2.26/1.02  res_preprocessed:                       134
% 2.26/1.02  prep_upred:                             0
% 2.26/1.02  prep_unflattend:                        1
% 2.26/1.02  smt_new_axioms:                         0
% 2.26/1.02  pred_elim_cands:                        8
% 2.26/1.02  pred_elim:                              1
% 2.26/1.02  pred_elim_cl:                           1
% 2.26/1.02  pred_elim_cycles:                       3
% 2.26/1.02  merged_defs:                            0
% 2.26/1.02  merged_defs_ncl:                        0
% 2.26/1.02  bin_hyper_res:                          0
% 2.26/1.02  prep_cycles:                            4
% 2.26/1.02  pred_elim_time:                         0.001
% 2.26/1.02  splitting_time:                         0.
% 2.26/1.02  sem_filter_time:                        0.
% 2.26/1.02  monotx_time:                            0.
% 2.26/1.02  subtype_inf_time:                       0.
% 2.26/1.02  
% 2.26/1.02  ------ Problem properties
% 2.26/1.02  
% 2.26/1.02  clauses:                                25
% 2.26/1.02  conjectures:                            16
% 2.26/1.02  epr:                                    12
% 2.26/1.02  horn:                                   21
% 2.26/1.02  ground:                                 16
% 2.26/1.02  unary:                                  17
% 2.26/1.02  binary:                                 1
% 2.26/1.02  lits:                                   78
% 2.26/1.02  lits_eq:                                6
% 2.26/1.02  fd_pure:                                0
% 2.26/1.02  fd_pseudo:                              0
% 2.26/1.02  fd_cond:                                0
% 2.26/1.02  fd_pseudo_cond:                         0
% 2.26/1.02  ac_symbols:                             0
% 2.26/1.02  
% 2.26/1.02  ------ Propositional Solver
% 2.26/1.02  
% 2.26/1.02  prop_solver_calls:                      27
% 2.26/1.02  prop_fast_solver_calls:                 1050
% 2.26/1.02  smt_solver_calls:                       0
% 2.26/1.02  smt_fast_solver_calls:                  0
% 2.26/1.02  prop_num_of_clauses:                    904
% 2.26/1.02  prop_preprocess_simplified:             3633
% 2.26/1.02  prop_fo_subsumed:                       37
% 2.26/1.02  prop_solver_time:                       0.
% 2.26/1.02  smt_solver_time:                        0.
% 2.26/1.02  smt_fast_solver_time:                   0.
% 2.26/1.02  prop_fast_solver_time:                  0.
% 2.26/1.02  prop_unsat_core_time:                   0.
% 2.26/1.02  
% 2.26/1.02  ------ QBF
% 2.26/1.02  
% 2.26/1.02  qbf_q_res:                              0
% 2.26/1.02  qbf_num_tautologies:                    0
% 2.26/1.02  qbf_prep_cycles:                        0
% 2.26/1.02  
% 2.26/1.02  ------ BMC1
% 2.26/1.02  
% 2.26/1.02  bmc1_current_bound:                     -1
% 2.26/1.02  bmc1_last_solved_bound:                 -1
% 2.26/1.02  bmc1_unsat_core_size:                   -1
% 2.26/1.02  bmc1_unsat_core_parents_size:           -1
% 2.26/1.02  bmc1_merge_next_fun:                    0
% 2.26/1.02  bmc1_unsat_core_clauses_time:           0.
% 2.26/1.02  
% 2.26/1.02  ------ Instantiation
% 2.26/1.02  
% 2.26/1.02  inst_num_of_clauses:                    290
% 2.26/1.02  inst_num_in_passive:                    9
% 2.26/1.02  inst_num_in_active:                     216
% 2.26/1.02  inst_num_in_unprocessed:                65
% 2.26/1.02  inst_num_of_loops:                      230
% 2.26/1.02  inst_num_of_learning_restarts:          0
% 2.26/1.02  inst_num_moves_active_passive:          10
% 2.26/1.02  inst_lit_activity:                      0
% 2.26/1.02  inst_lit_activity_moves:                0
% 2.26/1.02  inst_num_tautologies:                   0
% 2.26/1.02  inst_num_prop_implied:                  0
% 2.26/1.02  inst_num_existing_simplified:           0
% 2.26/1.02  inst_num_eq_res_simplified:             0
% 2.26/1.02  inst_num_child_elim:                    0
% 2.26/1.02  inst_num_of_dismatching_blockings:      36
% 2.26/1.02  inst_num_of_non_proper_insts:           256
% 2.26/1.02  inst_num_of_duplicates:                 0
% 2.26/1.02  inst_inst_num_from_inst_to_res:         0
% 2.26/1.02  inst_dismatching_checking_time:         0.
% 2.26/1.02  
% 2.26/1.02  ------ Resolution
% 2.26/1.02  
% 2.26/1.02  res_num_of_clauses:                     0
% 2.26/1.02  res_num_in_passive:                     0
% 2.26/1.02  res_num_in_active:                      0
% 2.26/1.02  res_num_of_loops:                       138
% 2.26/1.02  res_forward_subset_subsumed:            47
% 2.26/1.02  res_backward_subset_subsumed:           0
% 2.26/1.02  res_forward_subsumed:                   0
% 2.26/1.02  res_backward_subsumed:                  0
% 2.26/1.02  res_forward_subsumption_resolution:     0
% 2.26/1.02  res_backward_subsumption_resolution:    0
% 2.26/1.02  res_clause_to_clause_subsumption:       142
% 2.26/1.02  res_orphan_elimination:                 0
% 2.26/1.02  res_tautology_del:                      32
% 2.26/1.02  res_num_eq_res_simplified:              0
% 2.26/1.02  res_num_sel_changes:                    0
% 2.26/1.02  res_moves_from_active_to_pass:          0
% 2.26/1.02  
% 2.26/1.02  ------ Superposition
% 2.26/1.02  
% 2.26/1.02  sup_time_total:                         0.
% 2.26/1.02  sup_time_generating:                    0.
% 2.26/1.02  sup_time_sim_full:                      0.
% 2.26/1.02  sup_time_sim_immed:                     0.
% 2.26/1.02  
% 2.26/1.02  sup_num_of_clauses:                     46
% 2.26/1.02  sup_num_in_active:                      40
% 2.26/1.02  sup_num_in_passive:                     6
% 2.26/1.02  sup_num_of_loops:                       45
% 2.26/1.02  sup_fw_superposition:                   15
% 2.26/1.02  sup_bw_superposition:                   7
% 2.26/1.02  sup_immediate_simplified:               2
% 2.26/1.02  sup_given_eliminated:                   0
% 2.26/1.02  comparisons_done:                       0
% 2.26/1.02  comparisons_avoided:                    0
% 2.26/1.02  
% 2.26/1.02  ------ Simplifications
% 2.26/1.02  
% 2.26/1.02  
% 2.26/1.02  sim_fw_subset_subsumed:                 0
% 2.26/1.02  sim_bw_subset_subsumed:                 0
% 2.26/1.02  sim_fw_subsumed:                        0
% 2.26/1.02  sim_bw_subsumed:                        0
% 2.26/1.02  sim_fw_subsumption_res:                 1
% 2.26/1.02  sim_bw_subsumption_res:                 0
% 2.26/1.02  sim_tautology_del:                      0
% 2.26/1.02  sim_eq_tautology_del:                   0
% 2.26/1.02  sim_eq_res_simp:                        0
% 2.26/1.02  sim_fw_demodulated:                     1
% 2.26/1.02  sim_bw_demodulated:                     5
% 2.26/1.02  sim_light_normalised:                   2
% 2.26/1.02  sim_joinable_taut:                      0
% 2.26/1.02  sim_joinable_simp:                      0
% 2.26/1.02  sim_ac_normalised:                      0
% 2.26/1.02  sim_smt_subsumption:                    0
% 2.26/1.02  
%------------------------------------------------------------------------------
