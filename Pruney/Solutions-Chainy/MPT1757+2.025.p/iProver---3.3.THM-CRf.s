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
% DateTime   : Thu Dec  3 12:22:46 EST 2020

% Result     : Theorem 1.45s
% Output     : CNFRefutation 1.45s
% Verified   : 
% Statistics : Number of formulae       :  181 ( 954 expanded)
%              Number of clauses        :   99 ( 161 expanded)
%              Number of leaves         :   20 ( 376 expanded)
%              Depth                    :   40
%              Number of atoms          : 1334 (15321 expanded)
%              Number of equality atoms :  123 (1126 expanded)
%              Maximal formula depth    :   28 (   8 average)
%              Maximal clause size      :   38 (   7 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f14,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X1)
                    & v1_tsep_1(X3,X1)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X3))
                         => ( X4 = X5
                           => ( r1_tmap_1(X1,X0,X2,X4)
                            <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_pre_topc(X1)
              & v2_pre_topc(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X2) )
               => ! [X3] :
                    ( ( m1_pre_topc(X3,X1)
                      & v1_tsep_1(X3,X1)
                      & ~ v2_struct_0(X3) )
                   => ! [X4] :
                        ( m1_subset_1(X4,u1_struct_0(X1))
                       => ! [X5] :
                            ( m1_subset_1(X5,u1_struct_0(X3))
                           => ( X4 = X5
                             => ( r1_tmap_1(X1,X0,X2,X4)
                              <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ( r1_tmap_1(X1,X0,X2,X4)
                          <~> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) )
                          & X4 = X5
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_pre_topc(X3,X1)
                  & v1_tsep_1(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f36,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ( r1_tmap_1(X1,X0,X2,X4)
                          <~> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) )
                          & X4 = X5
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_pre_topc(X3,X1)
                  & v1_tsep_1(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f40,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                            | ~ r1_tmap_1(X1,X0,X2,X4) )
                          & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                            | r1_tmap_1(X1,X0,X2,X4) )
                          & X4 = X5
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_pre_topc(X3,X1)
                  & v1_tsep_1(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f36])).

fof(f41,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                            | ~ r1_tmap_1(X1,X0,X2,X4) )
                          & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                            | r1_tmap_1(X1,X0,X2,X4) )
                          & X4 = X5
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_pre_topc(X3,X1)
                  & v1_tsep_1(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f40])).

fof(f47,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
            | ~ r1_tmap_1(X1,X0,X2,X4) )
          & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
            | r1_tmap_1(X1,X0,X2,X4) )
          & X4 = X5
          & m1_subset_1(X5,u1_struct_0(X3)) )
     => ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),sK5)
          | ~ r1_tmap_1(X1,X0,X2,X4) )
        & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),sK5)
          | r1_tmap_1(X1,X0,X2,X4) )
        & sK5 = X4
        & m1_subset_1(sK5,u1_struct_0(X3)) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                | ~ r1_tmap_1(X1,X0,X2,X4) )
              & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                | r1_tmap_1(X1,X0,X2,X4) )
              & X4 = X5
              & m1_subset_1(X5,u1_struct_0(X3)) )
          & m1_subset_1(X4,u1_struct_0(X1)) )
     => ( ? [X5] :
            ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
              | ~ r1_tmap_1(X1,X0,X2,sK4) )
            & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
              | r1_tmap_1(X1,X0,X2,sK4) )
            & sK4 = X5
            & m1_subset_1(X5,u1_struct_0(X3)) )
        & m1_subset_1(sK4,u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                    | ~ r1_tmap_1(X1,X0,X2,X4) )
                  & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                    | r1_tmap_1(X1,X0,X2,X4) )
                  & X4 = X5
                  & m1_subset_1(X5,u1_struct_0(X3)) )
              & m1_subset_1(X4,u1_struct_0(X1)) )
          & m1_pre_topc(X3,X1)
          & v1_tsep_1(X3,X1)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( ( ~ r1_tmap_1(sK3,X0,k2_tmap_1(X1,X0,X2,sK3),X5)
                  | ~ r1_tmap_1(X1,X0,X2,X4) )
                & ( r1_tmap_1(sK3,X0,k2_tmap_1(X1,X0,X2,sK3),X5)
                  | r1_tmap_1(X1,X0,X2,X4) )
                & X4 = X5
                & m1_subset_1(X5,u1_struct_0(sK3)) )
            & m1_subset_1(X4,u1_struct_0(X1)) )
        & m1_pre_topc(sK3,X1)
        & v1_tsep_1(sK3,X1)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                        | ~ r1_tmap_1(X1,X0,X2,X4) )
                      & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                        | r1_tmap_1(X1,X0,X2,X4) )
                      & X4 = X5
                      & m1_subset_1(X5,u1_struct_0(X3)) )
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              & m1_pre_topc(X3,X1)
              & v1_tsep_1(X3,X1)
              & ~ v2_struct_0(X3) )
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
          & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
          & v1_funct_1(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( ? [X5] :
                    ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,sK2,X3),X5)
                      | ~ r1_tmap_1(X1,X0,sK2,X4) )
                    & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,sK2,X3),X5)
                      | r1_tmap_1(X1,X0,sK2,X4) )
                    & X4 = X5
                    & m1_subset_1(X5,u1_struct_0(X3)) )
                & m1_subset_1(X4,u1_struct_0(X1)) )
            & m1_pre_topc(X3,X1)
            & v1_tsep_1(X3,X1)
            & ~ v2_struct_0(X3) )
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
        & v1_funct_2(sK2,u1_struct_0(X1),u1_struct_0(X0))
        & v1_funct_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                            | ~ r1_tmap_1(X1,X0,X2,X4) )
                          & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                            | r1_tmap_1(X1,X0,X2,X4) )
                          & X4 = X5
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_pre_topc(X3,X1)
                  & v1_tsep_1(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ? [X4] :
                    ( ? [X5] :
                        ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(sK1,X0,X2,X3),X5)
                          | ~ r1_tmap_1(sK1,X0,X2,X4) )
                        & ( r1_tmap_1(X3,X0,k2_tmap_1(sK1,X0,X2,X3),X5)
                          | r1_tmap_1(sK1,X0,X2,X4) )
                        & X4 = X5
                        & m1_subset_1(X5,u1_struct_0(X3)) )
                    & m1_subset_1(X4,u1_struct_0(sK1)) )
                & m1_pre_topc(X3,sK1)
                & v1_tsep_1(X3,sK1)
                & ~ v2_struct_0(X3) )
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
            & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X0))
            & v1_funct_1(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ? [X5] :
                            ( ( ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                              | ~ r1_tmap_1(X1,X0,X2,X4) )
                            & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                              | r1_tmap_1(X1,X0,X2,X4) )
                            & X4 = X5
                            & m1_subset_1(X5,u1_struct_0(X3)) )
                        & m1_subset_1(X4,u1_struct_0(X1)) )
                    & m1_pre_topc(X3,X1)
                    & v1_tsep_1(X3,X1)
                    & ~ v2_struct_0(X3) )
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                & v1_funct_1(X2) )
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
                          ( ( ~ r1_tmap_1(X3,sK0,k2_tmap_1(X1,sK0,X2,X3),X5)
                            | ~ r1_tmap_1(X1,sK0,X2,X4) )
                          & ( r1_tmap_1(X3,sK0,k2_tmap_1(X1,sK0,X2,X3),X5)
                            | r1_tmap_1(X1,sK0,X2,X4) )
                          & X4 = X5
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_pre_topc(X3,X1)
                  & v1_tsep_1(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0))))
              & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(sK0))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,
    ( ( ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5)
      | ~ r1_tmap_1(sK1,sK0,sK2,sK4) )
    & ( r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5)
      | r1_tmap_1(sK1,sK0,sK2,sK4) )
    & sK4 = sK5
    & m1_subset_1(sK5,u1_struct_0(sK3))
    & m1_subset_1(sK4,u1_struct_0(sK1))
    & m1_pre_topc(sK3,sK1)
    & v1_tsep_1(sK3,sK1)
    & ~ v2_struct_0(sK3)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    & v1_funct_2(sK2,u1_struct_0(sK1),u1_struct_0(sK0))
    & v1_funct_1(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f41,f47,f46,f45,f44,f43,f42])).

fof(f80,plain,
    ( r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5)
    | r1_tmap_1(sK1,sK0,sK2,sK4) ),
    inference(cnf_transformation,[],[f48])).

fof(f79,plain,(
    sK4 = sK5 ),
    inference(cnf_transformation,[],[f48])).

fof(f81,plain,
    ( ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5)
    | ~ r1_tmap_1(sK1,sK0,sK2,sK4) ),
    inference(cnf_transformation,[],[f48])).

fof(f78,plain,(
    m1_subset_1(sK5,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f48])).

fof(f76,plain,(
    m1_pre_topc(sK3,sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f13,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X1)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X1))
                         => ! [X6] :
                              ( m1_subset_1(X6,u1_struct_0(X3))
                             => ( ( X5 = X6
                                  & r1_tarski(X4,u1_struct_0(X3))
                                  & r2_hidden(X5,X4)
                                  & v3_pre_topc(X4,X1) )
                               => ( r1_tmap_1(X1,X0,X2,X5)
                                <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( r1_tmap_1(X1,X0,X2,X5)
                              <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) )
                              | X5 != X6
                              | ~ r1_tarski(X4,u1_struct_0(X3))
                              | ~ r2_hidden(X5,X4)
                              | ~ v3_pre_topc(X4,X1)
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( r1_tmap_1(X1,X0,X2,X5)
                              <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) )
                              | X5 != X6
                              | ~ r1_tarski(X4,u1_struct_0(X3))
                              | ~ r2_hidden(X5,X4)
                              | ~ v3_pre_topc(X4,X1)
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f33])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( ( r1_tmap_1(X1,X0,X2,X5)
                                  | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) )
                                & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
                                  | ~ r1_tmap_1(X1,X0,X2,X5) ) )
                              | X5 != X6
                              | ~ r1_tarski(X4,u1_struct_0(X3))
                              | ~ r2_hidden(X5,X4)
                              | ~ v3_pre_topc(X4,X1)
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f63,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | ~ r1_tmap_1(X1,X0,X2,X5)
      | X5 != X6
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ r2_hidden(X5,X4)
      | ~ v3_pre_topc(X4,X1)
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f87,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | ~ r1_tmap_1(X1,X0,X2,X6)
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ r2_hidden(X6,X4)
      | ~ v3_pre_topc(X4,X1)
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f63])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X1)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X3))
                         => ( ( r1_tmap_1(X1,X0,X2,X4)
                              & X4 = X5 )
                           => r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                          | ~ r1_tmap_1(X1,X0,X2,X4)
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                          | ~ r1_tmap_1(X1,X0,X2,X4)
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f62,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ r1_tmap_1(X1,X0,X2,X4)
      | X4 != X5
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X4,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f85,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ r1_tmap_1(X1,X0,X2,X5)
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f62])).

fof(f72,plain,(
    v1_funct_2(sK2,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f48])).

fof(f71,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f48])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X1))
             => m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
              | ~ m1_subset_1(X2,u1_struct_0(X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
              | ~ m1_subset_1(X2,u1_struct_0(X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X1))
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f68,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f69,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f70,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f74,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f48])).

fof(f66,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f65,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f67,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f73,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f48])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f54,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f56,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f55,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f17])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f4])).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f64,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X1,X0,X2,X5)
      | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | X5 != X6
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ r2_hidden(X5,X4)
      | ~ v3_pre_topc(X4,X1)
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f86,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X1,X0,X2,X6)
      | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ r2_hidden(X6,X4)
      | ~ v3_pre_topc(X4,X1)
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f64])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( u1_struct_0(X1) = X2
               => ( ( m1_pre_topc(X1,X0)
                    & v1_tsep_1(X1,X0) )
                <=> v3_pre_topc(X2,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m1_pre_topc(X1,X0)
                  & v1_tsep_1(X1,X0) )
              <=> v3_pre_topc(X2,X0) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m1_pre_topc(X1,X0)
                  & v1_tsep_1(X1,X0) )
              <=> v3_pre_topc(X2,X0) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f28])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_pre_topc(X1,X0)
                    & v1_tsep_1(X1,X0) )
                  | ~ v3_pre_topc(X2,X0) )
                & ( v3_pre_topc(X2,X0)
                  | ~ m1_pre_topc(X1,X0)
                  | ~ v1_tsep_1(X1,X0) ) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_pre_topc(X1,X0)
                    & v1_tsep_1(X1,X0) )
                  | ~ v3_pre_topc(X2,X0) )
                & ( v3_pre_topc(X2,X0)
                  | ~ m1_pre_topc(X1,X0)
                  | ~ v1_tsep_1(X1,X0) ) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f37])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_tsep_1(X1,X0)
      | u1_struct_0(X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f84,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(u1_struct_0(X1),X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_tsep_1(X1,X0)
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f58])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f61,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f75,plain,(
    v1_tsep_1(sK3,sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f2,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f2])).

fof(f1,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f1])).

cnf(c_17,negated_conjecture,
    ( r1_tmap_1(sK1,sK0,sK2,sK4)
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1984,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK4) = iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_18,negated_conjecture,
    ( sK4 = sK5 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_2007,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK5) = iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1984,c_18])).

cnf(c_16,negated_conjecture,
    ( ~ r1_tmap_1(sK1,sK0,sK2,sK4)
    | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1985,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK4) != iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2012,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK5) != iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1985,c_18])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK5,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_46,plain,
    ( m1_subset_1(sK5,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_21,negated_conjecture,
    ( m1_pre_topc(sK3,sK1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_15,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v3_pre_topc(X5,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ r2_hidden(X3,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_13,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_168,plain,
    ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_pre_topc(X4,X0)
    | ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_15,c_13])).

cnf(c_169,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_168])).

cnf(c_25,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_717,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_169,c_25])).

cnf(c_718,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK2,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ v1_funct_1(sK2)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_717])).

cnf(c_26,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_722,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,X2)
    | ~ r1_tmap_1(X2,X1,sK2,X3)
    | r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_718,c_26])).

cnf(c_723,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK2,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_722])).

cnf(c_8,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(X2,u1_struct_0(X1))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_758,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK2,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_723,c_8])).

cnf(c_990,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | sK1 != X2
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_758])).

cnf(c_991,plain,
    ( ~ r1_tmap_1(sK1,X0,sK2,X1)
    | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X0)
    | v2_struct_0(sK1)
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(sK1)
    | u1_struct_0(X0) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_990])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_28,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_27,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_23,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_995,plain,
    ( ~ l1_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ r1_tmap_1(sK1,X0,sK2,X1)
    | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | ~ v2_pre_topc(X0)
    | u1_struct_0(X0) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_991,c_29,c_28,c_27,c_23])).

cnf(c_996,plain,
    ( ~ r1_tmap_1(sK1,X0,sK2,X1)
    | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | u1_struct_0(X0) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_995])).

cnf(c_31,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1254,plain,
    ( ~ r1_tmap_1(sK1,X0,sK2,X1)
    | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | u1_struct_0(X0) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_996,c_31])).

cnf(c_1255,plain,
    ( ~ r1_tmap_1(sK1,sK0,sK2,X0)
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK0)
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_1254])).

cnf(c_32,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_30,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1259,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK3))
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ r1_tmap_1(sK1,sK0,sK2,X0)
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1255,c_32,c_30,c_24])).

cnf(c_1260,plain,
    ( ~ r1_tmap_1(sK1,sK0,sK2,X0)
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_1259])).

cnf(c_1431,plain,
    ( ~ r1_tmap_1(sK1,sK0,sK2,X0)
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(equality_resolution_simp,[status(thm)],[c_1260])).

cnf(c_2125,plain,
    ( ~ r1_tmap_1(sK1,sK0,sK2,sK5)
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5)
    | ~ m1_subset_1(sK5,u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_1431])).

cnf(c_2126,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK5) != iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2125])).

cnf(c_2187,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2012,c_46,c_2126])).

cnf(c_2193,plain,
    ( r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2007,c_46,c_2012,c_2126])).

cnf(c_5,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_7,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_408,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_5,c_7])).

cnf(c_6,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_979,plain,
    ( ~ l1_pre_topc(X0)
    | l1_pre_topc(X1)
    | sK1 != X0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_21])).

cnf(c_980,plain,
    ( ~ l1_pre_topc(sK1)
    | l1_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_979])).

cnf(c_982,plain,
    ( l1_pre_topc(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_980,c_27])).

cnf(c_1326,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_408,c_982])).

cnf(c_1327,plain,
    ( v2_struct_0(sK3)
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_1326])).

cnf(c_1329,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1327,c_23])).

cnf(c_2,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_14,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v3_pre_topc(X5,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ r2_hidden(X3,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_11,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_12,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_176,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ v1_tsep_1(X0,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_11,c_12])).

cnf(c_177,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_176])).

cnf(c_22,negated_conjecture,
    ( v1_tsep_1(sK3,sK1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_449,plain,
    ( v3_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_177,c_22])).

cnf(c_450,plain,
    ( v3_pre_topc(u1_struct_0(sK3),sK1)
    | ~ m1_pre_topc(sK3,sK1)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_449])).

cnf(c_452,plain,
    ( v3_pre_topc(u1_struct_0(sK3),sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_450,c_28,c_27,c_21])).

cnf(c_462,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ r2_hidden(X3,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(sK3) != X5
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_452])).

cnf(c_463,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(sK1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_462])).

cnf(c_467,plain,
    ( ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(sK1))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
    | ~ m1_pre_topc(X0,sK1)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | v2_struct_0(X1)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_463,c_29,c_28,c_27])).

cnf(c_468,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(sK1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_467])).

cnf(c_4,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_501,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_468,c_4])).

cnf(c_518,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X4,k1_zfmisc_1(X5))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(X0) != X5
    | u1_struct_0(sK3) != X4 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_501])).

cnf(c_519,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(unflattening,[status(thm)],[c_518])).

cnf(c_551,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ r2_hidden(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_519,c_4])).

cnf(c_584,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ m1_subset_1(X4,X5)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X5)
    | X3 != X4
    | u1_struct_0(sK3) != X5 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_551])).

cnf(c_585,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,sK1)
    | ~ m1_subset_1(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_584])).

cnf(c_823,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
    | r1_tmap_1(sK1,X1,X2,X3)
    | ~ m1_pre_topc(X0,sK1)
    | ~ m1_subset_1(X3,u1_struct_0(sK3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_585])).

cnf(c_824,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
    | r1_tmap_1(sK1,X1,sK2,X2)
    | ~ m1_pre_topc(X0,sK1)
    | ~ m1_subset_1(X2,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v1_funct_1(sK2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_823])).

cnf(c_828,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(sK3))
    | ~ m1_pre_topc(X0,sK1)
    | r1_tmap_1(sK1,X1,sK2,X2)
    | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_824,c_26])).

cnf(c_829,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
    | r1_tmap_1(sK1,X1,sK2,X2)
    | ~ m1_pre_topc(X0,sK1)
    | ~ m1_subset_1(X2,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_828])).

cnf(c_1029,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
    | r1_tmap_1(sK1,X1,sK2,X2)
    | ~ m1_subset_1(X2,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | sK1 != sK1
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_829])).

cnf(c_1030,plain,
    ( r1_tmap_1(sK1,X0,sK2,X1)
    | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X0) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_1029])).

cnf(c_950,plain,
    ( m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | sK1 != X1
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_21])).

cnf(c_951,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_950])).

cnf(c_1034,plain,
    ( v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | r1_tmap_1(sK1,X0,sK2,X1)
    | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X0) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1030,c_27,c_23,c_951])).

cnf(c_1035,plain,
    ( r1_tmap_1(sK1,X0,sK2,X1)
    | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X0) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_1034])).

cnf(c_1224,plain,
    ( r1_tmap_1(sK1,X0,sK2,X1)
    | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(X0) != u1_struct_0(sK0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1035,c_31])).

cnf(c_1225,plain,
    ( r1_tmap_1(sK1,sK0,sK2,X0)
    | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_1224])).

cnf(c_1229,plain,
    ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | r1_tmap_1(sK1,sK0,sK2,X0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1225,c_32,c_30,c_24])).

cnf(c_1230,plain,
    ( r1_tmap_1(sK1,sK0,sK2,X0)
    | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_1229])).

cnf(c_1343,plain,
    ( r1_tmap_1(sK1,sK0,sK2,X0)
    | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_1329,c_1230])).

cnf(c_1426,plain,
    ( r1_tmap_1(sK1,sK0,sK2,X0)
    | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(equality_resolution_simp,[status(thm)],[c_1343])).

cnf(c_1971,plain,
    ( r1_tmap_1(sK1,sK0,sK2,X0) = iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1426])).

cnf(c_1,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1986,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_0,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1996,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1986,c_0])).

cnf(c_2075,plain,
    ( r1_tmap_1(sK1,sK0,sK2,X0) = iProver_top
    | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1971,c_1996])).

cnf(c_2500,plain,
    ( r1_tmap_1(sK1,sK0,sK2,sK5) = iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2193,c_2075])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2500,c_2187,c_46])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 19:39:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.45/1.02  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.45/1.02  
% 1.45/1.02  ------  iProver source info
% 1.45/1.02  
% 1.45/1.02  git: date: 2020-06-30 10:37:57 +0100
% 1.45/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.45/1.02  git: non_committed_changes: false
% 1.45/1.02  git: last_make_outside_of_git: false
% 1.45/1.02  
% 1.45/1.02  ------ 
% 1.45/1.02  
% 1.45/1.02  ------ Input Options
% 1.45/1.02  
% 1.45/1.02  --out_options                           all
% 1.45/1.02  --tptp_safe_out                         true
% 1.45/1.02  --problem_path                          ""
% 1.45/1.02  --include_path                          ""
% 1.45/1.02  --clausifier                            res/vclausify_rel
% 1.45/1.02  --clausifier_options                    --mode clausify
% 1.45/1.02  --stdin                                 false
% 1.45/1.02  --stats_out                             all
% 1.45/1.02  
% 1.45/1.02  ------ General Options
% 1.45/1.02  
% 1.45/1.02  --fof                                   false
% 1.45/1.02  --time_out_real                         305.
% 1.45/1.02  --time_out_virtual                      -1.
% 1.45/1.02  --symbol_type_check                     false
% 1.45/1.02  --clausify_out                          false
% 1.45/1.02  --sig_cnt_out                           false
% 1.45/1.02  --trig_cnt_out                          false
% 1.45/1.02  --trig_cnt_out_tolerance                1.
% 1.45/1.02  --trig_cnt_out_sk_spl                   false
% 1.45/1.02  --abstr_cl_out                          false
% 1.45/1.02  
% 1.45/1.02  ------ Global Options
% 1.45/1.02  
% 1.45/1.02  --schedule                              default
% 1.45/1.02  --add_important_lit                     false
% 1.45/1.02  --prop_solver_per_cl                    1000
% 1.45/1.02  --min_unsat_core                        false
% 1.45/1.02  --soft_assumptions                      false
% 1.45/1.02  --soft_lemma_size                       3
% 1.45/1.02  --prop_impl_unit_size                   0
% 1.45/1.02  --prop_impl_unit                        []
% 1.45/1.02  --share_sel_clauses                     true
% 1.45/1.02  --reset_solvers                         false
% 1.45/1.02  --bc_imp_inh                            [conj_cone]
% 1.45/1.02  --conj_cone_tolerance                   3.
% 1.45/1.02  --extra_neg_conj                        none
% 1.45/1.02  --large_theory_mode                     true
% 1.45/1.02  --prolific_symb_bound                   200
% 1.45/1.02  --lt_threshold                          2000
% 1.45/1.02  --clause_weak_htbl                      true
% 1.45/1.02  --gc_record_bc_elim                     false
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing Options
% 1.45/1.02  
% 1.45/1.02  --preprocessing_flag                    true
% 1.45/1.02  --time_out_prep_mult                    0.1
% 1.45/1.02  --splitting_mode                        input
% 1.45/1.02  --splitting_grd                         true
% 1.45/1.02  --splitting_cvd                         false
% 1.45/1.02  --splitting_cvd_svl                     false
% 1.45/1.02  --splitting_nvd                         32
% 1.45/1.02  --sub_typing                            true
% 1.45/1.02  --prep_gs_sim                           true
% 1.45/1.02  --prep_unflatten                        true
% 1.45/1.02  --prep_res_sim                          true
% 1.45/1.02  --prep_upred                            true
% 1.45/1.02  --prep_sem_filter                       exhaustive
% 1.45/1.02  --prep_sem_filter_out                   false
% 1.45/1.02  --pred_elim                             true
% 1.45/1.02  --res_sim_input                         true
% 1.45/1.02  --eq_ax_congr_red                       true
% 1.45/1.02  --pure_diseq_elim                       true
% 1.45/1.02  --brand_transform                       false
% 1.45/1.02  --non_eq_to_eq                          false
% 1.45/1.02  --prep_def_merge                        true
% 1.45/1.02  --prep_def_merge_prop_impl              false
% 1.45/1.02  --prep_def_merge_mbd                    true
% 1.45/1.02  --prep_def_merge_tr_red                 false
% 1.45/1.02  --prep_def_merge_tr_cl                  false
% 1.45/1.02  --smt_preprocessing                     true
% 1.45/1.02  --smt_ac_axioms                         fast
% 1.45/1.02  --preprocessed_out                      false
% 1.45/1.02  --preprocessed_stats                    false
% 1.45/1.02  
% 1.45/1.02  ------ Abstraction refinement Options
% 1.45/1.02  
% 1.45/1.02  --abstr_ref                             []
% 1.45/1.02  --abstr_ref_prep                        false
% 1.45/1.02  --abstr_ref_until_sat                   false
% 1.45/1.02  --abstr_ref_sig_restrict                funpre
% 1.45/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 1.45/1.02  --abstr_ref_under                       []
% 1.45/1.02  
% 1.45/1.02  ------ SAT Options
% 1.45/1.02  
% 1.45/1.02  --sat_mode                              false
% 1.45/1.02  --sat_fm_restart_options                ""
% 1.45/1.02  --sat_gr_def                            false
% 1.45/1.02  --sat_epr_types                         true
% 1.45/1.02  --sat_non_cyclic_types                  false
% 1.45/1.02  --sat_finite_models                     false
% 1.45/1.02  --sat_fm_lemmas                         false
% 1.45/1.02  --sat_fm_prep                           false
% 1.45/1.02  --sat_fm_uc_incr                        true
% 1.45/1.02  --sat_out_model                         small
% 1.45/1.02  --sat_out_clauses                       false
% 1.45/1.02  
% 1.45/1.02  ------ QBF Options
% 1.45/1.02  
% 1.45/1.02  --qbf_mode                              false
% 1.45/1.02  --qbf_elim_univ                         false
% 1.45/1.02  --qbf_dom_inst                          none
% 1.45/1.02  --qbf_dom_pre_inst                      false
% 1.45/1.02  --qbf_sk_in                             false
% 1.45/1.02  --qbf_pred_elim                         true
% 1.45/1.02  --qbf_split                             512
% 1.45/1.02  
% 1.45/1.02  ------ BMC1 Options
% 1.45/1.02  
% 1.45/1.02  --bmc1_incremental                      false
% 1.45/1.02  --bmc1_axioms                           reachable_all
% 1.45/1.02  --bmc1_min_bound                        0
% 1.45/1.02  --bmc1_max_bound                        -1
% 1.45/1.02  --bmc1_max_bound_default                -1
% 1.45/1.02  --bmc1_symbol_reachability              true
% 1.45/1.02  --bmc1_property_lemmas                  false
% 1.45/1.02  --bmc1_k_induction                      false
% 1.45/1.02  --bmc1_non_equiv_states                 false
% 1.45/1.02  --bmc1_deadlock                         false
% 1.45/1.02  --bmc1_ucm                              false
% 1.45/1.02  --bmc1_add_unsat_core                   none
% 1.45/1.02  --bmc1_unsat_core_children              false
% 1.45/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.45/1.02  --bmc1_out_stat                         full
% 1.45/1.02  --bmc1_ground_init                      false
% 1.45/1.02  --bmc1_pre_inst_next_state              false
% 1.45/1.02  --bmc1_pre_inst_state                   false
% 1.45/1.02  --bmc1_pre_inst_reach_state             false
% 1.45/1.02  --bmc1_out_unsat_core                   false
% 1.45/1.02  --bmc1_aig_witness_out                  false
% 1.45/1.02  --bmc1_verbose                          false
% 1.45/1.02  --bmc1_dump_clauses_tptp                false
% 1.45/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.45/1.02  --bmc1_dump_file                        -
% 1.45/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.45/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.45/1.02  --bmc1_ucm_extend_mode                  1
% 1.45/1.02  --bmc1_ucm_init_mode                    2
% 1.45/1.02  --bmc1_ucm_cone_mode                    none
% 1.45/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.45/1.02  --bmc1_ucm_relax_model                  4
% 1.45/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.45/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.45/1.02  --bmc1_ucm_layered_model                none
% 1.45/1.02  --bmc1_ucm_max_lemma_size               10
% 1.45/1.02  
% 1.45/1.02  ------ AIG Options
% 1.45/1.02  
% 1.45/1.02  --aig_mode                              false
% 1.45/1.02  
% 1.45/1.02  ------ Instantiation Options
% 1.45/1.02  
% 1.45/1.02  --instantiation_flag                    true
% 1.45/1.02  --inst_sos_flag                         false
% 1.45/1.02  --inst_sos_phase                        true
% 1.45/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel_side                     num_symb
% 1.45/1.02  --inst_solver_per_active                1400
% 1.45/1.02  --inst_solver_calls_frac                1.
% 1.45/1.02  --inst_passive_queue_type               priority_queues
% 1.45/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.45/1.02  --inst_passive_queues_freq              [25;2]
% 1.45/1.02  --inst_dismatching                      true
% 1.45/1.02  --inst_eager_unprocessed_to_passive     true
% 1.45/1.02  --inst_prop_sim_given                   true
% 1.45/1.02  --inst_prop_sim_new                     false
% 1.45/1.02  --inst_subs_new                         false
% 1.45/1.02  --inst_eq_res_simp                      false
% 1.45/1.02  --inst_subs_given                       false
% 1.45/1.02  --inst_orphan_elimination               true
% 1.45/1.02  --inst_learning_loop_flag               true
% 1.45/1.02  --inst_learning_start                   3000
% 1.45/1.02  --inst_learning_factor                  2
% 1.45/1.02  --inst_start_prop_sim_after_learn       3
% 1.45/1.02  --inst_sel_renew                        solver
% 1.45/1.02  --inst_lit_activity_flag                true
% 1.45/1.02  --inst_restr_to_given                   false
% 1.45/1.02  --inst_activity_threshold               500
% 1.45/1.02  --inst_out_proof                        true
% 1.45/1.02  
% 1.45/1.02  ------ Resolution Options
% 1.45/1.02  
% 1.45/1.02  --resolution_flag                       true
% 1.45/1.02  --res_lit_sel                           adaptive
% 1.45/1.02  --res_lit_sel_side                      none
% 1.45/1.02  --res_ordering                          kbo
% 1.45/1.02  --res_to_prop_solver                    active
% 1.45/1.02  --res_prop_simpl_new                    false
% 1.45/1.02  --res_prop_simpl_given                  true
% 1.45/1.02  --res_passive_queue_type                priority_queues
% 1.45/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.45/1.02  --res_passive_queues_freq               [15;5]
% 1.45/1.02  --res_forward_subs                      full
% 1.45/1.02  --res_backward_subs                     full
% 1.45/1.02  --res_forward_subs_resolution           true
% 1.45/1.02  --res_backward_subs_resolution          true
% 1.45/1.02  --res_orphan_elimination                true
% 1.45/1.02  --res_time_limit                        2.
% 1.45/1.02  --res_out_proof                         true
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Options
% 1.45/1.02  
% 1.45/1.02  --superposition_flag                    true
% 1.45/1.02  --sup_passive_queue_type                priority_queues
% 1.45/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.45/1.02  --sup_passive_queues_freq               [8;1;4]
% 1.45/1.02  --demod_completeness_check              fast
% 1.45/1.02  --demod_use_ground                      true
% 1.45/1.02  --sup_to_prop_solver                    passive
% 1.45/1.02  --sup_prop_simpl_new                    true
% 1.45/1.02  --sup_prop_simpl_given                  true
% 1.45/1.02  --sup_fun_splitting                     false
% 1.45/1.02  --sup_smt_interval                      50000
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Simplification Setup
% 1.45/1.02  
% 1.45/1.02  --sup_indices_passive                   []
% 1.45/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 1.45/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_full_bw                           [BwDemod]
% 1.45/1.02  --sup_immed_triv                        [TrivRules]
% 1.45/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.45/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_immed_bw_main                     []
% 1.45/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 1.45/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  
% 1.45/1.02  ------ Combination Options
% 1.45/1.02  
% 1.45/1.02  --comb_res_mult                         3
% 1.45/1.02  --comb_sup_mult                         2
% 1.45/1.02  --comb_inst_mult                        10
% 1.45/1.02  
% 1.45/1.02  ------ Debug Options
% 1.45/1.02  
% 1.45/1.02  --dbg_backtrace                         false
% 1.45/1.02  --dbg_dump_prop_clauses                 false
% 1.45/1.02  --dbg_dump_prop_clauses_file            -
% 1.45/1.02  --dbg_out_stat                          false
% 1.45/1.02  ------ Parsing...
% 1.45/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 11 0s  sf_e  pe_s  pe_e 
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.45/1.02  ------ Proving...
% 1.45/1.02  ------ Problem Properties 
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  clauses                                 19
% 1.45/1.02  conjectures                             6
% 1.45/1.02  EPR                                     1
% 1.45/1.02  Horn                                    18
% 1.45/1.02  unary                                   7
% 1.45/1.02  binary                                  3
% 1.45/1.02  lits                                    44
% 1.45/1.02  lits eq                                 4
% 1.45/1.02  fd_pure                                 0
% 1.45/1.02  fd_pseudo                               0
% 1.45/1.02  fd_cond                                 0
% 1.45/1.02  fd_pseudo_cond                          0
% 1.45/1.02  AC symbols                              0
% 1.45/1.02  
% 1.45/1.02  ------ Schedule dynamic 5 is on 
% 1.45/1.02  
% 1.45/1.02  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  ------ 
% 1.45/1.02  Current options:
% 1.45/1.02  ------ 
% 1.45/1.02  
% 1.45/1.02  ------ Input Options
% 1.45/1.02  
% 1.45/1.02  --out_options                           all
% 1.45/1.02  --tptp_safe_out                         true
% 1.45/1.02  --problem_path                          ""
% 1.45/1.02  --include_path                          ""
% 1.45/1.02  --clausifier                            res/vclausify_rel
% 1.45/1.02  --clausifier_options                    --mode clausify
% 1.45/1.02  --stdin                                 false
% 1.45/1.02  --stats_out                             all
% 1.45/1.02  
% 1.45/1.02  ------ General Options
% 1.45/1.02  
% 1.45/1.02  --fof                                   false
% 1.45/1.02  --time_out_real                         305.
% 1.45/1.02  --time_out_virtual                      -1.
% 1.45/1.02  --symbol_type_check                     false
% 1.45/1.02  --clausify_out                          false
% 1.45/1.02  --sig_cnt_out                           false
% 1.45/1.02  --trig_cnt_out                          false
% 1.45/1.02  --trig_cnt_out_tolerance                1.
% 1.45/1.02  --trig_cnt_out_sk_spl                   false
% 1.45/1.02  --abstr_cl_out                          false
% 1.45/1.02  
% 1.45/1.02  ------ Global Options
% 1.45/1.02  
% 1.45/1.02  --schedule                              default
% 1.45/1.02  --add_important_lit                     false
% 1.45/1.02  --prop_solver_per_cl                    1000
% 1.45/1.02  --min_unsat_core                        false
% 1.45/1.02  --soft_assumptions                      false
% 1.45/1.02  --soft_lemma_size                       3
% 1.45/1.02  --prop_impl_unit_size                   0
% 1.45/1.02  --prop_impl_unit                        []
% 1.45/1.02  --share_sel_clauses                     true
% 1.45/1.02  --reset_solvers                         false
% 1.45/1.02  --bc_imp_inh                            [conj_cone]
% 1.45/1.02  --conj_cone_tolerance                   3.
% 1.45/1.02  --extra_neg_conj                        none
% 1.45/1.02  --large_theory_mode                     true
% 1.45/1.02  --prolific_symb_bound                   200
% 1.45/1.02  --lt_threshold                          2000
% 1.45/1.02  --clause_weak_htbl                      true
% 1.45/1.02  --gc_record_bc_elim                     false
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing Options
% 1.45/1.02  
% 1.45/1.02  --preprocessing_flag                    true
% 1.45/1.02  --time_out_prep_mult                    0.1
% 1.45/1.02  --splitting_mode                        input
% 1.45/1.02  --splitting_grd                         true
% 1.45/1.02  --splitting_cvd                         false
% 1.45/1.02  --splitting_cvd_svl                     false
% 1.45/1.02  --splitting_nvd                         32
% 1.45/1.02  --sub_typing                            true
% 1.45/1.02  --prep_gs_sim                           true
% 1.45/1.02  --prep_unflatten                        true
% 1.45/1.02  --prep_res_sim                          true
% 1.45/1.02  --prep_upred                            true
% 1.45/1.02  --prep_sem_filter                       exhaustive
% 1.45/1.02  --prep_sem_filter_out                   false
% 1.45/1.02  --pred_elim                             true
% 1.45/1.02  --res_sim_input                         true
% 1.45/1.02  --eq_ax_congr_red                       true
% 1.45/1.02  --pure_diseq_elim                       true
% 1.45/1.02  --brand_transform                       false
% 1.45/1.02  --non_eq_to_eq                          false
% 1.45/1.02  --prep_def_merge                        true
% 1.45/1.02  --prep_def_merge_prop_impl              false
% 1.45/1.02  --prep_def_merge_mbd                    true
% 1.45/1.02  --prep_def_merge_tr_red                 false
% 1.45/1.02  --prep_def_merge_tr_cl                  false
% 1.45/1.02  --smt_preprocessing                     true
% 1.45/1.02  --smt_ac_axioms                         fast
% 1.45/1.02  --preprocessed_out                      false
% 1.45/1.02  --preprocessed_stats                    false
% 1.45/1.02  
% 1.45/1.02  ------ Abstraction refinement Options
% 1.45/1.02  
% 1.45/1.02  --abstr_ref                             []
% 1.45/1.02  --abstr_ref_prep                        false
% 1.45/1.02  --abstr_ref_until_sat                   false
% 1.45/1.02  --abstr_ref_sig_restrict                funpre
% 1.45/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 1.45/1.02  --abstr_ref_under                       []
% 1.45/1.02  
% 1.45/1.02  ------ SAT Options
% 1.45/1.02  
% 1.45/1.02  --sat_mode                              false
% 1.45/1.02  --sat_fm_restart_options                ""
% 1.45/1.02  --sat_gr_def                            false
% 1.45/1.02  --sat_epr_types                         true
% 1.45/1.02  --sat_non_cyclic_types                  false
% 1.45/1.02  --sat_finite_models                     false
% 1.45/1.02  --sat_fm_lemmas                         false
% 1.45/1.02  --sat_fm_prep                           false
% 1.45/1.02  --sat_fm_uc_incr                        true
% 1.45/1.02  --sat_out_model                         small
% 1.45/1.02  --sat_out_clauses                       false
% 1.45/1.02  
% 1.45/1.02  ------ QBF Options
% 1.45/1.02  
% 1.45/1.02  --qbf_mode                              false
% 1.45/1.02  --qbf_elim_univ                         false
% 1.45/1.02  --qbf_dom_inst                          none
% 1.45/1.02  --qbf_dom_pre_inst                      false
% 1.45/1.02  --qbf_sk_in                             false
% 1.45/1.02  --qbf_pred_elim                         true
% 1.45/1.02  --qbf_split                             512
% 1.45/1.02  
% 1.45/1.02  ------ BMC1 Options
% 1.45/1.02  
% 1.45/1.02  --bmc1_incremental                      false
% 1.45/1.02  --bmc1_axioms                           reachable_all
% 1.45/1.02  --bmc1_min_bound                        0
% 1.45/1.02  --bmc1_max_bound                        -1
% 1.45/1.02  --bmc1_max_bound_default                -1
% 1.45/1.02  --bmc1_symbol_reachability              true
% 1.45/1.02  --bmc1_property_lemmas                  false
% 1.45/1.02  --bmc1_k_induction                      false
% 1.45/1.02  --bmc1_non_equiv_states                 false
% 1.45/1.02  --bmc1_deadlock                         false
% 1.45/1.02  --bmc1_ucm                              false
% 1.45/1.02  --bmc1_add_unsat_core                   none
% 1.45/1.02  --bmc1_unsat_core_children              false
% 1.45/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.45/1.02  --bmc1_out_stat                         full
% 1.45/1.02  --bmc1_ground_init                      false
% 1.45/1.02  --bmc1_pre_inst_next_state              false
% 1.45/1.02  --bmc1_pre_inst_state                   false
% 1.45/1.02  --bmc1_pre_inst_reach_state             false
% 1.45/1.02  --bmc1_out_unsat_core                   false
% 1.45/1.02  --bmc1_aig_witness_out                  false
% 1.45/1.02  --bmc1_verbose                          false
% 1.45/1.02  --bmc1_dump_clauses_tptp                false
% 1.45/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.45/1.02  --bmc1_dump_file                        -
% 1.45/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.45/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.45/1.02  --bmc1_ucm_extend_mode                  1
% 1.45/1.02  --bmc1_ucm_init_mode                    2
% 1.45/1.02  --bmc1_ucm_cone_mode                    none
% 1.45/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.45/1.02  --bmc1_ucm_relax_model                  4
% 1.45/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.45/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.45/1.02  --bmc1_ucm_layered_model                none
% 1.45/1.02  --bmc1_ucm_max_lemma_size               10
% 1.45/1.02  
% 1.45/1.02  ------ AIG Options
% 1.45/1.02  
% 1.45/1.02  --aig_mode                              false
% 1.45/1.02  
% 1.45/1.02  ------ Instantiation Options
% 1.45/1.02  
% 1.45/1.02  --instantiation_flag                    true
% 1.45/1.02  --inst_sos_flag                         false
% 1.45/1.02  --inst_sos_phase                        true
% 1.45/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel_side                     none
% 1.45/1.02  --inst_solver_per_active                1400
% 1.45/1.02  --inst_solver_calls_frac                1.
% 1.45/1.02  --inst_passive_queue_type               priority_queues
% 1.45/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.45/1.02  --inst_passive_queues_freq              [25;2]
% 1.45/1.02  --inst_dismatching                      true
% 1.45/1.02  --inst_eager_unprocessed_to_passive     true
% 1.45/1.02  --inst_prop_sim_given                   true
% 1.45/1.02  --inst_prop_sim_new                     false
% 1.45/1.02  --inst_subs_new                         false
% 1.45/1.02  --inst_eq_res_simp                      false
% 1.45/1.02  --inst_subs_given                       false
% 1.45/1.02  --inst_orphan_elimination               true
% 1.45/1.02  --inst_learning_loop_flag               true
% 1.45/1.02  --inst_learning_start                   3000
% 1.45/1.02  --inst_learning_factor                  2
% 1.45/1.02  --inst_start_prop_sim_after_learn       3
% 1.45/1.02  --inst_sel_renew                        solver
% 1.45/1.02  --inst_lit_activity_flag                true
% 1.45/1.02  --inst_restr_to_given                   false
% 1.45/1.02  --inst_activity_threshold               500
% 1.45/1.02  --inst_out_proof                        true
% 1.45/1.02  
% 1.45/1.02  ------ Resolution Options
% 1.45/1.02  
% 1.45/1.02  --resolution_flag                       false
% 1.45/1.02  --res_lit_sel                           adaptive
% 1.45/1.02  --res_lit_sel_side                      none
% 1.45/1.02  --res_ordering                          kbo
% 1.45/1.02  --res_to_prop_solver                    active
% 1.45/1.02  --res_prop_simpl_new                    false
% 1.45/1.02  --res_prop_simpl_given                  true
% 1.45/1.02  --res_passive_queue_type                priority_queues
% 1.45/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.45/1.02  --res_passive_queues_freq               [15;5]
% 1.45/1.02  --res_forward_subs                      full
% 1.45/1.02  --res_backward_subs                     full
% 1.45/1.02  --res_forward_subs_resolution           true
% 1.45/1.02  --res_backward_subs_resolution          true
% 1.45/1.02  --res_orphan_elimination                true
% 1.45/1.02  --res_time_limit                        2.
% 1.45/1.02  --res_out_proof                         true
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Options
% 1.45/1.02  
% 1.45/1.02  --superposition_flag                    true
% 1.45/1.02  --sup_passive_queue_type                priority_queues
% 1.45/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.45/1.02  --sup_passive_queues_freq               [8;1;4]
% 1.45/1.02  --demod_completeness_check              fast
% 1.45/1.02  --demod_use_ground                      true
% 1.45/1.02  --sup_to_prop_solver                    passive
% 1.45/1.02  --sup_prop_simpl_new                    true
% 1.45/1.02  --sup_prop_simpl_given                  true
% 1.45/1.02  --sup_fun_splitting                     false
% 1.45/1.02  --sup_smt_interval                      50000
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Simplification Setup
% 1.45/1.02  
% 1.45/1.02  --sup_indices_passive                   []
% 1.45/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 1.45/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_full_bw                           [BwDemod]
% 1.45/1.02  --sup_immed_triv                        [TrivRules]
% 1.45/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.45/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_immed_bw_main                     []
% 1.45/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 1.45/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  
% 1.45/1.02  ------ Combination Options
% 1.45/1.02  
% 1.45/1.02  --comb_res_mult                         3
% 1.45/1.02  --comb_sup_mult                         2
% 1.45/1.02  --comb_inst_mult                        10
% 1.45/1.02  
% 1.45/1.02  ------ Debug Options
% 1.45/1.02  
% 1.45/1.02  --dbg_backtrace                         false
% 1.45/1.02  --dbg_dump_prop_clauses                 false
% 1.45/1.02  --dbg_dump_prop_clauses_file            -
% 1.45/1.02  --dbg_out_stat                          false
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  ------ Proving...
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  % SZS status Theorem for theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  fof(f14,conjecture,(
% 1.45/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => (X4 = X5 => (r1_tmap_1(X1,X0,X2,X4) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)))))))))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f15,negated_conjecture,(
% 1.45/1.02    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => (X4 = X5 => (r1_tmap_1(X1,X0,X2,X4) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)))))))))),
% 1.45/1.02    inference(negated_conjecture,[],[f14])).
% 1.45/1.02  
% 1.45/1.02  fof(f35,plain,(
% 1.45/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (((r1_tmap_1(X1,X0,X2,X4) <~> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)) & X4 = X5) & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & (m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.45/1.02    inference(ennf_transformation,[],[f15])).
% 1.45/1.02  
% 1.45/1.02  fof(f36,plain,(
% 1.45/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((r1_tmap_1(X1,X0,X2,X4) <~> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.45/1.02    inference(flattening,[],[f35])).
% 1.45/1.02  
% 1.45/1.02  fof(f40,plain,(
% 1.45/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4))) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.45/1.02    inference(nnf_transformation,[],[f36])).
% 1.45/1.02  
% 1.45/1.02  fof(f41,plain,(
% 1.45/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.45/1.02    inference(flattening,[],[f40])).
% 1.45/1.02  
% 1.45/1.02  fof(f47,plain,(
% 1.45/1.02    ( ! [X4,X2,X0,X3,X1] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) => ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),sK5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),sK5) | r1_tmap_1(X1,X0,X2,X4)) & sK5 = X4 & m1_subset_1(sK5,u1_struct_0(X3)))) )),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f46,plain,(
% 1.45/1.02    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) => (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,sK4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,sK4)) & sK4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(sK4,u1_struct_0(X1)))) )),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f45,plain,(
% 1.45/1.02    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : ((~r1_tmap_1(sK3,X0,k2_tmap_1(X1,X0,X2,sK3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(sK3,X0,k2_tmap_1(X1,X0,X2,sK3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(sK3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(sK3,X1) & v1_tsep_1(sK3,X1) & ~v2_struct_0(sK3))) )),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f44,plain,(
% 1.45/1.02    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,sK2,X3),X5) | ~r1_tmap_1(X1,X0,sK2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,sK2,X3),X5) | r1_tmap_1(X1,X0,sK2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(sK2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(sK2))) )),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f43,plain,(
% 1.45/1.02    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(sK1,X0,X2,X3),X5) | ~r1_tmap_1(sK1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(sK1,X0,X2,X3),X5) | r1_tmap_1(sK1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(sK1))) & m1_pre_topc(X3,sK1) & v1_tsep_1(X3,sK1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X0)) & v1_funct_1(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f42,plain,(
% 1.45/1.02    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | r1_tmap_1(X1,X0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : ((~r1_tmap_1(X3,sK0,k2_tmap_1(X1,sK0,X2,X3),X5) | ~r1_tmap_1(X1,sK0,X2,X4)) & (r1_tmap_1(X3,sK0,k2_tmap_1(X1,sK0,X2,X3),X5) | r1_tmap_1(X1,sK0,X2,X4)) & X4 = X5 & m1_subset_1(X5,u1_struct_0(X3))) & m1_subset_1(X4,u1_struct_0(X1))) & m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(sK0)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f48,plain,(
% 1.45/1.02    ((((((~r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) | ~r1_tmap_1(sK1,sK0,sK2,sK4)) & (r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) | r1_tmap_1(sK1,sK0,sK2,sK4)) & sK4 = sK5 & m1_subset_1(sK5,u1_struct_0(sK3))) & m1_subset_1(sK4,u1_struct_0(sK1))) & m1_pre_topc(sK3,sK1) & v1_tsep_1(sK3,sK1) & ~v2_struct_0(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) & v1_funct_2(sK2,u1_struct_0(sK1),u1_struct_0(sK0)) & v1_funct_1(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 1.45/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f41,f47,f46,f45,f44,f43,f42])).
% 1.45/1.02  
% 1.45/1.02  fof(f80,plain,(
% 1.45/1.02    r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) | r1_tmap_1(sK1,sK0,sK2,sK4)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f79,plain,(
% 1.45/1.02    sK4 = sK5),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f81,plain,(
% 1.45/1.02    ~r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) | ~r1_tmap_1(sK1,sK0,sK2,sK4)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f78,plain,(
% 1.45/1.02    m1_subset_1(sK5,u1_struct_0(sK3))),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f76,plain,(
% 1.45/1.02    m1_pre_topc(sK3,sK1)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f13,axiom,(
% 1.45/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X1)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ((X5 = X6 & r1_tarski(X4,u1_struct_0(X3)) & r2_hidden(X5,X4) & v3_pre_topc(X4,X1)) => (r1_tmap_1(X1,X0,X2,X5) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6))))))))))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f33,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (((r1_tmap_1(X1,X0,X2,X5) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)) | (X5 != X6 | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X5,X4) | ~v3_pre_topc(X4,X1))) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | (~m1_pre_topc(X3,X1) | v2_struct_0(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.45/1.02    inference(ennf_transformation,[],[f13])).
% 1.45/1.02  
% 1.45/1.02  fof(f34,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : ((r1_tmap_1(X1,X0,X2,X5) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)) | X5 != X6 | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X5,X4) | ~v3_pre_topc(X4,X1) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.45/1.02    inference(flattening,[],[f33])).
% 1.45/1.02  
% 1.45/1.02  fof(f39,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (((r1_tmap_1(X1,X0,X2,X5) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tmap_1(X1,X0,X2,X5))) | X5 != X6 | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X5,X4) | ~v3_pre_topc(X4,X1) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.45/1.02    inference(nnf_transformation,[],[f34])).
% 1.45/1.02  
% 1.45/1.02  fof(f63,plain,(
% 1.45/1.02    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tmap_1(X1,X0,X2,X5) | X5 != X6 | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X5,X4) | ~v3_pre_topc(X4,X1) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f39])).
% 1.45/1.02  
% 1.45/1.02  fof(f87,plain,(
% 1.45/1.02    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tmap_1(X1,X0,X2,X6) | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X6,X4) | ~v3_pre_topc(X4,X1) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(equality_resolution,[],[f63])).
% 1.45/1.02  
% 1.45/1.02  fof(f12,axiom,(
% 1.45/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ((r1_tmap_1(X1,X0,X2,X4) & X4 = X5) => r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5))))))))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f31,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : ((r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | (~r1_tmap_1(X1,X0,X2,X4) | X4 != X5)) | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | (~m1_pre_topc(X3,X1) | v2_struct_0(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.45/1.02    inference(ennf_transformation,[],[f12])).
% 1.45/1.02  
% 1.45/1.02  fof(f32,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.45/1.02    inference(flattening,[],[f31])).
% 1.45/1.02  
% 1.45/1.02  fof(f62,plain,(
% 1.45/1.02    ( ! [X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X4,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f32])).
% 1.45/1.02  
% 1.45/1.02  fof(f85,plain,(
% 1.45/1.02    ( ! [X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X5) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(equality_resolution,[],[f62])).
% 1.45/1.02  
% 1.45/1.02  fof(f72,plain,(
% 1.45/1.02    v1_funct_2(sK2,u1_struct_0(sK1),u1_struct_0(sK0))),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f71,plain,(
% 1.45/1.02    v1_funct_1(sK2)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f9,axiom,(
% 1.45/1.02    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X1)) => m1_subset_1(X2,u1_struct_0(X0)))))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f26,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X1))) | (~m1_pre_topc(X1,X0) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 1.45/1.02    inference(ennf_transformation,[],[f9])).
% 1.45/1.02  
% 1.45/1.02  fof(f27,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X1))) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 1.45/1.02    inference(flattening,[],[f26])).
% 1.45/1.02  
% 1.45/1.02  fof(f57,plain,(
% 1.45/1.02    ( ! [X2,X0,X1] : (m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X1)) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f27])).
% 1.45/1.02  
% 1.45/1.02  fof(f68,plain,(
% 1.45/1.02    ~v2_struct_0(sK1)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f69,plain,(
% 1.45/1.02    v2_pre_topc(sK1)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f70,plain,(
% 1.45/1.02    l1_pre_topc(sK1)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f74,plain,(
% 1.45/1.02    ~v2_struct_0(sK3)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f66,plain,(
% 1.45/1.02    v2_pre_topc(sK0)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f65,plain,(
% 1.45/1.02    ~v2_struct_0(sK0)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f67,plain,(
% 1.45/1.02    l1_pre_topc(sK0)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f73,plain,(
% 1.45/1.02    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f6,axiom,(
% 1.45/1.02    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f22,plain,(
% 1.45/1.02    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.45/1.02    inference(ennf_transformation,[],[f6])).
% 1.45/1.02  
% 1.45/1.02  fof(f54,plain,(
% 1.45/1.02    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f22])).
% 1.45/1.02  
% 1.45/1.02  fof(f8,axiom,(
% 1.45/1.02    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f24,plain,(
% 1.45/1.02    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.45/1.02    inference(ennf_transformation,[],[f8])).
% 1.45/1.02  
% 1.45/1.02  fof(f25,plain,(
% 1.45/1.02    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.45/1.02    inference(flattening,[],[f24])).
% 1.45/1.02  
% 1.45/1.02  fof(f56,plain,(
% 1.45/1.02    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f25])).
% 1.45/1.02  
% 1.45/1.02  fof(f7,axiom,(
% 1.45/1.02    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f23,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 1.45/1.02    inference(ennf_transformation,[],[f7])).
% 1.45/1.02  
% 1.45/1.02  fof(f55,plain,(
% 1.45/1.02    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f23])).
% 1.45/1.02  
% 1.45/1.02  fof(f3,axiom,(
% 1.45/1.02    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f17,plain,(
% 1.45/1.02    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.45/1.02    inference(ennf_transformation,[],[f3])).
% 1.45/1.02  
% 1.45/1.02  fof(f18,plain,(
% 1.45/1.02    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.45/1.02    inference(flattening,[],[f17])).
% 1.45/1.02  
% 1.45/1.02  fof(f51,plain,(
% 1.45/1.02    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f18])).
% 1.45/1.02  
% 1.45/1.02  fof(f4,axiom,(
% 1.45/1.02    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f16,plain,(
% 1.45/1.02    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) => r1_tarski(X0,X1))),
% 1.45/1.02    inference(unused_predicate_definition_removal,[],[f4])).
% 1.45/1.02  
% 1.45/1.02  fof(f19,plain,(
% 1.45/1.02    ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1)))),
% 1.45/1.02    inference(ennf_transformation,[],[f16])).
% 1.45/1.02  
% 1.45/1.02  fof(f52,plain,(
% 1.45/1.02    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.45/1.02    inference(cnf_transformation,[],[f19])).
% 1.45/1.02  
% 1.45/1.02  fof(f64,plain,(
% 1.45/1.02    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X1,X0,X2,X5) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | X5 != X6 | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X5,X4) | ~v3_pre_topc(X4,X1) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f39])).
% 1.45/1.02  
% 1.45/1.02  fof(f86,plain,(
% 1.45/1.02    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X1,X0,X2,X6) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tarski(X4,u1_struct_0(X3)) | ~r2_hidden(X6,X4) | ~v3_pre_topc(X4,X1) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.45/1.02    inference(equality_resolution,[],[f64])).
% 1.45/1.02  
% 1.45/1.02  fof(f10,axiom,(
% 1.45/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => ((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> v3_pre_topc(X2,X0))))))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f28,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> v3_pre_topc(X2,X0)) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.45/1.02    inference(ennf_transformation,[],[f10])).
% 1.45/1.02  
% 1.45/1.02  fof(f29,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : (((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> v3_pre_topc(X2,X0)) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.45/1.02    inference(flattening,[],[f28])).
% 1.45/1.02  
% 1.45/1.02  fof(f37,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) | ~v3_pre_topc(X2,X0)) & (v3_pre_topc(X2,X0) | (~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)))) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.45/1.02    inference(nnf_transformation,[],[f29])).
% 1.45/1.02  
% 1.45/1.02  fof(f38,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) | ~v3_pre_topc(X2,X0)) & (v3_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0))) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.45/1.02    inference(flattening,[],[f37])).
% 1.45/1.02  
% 1.45/1.02  fof(f58,plain,(
% 1.45/1.02    ( ! [X2,X0,X1] : (v3_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f38])).
% 1.45/1.02  
% 1.45/1.02  fof(f84,plain,(
% 1.45/1.02    ( ! [X0,X1] : (v3_pre_topc(u1_struct_0(X1),X0) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.45/1.02    inference(equality_resolution,[],[f58])).
% 1.45/1.02  
% 1.45/1.02  fof(f11,axiom,(
% 1.45/1.02    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f30,plain,(
% 1.45/1.02    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 1.45/1.02    inference(ennf_transformation,[],[f11])).
% 1.45/1.02  
% 1.45/1.02  fof(f61,plain,(
% 1.45/1.02    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f30])).
% 1.45/1.02  
% 1.45/1.02  fof(f75,plain,(
% 1.45/1.02    v1_tsep_1(sK3,sK1)),
% 1.45/1.02    inference(cnf_transformation,[],[f48])).
% 1.45/1.02  
% 1.45/1.02  fof(f5,axiom,(
% 1.45/1.02    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f20,plain,(
% 1.45/1.02    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 1.45/1.02    inference(ennf_transformation,[],[f5])).
% 1.45/1.02  
% 1.45/1.02  fof(f21,plain,(
% 1.45/1.02    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 1.45/1.02    inference(flattening,[],[f20])).
% 1.45/1.02  
% 1.45/1.02  fof(f53,plain,(
% 1.45/1.02    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f21])).
% 1.45/1.02  
% 1.45/1.02  fof(f2,axiom,(
% 1.45/1.02    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f50,plain,(
% 1.45/1.02    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 1.45/1.02    inference(cnf_transformation,[],[f2])).
% 1.45/1.02  
% 1.45/1.02  fof(f1,axiom,(
% 1.45/1.02    ! [X0] : k2_subset_1(X0) = X0),
% 1.45/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f49,plain,(
% 1.45/1.02    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 1.45/1.02    inference(cnf_transformation,[],[f1])).
% 1.45/1.02  
% 1.45/1.02  cnf(c_17,negated_conjecture,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK4)
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) ),
% 1.45/1.02      inference(cnf_transformation,[],[f80]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1984,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK4) = iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top ),
% 1.45/1.02      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_18,negated_conjecture,
% 1.45/1.02      ( sK4 = sK5 ),
% 1.45/1.02      inference(cnf_transformation,[],[f79]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2007,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK5) = iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top ),
% 1.45/1.02      inference(light_normalisation,[status(thm)],[c_1984,c_18]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_16,negated_conjecture,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,sK0,sK2,sK4)
% 1.45/1.02      | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) ),
% 1.45/1.02      inference(cnf_transformation,[],[f81]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1985,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK4) != iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) != iProver_top ),
% 1.45/1.02      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2012,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK5) != iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) != iProver_top ),
% 1.45/1.02      inference(light_normalisation,[status(thm)],[c_1985,c_18]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_19,negated_conjecture,
% 1.45/1.02      ( m1_subset_1(sK5,u1_struct_0(sK3)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f78]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_46,plain,
% 1.45/1.02      ( m1_subset_1(sK5,u1_struct_0(sK3)) = iProver_top ),
% 1.45/1.02      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_21,negated_conjecture,
% 1.45/1.02      ( m1_pre_topc(sK3,sK1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f76]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_15,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.45/1.02      | ~ v3_pre_topc(X5,X0)
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.45/1.02      | ~ r2_hidden(X3,X5)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f87]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_13,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f85]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_168,plain,
% 1.45/1.02      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_15,c_13]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_169,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_168]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_25,negated_conjecture,
% 1.45/1.02      ( v1_funct_2(sK2,u1_struct_0(sK1),u1_struct_0(sK0)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f72]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_717,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK1)
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0)
% 1.45/1.02      | sK2 != X2 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_169,c_25]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_718,plain,
% 1.45/1.02      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
% 1.45/1.02      | ~ r1_tmap_1(X2,X1,sK2,X3)
% 1.45/1.02      | ~ m1_pre_topc(X0,X2)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 1.45/1.02      | ~ v1_funct_1(sK2)
% 1.45/1.02      | ~ v2_pre_topc(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X2)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X2)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_717]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_26,negated_conjecture,
% 1.45/1.02      ( v1_funct_1(sK2) ),
% 1.45/1.02      inference(cnf_transformation,[],[f71]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_722,plain,
% 1.45/1.02      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_pre_topc(X0,X2)
% 1.45/1.02      | ~ r1_tmap_1(X2,X1,sK2,X3)
% 1.45/1.02      | r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
% 1.45/1.02      | ~ v2_pre_topc(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X2)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X2)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_718,c_26]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_723,plain,
% 1.45/1.02      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
% 1.45/1.02      | ~ r1_tmap_1(X2,X1,sK2,X3)
% 1.45/1.02      | ~ m1_pre_topc(X0,X2)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X2)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X2)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X2)
% 1.45/1.02      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_722]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_8,plain,
% 1.45/1.02      ( ~ m1_pre_topc(X0,X1)
% 1.45/1.02      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.45/1.02      | m1_subset_1(X2,u1_struct_0(X1))
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f57]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_758,plain,
% 1.45/1.02      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
% 1.45/1.02      | ~ r1_tmap_1(X2,X1,sK2,X3)
% 1.45/1.02      | ~ m1_pre_topc(X0,X2)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X2)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X2)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X2)
% 1.45/1.02      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(forward_subsumption_resolution,[status(thm)],[c_723,c_8]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_990,plain,
% 1.45/1.02      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK2,X0),X3)
% 1.45/1.02      | ~ r1_tmap_1(X2,X1,sK2,X3)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 1.45/1.02      | ~ v2_pre_topc(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X2)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X2)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0)
% 1.45/1.02      | sK1 != X2
% 1.45/1.02      | sK3 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_21,c_758]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_991,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | ~ v2_pre_topc(sK1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(sK1)
% 1.45/1.02      | v2_struct_0(sK3)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | ~ l1_pre_topc(sK1)
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0)
% 1.45/1.02      | u1_struct_0(sK1) != u1_struct_0(sK1) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_990]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_29,negated_conjecture,
% 1.45/1.02      ( ~ v2_struct_0(sK1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f68]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_28,negated_conjecture,
% 1.45/1.02      ( v2_pre_topc(sK1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f69]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_27,negated_conjecture,
% 1.45/1.02      ( l1_pre_topc(sK1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f70]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_23,negated_conjecture,
% 1.45/1.02      ( ~ v2_struct_0(sK3) ),
% 1.45/1.02      inference(cnf_transformation,[],[f74]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_995,plain,
% 1.45/1.02      ( ~ l1_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0)
% 1.45/1.02      | u1_struct_0(sK1) != u1_struct_0(sK1) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_991,c_29,c_28,c_27,c_23]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_996,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0)
% 1.45/1.02      | u1_struct_0(sK1) != u1_struct_0(sK1) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_995]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_31,negated_conjecture,
% 1.45/1.02      ( v2_pre_topc(sK0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f66]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1254,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0)
% 1.45/1.02      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.45/1.02      | sK0 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_996,c_31]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1255,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 1.45/1.02      | v2_struct_0(sK0)
% 1.45/1.02      | ~ l1_pre_topc(sK0)
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_1254]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_32,negated_conjecture,
% 1.45/1.02      ( ~ v2_struct_0(sK0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f65]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_30,negated_conjecture,
% 1.45/1.02      ( l1_pre_topc(sK0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f67]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_24,negated_conjecture,
% 1.45/1.02      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
% 1.45/1.02      inference(cnf_transformation,[],[f73]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1259,plain,
% 1.45/1.02      ( ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1255,c_32,c_30,c_24]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1260,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_1259]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1431,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 1.45/1.02      inference(equality_resolution_simp,[status(thm)],[c_1260]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2125,plain,
% 1.45/1.02      ( ~ r1_tmap_1(sK1,sK0,sK2,sK5)
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5)
% 1.45/1.02      | ~ m1_subset_1(sK5,u1_struct_0(sK3)) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_1431]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2126,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK5) != iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top
% 1.45/1.02      | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top ),
% 1.45/1.02      inference(predicate_to_equality,[status(thm)],[c_2125]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2187,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK5) != iProver_top ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_2012,c_46,c_2126]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2193,plain,
% 1.45/1.02      ( r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),sK5) = iProver_top ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_2007,c_46,c_2012,c_2126]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_5,plain,
% 1.45/1.02      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f54]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_7,plain,
% 1.45/1.02      ( v2_struct_0(X0)
% 1.45/1.02      | ~ l1_struct_0(X0)
% 1.45/1.02      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f56]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_408,plain,
% 1.45/1.02      ( v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 1.45/1.02      inference(resolution,[status(thm)],[c_5,c_7]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_6,plain,
% 1.45/1.02      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f55]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_979,plain,
% 1.45/1.02      ( ~ l1_pre_topc(X0) | l1_pre_topc(X1) | sK1 != X0 | sK3 != X1 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_6,c_21]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_980,plain,
% 1.45/1.02      ( ~ l1_pre_topc(sK1) | l1_pre_topc(sK3) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_979]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_982,plain,
% 1.45/1.02      ( l1_pre_topc(sK3) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_980,c_27]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1326,plain,
% 1.45/1.02      ( v2_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK3 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_408,c_982]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1327,plain,
% 1.45/1.02      ( v2_struct_0(sK3) | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_1326]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1329,plain,
% 1.45/1.02      ( ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1327,c_23]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2,plain,
% 1.45/1.02      ( r2_hidden(X0,X1) | ~ m1_subset_1(X0,X1) | v1_xboole_0(X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f51]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_3,plain,
% 1.45/1.02      ( r1_tarski(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f52]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_14,plain,
% 1.45/1.02      ( r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.45/1.02      | ~ v3_pre_topc(X5,X0)
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.45/1.02      | ~ r2_hidden(X3,X5)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f86]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_11,plain,
% 1.45/1.02      ( ~ v1_tsep_1(X0,X1)
% 1.45/1.02      | v3_pre_topc(u1_struct_0(X0),X1)
% 1.45/1.02      | ~ m1_pre_topc(X0,X1)
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f84]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_12,plain,
% 1.45/1.02      ( ~ m1_pre_topc(X0,X1)
% 1.45/1.02      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f61]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_176,plain,
% 1.45/1.02      ( ~ m1_pre_topc(X0,X1)
% 1.45/1.02      | v3_pre_topc(u1_struct_0(X0),X1)
% 1.45/1.02      | ~ v1_tsep_1(X0,X1)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_11,c_12]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_177,plain,
% 1.45/1.02      ( ~ v1_tsep_1(X0,X1)
% 1.45/1.02      | v3_pre_topc(u1_struct_0(X0),X1)
% 1.45/1.02      | ~ m1_pre_topc(X0,X1)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_176]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_22,negated_conjecture,
% 1.45/1.02      ( v1_tsep_1(sK3,sK1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f75]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_449,plain,
% 1.45/1.02      ( v3_pre_topc(u1_struct_0(X0),X1)
% 1.45/1.02      | ~ m1_pre_topc(X0,X1)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | sK1 != X1
% 1.45/1.02      | sK3 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_177,c_22]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_450,plain,
% 1.45/1.02      ( v3_pre_topc(u1_struct_0(sK3),sK1)
% 1.45/1.02      | ~ m1_pre_topc(sK3,sK1)
% 1.45/1.02      | ~ v2_pre_topc(sK1)
% 1.45/1.02      | ~ l1_pre_topc(sK1) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_449]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_452,plain,
% 1.45/1.02      ( v3_pre_topc(u1_struct_0(sK3),sK1) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_450,c_28,c_27,c_21]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_462,plain,
% 1.45/1.02      ( r1_tmap_1(X0,X1,X2,X3)
% 1.45/1.02      | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X4,X0)
% 1.45/1.02      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.45/1.02      | ~ r2_hidden(X3,X5)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X4)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | u1_struct_0(sK3) != X5
% 1.45/1.02      | sK1 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_14,c_452]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_463,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(sK1))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(sK1)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(sK1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ l1_pre_topc(sK1) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_462]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_467,plain,
% 1.45/1.02      ( ~ l1_pre_topc(X1)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(sK1))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_463,c_29,c_28,c_27]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_468,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(sK1))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_467]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_4,plain,
% 1.45/1.02      ( ~ r2_hidden(X0,X1)
% 1.45/1.02      | m1_subset_1(X0,X2)
% 1.45/1.02      | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f53]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_501,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(forward_subsumption_resolution,[status(thm)],[c_468,c_4]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_518,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X4,k1_zfmisc_1(X5))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | u1_struct_0(X0) != X5
% 1.45/1.02      | u1_struct_0(sK3) != X4 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_3,c_501]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_519,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_518]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_551,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ r2_hidden(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1) ),
% 1.45/1.02      inference(forward_subsumption_resolution,[status(thm)],[c_519,c_4]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_584,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ m1_subset_1(X4,X5)
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(X5)
% 1.45/1.02      | X3 != X4
% 1.45/1.02      | u1_struct_0(sK3) != X5 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_2,c_551]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_585,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3)) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_584]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_823,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,X2,X0),X3)
% 1.45/1.02      | r1_tmap_1(sK1,X1,X2,X3)
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ m1_subset_1(X3,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ v1_funct_1(X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0)
% 1.45/1.02      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.45/1.02      | sK2 != X2 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_25,c_585]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_824,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
% 1.45/1.02      | r1_tmap_1(sK1,X1,sK2,X2)
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ m1_subset_1(X2,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ v1_funct_1(sK2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_823]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_828,plain,
% 1.45/1.02      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(X2,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | r1_tmap_1(sK1,X1,sK2,X2)
% 1.45/1.02      | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_824,c_26]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_829,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
% 1.45/1.02      | r1_tmap_1(sK1,X1,sK2,X2)
% 1.45/1.02      | ~ m1_pre_topc(X0,sK1)
% 1.45/1.02      | ~ m1_subset_1(X2,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_828]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1029,plain,
% 1.45/1.02      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK1,X1,sK2,X0),X2)
% 1.45/1.02      | r1_tmap_1(sK1,X1,sK2,X2)
% 1.45/1.02      | ~ m1_subset_1(X2,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 1.45/1.02      | ~ v2_pre_topc(X1)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(X1)
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X1) != u1_struct_0(sK0)
% 1.45/1.02      | sK1 != sK1
% 1.45/1.02      | sK3 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_21,c_829]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1030,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | v2_struct_0(sK3)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_1029]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_950,plain,
% 1.45/1.02      ( m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.45/1.02      | ~ l1_pre_topc(X1)
% 1.45/1.02      | sK1 != X1
% 1.45/1.02      | sK3 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_12,c_21]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_951,plain,
% 1.45/1.02      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.45/1.02      | ~ l1_pre_topc(sK1) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_950]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1034,plain,
% 1.45/1.02      ( v2_struct_0(X0)
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1030,c_27,c_23,c_951]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1035,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | ~ v2_pre_topc(X0)
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_1034]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1224,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,X0,sK2,X1)
% 1.45/1.02      | ~ r1_tmap_1(sK3,X0,k2_tmap_1(sK1,X0,sK2,sK3),X1)
% 1.45/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 1.45/1.02      | v2_struct_0(X0)
% 1.45/1.02      | ~ l1_pre_topc(X0)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(X0) != u1_struct_0(sK0)
% 1.45/1.02      | sK0 != X0 ),
% 1.45/1.02      inference(resolution_lifted,[status(thm)],[c_1035,c_31]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1225,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 1.45/1.02      | v2_struct_0(sK0)
% 1.45/1.02      | ~ l1_pre_topc(sK0)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(unflattening,[status(thm)],[c_1224]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1229,plain,
% 1.45/1.02      ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(global_propositional_subsumption,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1225,c_32,c_30,c_24]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1230,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | v1_xboole_0(u1_struct_0(sK3))
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(renaming,[status(thm)],[c_1229]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1343,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.45/1.02      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 1.45/1.02      inference(backward_subsumption_resolution,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1329,c_1230]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1426,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,X0)
% 1.45/1.02      | ~ r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0)
% 1.45/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 1.45/1.02      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) ),
% 1.45/1.02      inference(equality_resolution_simp,[status(thm)],[c_1343]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1971,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,X0) = iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0) != iProver_top
% 1.45/1.02      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top
% 1.45/1.02      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
% 1.45/1.02      inference(predicate_to_equality,[status(thm)],[c_1426]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1,plain,
% 1.45/1.02      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f50]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1986,plain,
% 1.45/1.02      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 1.45/1.02      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_0,plain,
% 1.45/1.02      ( k2_subset_1(X0) = X0 ),
% 1.45/1.02      inference(cnf_transformation,[],[f49]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1996,plain,
% 1.45/1.02      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.45/1.02      inference(light_normalisation,[status(thm)],[c_1986,c_0]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2075,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,X0) = iProver_top
% 1.45/1.02      | r1_tmap_1(sK3,sK0,k2_tmap_1(sK1,sK0,sK2,sK3),X0) != iProver_top
% 1.45/1.02      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 1.45/1.02      inference(forward_subsumption_resolution,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1971,c_1996]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2500,plain,
% 1.45/1.02      ( r1_tmap_1(sK1,sK0,sK2,sK5) = iProver_top
% 1.45/1.02      | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top ),
% 1.45/1.02      inference(superposition,[status(thm)],[c_2193,c_2075]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(contradiction,plain,
% 1.45/1.02      ( $false ),
% 1.45/1.02      inference(minisat,[status(thm)],[c_2500,c_2187,c_46]) ).
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  ------                               Statistics
% 1.45/1.02  
% 1.45/1.02  ------ General
% 1.45/1.02  
% 1.45/1.02  abstr_ref_over_cycles:                  0
% 1.45/1.02  abstr_ref_under_cycles:                 0
% 1.45/1.02  gc_basic_clause_elim:                   0
% 1.45/1.02  forced_gc_time:                         0
% 1.45/1.02  parsing_time:                           0.015
% 1.45/1.02  unif_index_cands_time:                  0.
% 1.45/1.02  unif_index_add_time:                    0.
% 1.45/1.02  orderings_time:                         0.
% 1.45/1.02  out_proof_time:                         0.017
% 1.45/1.02  total_time:                             0.12
% 1.45/1.02  num_of_symbols:                         58
% 1.45/1.02  num_of_terms:                           1499
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing
% 1.45/1.02  
% 1.45/1.02  num_of_splits:                          2
% 1.45/1.02  num_of_split_atoms:                     2
% 1.45/1.02  num_of_reused_defs:                     0
% 1.45/1.02  num_eq_ax_congr_red:                    8
% 1.45/1.02  num_of_sem_filtered_clauses:            1
% 1.45/1.02  num_of_subtypes:                        0
% 1.45/1.02  monotx_restored_types:                  0
% 1.45/1.02  sat_num_of_epr_types:                   0
% 1.45/1.02  sat_num_of_non_cyclic_types:            0
% 1.45/1.02  sat_guarded_non_collapsed_types:        0
% 1.45/1.02  num_pure_diseq_elim:                    0
% 1.45/1.02  simp_replaced_by:                       0
% 1.45/1.02  res_preprocessed:                       104
% 1.45/1.02  prep_upred:                             0
% 1.45/1.02  prep_unflattend:                        34
% 1.45/1.02  smt_new_axioms:                         0
% 1.45/1.02  pred_elim_cands:                        2
% 1.45/1.02  pred_elim:                              12
% 1.45/1.02  pred_elim_cl:                           15
% 1.45/1.02  pred_elim_cycles:                       18
% 1.45/1.02  merged_defs:                            8
% 1.45/1.02  merged_defs_ncl:                        0
% 1.45/1.02  bin_hyper_res:                          8
% 1.45/1.02  prep_cycles:                            4
% 1.45/1.02  pred_elim_time:                         0.03
% 1.45/1.02  splitting_time:                         0.
% 1.45/1.02  sem_filter_time:                        0.
% 1.45/1.02  monotx_time:                            0.
% 1.45/1.02  subtype_inf_time:                       0.
% 1.45/1.02  
% 1.45/1.02  ------ Problem properties
% 1.45/1.02  
% 1.45/1.02  clauses:                                19
% 1.45/1.02  conjectures:                            6
% 1.45/1.02  epr:                                    1
% 1.45/1.02  horn:                                   18
% 1.45/1.02  ground:                                 9
% 1.45/1.02  unary:                                  7
% 1.45/1.02  binary:                                 3
% 1.45/1.02  lits:                                   44
% 1.45/1.02  lits_eq:                                4
% 1.45/1.02  fd_pure:                                0
% 1.45/1.02  fd_pseudo:                              0
% 1.45/1.02  fd_cond:                                0
% 1.45/1.02  fd_pseudo_cond:                         0
% 1.45/1.02  ac_symbols:                             0
% 1.45/1.02  
% 1.45/1.02  ------ Propositional Solver
% 1.45/1.02  
% 1.45/1.02  prop_solver_calls:                      25
% 1.45/1.02  prop_fast_solver_calls:                 979
% 1.45/1.02  smt_solver_calls:                       0
% 1.45/1.02  smt_fast_solver_calls:                  0
% 1.45/1.02  prop_num_of_clauses:                    534
% 1.45/1.02  prop_preprocess_simplified:             2753
% 1.45/1.02  prop_fo_subsumed:                       42
% 1.45/1.02  prop_solver_time:                       0.
% 1.45/1.02  smt_solver_time:                        0.
% 1.45/1.02  smt_fast_solver_time:                   0.
% 1.45/1.02  prop_fast_solver_time:                  0.
% 1.45/1.02  prop_unsat_core_time:                   0.
% 1.45/1.02  
% 1.45/1.02  ------ QBF
% 1.45/1.02  
% 1.45/1.02  qbf_q_res:                              0
% 1.45/1.02  qbf_num_tautologies:                    0
% 1.45/1.02  qbf_prep_cycles:                        0
% 1.45/1.02  
% 1.45/1.02  ------ BMC1
% 1.45/1.02  
% 1.45/1.02  bmc1_current_bound:                     -1
% 1.45/1.02  bmc1_last_solved_bound:                 -1
% 1.45/1.02  bmc1_unsat_core_size:                   -1
% 1.45/1.02  bmc1_unsat_core_parents_size:           -1
% 1.45/1.02  bmc1_merge_next_fun:                    0
% 1.45/1.02  bmc1_unsat_core_clauses_time:           0.
% 1.45/1.02  
% 1.45/1.02  ------ Instantiation
% 1.45/1.02  
% 1.45/1.02  inst_num_of_clauses:                    111
% 1.45/1.02  inst_num_in_passive:                    29
% 1.45/1.02  inst_num_in_active:                     63
% 1.45/1.02  inst_num_in_unprocessed:                19
% 1.45/1.02  inst_num_of_loops:                      70
% 1.45/1.02  inst_num_of_learning_restarts:          0
% 1.45/1.02  inst_num_moves_active_passive:          5
% 1.45/1.02  inst_lit_activity:                      0
% 1.45/1.02  inst_lit_activity_moves:                0
% 1.45/1.02  inst_num_tautologies:                   0
% 1.45/1.02  inst_num_prop_implied:                  0
% 1.45/1.02  inst_num_existing_simplified:           0
% 1.45/1.02  inst_num_eq_res_simplified:             0
% 1.45/1.02  inst_num_child_elim:                    0
% 1.45/1.02  inst_num_of_dismatching_blockings:      2
% 1.45/1.02  inst_num_of_non_proper_insts:           53
% 1.45/1.02  inst_num_of_duplicates:                 0
% 1.45/1.02  inst_inst_num_from_inst_to_res:         0
% 1.45/1.02  inst_dismatching_checking_time:         0.
% 1.45/1.02  
% 1.45/1.02  ------ Resolution
% 1.45/1.02  
% 1.45/1.02  res_num_of_clauses:                     0
% 1.45/1.02  res_num_in_passive:                     0
% 1.45/1.02  res_num_in_active:                      0
% 1.45/1.02  res_num_of_loops:                       108
% 1.45/1.02  res_forward_subset_subsumed:            9
% 1.45/1.02  res_backward_subset_subsumed:           0
% 1.45/1.02  res_forward_subsumed:                   0
% 1.45/1.02  res_backward_subsumed:                  0
% 1.45/1.02  res_forward_subsumption_resolution:     3
% 1.45/1.02  res_backward_subsumption_resolution:    2
% 1.45/1.02  res_clause_to_clause_subsumption:       151
% 1.45/1.02  res_orphan_elimination:                 0
% 1.45/1.02  res_tautology_del:                      20
% 1.45/1.02  res_num_eq_res_simplified:              2
% 1.45/1.02  res_num_sel_changes:                    0
% 1.45/1.02  res_moves_from_active_to_pass:          0
% 1.45/1.02  
% 1.45/1.02  ------ Superposition
% 1.45/1.02  
% 1.45/1.02  sup_time_total:                         0.
% 1.45/1.02  sup_time_generating:                    0.
% 1.45/1.02  sup_time_sim_full:                      0.
% 1.45/1.02  sup_time_sim_immed:                     0.
% 1.45/1.02  
% 1.45/1.02  sup_num_of_clauses:                     20
% 1.45/1.02  sup_num_in_active:                      13
% 1.45/1.02  sup_num_in_passive:                     7
% 1.45/1.02  sup_num_of_loops:                       12
% 1.45/1.02  sup_fw_superposition:                   3
% 1.45/1.02  sup_bw_superposition:                   0
% 1.45/1.02  sup_immediate_simplified:               0
% 1.45/1.02  sup_given_eliminated:                   0
% 1.45/1.02  comparisons_done:                       0
% 1.45/1.02  comparisons_avoided:                    0
% 1.45/1.02  
% 1.45/1.02  ------ Simplifications
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  sim_fw_subset_subsumed:                 0
% 1.45/1.02  sim_bw_subset_subsumed:                 0
% 1.45/1.02  sim_fw_subsumed:                        0
% 1.45/1.02  sim_bw_subsumed:                        0
% 1.45/1.02  sim_fw_subsumption_res:                 2
% 1.45/1.02  sim_bw_subsumption_res:                 0
% 1.45/1.02  sim_tautology_del:                      1
% 1.45/1.02  sim_eq_tautology_del:                   0
% 1.45/1.02  sim_eq_res_simp:                        0
% 1.45/1.02  sim_fw_demodulated:                     0
% 1.45/1.02  sim_bw_demodulated:                     0
% 1.45/1.02  sim_light_normalised:                   4
% 1.45/1.02  sim_joinable_taut:                      0
% 1.45/1.02  sim_joinable_simp:                      0
% 1.45/1.02  sim_ac_normalised:                      0
% 1.45/1.02  sim_smt_subsumption:                    0
% 1.45/1.02  
%------------------------------------------------------------------------------
