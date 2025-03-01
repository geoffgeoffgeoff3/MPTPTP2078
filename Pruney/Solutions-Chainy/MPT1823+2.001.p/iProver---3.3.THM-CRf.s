%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:24:22 EST 2020

% Result     : Theorem 11.17s
% Output     : CNFRefutation 11.17s
% Verified   : 
% Statistics : Number of formulae       :  233 (1986 expanded)
%              Number of clauses        :  158 ( 479 expanded)
%              Number of leaves         :   18 ( 779 expanded)
%              Depth                    :   25
%              Number of atoms          : 1602 (23851 expanded)
%              Number of equality atoms :  552 (2434 expanded)
%              Maximal formula depth    :   24 (   8 average)
%              Maximal clause size      :   30 (   6 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
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
                 => ( k1_tsep_1(X0,X2,X3) = X0
                   => ! [X4] :
                        ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                          & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                          & v1_funct_1(X4) )
                       => r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
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
                   => ( k1_tsep_1(X0,X2,X3) = X0
                     => ! [X4] :
                          ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                            & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                            & v1_funct_1(X4) )
                         => r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & k1_tsep_1(X0,X2,X3) = X0
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
    inference(ennf_transformation,[],[f13])).

fof(f36,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & k1_tsep_1(X0,X2,X3) = X0
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
    inference(flattening,[],[f35])).

fof(f43,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X4) )
     => ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),sK4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,sK4,X2),k2_tmap_1(X0,X1,sK4,X3)))
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK4,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X4) )
          & k1_tsep_1(X0,X2,X3) = X0
          & m1_pre_topc(X3,X0)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,sK3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,sK3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,sK3)))
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
            & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
            & v1_funct_1(X4) )
        & k1_tsep_1(X0,X2,sK3) = X0
        & m1_pre_topc(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X4) )
              & k1_tsep_1(X0,X2,X3) = X0
              & m1_pre_topc(X3,X0)
              & ~ v2_struct_0(X3) )
          & m1_pre_topc(X2,X0)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,sK2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,sK2,X3,k2_tmap_1(X0,X1,X4,sK2),k2_tmap_1(X0,X1,X4,X3)))
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X4) )
            & k1_tsep_1(X0,sK2,X3) = X0
            & m1_pre_topc(X3,X0)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK2,X0)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & k1_tsep_1(X0,X2,X3) = X0
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
                    ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(sK1),X4,k10_tmap_1(X0,sK1,X2,X3,k2_tmap_1(X0,sK1,X4,X2),k2_tmap_1(X0,sK1,X4,X3)))
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
                    & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(sK1))
                    & v1_funct_1(X4) )
                & k1_tsep_1(X0,X2,X3) = X0
                & m1_pre_topc(X3,X0)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))
                        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                    & k1_tsep_1(X0,X2,X3) = X0
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
                      ( ~ r1_funct_2(u1_struct_0(sK0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(sK0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(sK0,X1,X2,X3,k2_tmap_1(sK0,X1,X4,X2),k2_tmap_1(sK0,X1,X4,X3)))
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(sK0),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & k1_tsep_1(sK0,X2,X3) = sK0
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

fof(f44,plain,
    ( ~ r1_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK4)
    & k1_tsep_1(sK0,sK2,sK3) = sK0
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f36,f43,f42,f41,f40,f39])).

fof(f73,plain,(
    k1_tsep_1(sK0,sK2,sK3) = sK0 ),
    inference(cnf_transformation,[],[f44])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
        & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
        & v1_funct_1(X4)
        & m1_pre_topc(X3,X0)
        & ~ v2_struct_0(X3)
        & m1_pre_topc(X2,X0)
        & ~ v2_struct_0(X2)
        & l1_pre_topc(X1)
        & v2_pre_topc(X1)
        & ~ v2_struct_0(X1)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
        & v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
        & v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
        & v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
        & v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
        & v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
        & v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f55,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f63,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f64,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f65,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f69,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f70,plain,(
    m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f71,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f44])).

fof(f72,plain,(
    m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f76,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f44])).

fof(f7,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
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
    inference(ennf_transformation,[],[f7])).

fof(f26,plain,(
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
    inference(flattening,[],[f25])).

fof(f53,plain,(
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
    inference(cnf_transformation,[],[f26])).

fof(f66,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f67,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f68,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f74,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f44])).

fof(f75,plain,(
    v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f44])).

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
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f52,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(X2,X0)
        & ~ v2_struct_0(X2)
        & m1_pre_topc(X1,X0)
        & ~ v2_struct_0(X1)
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_pre_topc(k1_tsep_1(X0,X1,X2),X0)
        & v1_pre_topc(k1_tsep_1(X0,X1,X2))
        & ~ v2_struct_0(k1_tsep_1(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(X2,X0)
        & ~ v2_struct_0(X2)
        & m1_pre_topc(X1,X0)
        & ~ v2_struct_0(X1)
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_pre_topc(k1_tsep_1(X0,X1,X2),X0)
        & ~ v2_struct_0(k1_tsep_1(X0,X1,X2)) ) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(k1_tsep_1(X0,X1,X2),X0)
        & ~ v2_struct_0(k1_tsep_1(X0,X1,X2)) )
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( m1_pre_topc(k1_tsep_1(X0,X1,X2),X0)
        & ~ v2_struct_0(k1_tsep_1(X0,X1,X2)) )
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(k1_tsep_1(X0,X1,X2),X0)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f11,axiom,(
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
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4))) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4)))
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4)))
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f33])).

fof(f62,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f56,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1))))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f15])).

fof(f37,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_funct_2(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_funct_2(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f45,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_funct_2(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f47,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( l1_struct_0(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(X2)
        & l1_struct_0(X1)
        & l1_struct_0(X0) )
     => ( m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(k2_tmap_1(X0,X1,X2,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(k2_tmap_1(X0,X1,X2,X3)) )
      | ~ l1_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(k2_tmap_1(X0,X1,X2,X3)) )
      | ~ l1_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1))
      | ~ l1_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( v1_funct_1(k2_tmap_1(X0,X1,X2,X3))
      | ~ l1_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f54,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f61,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ l1_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f20,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f49,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_2(X5,X2,X3)
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X4,X0,X1)
        & v1_funct_1(X4)
        & ~ v1_xboole_0(X3)
        & ~ v1_xboole_0(X1) )
     => ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      <=> X4 = X5 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      <=> X4 = X5 )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f22,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      <=> X4 = X5 )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f21])).

fof(f38,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( ( r1_funct_2(X0,X1,X2,X3,X4,X5)
          | X4 != X5 )
        & ( X4 = X5
          | ~ r1_funct_2(X0,X1,X2,X3,X4,X5) ) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f51,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      | X4 != X5
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f79,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r1_funct_2(X0,X1,X2,X3,X5,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X5,X0,X1)
      | ~ v1_funct_1(X5)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(equality_resolution,[],[f51])).

fof(f77,plain,(
    ~ r1_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_22,negated_conjecture,
    ( k1_tsep_1(sK0,sK2,sK3) = sK0 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_743,negated_conjecture,
    ( k1_tsep_1(sK0,sK2,sK3) = sK0 ),
    inference(subtyping,[status(esa)],[c_22])).

cnf(c_10,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_2(X3,u1_struct_0(X4),u1_struct_0(X2))
    | v1_funct_2(k10_tmap_1(X5,X2,X1,X4,X0,X3),u1_struct_0(k1_tsep_1(X5,X1,X4)),u1_struct_0(X2))
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X1,X5)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X5)
    | v2_struct_0(X5)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_754,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54))
    | v1_funct_2(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54))
    | ~ m1_pre_topc(X2_54,X3_54)
    | ~ m1_pre_topc(X0_54,X3_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
    | ~ v2_pre_topc(X3_54)
    | ~ v2_pre_topc(X1_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X3_54)
    | v2_struct_0(X2_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X3_54)
    | ~ l1_pre_topc(X1_54)
    | ~ v1_funct_1(X0_52)
    | ~ v1_funct_1(X1_52) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_1366,plain,
    ( v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54)) != iProver_top
    | v1_funct_2(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54)) = iProver_top
    | m1_pre_topc(X2_54,X3_54) != iProver_top
    | m1_pre_topc(X0_54,X3_54) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54)))) != iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X3_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_754])).

cnf(c_4934,plain,
    ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),u1_struct_0(sK0),u1_struct_0(X0_54)) = iProver_top
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(superposition,[status(thm)],[c_743,c_1366])).

cnf(c_32,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_33,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_31,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_34,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_30,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_35,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_26,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_39,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_25,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_40,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_41,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_23,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_42,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_4939,plain,
    ( l1_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),u1_struct_0(sK0),u1_struct_0(X0_54)) = iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4934,c_33,c_34,c_35,c_39,c_40,c_41,c_42])).

cnf(c_4940,plain,
    ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),u1_struct_0(sK0),u1_struct_0(X0_54)) = iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_4939])).

cnf(c_742,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(subtyping,[status(esa)],[c_23])).

cnf(c_1377,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_742])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_746,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_1374,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_746])).

cnf(c_8,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X1,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_756,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ m1_pre_topc(X2_54,X0_54)
    | ~ m1_pre_topc(X2_54,X3_54)
    | ~ m1_pre_topc(X0_54,X3_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ v2_pre_topc(X3_54)
    | ~ v2_pre_topc(X1_54)
    | v2_struct_0(X3_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X3_54)
    | ~ l1_pre_topc(X1_54)
    | ~ v1_funct_1(X0_52)
    | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1364,plain,
    ( k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52)
    | v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
    | m1_pre_topc(X2_54,X0_54) != iProver_top
    | m1_pre_topc(X2_54,X3_54) != iProver_top
    | m1_pre_topc(X0_54,X3_54) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X3_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_756])).

cnf(c_3316,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK0,X0_54,sK4)
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK0) != iProver_top
    | m1_pre_topc(sK0,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1374,c_1364])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_36,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_28,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_37,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_27,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_38,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_21,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_43,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_20,negated_conjecture,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_44,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3588,plain,
    ( v2_struct_0(X1_54) = iProver_top
    | k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK0,X0_54,sK4)
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK0) != iProver_top
    | m1_pre_topc(sK0,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3316,c_36,c_37,c_38,c_43,c_44])).

cnf(c_3589,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK0,X0_54,sK4)
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK0) != iProver_top
    | m1_pre_topc(sK0,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top ),
    inference(renaming,[status(thm)],[c_3588])).

cnf(c_3601,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK3)) = k3_tmap_1(sK0,sK1,sK0,sK3,sK4)
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK0,sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1377,c_3589])).

cnf(c_7,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_757,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ m1_pre_topc(X2_54,X0_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ v2_pre_topc(X0_54)
    | ~ v2_pre_topc(X1_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X0_54)
    | ~ l1_pre_topc(X1_54)
    | ~ v1_funct_1(X0_52)
    | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k2_tmap_1(X0_54,X1_54,X0_52,X2_54) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1363,plain,
    ( k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k2_tmap_1(X0_54,X1_54,X0_52,X2_54)
    | v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
    | m1_pre_topc(X2_54,X0_54) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_757])).

cnf(c_2937,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k2_tmap_1(sK0,sK1,sK4,X0_54)
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_pre_topc(X0_54,sK0) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1374,c_1363])).

cnf(c_3515,plain,
    ( m1_pre_topc(X0_54,sK0) != iProver_top
    | k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k2_tmap_1(sK0,sK1,sK4,X0_54) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2937,c_33,c_34,c_35,c_36,c_37,c_38,c_43,c_44])).

cnf(c_3516,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k2_tmap_1(sK0,sK1,sK4,X0_54)
    | m1_pre_topc(X0_54,sK0) != iProver_top ),
    inference(renaming,[status(thm)],[c_3515])).

cnf(c_3523,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK3)) = k2_tmap_1(sK0,sK1,sK4,sK3) ),
    inference(superposition,[status(thm)],[c_1377,c_3516])).

cnf(c_3655,plain,
    ( k3_tmap_1(sK0,sK1,sK0,sK3,sK4) = k2_tmap_1(sK0,sK1,sK4,sK3)
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK0,sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3601,c_3523])).

cnf(c_12,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(k1_tsep_1(X1,X0,X2),X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_752,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | ~ m1_pre_topc(X2_54,X1_54)
    | m1_pre_topc(k1_tsep_1(X1_54,X0_54,X2_54),X1_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X2_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X1_54) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_1368,plain,
    ( m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X2_54,X1_54) != iProver_top
    | m1_pre_topc(k1_tsep_1(X1_54,X0_54,X2_54),X1_54) = iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_752])).

cnf(c_2496,plain,
    ( m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK0,sK0) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_743,c_1368])).

cnf(c_18945,plain,
    ( k3_tmap_1(sK0,sK1,sK0,sK3,sK4) = k2_tmap_1(sK0,sK1,sK4,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3655,c_33,c_34,c_35,c_39,c_40,c_41,c_42,c_2496])).

cnf(c_740,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(subtyping,[status(esa)],[c_25])).

cnf(c_1379,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_740])).

cnf(c_3602,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k3_tmap_1(sK0,sK1,sK0,sK2,sK4)
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK0,sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1379,c_3589])).

cnf(c_3524,plain,
    ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k2_tmap_1(sK0,sK1,sK4,sK2) ),
    inference(superposition,[status(thm)],[c_1379,c_3516])).

cnf(c_3642,plain,
    ( k3_tmap_1(sK0,sK1,sK0,sK2,sK4) = k2_tmap_1(sK0,sK1,sK4,sK2)
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK0,sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3602,c_3524])).

cnf(c_17954,plain,
    ( k3_tmap_1(sK0,sK1,sK0,sK2,sK4) = k2_tmap_1(sK0,sK1,sK4,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3642,c_33,c_34,c_35,c_39,c_40,c_41,c_42,c_2496])).

cnf(c_17,plain,
    ( r2_funct_2(u1_struct_0(k1_tsep_1(X0,X1,X2)),u1_struct_0(X3),X4,k10_tmap_1(X0,X3,X1,X2,k3_tmap_1(X0,X3,k1_tsep_1(X0,X1,X2),X1,X4),k3_tmap_1(X0,X3,k1_tsep_1(X0,X1,X2),X2,X4)))
    | ~ v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X1,X2)),u1_struct_0(X3))
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X1,X2)),u1_struct_0(X3))))
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X3)
    | ~ v1_funct_1(X4) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_747,plain,
    ( r2_funct_2(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54),X0_52,k10_tmap_1(X0_54,X3_54,X1_54,X2_54,k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X1_54,X0_52),k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X2_54,X0_52)))
    | ~ v1_funct_2(X0_52,u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54))
    | ~ m1_pre_topc(X2_54,X0_54)
    | ~ m1_pre_topc(X1_54,X0_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54))))
    | ~ v2_pre_topc(X3_54)
    | ~ v2_pre_topc(X0_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X3_54)
    | v2_struct_0(X2_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X0_54)
    | ~ l1_pre_topc(X3_54)
    | ~ v1_funct_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_1373,plain,
    ( r2_funct_2(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54),X0_52,k10_tmap_1(X0_54,X3_54,X1_54,X2_54,k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X1_54,X0_52),k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X2_54,X0_52))) = iProver_top
    | v1_funct_2(X0_52,u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54)) != iProver_top
    | m1_pre_topc(X2_54,X0_54) != iProver_top
    | m1_pre_topc(X1_54,X0_54) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54)))) != iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(X3_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_747])).

cnf(c_4482,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
    | v1_funct_2(X0_52,u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(X0_54)) != iProver_top
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(X0_54)))) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(superposition,[status(thm)],[c_743,c_1373])).

cnf(c_4485,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(X0_54)) != iProver_top
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4482,c_743])).

cnf(c_4556,plain,
    ( l1_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(X0_54)) != iProver_top
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4485,c_33,c_34,c_35,c_39,c_40,c_41,c_42])).

cnf(c_4557,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(X0_54)) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_4556])).

cnf(c_17957,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k3_tmap_1(sK0,sK1,sK0,sK3,sK4))) = iProver_top
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_17954,c_4557])).

cnf(c_45,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_18072,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k3_tmap_1(sK0,sK1,sK0,sK3,sK4))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_17957,c_36,c_37,c_38,c_43,c_44,c_45])).

cnf(c_18948,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_18945,c_18072])).

cnf(c_9,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_2(X3,u1_struct_0(X4),u1_struct_0(X2))
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X1,X5)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
    | m1_subset_1(k10_tmap_1(X5,X2,X1,X4,X0,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X5,X1,X4)),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X5)
    | v2_struct_0(X5)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_755,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54))
    | ~ m1_pre_topc(X2_54,X3_54)
    | ~ m1_pre_topc(X0_54,X3_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
    | m1_subset_1(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54))))
    | ~ v2_pre_topc(X3_54)
    | ~ v2_pre_topc(X1_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X3_54)
    | v2_struct_0(X2_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X3_54)
    | ~ l1_pre_topc(X1_54)
    | ~ v1_funct_1(X0_52)
    | ~ v1_funct_1(X1_52) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1365,plain,
    ( v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54)) != iProver_top
    | m1_pre_topc(X2_54,X3_54) != iProver_top
    | m1_pre_topc(X0_54,X3_54) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54)))) != iProver_top
    | m1_subset_1(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54)))) = iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X3_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_755])).

cnf(c_4069,plain,
    ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) = iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(superposition,[status(thm)],[c_743,c_1365])).

cnf(c_4570,plain,
    ( l1_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) = iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4069,c_33,c_34,c_35,c_39,c_40,c_41,c_42])).

cnf(c_4571,plain,
    ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) = iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_4570])).

cnf(c_1,plain,
    ( ~ r2_funct_2(X0,X1,X2,X3)
    | ~ v1_funct_2(X3,X0,X1)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X2)
    | X2 = X3 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_760,plain,
    ( ~ r2_funct_2(X0_53,X1_53,X0_52,X1_52)
    | ~ v1_funct_2(X1_52,X0_53,X1_53)
    | ~ v1_funct_2(X0_52,X0_53,X1_53)
    | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
    | ~ v1_funct_1(X0_52)
    | ~ v1_funct_1(X1_52)
    | X0_52 = X1_52 ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1360,plain,
    ( X0_52 = X1_52
    | r2_funct_2(X0_53,X1_53,X0_52,X1_52) != iProver_top
    | v1_funct_2(X0_52,X0_53,X1_53) != iProver_top
    | v1_funct_2(X1_52,X0_53,X1_53) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_760])).

cnf(c_2396,plain,
    ( sK4 = X0_52
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,X0_52) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1374,c_1360])).

cnf(c_2883,plain,
    ( v1_funct_1(X0_52) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | sK4 = X0_52
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,X0_52) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2396,c_43,c_44])).

cnf(c_2884,plain,
    ( sK4 = X0_52
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,X0_52) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_2883])).

cnf(c_4592,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52) = sK4
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4571,c_2884])).

cnf(c_5018,plain,
    ( m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top
    | k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52) = sK4
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4592,c_36,c_37,c_38])).

cnf(c_5019,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52) = sK4
    | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top
    | v1_funct_2(X1_52,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(X0_52,u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5018])).

cnf(c_19769,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_18948,c_5019])).

cnf(c_2,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_90,plain,
    ( l1_pre_topc(X0) != iProver_top
    | l1_struct_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_92,plain,
    ( l1_pre_topc(sK0) != iProver_top
    | l1_struct_0(sK0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_90])).

cnf(c_759,plain,
    ( ~ l1_pre_topc(X0_54)
    | l1_struct_0(X0_54) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_2119,plain,
    ( ~ l1_pre_topc(sK1)
    | l1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_759])).

cnf(c_2120,plain,
    ( l1_pre_topc(sK1) != iProver_top
    | l1_struct_0(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2119])).

cnf(c_3,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_758,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | ~ l1_pre_topc(X1_54)
    | l1_pre_topc(X0_54) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_1362,plain,
    ( m1_pre_topc(X0_54,X1_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(X0_54) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_758])).

cnf(c_2476,plain,
    ( l1_pre_topc(sK3) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1377,c_1362])).

cnf(c_2867,plain,
    ( l1_pre_topc(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2476,c_35])).

cnf(c_1361,plain,
    ( l1_pre_topc(X0_54) != iProver_top
    | l1_struct_0(X0_54) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_759])).

cnf(c_2872,plain,
    ( l1_struct_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2867,c_1361])).

cnf(c_2477,plain,
    ( l1_pre_topc(sK2) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1379,c_1362])).

cnf(c_2875,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2477,c_35])).

cnf(c_2880,plain,
    ( l1_struct_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_2875,c_1361])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | v1_funct_2(k2_tmap_1(X1,X2,X0,X3),u1_struct_0(X3),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X3)
    | ~ l1_struct_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_749,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | v1_funct_2(k2_tmap_1(X0_54,X1_54,X0_52,X2_54),u1_struct_0(X2_54),u1_struct_0(X1_54))
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ l1_struct_0(X0_54)
    | ~ l1_struct_0(X1_54)
    | ~ l1_struct_0(X2_54)
    | ~ v1_funct_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1854,plain,
    ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,X0_54),u1_struct_0(X0_54),u1_struct_0(sK1))
    | ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(X0_54)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_749])).

cnf(c_3122,plain,
    ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1))
    | ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(sK3)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1854])).

cnf(c_3132,plain,
    ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) = iProver_top
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | l1_struct_0(sK3) != iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3122])).

cnf(c_3170,plain,
    ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1))
    | ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1854])).

cnf(c_3180,plain,
    ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) = iProver_top
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3170])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X3)
    | ~ l1_struct_0(X2)
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_tmap_1(X1,X2,X0,X3)) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_748,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ l1_struct_0(X0_54)
    | ~ l1_struct_0(X1_54)
    | ~ l1_struct_0(X2_54)
    | ~ v1_funct_1(X0_52)
    | v1_funct_1(k2_tmap_1(X0_54,X1_54,X0_52,X2_54)) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1849,plain,
    ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(X0_54)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,X0_54))
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_748])).

cnf(c_6146,plain,
    ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(sK3)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3))
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1849])).

cnf(c_6147,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | l1_struct_0(sK3) != iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK0) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) = iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6146])).

cnf(c_6241,plain,
    ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2))
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1849])).

cnf(c_6242,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK0) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) = iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6241])).

cnf(c_11,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_2(X3,u1_struct_0(X4),u1_struct_0(X2))
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X1,X5)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X5)
    | v2_struct_0(X5)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0)
    | v1_funct_1(k10_tmap_1(X5,X2,X1,X4,X0,X3)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_753,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54))
    | ~ m1_pre_topc(X2_54,X3_54)
    | ~ m1_pre_topc(X0_54,X3_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
    | ~ v2_pre_topc(X3_54)
    | ~ v2_pre_topc(X1_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X3_54)
    | v2_struct_0(X2_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X3_54)
    | ~ l1_pre_topc(X1_54)
    | ~ v1_funct_1(X0_52)
    | ~ v1_funct_1(X1_52)
    | v1_funct_1(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52)) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_3489,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tmap_1(sK0,sK1,sK4,X1_54),u1_struct_0(X1_54),u1_struct_0(sK1))
    | ~ m1_pre_topc(X0_54,X2_54)
    | ~ m1_pre_topc(X1_54,X2_54)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tmap_1(sK0,sK1,sK4,X1_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1_54),u1_struct_0(sK1))))
    | ~ v2_pre_topc(X2_54)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X1_54)
    | v2_struct_0(X2_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(X2_54)
    | ~ l1_pre_topc(sK1)
    | ~ v1_funct_1(X0_52)
    | v1_funct_1(k10_tmap_1(X2_54,sK1,X1_54,X0_54,k2_tmap_1(sK0,sK1,sK4,X1_54),X0_52))
    | ~ v1_funct_1(k2_tmap_1(sK0,sK1,sK4,X1_54)) ),
    inference(instantiation,[status(thm)],[c_753])).

cnf(c_7713,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1))
    | ~ m1_pre_topc(sK3,sK0)
    | ~ m1_pre_topc(sK2,sK0)
    | ~ m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    | ~ v2_pre_topc(sK1)
    | ~ v2_pre_topc(sK0)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | v2_struct_0(sK1)
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK1)
    | ~ l1_pre_topc(sK0)
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    | ~ v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3))
    | ~ v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) ),
    inference(instantiation,[status(thm)],[c_3489])).

cnf(c_7714,plain,
    ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
    | m1_pre_topc(sK3,sK0) != iProver_top
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7713])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | m1_subset_1(k2_tmap_1(X1,X2,X0,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X3)
    | ~ l1_struct_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_750,plain,
    ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | m1_subset_1(k2_tmap_1(X0_54,X1_54,X0_52,X2_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
    | ~ l1_struct_0(X0_54)
    | ~ l1_struct_0(X1_54)
    | ~ l1_struct_0(X2_54)
    | ~ v1_funct_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_1859,plain,
    ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,X0_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(sK1))))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(X0_54)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_750])).

cnf(c_10743,plain,
    ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(sK3)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1859])).

cnf(c_10744,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | l1_struct_0(sK3) != iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10743])).

cnf(c_10746,plain,
    ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_struct_0(sK2)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1859])).

cnf(c_10747,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | l1_struct_0(sK2) != iProver_top
    | l1_struct_0(sK1) != iProver_top
    | l1_struct_0(sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10746])).

cnf(c_19857,plain,
    ( v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_19769,c_33,c_34,c_35,c_36,c_37,c_38,c_39,c_40,c_41,c_42,c_43,c_44,c_45,c_92,c_2120,c_2872,c_2880,c_3132,c_3180,c_6147,c_6242,c_7714,c_10744,c_10747])).

cnf(c_19858,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_19857])).

cnf(c_19863,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4
    | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) != iProver_top
    | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4940,c_19858])).

cnf(c_19866,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_19863,c_35,c_36,c_37,c_38,c_43,c_44,c_45,c_92,c_2120,c_2872,c_2880,c_3132,c_3180,c_6147,c_6242,c_10744,c_10747])).

cnf(c_4,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_5,plain,
    ( r1_funct_2(X0,X1,X2,X3,X4,X4)
    | ~ v1_funct_2(X4,X2,X3)
    | ~ v1_funct_2(X4,X0,X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_xboole_0(X1)
    | v1_xboole_0(X3)
    | ~ v1_funct_1(X4) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_18,negated_conjecture,
    ( ~ r1_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_347,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X0,X3,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | ~ v1_funct_1(X0)
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != X0
    | u1_struct_0(k1_tsep_1(sK0,sK2,sK3)) != X3
    | u1_struct_0(sK1) != X4
    | u1_struct_0(sK1) != X2
    | u1_struct_0(sK0) != X1
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_18])).

cnf(c_348,plain,
    ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
    | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v1_xboole_0(u1_struct_0(sK1))
    | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    | sK4 != k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) ),
    inference(unflattening,[status(thm)],[c_347])).

cnf(c_380,plain,
    ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
    | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
    | u1_struct_0(X0) != u1_struct_0(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_4,c_348])).

cnf(c_732,plain,
    ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
    | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v2_struct_0(X0_54)
    | ~ l1_struct_0(X0_54)
    | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    | u1_struct_0(X0_54) != u1_struct_0(sK1)
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4 ),
    inference(subtyping,[status(esa)],[c_380])).

cnf(c_763,plain,
    ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
    | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
    | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    | sP0_iProver_split
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4 ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_732])).

cnf(c_1387,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1)) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1)))) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_763])).

cnf(c_1707,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1387,c_743])).

cnf(c_778,plain,
    ( ~ v1_funct_1(X0_52)
    | v1_funct_1(X1_52)
    | X1_52 != X0_52 ),
    theory(equality)).

cnf(c_1793,plain,
    ( ~ v1_funct_1(X0_52)
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != X0_52 ),
    inference(instantiation,[status(thm)],[c_778])).

cnf(c_1794,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != X0_52
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1793])).

cnf(c_1796,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
    | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1794])).

cnf(c_2198,plain,
    ( m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
    | sP0_iProver_split = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1707,c_43,c_1796])).

cnf(c_2199,plain,
    ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
    | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(renaming,[status(thm)],[c_2198])).

cnf(c_19870,plain,
    ( sK4 != sK4
    | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(demodulation,[status(thm)],[c_19866,c_2199])).

cnf(c_19871,plain,
    ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_19870])).

cnf(c_762,plain,
    ( v2_struct_0(X0_54)
    | ~ l1_struct_0(X0_54)
    | u1_struct_0(X0_54) != u1_struct_0(sK1)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_732])).

cnf(c_1388,plain,
    ( u1_struct_0(X0_54) != u1_struct_0(sK1)
    | v2_struct_0(X0_54) = iProver_top
    | l1_struct_0(X0_54) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_762])).

cnf(c_2287,plain,
    ( v2_struct_0(sK1) = iProver_top
    | l1_struct_0(sK1) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1388])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_19871,c_2287,c_2120,c_45,c_44,c_38,c_36])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:56:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 11.17/1.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 11.17/1.99  
% 11.17/1.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 11.17/1.99  
% 11.17/1.99  ------  iProver source info
% 11.17/1.99  
% 11.17/1.99  git: date: 2020-06-30 10:37:57 +0100
% 11.17/1.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 11.17/1.99  git: non_committed_changes: false
% 11.17/1.99  git: last_make_outside_of_git: false
% 11.17/1.99  
% 11.17/1.99  ------ 
% 11.17/1.99  
% 11.17/1.99  ------ Input Options
% 11.17/1.99  
% 11.17/1.99  --out_options                           all
% 11.17/1.99  --tptp_safe_out                         true
% 11.17/1.99  --problem_path                          ""
% 11.17/1.99  --include_path                          ""
% 11.17/1.99  --clausifier                            res/vclausify_rel
% 11.17/1.99  --clausifier_options                    --mode clausify
% 11.17/1.99  --stdin                                 false
% 11.17/1.99  --stats_out                             all
% 11.17/1.99  
% 11.17/1.99  ------ General Options
% 11.17/1.99  
% 11.17/1.99  --fof                                   false
% 11.17/1.99  --time_out_real                         305.
% 11.17/1.99  --time_out_virtual                      -1.
% 11.17/1.99  --symbol_type_check                     false
% 11.17/1.99  --clausify_out                          false
% 11.17/1.99  --sig_cnt_out                           false
% 11.17/1.99  --trig_cnt_out                          false
% 11.17/1.99  --trig_cnt_out_tolerance                1.
% 11.17/1.99  --trig_cnt_out_sk_spl                   false
% 11.17/1.99  --abstr_cl_out                          false
% 11.17/1.99  
% 11.17/1.99  ------ Global Options
% 11.17/1.99  
% 11.17/1.99  --schedule                              default
% 11.17/1.99  --add_important_lit                     false
% 11.17/1.99  --prop_solver_per_cl                    1000
% 11.17/1.99  --min_unsat_core                        false
% 11.17/1.99  --soft_assumptions                      false
% 11.17/1.99  --soft_lemma_size                       3
% 11.17/1.99  --prop_impl_unit_size                   0
% 11.17/1.99  --prop_impl_unit                        []
% 11.17/1.99  --share_sel_clauses                     true
% 11.17/1.99  --reset_solvers                         false
% 11.17/1.99  --bc_imp_inh                            [conj_cone]
% 11.17/1.99  --conj_cone_tolerance                   3.
% 11.17/1.99  --extra_neg_conj                        none
% 11.17/1.99  --large_theory_mode                     true
% 11.17/1.99  --prolific_symb_bound                   200
% 11.17/1.99  --lt_threshold                          2000
% 11.17/1.99  --clause_weak_htbl                      true
% 11.17/1.99  --gc_record_bc_elim                     false
% 11.17/1.99  
% 11.17/1.99  ------ Preprocessing Options
% 11.17/1.99  
% 11.17/1.99  --preprocessing_flag                    true
% 11.17/1.99  --time_out_prep_mult                    0.1
% 11.17/1.99  --splitting_mode                        input
% 11.17/1.99  --splitting_grd                         true
% 11.17/1.99  --splitting_cvd                         false
% 11.17/1.99  --splitting_cvd_svl                     false
% 11.17/1.99  --splitting_nvd                         32
% 11.17/1.99  --sub_typing                            true
% 11.17/1.99  --prep_gs_sim                           true
% 11.17/1.99  --prep_unflatten                        true
% 11.17/1.99  --prep_res_sim                          true
% 11.17/1.99  --prep_upred                            true
% 11.17/1.99  --prep_sem_filter                       exhaustive
% 11.17/1.99  --prep_sem_filter_out                   false
% 11.17/1.99  --pred_elim                             true
% 11.17/1.99  --res_sim_input                         true
% 11.17/1.99  --eq_ax_congr_red                       true
% 11.17/1.99  --pure_diseq_elim                       true
% 11.17/1.99  --brand_transform                       false
% 11.17/1.99  --non_eq_to_eq                          false
% 11.17/1.99  --prep_def_merge                        true
% 11.17/1.99  --prep_def_merge_prop_impl              false
% 11.17/2.00  --prep_def_merge_mbd                    true
% 11.17/2.00  --prep_def_merge_tr_red                 false
% 11.17/2.00  --prep_def_merge_tr_cl                  false
% 11.17/2.00  --smt_preprocessing                     true
% 11.17/2.00  --smt_ac_axioms                         fast
% 11.17/2.00  --preprocessed_out                      false
% 11.17/2.00  --preprocessed_stats                    false
% 11.17/2.00  
% 11.17/2.00  ------ Abstraction refinement Options
% 11.17/2.00  
% 11.17/2.00  --abstr_ref                             []
% 11.17/2.00  --abstr_ref_prep                        false
% 11.17/2.00  --abstr_ref_until_sat                   false
% 11.17/2.00  --abstr_ref_sig_restrict                funpre
% 11.17/2.00  --abstr_ref_af_restrict_to_split_sk     false
% 11.17/2.00  --abstr_ref_under                       []
% 11.17/2.00  
% 11.17/2.00  ------ SAT Options
% 11.17/2.00  
% 11.17/2.00  --sat_mode                              false
% 11.17/2.00  --sat_fm_restart_options                ""
% 11.17/2.00  --sat_gr_def                            false
% 11.17/2.00  --sat_epr_types                         true
% 11.17/2.00  --sat_non_cyclic_types                  false
% 11.17/2.00  --sat_finite_models                     false
% 11.17/2.00  --sat_fm_lemmas                         false
% 11.17/2.00  --sat_fm_prep                           false
% 11.17/2.00  --sat_fm_uc_incr                        true
% 11.17/2.00  --sat_out_model                         small
% 11.17/2.00  --sat_out_clauses                       false
% 11.17/2.00  
% 11.17/2.00  ------ QBF Options
% 11.17/2.00  
% 11.17/2.00  --qbf_mode                              false
% 11.17/2.00  --qbf_elim_univ                         false
% 11.17/2.00  --qbf_dom_inst                          none
% 11.17/2.00  --qbf_dom_pre_inst                      false
% 11.17/2.00  --qbf_sk_in                             false
% 11.17/2.00  --qbf_pred_elim                         true
% 11.17/2.00  --qbf_split                             512
% 11.17/2.00  
% 11.17/2.00  ------ BMC1 Options
% 11.17/2.00  
% 11.17/2.00  --bmc1_incremental                      false
% 11.17/2.00  --bmc1_axioms                           reachable_all
% 11.17/2.00  --bmc1_min_bound                        0
% 11.17/2.00  --bmc1_max_bound                        -1
% 11.17/2.00  --bmc1_max_bound_default                -1
% 11.17/2.00  --bmc1_symbol_reachability              true
% 11.17/2.00  --bmc1_property_lemmas                  false
% 11.17/2.00  --bmc1_k_induction                      false
% 11.17/2.00  --bmc1_non_equiv_states                 false
% 11.17/2.00  --bmc1_deadlock                         false
% 11.17/2.00  --bmc1_ucm                              false
% 11.17/2.00  --bmc1_add_unsat_core                   none
% 11.17/2.00  --bmc1_unsat_core_children              false
% 11.17/2.00  --bmc1_unsat_core_extrapolate_axioms    false
% 11.17/2.00  --bmc1_out_stat                         full
% 11.17/2.00  --bmc1_ground_init                      false
% 11.17/2.00  --bmc1_pre_inst_next_state              false
% 11.17/2.00  --bmc1_pre_inst_state                   false
% 11.17/2.00  --bmc1_pre_inst_reach_state             false
% 11.17/2.00  --bmc1_out_unsat_core                   false
% 11.17/2.00  --bmc1_aig_witness_out                  false
% 11.17/2.00  --bmc1_verbose                          false
% 11.17/2.00  --bmc1_dump_clauses_tptp                false
% 11.17/2.00  --bmc1_dump_unsat_core_tptp             false
% 11.17/2.00  --bmc1_dump_file                        -
% 11.17/2.00  --bmc1_ucm_expand_uc_limit              128
% 11.17/2.00  --bmc1_ucm_n_expand_iterations          6
% 11.17/2.00  --bmc1_ucm_extend_mode                  1
% 11.17/2.00  --bmc1_ucm_init_mode                    2
% 11.17/2.00  --bmc1_ucm_cone_mode                    none
% 11.17/2.00  --bmc1_ucm_reduced_relation_type        0
% 11.17/2.00  --bmc1_ucm_relax_model                  4
% 11.17/2.00  --bmc1_ucm_full_tr_after_sat            true
% 11.17/2.00  --bmc1_ucm_expand_neg_assumptions       false
% 11.17/2.00  --bmc1_ucm_layered_model                none
% 11.17/2.00  --bmc1_ucm_max_lemma_size               10
% 11.17/2.00  
% 11.17/2.00  ------ AIG Options
% 11.17/2.00  
% 11.17/2.00  --aig_mode                              false
% 11.17/2.00  
% 11.17/2.00  ------ Instantiation Options
% 11.17/2.00  
% 11.17/2.00  --instantiation_flag                    true
% 11.17/2.00  --inst_sos_flag                         false
% 11.17/2.00  --inst_sos_phase                        true
% 11.17/2.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.17/2.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.17/2.00  --inst_lit_sel_side                     num_symb
% 11.17/2.00  --inst_solver_per_active                1400
% 11.17/2.00  --inst_solver_calls_frac                1.
% 11.17/2.00  --inst_passive_queue_type               priority_queues
% 11.17/2.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.17/2.00  --inst_passive_queues_freq              [25;2]
% 11.17/2.00  --inst_dismatching                      true
% 11.17/2.00  --inst_eager_unprocessed_to_passive     true
% 11.17/2.00  --inst_prop_sim_given                   true
% 11.17/2.00  --inst_prop_sim_new                     false
% 11.17/2.00  --inst_subs_new                         false
% 11.17/2.00  --inst_eq_res_simp                      false
% 11.17/2.00  --inst_subs_given                       false
% 11.17/2.00  --inst_orphan_elimination               true
% 11.17/2.00  --inst_learning_loop_flag               true
% 11.17/2.00  --inst_learning_start                   3000
% 11.17/2.00  --inst_learning_factor                  2
% 11.17/2.00  --inst_start_prop_sim_after_learn       3
% 11.17/2.00  --inst_sel_renew                        solver
% 11.17/2.00  --inst_lit_activity_flag                true
% 11.17/2.00  --inst_restr_to_given                   false
% 11.17/2.00  --inst_activity_threshold               500
% 11.17/2.00  --inst_out_proof                        true
% 11.17/2.00  
% 11.17/2.00  ------ Resolution Options
% 11.17/2.00  
% 11.17/2.00  --resolution_flag                       true
% 11.17/2.00  --res_lit_sel                           adaptive
% 11.17/2.00  --res_lit_sel_side                      none
% 11.17/2.00  --res_ordering                          kbo
% 11.17/2.00  --res_to_prop_solver                    active
% 11.17/2.00  --res_prop_simpl_new                    false
% 11.17/2.00  --res_prop_simpl_given                  true
% 11.17/2.00  --res_passive_queue_type                priority_queues
% 11.17/2.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.17/2.00  --res_passive_queues_freq               [15;5]
% 11.17/2.00  --res_forward_subs                      full
% 11.17/2.00  --res_backward_subs                     full
% 11.17/2.00  --res_forward_subs_resolution           true
% 11.17/2.00  --res_backward_subs_resolution          true
% 11.17/2.00  --res_orphan_elimination                true
% 11.17/2.00  --res_time_limit                        2.
% 11.17/2.00  --res_out_proof                         true
% 11.17/2.00  
% 11.17/2.00  ------ Superposition Options
% 11.17/2.00  
% 11.17/2.00  --superposition_flag                    true
% 11.17/2.00  --sup_passive_queue_type                priority_queues
% 11.17/2.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.17/2.00  --sup_passive_queues_freq               [8;1;4]
% 11.17/2.00  --demod_completeness_check              fast
% 11.17/2.00  --demod_use_ground                      true
% 11.17/2.00  --sup_to_prop_solver                    passive
% 11.17/2.00  --sup_prop_simpl_new                    true
% 11.17/2.00  --sup_prop_simpl_given                  true
% 11.17/2.00  --sup_fun_splitting                     false
% 11.17/2.00  --sup_smt_interval                      50000
% 11.17/2.00  
% 11.17/2.00  ------ Superposition Simplification Setup
% 11.17/2.00  
% 11.17/2.00  --sup_indices_passive                   []
% 11.17/2.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.17/2.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.17/2.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.17/2.00  --sup_full_triv                         [TrivRules;PropSubs]
% 11.17/2.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.17/2.00  --sup_full_bw                           [BwDemod]
% 11.17/2.00  --sup_immed_triv                        [TrivRules]
% 11.17/2.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.17/2.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.17/2.00  --sup_immed_bw_main                     []
% 11.17/2.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.17/2.00  --sup_input_triv                        [Unflattening;TrivRules]
% 11.17/2.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.17/2.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.17/2.00  
% 11.17/2.00  ------ Combination Options
% 11.17/2.00  
% 11.17/2.00  --comb_res_mult                         3
% 11.17/2.00  --comb_sup_mult                         2
% 11.17/2.00  --comb_inst_mult                        10
% 11.17/2.00  
% 11.17/2.00  ------ Debug Options
% 11.17/2.00  
% 11.17/2.00  --dbg_backtrace                         false
% 11.17/2.00  --dbg_dump_prop_clauses                 false
% 11.17/2.00  --dbg_dump_prop_clauses_file            -
% 11.17/2.00  --dbg_out_stat                          false
% 11.17/2.00  ------ Parsing...
% 11.17/2.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 11.17/2.00  
% 11.17/2.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 11.17/2.00  
% 11.17/2.00  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 11.17/2.00  
% 11.17/2.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 11.17/2.00  ------ Proving...
% 11.17/2.00  ------ Problem Properties 
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  clauses                                 31
% 11.17/2.00  conjectures                             14
% 11.17/2.00  EPR                                     13
% 11.17/2.00  Horn                                    23
% 11.17/2.00  unary                                   14
% 11.17/2.00  binary                                  1
% 11.17/2.00  lits                                    166
% 11.17/2.00  lits eq                                 6
% 11.17/2.00  fd_pure                                 0
% 11.17/2.00  fd_pseudo                               0
% 11.17/2.00  fd_cond                                 0
% 11.17/2.00  fd_pseudo_cond                          1
% 11.17/2.00  AC symbols                              0
% 11.17/2.00  
% 11.17/2.00  ------ Schedule dynamic 5 is on 
% 11.17/2.00  
% 11.17/2.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  ------ 
% 11.17/2.00  Current options:
% 11.17/2.00  ------ 
% 11.17/2.00  
% 11.17/2.00  ------ Input Options
% 11.17/2.00  
% 11.17/2.00  --out_options                           all
% 11.17/2.00  --tptp_safe_out                         true
% 11.17/2.00  --problem_path                          ""
% 11.17/2.00  --include_path                          ""
% 11.17/2.00  --clausifier                            res/vclausify_rel
% 11.17/2.00  --clausifier_options                    --mode clausify
% 11.17/2.00  --stdin                                 false
% 11.17/2.00  --stats_out                             all
% 11.17/2.00  
% 11.17/2.00  ------ General Options
% 11.17/2.00  
% 11.17/2.00  --fof                                   false
% 11.17/2.00  --time_out_real                         305.
% 11.17/2.00  --time_out_virtual                      -1.
% 11.17/2.00  --symbol_type_check                     false
% 11.17/2.00  --clausify_out                          false
% 11.17/2.00  --sig_cnt_out                           false
% 11.17/2.00  --trig_cnt_out                          false
% 11.17/2.00  --trig_cnt_out_tolerance                1.
% 11.17/2.00  --trig_cnt_out_sk_spl                   false
% 11.17/2.00  --abstr_cl_out                          false
% 11.17/2.00  
% 11.17/2.00  ------ Global Options
% 11.17/2.00  
% 11.17/2.00  --schedule                              default
% 11.17/2.00  --add_important_lit                     false
% 11.17/2.00  --prop_solver_per_cl                    1000
% 11.17/2.00  --min_unsat_core                        false
% 11.17/2.00  --soft_assumptions                      false
% 11.17/2.00  --soft_lemma_size                       3
% 11.17/2.00  --prop_impl_unit_size                   0
% 11.17/2.00  --prop_impl_unit                        []
% 11.17/2.00  --share_sel_clauses                     true
% 11.17/2.00  --reset_solvers                         false
% 11.17/2.00  --bc_imp_inh                            [conj_cone]
% 11.17/2.00  --conj_cone_tolerance                   3.
% 11.17/2.00  --extra_neg_conj                        none
% 11.17/2.00  --large_theory_mode                     true
% 11.17/2.00  --prolific_symb_bound                   200
% 11.17/2.00  --lt_threshold                          2000
% 11.17/2.00  --clause_weak_htbl                      true
% 11.17/2.00  --gc_record_bc_elim                     false
% 11.17/2.00  
% 11.17/2.00  ------ Preprocessing Options
% 11.17/2.00  
% 11.17/2.00  --preprocessing_flag                    true
% 11.17/2.00  --time_out_prep_mult                    0.1
% 11.17/2.00  --splitting_mode                        input
% 11.17/2.00  --splitting_grd                         true
% 11.17/2.00  --splitting_cvd                         false
% 11.17/2.00  --splitting_cvd_svl                     false
% 11.17/2.00  --splitting_nvd                         32
% 11.17/2.00  --sub_typing                            true
% 11.17/2.00  --prep_gs_sim                           true
% 11.17/2.00  --prep_unflatten                        true
% 11.17/2.00  --prep_res_sim                          true
% 11.17/2.00  --prep_upred                            true
% 11.17/2.00  --prep_sem_filter                       exhaustive
% 11.17/2.00  --prep_sem_filter_out                   false
% 11.17/2.00  --pred_elim                             true
% 11.17/2.00  --res_sim_input                         true
% 11.17/2.00  --eq_ax_congr_red                       true
% 11.17/2.00  --pure_diseq_elim                       true
% 11.17/2.00  --brand_transform                       false
% 11.17/2.00  --non_eq_to_eq                          false
% 11.17/2.00  --prep_def_merge                        true
% 11.17/2.00  --prep_def_merge_prop_impl              false
% 11.17/2.00  --prep_def_merge_mbd                    true
% 11.17/2.00  --prep_def_merge_tr_red                 false
% 11.17/2.00  --prep_def_merge_tr_cl                  false
% 11.17/2.00  --smt_preprocessing                     true
% 11.17/2.00  --smt_ac_axioms                         fast
% 11.17/2.00  --preprocessed_out                      false
% 11.17/2.00  --preprocessed_stats                    false
% 11.17/2.00  
% 11.17/2.00  ------ Abstraction refinement Options
% 11.17/2.00  
% 11.17/2.00  --abstr_ref                             []
% 11.17/2.00  --abstr_ref_prep                        false
% 11.17/2.00  --abstr_ref_until_sat                   false
% 11.17/2.00  --abstr_ref_sig_restrict                funpre
% 11.17/2.00  --abstr_ref_af_restrict_to_split_sk     false
% 11.17/2.00  --abstr_ref_under                       []
% 11.17/2.00  
% 11.17/2.00  ------ SAT Options
% 11.17/2.00  
% 11.17/2.00  --sat_mode                              false
% 11.17/2.00  --sat_fm_restart_options                ""
% 11.17/2.00  --sat_gr_def                            false
% 11.17/2.00  --sat_epr_types                         true
% 11.17/2.00  --sat_non_cyclic_types                  false
% 11.17/2.00  --sat_finite_models                     false
% 11.17/2.00  --sat_fm_lemmas                         false
% 11.17/2.00  --sat_fm_prep                           false
% 11.17/2.00  --sat_fm_uc_incr                        true
% 11.17/2.00  --sat_out_model                         small
% 11.17/2.00  --sat_out_clauses                       false
% 11.17/2.00  
% 11.17/2.00  ------ QBF Options
% 11.17/2.00  
% 11.17/2.00  --qbf_mode                              false
% 11.17/2.00  --qbf_elim_univ                         false
% 11.17/2.00  --qbf_dom_inst                          none
% 11.17/2.00  --qbf_dom_pre_inst                      false
% 11.17/2.00  --qbf_sk_in                             false
% 11.17/2.00  --qbf_pred_elim                         true
% 11.17/2.00  --qbf_split                             512
% 11.17/2.00  
% 11.17/2.00  ------ BMC1 Options
% 11.17/2.00  
% 11.17/2.00  --bmc1_incremental                      false
% 11.17/2.00  --bmc1_axioms                           reachable_all
% 11.17/2.00  --bmc1_min_bound                        0
% 11.17/2.00  --bmc1_max_bound                        -1
% 11.17/2.00  --bmc1_max_bound_default                -1
% 11.17/2.00  --bmc1_symbol_reachability              true
% 11.17/2.00  --bmc1_property_lemmas                  false
% 11.17/2.00  --bmc1_k_induction                      false
% 11.17/2.00  --bmc1_non_equiv_states                 false
% 11.17/2.00  --bmc1_deadlock                         false
% 11.17/2.00  --bmc1_ucm                              false
% 11.17/2.00  --bmc1_add_unsat_core                   none
% 11.17/2.00  --bmc1_unsat_core_children              false
% 11.17/2.00  --bmc1_unsat_core_extrapolate_axioms    false
% 11.17/2.00  --bmc1_out_stat                         full
% 11.17/2.00  --bmc1_ground_init                      false
% 11.17/2.00  --bmc1_pre_inst_next_state              false
% 11.17/2.00  --bmc1_pre_inst_state                   false
% 11.17/2.00  --bmc1_pre_inst_reach_state             false
% 11.17/2.00  --bmc1_out_unsat_core                   false
% 11.17/2.00  --bmc1_aig_witness_out                  false
% 11.17/2.00  --bmc1_verbose                          false
% 11.17/2.00  --bmc1_dump_clauses_tptp                false
% 11.17/2.00  --bmc1_dump_unsat_core_tptp             false
% 11.17/2.00  --bmc1_dump_file                        -
% 11.17/2.00  --bmc1_ucm_expand_uc_limit              128
% 11.17/2.00  --bmc1_ucm_n_expand_iterations          6
% 11.17/2.00  --bmc1_ucm_extend_mode                  1
% 11.17/2.00  --bmc1_ucm_init_mode                    2
% 11.17/2.00  --bmc1_ucm_cone_mode                    none
% 11.17/2.00  --bmc1_ucm_reduced_relation_type        0
% 11.17/2.00  --bmc1_ucm_relax_model                  4
% 11.17/2.00  --bmc1_ucm_full_tr_after_sat            true
% 11.17/2.00  --bmc1_ucm_expand_neg_assumptions       false
% 11.17/2.00  --bmc1_ucm_layered_model                none
% 11.17/2.00  --bmc1_ucm_max_lemma_size               10
% 11.17/2.00  
% 11.17/2.00  ------ AIG Options
% 11.17/2.00  
% 11.17/2.00  --aig_mode                              false
% 11.17/2.00  
% 11.17/2.00  ------ Instantiation Options
% 11.17/2.00  
% 11.17/2.00  --instantiation_flag                    true
% 11.17/2.00  --inst_sos_flag                         false
% 11.17/2.00  --inst_sos_phase                        true
% 11.17/2.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.17/2.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.17/2.00  --inst_lit_sel_side                     none
% 11.17/2.00  --inst_solver_per_active                1400
% 11.17/2.00  --inst_solver_calls_frac                1.
% 11.17/2.00  --inst_passive_queue_type               priority_queues
% 11.17/2.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.17/2.00  --inst_passive_queues_freq              [25;2]
% 11.17/2.00  --inst_dismatching                      true
% 11.17/2.00  --inst_eager_unprocessed_to_passive     true
% 11.17/2.00  --inst_prop_sim_given                   true
% 11.17/2.00  --inst_prop_sim_new                     false
% 11.17/2.00  --inst_subs_new                         false
% 11.17/2.00  --inst_eq_res_simp                      false
% 11.17/2.00  --inst_subs_given                       false
% 11.17/2.00  --inst_orphan_elimination               true
% 11.17/2.00  --inst_learning_loop_flag               true
% 11.17/2.00  --inst_learning_start                   3000
% 11.17/2.00  --inst_learning_factor                  2
% 11.17/2.00  --inst_start_prop_sim_after_learn       3
% 11.17/2.00  --inst_sel_renew                        solver
% 11.17/2.00  --inst_lit_activity_flag                true
% 11.17/2.00  --inst_restr_to_given                   false
% 11.17/2.00  --inst_activity_threshold               500
% 11.17/2.00  --inst_out_proof                        true
% 11.17/2.00  
% 11.17/2.00  ------ Resolution Options
% 11.17/2.00  
% 11.17/2.00  --resolution_flag                       false
% 11.17/2.00  --res_lit_sel                           adaptive
% 11.17/2.00  --res_lit_sel_side                      none
% 11.17/2.00  --res_ordering                          kbo
% 11.17/2.00  --res_to_prop_solver                    active
% 11.17/2.00  --res_prop_simpl_new                    false
% 11.17/2.00  --res_prop_simpl_given                  true
% 11.17/2.00  --res_passive_queue_type                priority_queues
% 11.17/2.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.17/2.00  --res_passive_queues_freq               [15;5]
% 11.17/2.00  --res_forward_subs                      full
% 11.17/2.00  --res_backward_subs                     full
% 11.17/2.00  --res_forward_subs_resolution           true
% 11.17/2.00  --res_backward_subs_resolution          true
% 11.17/2.00  --res_orphan_elimination                true
% 11.17/2.00  --res_time_limit                        2.
% 11.17/2.00  --res_out_proof                         true
% 11.17/2.00  
% 11.17/2.00  ------ Superposition Options
% 11.17/2.00  
% 11.17/2.00  --superposition_flag                    true
% 11.17/2.00  --sup_passive_queue_type                priority_queues
% 11.17/2.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.17/2.00  --sup_passive_queues_freq               [8;1;4]
% 11.17/2.00  --demod_completeness_check              fast
% 11.17/2.00  --demod_use_ground                      true
% 11.17/2.00  --sup_to_prop_solver                    passive
% 11.17/2.00  --sup_prop_simpl_new                    true
% 11.17/2.00  --sup_prop_simpl_given                  true
% 11.17/2.00  --sup_fun_splitting                     false
% 11.17/2.00  --sup_smt_interval                      50000
% 11.17/2.00  
% 11.17/2.00  ------ Superposition Simplification Setup
% 11.17/2.00  
% 11.17/2.00  --sup_indices_passive                   []
% 11.17/2.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.17/2.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.17/2.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.17/2.00  --sup_full_triv                         [TrivRules;PropSubs]
% 11.17/2.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.17/2.00  --sup_full_bw                           [BwDemod]
% 11.17/2.00  --sup_immed_triv                        [TrivRules]
% 11.17/2.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.17/2.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.17/2.00  --sup_immed_bw_main                     []
% 11.17/2.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.17/2.00  --sup_input_triv                        [Unflattening;TrivRules]
% 11.17/2.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.17/2.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.17/2.00  
% 11.17/2.00  ------ Combination Options
% 11.17/2.00  
% 11.17/2.00  --comb_res_mult                         3
% 11.17/2.00  --comb_sup_mult                         2
% 11.17/2.00  --comb_inst_mult                        10
% 11.17/2.00  
% 11.17/2.00  ------ Debug Options
% 11.17/2.00  
% 11.17/2.00  --dbg_backtrace                         false
% 11.17/2.00  --dbg_dump_prop_clauses                 false
% 11.17/2.00  --dbg_dump_prop_clauses_file            -
% 11.17/2.00  --dbg_out_stat                          false
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  ------ Proving...
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  % SZS status Theorem for theBenchmark.p
% 11.17/2.00  
% 11.17/2.00  % SZS output start CNFRefutation for theBenchmark.p
% 11.17/2.00  
% 11.17/2.00  fof(f12,conjecture,(
% 11.17/2.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (k1_tsep_1(X0,X2,X3) = X0 => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) => r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))))))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f13,negated_conjecture,(
% 11.17/2.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (k1_tsep_1(X0,X2,X3) = X0 => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) => r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3)))))))))),
% 11.17/2.00    inference(negated_conjecture,[],[f12])).
% 11.17/2.00  
% 11.17/2.00  fof(f35,plain,(
% 11.17/2.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4))) & k1_tsep_1(X0,X2,X3) = X0) & (m1_pre_topc(X3,X0) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f13])).
% 11.17/2.00  
% 11.17/2.00  fof(f36,plain,(
% 11.17/2.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f35])).
% 11.17/2.00  
% 11.17/2.00  fof(f43,plain,(
% 11.17/2.00    ( ! [X2,X0,X3,X1] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) => (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),sK4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,sK4,X2),k2_tmap_1(X0,X1,sK4,X3))) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK4))) )),
% 11.17/2.00    introduced(choice_axiom,[])).
% 11.17/2.00  
% 11.17/2.00  fof(f42,plain,(
% 11.17/2.00    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,sK3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,sK3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,sK3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,sK3) = X0 & m1_pre_topc(sK3,X0) & ~v2_struct_0(sK3))) )),
% 11.17/2.00    introduced(choice_axiom,[])).
% 11.17/2.00  
% 11.17/2.00  fof(f41,plain,(
% 11.17/2.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,sK2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,sK2,X3,k2_tmap_1(X0,X1,X4,sK2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,sK2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(sK2,X0) & ~v2_struct_0(sK2))) )),
% 11.17/2.00    introduced(choice_axiom,[])).
% 11.17/2.00  
% 11.17/2.00  fof(f40,plain,(
% 11.17/2.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(sK1),X4,k10_tmap_1(X0,sK1,X2,X3,k2_tmap_1(X0,sK1,X4,X2),k2_tmap_1(X0,sK1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 11.17/2.00    introduced(choice_axiom,[])).
% 11.17/2.00  
% 11.17/2.00  fof(f39,plain,(
% 11.17/2.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k2_tmap_1(X0,X1,X4,X2),k2_tmap_1(X0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(X0,X2,X3) = X0 & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (~r1_funct_2(u1_struct_0(sK0),u1_struct_0(X1),u1_struct_0(k1_tsep_1(sK0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(sK0,X1,X2,X3,k2_tmap_1(sK0,X1,X4,X2),k2_tmap_1(sK0,X1,X4,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X4)) & k1_tsep_1(sK0,X2,X3) = sK0 & m1_pre_topc(X3,sK0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 11.17/2.00    introduced(choice_axiom,[])).
% 11.17/2.00  
% 11.17/2.00  fof(f44,plain,(
% 11.17/2.00    ((((~r1_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK4)) & k1_tsep_1(sK0,sK2,sK3) = sK0 & m1_pre_topc(sK3,sK0) & ~v2_struct_0(sK3)) & m1_pre_topc(sK2,sK0) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 11.17/2.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f36,f43,f42,f41,f40,f39])).
% 11.17/2.00  
% 11.17/2.00  fof(f73,plain,(
% 11.17/2.00    k1_tsep_1(sK0,sK2,sK3) = sK0),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f8,axiom,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) & v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) & v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f27,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) & v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) & v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f8])).
% 11.17/2.00  
% 11.17/2.00  fof(f28,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) & v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) & v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f27])).
% 11.17/2.00  
% 11.17/2.00  fof(f55,plain,(
% 11.17/2.00    ( ! [X4,X2,X0,X5,X3,X1] : (v1_funct_2(k10_tmap_1(X0,X1,X2,X3,X4,X5),u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f28])).
% 11.17/2.00  
% 11.17/2.00  fof(f63,plain,(
% 11.17/2.00    ~v2_struct_0(sK0)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f64,plain,(
% 11.17/2.00    v2_pre_topc(sK0)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f65,plain,(
% 11.17/2.00    l1_pre_topc(sK0)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f69,plain,(
% 11.17/2.00    ~v2_struct_0(sK2)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f70,plain,(
% 11.17/2.00    m1_pre_topc(sK2,sK0)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f71,plain,(
% 11.17/2.00    ~v2_struct_0(sK3)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f72,plain,(
% 11.17/2.00    m1_pre_topc(sK3,sK0)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f76,plain,(
% 11.17/2.00    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f7,axiom,(
% 11.17/2.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X3,X2) => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)))))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f25,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f7])).
% 11.17/2.00  
% 11.17/2.00  fof(f26,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f25])).
% 11.17/2.00  
% 11.17/2.00  fof(f53,plain,(
% 11.17/2.00    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f26])).
% 11.17/2.00  
% 11.17/2.00  fof(f66,plain,(
% 11.17/2.00    ~v2_struct_0(sK1)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f67,plain,(
% 11.17/2.00    v2_pre_topc(sK1)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f68,plain,(
% 11.17/2.00    l1_pre_topc(sK1)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f74,plain,(
% 11.17/2.00    v1_funct_1(sK4)),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f75,plain,(
% 11.17/2.00    v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  fof(f6,axiom,(
% 11.17/2.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_pre_topc(X3,X0) => k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f23,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f6])).
% 11.17/2.00  
% 11.17/2.00  fof(f24,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f23])).
% 11.17/2.00  
% 11.17/2.00  fof(f52,plain,(
% 11.17/2.00    ( ! [X2,X0,X3,X1] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f24])).
% 11.17/2.00  
% 11.17/2.00  fof(f9,axiom,(
% 11.17/2.00    ! [X0,X1,X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_pre_topc(k1_tsep_1(X0,X1,X2),X0) & v1_pre_topc(k1_tsep_1(X0,X1,X2)) & ~v2_struct_0(k1_tsep_1(X0,X1,X2))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f14,plain,(
% 11.17/2.00    ! [X0,X1,X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_pre_topc(k1_tsep_1(X0,X1,X2),X0) & ~v2_struct_0(k1_tsep_1(X0,X1,X2))))),
% 11.17/2.00    inference(pure_predicate_removal,[],[f9])).
% 11.17/2.00  
% 11.17/2.00  fof(f29,plain,(
% 11.17/2.00    ! [X0,X1,X2] : ((m1_pre_topc(k1_tsep_1(X0,X1,X2),X0) & ~v2_struct_0(k1_tsep_1(X0,X1,X2))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f14])).
% 11.17/2.00  
% 11.17/2.00  fof(f30,plain,(
% 11.17/2.00    ! [X0,X1,X2] : ((m1_pre_topc(k1_tsep_1(X0,X1,X2),X0) & ~v2_struct_0(k1_tsep_1(X0,X1,X2))) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f29])).
% 11.17/2.00  
% 11.17/2.00  fof(f58,plain,(
% 11.17/2.00    ( ! [X2,X0,X1] : (m1_pre_topc(k1_tsep_1(X0,X1,X2),X0) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f30])).
% 11.17/2.00  
% 11.17/2.00  fof(f11,axiom,(
% 11.17/2.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) & v1_funct_1(X4)) => r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4))))))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f33,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) | ~v1_funct_1(X4))) | (~m1_pre_topc(X3,X0) | v2_struct_0(X3))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f11])).
% 11.17/2.00  
% 11.17/2.00  fof(f34,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f33])).
% 11.17/2.00  
% 11.17/2.00  fof(f62,plain,(
% 11.17/2.00    ( ! [X4,X2,X0,X3,X1] : (r2_funct_2(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1),X4,k10_tmap_1(X0,X1,X2,X3,k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X2,X4),k3_tmap_1(X0,X1,k1_tsep_1(X0,X2,X3),X3,X4))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f34])).
% 11.17/2.00  
% 11.17/2.00  fof(f56,plain,(
% 11.17/2.00    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k10_tmap_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X2,X3)),u1_struct_0(X1)))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f28])).
% 11.17/2.00  
% 11.17/2.00  fof(f1,axiom,(
% 11.17/2.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (r2_funct_2(X0,X1,X2,X3) <=> X2 = X3))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f15,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 11.17/2.00    inference(ennf_transformation,[],[f1])).
% 11.17/2.00  
% 11.17/2.00  fof(f16,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 11.17/2.00    inference(flattening,[],[f15])).
% 11.17/2.00  
% 11.17/2.00  fof(f37,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3] : (((r2_funct_2(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 11.17/2.00    inference(nnf_transformation,[],[f16])).
% 11.17/2.00  
% 11.17/2.00  fof(f45,plain,(
% 11.17/2.00    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f37])).
% 11.17/2.00  
% 11.17/2.00  fof(f2,axiom,(
% 11.17/2.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f17,plain,(
% 11.17/2.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 11.17/2.00    inference(ennf_transformation,[],[f2])).
% 11.17/2.00  
% 11.17/2.00  fof(f47,plain,(
% 11.17/2.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f17])).
% 11.17/2.00  
% 11.17/2.00  fof(f3,axiom,(
% 11.17/2.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f18,plain,(
% 11.17/2.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 11.17/2.00    inference(ennf_transformation,[],[f3])).
% 11.17/2.00  
% 11.17/2.00  fof(f48,plain,(
% 11.17/2.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f18])).
% 11.17/2.00  
% 11.17/2.00  fof(f10,axiom,(
% 11.17/2.00    ! [X0,X1,X2,X3] : ((l1_struct_0(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2) & l1_struct_0(X1) & l1_struct_0(X0)) => (m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(k2_tmap_1(X0,X1,X2,X3))))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f31,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3] : ((m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(k2_tmap_1(X0,X1,X2,X3))) | (~l1_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f10])).
% 11.17/2.00  
% 11.17/2.00  fof(f32,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3] : ((m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(k2_tmap_1(X0,X1,X2,X3))) | ~l1_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f31])).
% 11.17/2.00  
% 11.17/2.00  fof(f60,plain,(
% 11.17/2.00    ( ! [X2,X0,X3,X1] : (v1_funct_2(k2_tmap_1(X0,X1,X2,X3),u1_struct_0(X3),u1_struct_0(X1)) | ~l1_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f32])).
% 11.17/2.00  
% 11.17/2.00  fof(f59,plain,(
% 11.17/2.00    ( ! [X2,X0,X3,X1] : (v1_funct_1(k2_tmap_1(X0,X1,X2,X3)) | ~l1_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f32])).
% 11.17/2.00  
% 11.17/2.00  fof(f54,plain,(
% 11.17/2.00    ( ! [X4,X2,X0,X5,X3,X1] : (v1_funct_1(k10_tmap_1(X0,X1,X2,X3,X4,X5)) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f28])).
% 11.17/2.00  
% 11.17/2.00  fof(f61,plain,(
% 11.17/2.00    ( ! [X2,X0,X3,X1] : (m1_subset_1(k2_tmap_1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~l1_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f32])).
% 11.17/2.00  
% 11.17/2.00  fof(f4,axiom,(
% 11.17/2.00    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f19,plain,(
% 11.17/2.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 11.17/2.00    inference(ennf_transformation,[],[f4])).
% 11.17/2.00  
% 11.17/2.00  fof(f20,plain,(
% 11.17/2.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 11.17/2.00    inference(flattening,[],[f19])).
% 11.17/2.00  
% 11.17/2.00  fof(f49,plain,(
% 11.17/2.00    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f20])).
% 11.17/2.00  
% 11.17/2.00  fof(f5,axiom,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_2(X5,X2,X3) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X4,X0,X1) & v1_funct_1(X4) & ~v1_xboole_0(X3) & ~v1_xboole_0(X1)) => (r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5))),
% 11.17/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.17/2.00  
% 11.17/2.00  fof(f21,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : ((r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1)))),
% 11.17/2.00    inference(ennf_transformation,[],[f5])).
% 11.17/2.00  
% 11.17/2.00  fof(f22,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : ((r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1))),
% 11.17/2.00    inference(flattening,[],[f21])).
% 11.17/2.00  
% 11.17/2.00  fof(f38,plain,(
% 11.17/2.00    ! [X0,X1,X2,X3,X4,X5] : (((r1_funct_2(X0,X1,X2,X3,X4,X5) | X4 != X5) & (X4 = X5 | ~r1_funct_2(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1))),
% 11.17/2.00    inference(nnf_transformation,[],[f22])).
% 11.17/2.00  
% 11.17/2.00  fof(f51,plain,(
% 11.17/2.00    ( ! [X4,X2,X0,X5,X3,X1] : (r1_funct_2(X0,X1,X2,X3,X4,X5) | X4 != X5 | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1)) )),
% 11.17/2.00    inference(cnf_transformation,[],[f38])).
% 11.17/2.00  
% 11.17/2.00  fof(f79,plain,(
% 11.17/2.00    ( ! [X2,X0,X5,X3,X1] : (r1_funct_2(X0,X1,X2,X3,X5,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X5,X0,X1) | ~v1_funct_1(X5) | v1_xboole_0(X3) | v1_xboole_0(X1)) )),
% 11.17/2.00    inference(equality_resolution,[],[f51])).
% 11.17/2.00  
% 11.17/2.00  fof(f77,plain,(
% 11.17/2.00    ~r1_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))),
% 11.17/2.00    inference(cnf_transformation,[],[f44])).
% 11.17/2.00  
% 11.17/2.00  cnf(c_22,negated_conjecture,
% 11.17/2.00      ( k1_tsep_1(sK0,sK2,sK3) = sK0 ),
% 11.17/2.00      inference(cnf_transformation,[],[f73]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_743,negated_conjecture,
% 11.17/2.00      ( k1_tsep_1(sK0,sK2,sK3) = sK0 ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_22]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_10,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ v1_funct_2(X3,u1_struct_0(X4),u1_struct_0(X2))
% 11.17/2.00      | v1_funct_2(k10_tmap_1(X5,X2,X1,X4,X0,X3),u1_struct_0(k1_tsep_1(X5,X1,X4)),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_pre_topc(X4,X5)
% 11.17/2.00      | ~ m1_pre_topc(X1,X5)
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
% 11.17/2.00      | ~ v2_pre_topc(X2)
% 11.17/2.00      | ~ v2_pre_topc(X5)
% 11.17/2.00      | v2_struct_0(X5)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | v2_struct_0(X4)
% 11.17/2.00      | v2_struct_0(X1)
% 11.17/2.00      | ~ l1_pre_topc(X5)
% 11.17/2.00      | ~ l1_pre_topc(X2)
% 11.17/2.00      | ~ v1_funct_1(X3)
% 11.17/2.00      | ~ v1_funct_1(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f55]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_754,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54))
% 11.17/2.00      | v1_funct_2(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X3_54)
% 11.17/2.00      | ~ m1_pre_topc(X0_54,X3_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ v2_pre_topc(X3_54)
% 11.17/2.00      | ~ v2_pre_topc(X1_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(X3_54)
% 11.17/2.00      | v2_struct_0(X2_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X3_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | ~ v1_funct_1(X1_52) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_10]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1366,plain,
% 11.17/2.00      ( v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54)) = iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X3_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,X3_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X3_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X2_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_754]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4934,plain,
% 11.17/2.00      ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),u1_struct_0(sK0),u1_struct_0(X0_54)) = iProver_top
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(sK3) = iProver_top
% 11.17/2.00      | v2_struct_0(sK2) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_743,c_1366]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_32,negated_conjecture,
% 11.17/2.00      ( ~ v2_struct_0(sK0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f63]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_33,plain,
% 11.17/2.00      ( v2_struct_0(sK0) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_31,negated_conjecture,
% 11.17/2.00      ( v2_pre_topc(sK0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f64]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_34,plain,
% 11.17/2.00      ( v2_pre_topc(sK0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_30,negated_conjecture,
% 11.17/2.00      ( l1_pre_topc(sK0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f65]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_35,plain,
% 11.17/2.00      ( l1_pre_topc(sK0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_26,negated_conjecture,
% 11.17/2.00      ( ~ v2_struct_0(sK2) ),
% 11.17/2.00      inference(cnf_transformation,[],[f69]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_39,plain,
% 11.17/2.00      ( v2_struct_0(sK2) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_25,negated_conjecture,
% 11.17/2.00      ( m1_pre_topc(sK2,sK0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f70]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_40,plain,
% 11.17/2.00      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_24,negated_conjecture,
% 11.17/2.00      ( ~ v2_struct_0(sK3) ),
% 11.17/2.00      inference(cnf_transformation,[],[f71]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_41,plain,
% 11.17/2.00      ( v2_struct_0(sK3) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_23,negated_conjecture,
% 11.17/2.00      ( m1_pre_topc(sK3,sK0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f72]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_42,plain,
% 11.17/2.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4939,plain,
% 11.17/2.00      ( l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),u1_struct_0(sK0),u1_struct_0(X0_54)) = iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_4934,c_33,c_34,c_35,c_39,c_40,c_41,c_42]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4940,plain,
% 11.17/2.00      ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),u1_struct_0(sK0),u1_struct_0(X0_54)) = iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_4939]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_742,negated_conjecture,
% 11.17/2.00      ( m1_pre_topc(sK3,sK0) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_23]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1377,plain,
% 11.17/2.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_742]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19,negated_conjecture,
% 11.17/2.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 11.17/2.00      inference(cnf_transformation,[],[f76]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_746,negated_conjecture,
% 11.17/2.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_19]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1374,plain,
% 11.17/2.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_746]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_8,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_pre_topc(X3,X4)
% 11.17/2.00      | ~ m1_pre_topc(X3,X1)
% 11.17/2.00      | ~ m1_pre_topc(X1,X4)
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ v2_pre_topc(X2)
% 11.17/2.00      | ~ v2_pre_topc(X4)
% 11.17/2.00      | v2_struct_0(X4)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | ~ l1_pre_topc(X4)
% 11.17/2.00      | ~ l1_pre_topc(X2)
% 11.17/2.00      | ~ v1_funct_1(X0)
% 11.17/2.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f53]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_756,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X0_54)
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X3_54)
% 11.17/2.00      | ~ m1_pre_topc(X0_54,X3_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ v2_pre_topc(X3_54)
% 11.17/2.00      | ~ v2_pre_topc(X1_54)
% 11.17/2.00      | v2_struct_0(X3_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X3_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_8]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1364,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52)
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X0_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X3_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,X3_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X3_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_756]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3316,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK0,X0_54,sK4)
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,X1_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1374,c_1364]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_29,negated_conjecture,
% 11.17/2.00      ( ~ v2_struct_0(sK1) ),
% 11.17/2.00      inference(cnf_transformation,[],[f66]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_36,plain,
% 11.17/2.00      ( v2_struct_0(sK1) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_28,negated_conjecture,
% 11.17/2.00      ( v2_pre_topc(sK1) ),
% 11.17/2.00      inference(cnf_transformation,[],[f67]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_37,plain,
% 11.17/2.00      ( v2_pre_topc(sK1) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_27,negated_conjecture,
% 11.17/2.00      ( l1_pre_topc(sK1) ),
% 11.17/2.00      inference(cnf_transformation,[],[f68]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_38,plain,
% 11.17/2.00      ( l1_pre_topc(sK1) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_21,negated_conjecture,
% 11.17/2.00      ( v1_funct_1(sK4) ),
% 11.17/2.00      inference(cnf_transformation,[],[f74]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_43,plain,
% 11.17/2.00      ( v1_funct_1(sK4) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_20,negated_conjecture,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 11.17/2.00      inference(cnf_transformation,[],[f75]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_44,plain,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3588,plain,
% 11.17/2.00      ( v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK0,X0_54,sK4)
% 11.17/2.00      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,X1_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_3316,c_36,c_37,c_38,c_43,c_44]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3589,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK0,X0_54,sK4)
% 11.17/2.00      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,X1_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_3588]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3601,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK3)) = k3_tmap_1(sK0,sK1,sK0,sK3,sK4)
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,sK0) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1377,c_3589]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_7,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_pre_topc(X3,X1)
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ v2_pre_topc(X2)
% 11.17/2.00      | ~ v2_pre_topc(X1)
% 11.17/2.00      | v2_struct_0(X1)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | ~ l1_pre_topc(X1)
% 11.17/2.00      | ~ l1_pre_topc(X2)
% 11.17/2.00      | ~ v1_funct_1(X0)
% 11.17/2.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
% 11.17/2.00      inference(cnf_transformation,[],[f52]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_757,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X0_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ v2_pre_topc(X0_54)
% 11.17/2.00      | ~ v2_pre_topc(X1_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X0_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k2_tmap_1(X0_54,X1_54,X0_52,X2_54) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_7]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1363,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_52,u1_struct_0(X2_54)) = k2_tmap_1(X0_54,X1_54,X0_52,X2_54)
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X0_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_757]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2937,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k2_tmap_1(sK0,sK1,sK4,X0_54)
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,sK0) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1374,c_1363]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3515,plain,
% 11.17/2.00      ( m1_pre_topc(X0_54,sK0) != iProver_top
% 11.17/2.00      | k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k2_tmap_1(sK0,sK1,sK4,X0_54) ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_2937,c_33,c_34,c_35,c_36,c_37,c_38,c_43,c_44]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3516,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(X0_54)) = k2_tmap_1(sK0,sK1,sK4,X0_54)
% 11.17/2.00      | m1_pre_topc(X0_54,sK0) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_3515]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3523,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK3)) = k2_tmap_1(sK0,sK1,sK4,sK3) ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1377,c_3516]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3655,plain,
% 11.17/2.00      ( k3_tmap_1(sK0,sK1,sK0,sK3,sK4) = k2_tmap_1(sK0,sK1,sK4,sK3)
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,sK0) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(light_normalisation,[status(thm)],[c_3601,c_3523]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_12,plain,
% 11.17/2.00      ( ~ m1_pre_topc(X0,X1)
% 11.17/2.00      | ~ m1_pre_topc(X2,X1)
% 11.17/2.00      | m1_pre_topc(k1_tsep_1(X1,X0,X2),X1)
% 11.17/2.00      | v2_struct_0(X1)
% 11.17/2.00      | v2_struct_0(X0)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | ~ l1_pre_topc(X1) ),
% 11.17/2.00      inference(cnf_transformation,[],[f58]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_752,plain,
% 11.17/2.00      ( ~ m1_pre_topc(X0_54,X1_54)
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X1_54)
% 11.17/2.00      | m1_pre_topc(k1_tsep_1(X1_54,X0_54,X2_54),X1_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(X2_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_12]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1368,plain,
% 11.17/2.00      ( m1_pre_topc(X0_54,X1_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X1_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(k1_tsep_1(X1_54,X0_54,X2_54),X1_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X2_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_752]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2496,plain,
% 11.17/2.00      ( m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,sK0) = iProver_top
% 11.17/2.00      | v2_struct_0(sK3) = iProver_top
% 11.17/2.00      | v2_struct_0(sK2) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_743,c_1368]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_18945,plain,
% 11.17/2.00      ( k3_tmap_1(sK0,sK1,sK0,sK3,sK4) = k2_tmap_1(sK0,sK1,sK4,sK3) ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_3655,c_33,c_34,c_35,c_39,c_40,c_41,c_42,c_2496]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_740,negated_conjecture,
% 11.17/2.00      ( m1_pre_topc(sK2,sK0) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_25]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1379,plain,
% 11.17/2.00      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_740]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3602,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k3_tmap_1(sK0,sK1,sK0,sK2,sK4)
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,sK0) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1379,c_3589]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3524,plain,
% 11.17/2.00      ( k2_partfun1(u1_struct_0(sK0),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k2_tmap_1(sK0,sK1,sK4,sK2) ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1379,c_3516]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3642,plain,
% 11.17/2.00      ( k3_tmap_1(sK0,sK1,sK0,sK2,sK4) = k2_tmap_1(sK0,sK1,sK4,sK2)
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK0,sK0) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(light_normalisation,[status(thm)],[c_3602,c_3524]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_17954,plain,
% 11.17/2.00      ( k3_tmap_1(sK0,sK1,sK0,sK2,sK4) = k2_tmap_1(sK0,sK1,sK4,sK2) ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_3642,c_33,c_34,c_35,c_39,c_40,c_41,c_42,c_2496]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_17,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(k1_tsep_1(X0,X1,X2)),u1_struct_0(X3),X4,k10_tmap_1(X0,X3,X1,X2,k3_tmap_1(X0,X3,k1_tsep_1(X0,X1,X2),X1,X4),k3_tmap_1(X0,X3,k1_tsep_1(X0,X1,X2),X2,X4)))
% 11.17/2.00      | ~ v1_funct_2(X4,u1_struct_0(k1_tsep_1(X0,X1,X2)),u1_struct_0(X3))
% 11.17/2.00      | ~ m1_pre_topc(X2,X0)
% 11.17/2.00      | ~ m1_pre_topc(X1,X0)
% 11.17/2.00      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0,X1,X2)),u1_struct_0(X3))))
% 11.17/2.00      | ~ v2_pre_topc(X3)
% 11.17/2.00      | ~ v2_pre_topc(X0)
% 11.17/2.00      | v2_struct_0(X0)
% 11.17/2.00      | v2_struct_0(X3)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | v2_struct_0(X1)
% 11.17/2.00      | ~ l1_pre_topc(X0)
% 11.17/2.00      | ~ l1_pre_topc(X3)
% 11.17/2.00      | ~ v1_funct_1(X4) ),
% 11.17/2.00      inference(cnf_transformation,[],[f62]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_747,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54),X0_52,k10_tmap_1(X0_54,X3_54,X1_54,X2_54,k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X1_54,X0_52),k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X2_54,X0_52)))
% 11.17/2.00      | ~ v1_funct_2(X0_52,u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54))
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X0_54)
% 11.17/2.00      | ~ m1_pre_topc(X1_54,X0_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54))))
% 11.17/2.00      | ~ v2_pre_topc(X3_54)
% 11.17/2.00      | ~ v2_pre_topc(X0_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(X3_54)
% 11.17/2.00      | v2_struct_0(X2_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X0_54)
% 11.17/2.00      | ~ l1_pre_topc(X3_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_17]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1373,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54),X0_52,k10_tmap_1(X0_54,X3_54,X1_54,X2_54,k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X1_54,X0_52),k3_tmap_1(X0_54,X3_54,k1_tsep_1(X0_54,X1_54,X2_54),X2_54,X0_52))) = iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X0_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X1_54,X0_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X0_54,X1_54,X2_54)),u1_struct_0(X3_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X3_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X2_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_747]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4482,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(sK3) = iProver_top
% 11.17/2.00      | v2_struct_0(sK2) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_743,c_1373]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4485,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(sK3) = iProver_top
% 11.17/2.00      | v2_struct_0(sK2) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(light_normalisation,[status(thm)],[c_4482,c_743]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4556,plain,
% 11.17/2.00      ( l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_4485,c_33,c_34,c_35,c_39,c_40,c_41,c_42]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4557,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(X0_54),X0_52,k10_tmap_1(sK0,X0_54,sK2,sK3,k3_tmap_1(sK0,X0_54,sK0,sK2,X0_52),k3_tmap_1(sK0,X0_54,sK0,sK3,X0_52))) = iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_4556]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_17957,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k3_tmap_1(sK0,sK1,sK0,sK3,sK4))) = iProver_top
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_17954,c_4557]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_45,plain,
% 11.17/2.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_18072,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k3_tmap_1(sK0,sK1,sK0,sK3,sK4))) = iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_17957,c_36,c_37,c_38,c_43,c_44,c_45]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_18948,plain,
% 11.17/2.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top ),
% 11.17/2.00      inference(demodulation,[status(thm)],[c_18945,c_18072]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_9,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ v1_funct_2(X3,u1_struct_0(X4),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_pre_topc(X4,X5)
% 11.17/2.00      | ~ m1_pre_topc(X1,X5)
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
% 11.17/2.00      | m1_subset_1(k10_tmap_1(X5,X2,X1,X4,X0,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X5,X1,X4)),u1_struct_0(X2))))
% 11.17/2.00      | ~ v2_pre_topc(X2)
% 11.17/2.00      | ~ v2_pre_topc(X5)
% 11.17/2.00      | v2_struct_0(X5)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | v2_struct_0(X4)
% 11.17/2.00      | v2_struct_0(X1)
% 11.17/2.00      | ~ l1_pre_topc(X5)
% 11.17/2.00      | ~ l1_pre_topc(X2)
% 11.17/2.00      | ~ v1_funct_1(X3)
% 11.17/2.00      | ~ v1_funct_1(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f56]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_755,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X3_54)
% 11.17/2.00      | ~ m1_pre_topc(X0_54,X3_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
% 11.17/2.00      | m1_subset_1(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ v2_pre_topc(X3_54)
% 11.17/2.00      | ~ v2_pre_topc(X1_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(X3_54)
% 11.17/2.00      | v2_struct_0(X2_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X3_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | ~ v1_funct_1(X1_52) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_9]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1365,plain,
% 11.17/2.00      ( v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(X2_54,X3_54) != iProver_top
% 11.17/2.00      | m1_pre_topc(X0_54,X3_54) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(X3_54,X0_54,X2_54)),u1_struct_0(X1_54)))) = iProver_top
% 11.17/2.00      | v2_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X3_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X2_54) = iProver_top
% 11.17/2.00      | v2_struct_0(X1_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X3_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_755]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4069,plain,
% 11.17/2.00      ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) = iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v2_struct_0(sK3) = iProver_top
% 11.17/2.00      | v2_struct_0(sK2) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_743,c_1365]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4570,plain,
% 11.17/2.00      ( l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) = iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_4069,c_33,c_34,c_35,c_39,c_40,c_41,c_42]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4571,plain,
% 11.17/2.00      ( v1_funct_2(X0_52,u1_struct_0(sK3),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK2),u1_struct_0(X0_54)) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X0_54)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,X0_54,sK2,sK3,X1_52,X0_52),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X0_54)))) = iProver_top
% 11.17/2.00      | v2_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_4570]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1,plain,
% 11.17/2.00      ( ~ r2_funct_2(X0,X1,X2,X3)
% 11.17/2.00      | ~ v1_funct_2(X3,X0,X1)
% 11.17/2.00      | ~ v1_funct_2(X2,X0,X1)
% 11.17/2.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 11.17/2.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 11.17/2.00      | ~ v1_funct_1(X3)
% 11.17/2.00      | ~ v1_funct_1(X2)
% 11.17/2.00      | X2 = X3 ),
% 11.17/2.00      inference(cnf_transformation,[],[f45]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_760,plain,
% 11.17/2.00      ( ~ r2_funct_2(X0_53,X1_53,X0_52,X1_52)
% 11.17/2.00      | ~ v1_funct_2(X1_52,X0_53,X1_53)
% 11.17/2.00      | ~ v1_funct_2(X0_52,X0_53,X1_53)
% 11.17/2.00      | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)))
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | ~ v1_funct_1(X1_52)
% 11.17/2.00      | X0_52 = X1_52 ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_1]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1360,plain,
% 11.17/2.00      ( X0_52 = X1_52
% 11.17/2.00      | r2_funct_2(X0_53,X1_53,X0_52,X1_52) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,X0_53,X1_53) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,X0_53,X1_53) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_760]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2396,plain,
% 11.17/2.00      ( sK4 = X0_52
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,X0_52) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1374,c_1360]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2883,plain,
% 11.17/2.00      ( v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | sK4 = X0_52
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,X0_52) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_2396,c_43,c_44]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2884,plain,
% 11.17/2.00      ( sK4 = X0_52
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,X0_52) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_2883]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4592,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52) = sK4
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_4571,c_2884]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_5018,plain,
% 11.17/2.00      ( m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52) = sK4
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_4592,c_36,c_37,c_38]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_5019,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52) = sK4
% 11.17/2.00      | r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top
% 11.17/2.00      | v1_funct_2(X1_52,u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(X0_52,u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(X1_52) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,X0_52,X1_52)) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_5018]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19769,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_18948,c_5019]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2,plain,
% 11.17/2.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f47]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_90,plain,
% 11.17/2.00      ( l1_pre_topc(X0) != iProver_top | l1_struct_0(X0) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_92,plain,
% 11.17/2.00      ( l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) = iProver_top ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_90]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_759,plain,
% 11.17/2.00      ( ~ l1_pre_topc(X0_54) | l1_struct_0(X0_54) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_2]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2119,plain,
% 11.17/2.00      ( ~ l1_pre_topc(sK1) | l1_struct_0(sK1) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_759]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2120,plain,
% 11.17/2.00      ( l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_2119]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3,plain,
% 11.17/2.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f48]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_758,plain,
% 11.17/2.00      ( ~ m1_pre_topc(X0_54,X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54)
% 11.17/2.00      | l1_pre_topc(X0_54) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_3]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1362,plain,
% 11.17/2.00      ( m1_pre_topc(X0_54,X1_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X1_54) != iProver_top
% 11.17/2.00      | l1_pre_topc(X0_54) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_758]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2476,plain,
% 11.17/2.00      ( l1_pre_topc(sK3) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1377,c_1362]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2867,plain,
% 11.17/2.00      ( l1_pre_topc(sK3) = iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_2476,c_35]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1361,plain,
% 11.17/2.00      ( l1_pre_topc(X0_54) != iProver_top
% 11.17/2.00      | l1_struct_0(X0_54) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_759]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2872,plain,
% 11.17/2.00      ( l1_struct_0(sK3) = iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_2867,c_1361]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2477,plain,
% 11.17/2.00      ( l1_pre_topc(sK2) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_1379,c_1362]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2875,plain,
% 11.17/2.00      ( l1_pre_topc(sK2) = iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_2477,c_35]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2880,plain,
% 11.17/2.00      ( l1_struct_0(sK2) = iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_2875,c_1361]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_15,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | v1_funct_2(k2_tmap_1(X1,X2,X0,X3),u1_struct_0(X3),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ l1_struct_0(X1)
% 11.17/2.00      | ~ l1_struct_0(X3)
% 11.17/2.00      | ~ l1_struct_0(X2)
% 11.17/2.00      | ~ v1_funct_1(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f60]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_749,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | v1_funct_2(k2_tmap_1(X0_54,X1_54,X0_52,X2_54),u1_struct_0(X2_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(X1_54)
% 11.17/2.00      | ~ l1_struct_0(X2_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_15]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1854,plain,
% 11.17/2.00      ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,X0_54),u1_struct_0(X0_54),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_749]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3122,plain,
% 11.17/2.00      ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(sK3)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1854]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3132,plain,
% 11.17/2.00      ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) = iProver_top
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | l1_struct_0(sK3) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_3122]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3170,plain,
% 11.17/2.00      ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(sK2)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1854]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3180,plain,
% 11.17/2.00      ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) = iProver_top
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | l1_struct_0(sK2) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_3170]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_16,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ l1_struct_0(X1)
% 11.17/2.00      | ~ l1_struct_0(X3)
% 11.17/2.00      | ~ l1_struct_0(X2)
% 11.17/2.00      | ~ v1_funct_1(X0)
% 11.17/2.00      | v1_funct_1(k2_tmap_1(X1,X2,X0,X3)) ),
% 11.17/2.00      inference(cnf_transformation,[],[f59]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_748,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(X1_54)
% 11.17/2.00      | ~ l1_struct_0(X2_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | v1_funct_1(k2_tmap_1(X0_54,X1_54,X0_52,X2_54)) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_16]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1849,plain,
% 11.17/2.00      ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,X0_54))
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_748]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_6146,plain,
% 11.17/2.00      ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(sK3)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3))
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1849]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_6147,plain,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | l1_struct_0(sK3) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) = iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_6146]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_6241,plain,
% 11.17/2.00      ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(sK2)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2))
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1849]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_6242,plain,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | l1_struct_0(sK2) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) = iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_6241]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_11,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ v1_funct_2(X3,u1_struct_0(X4),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_pre_topc(X4,X5)
% 11.17/2.00      | ~ m1_pre_topc(X1,X5)
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
% 11.17/2.00      | ~ v2_pre_topc(X2)
% 11.17/2.00      | ~ v2_pre_topc(X5)
% 11.17/2.00      | v2_struct_0(X5)
% 11.17/2.00      | v2_struct_0(X2)
% 11.17/2.00      | v2_struct_0(X4)
% 11.17/2.00      | v2_struct_0(X1)
% 11.17/2.00      | ~ l1_pre_topc(X5)
% 11.17/2.00      | ~ l1_pre_topc(X2)
% 11.17/2.00      | ~ v1_funct_1(X3)
% 11.17/2.00      | ~ v1_funct_1(X0)
% 11.17/2.00      | v1_funct_1(k10_tmap_1(X5,X2,X1,X4,X0,X3)) ),
% 11.17/2.00      inference(cnf_transformation,[],[f54]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_753,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ v1_funct_2(X1_52,u1_struct_0(X2_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_pre_topc(X2_54,X3_54)
% 11.17/2.00      | ~ m1_pre_topc(X0_54,X3_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ m1_subset_1(X1_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ v2_pre_topc(X3_54)
% 11.17/2.00      | ~ v2_pre_topc(X1_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(X3_54)
% 11.17/2.00      | v2_struct_0(X2_54)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | ~ l1_pre_topc(X3_54)
% 11.17/2.00      | ~ l1_pre_topc(X1_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | ~ v1_funct_1(X1_52)
% 11.17/2.00      | v1_funct_1(k10_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_52,X1_52)) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_11]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_3489,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(k2_tmap_1(sK0,sK1,sK4,X1_54),u1_struct_0(X1_54),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_pre_topc(X0_54,X2_54)
% 11.17/2.00      | ~ m1_pre_topc(X1_54,X2_54)
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(k2_tmap_1(sK0,sK1,sK4,X1_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1_54),u1_struct_0(sK1))))
% 11.17/2.00      | ~ v2_pre_topc(X2_54)
% 11.17/2.00      | ~ v2_pre_topc(sK1)
% 11.17/2.00      | v2_struct_0(X1_54)
% 11.17/2.00      | v2_struct_0(X2_54)
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | v2_struct_0(sK1)
% 11.17/2.00      | ~ l1_pre_topc(X2_54)
% 11.17/2.00      | ~ l1_pre_topc(sK1)
% 11.17/2.00      | ~ v1_funct_1(X0_52)
% 11.17/2.00      | v1_funct_1(k10_tmap_1(X2_54,sK1,X1_54,X0_54,k2_tmap_1(sK0,sK1,sK4,X1_54),X0_52))
% 11.17/2.00      | ~ v1_funct_1(k2_tmap_1(sK0,sK1,sK4,X1_54)) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_753]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_7713,plain,
% 11.17/2.00      ( ~ v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_pre_topc(sK3,sK0)
% 11.17/2.00      | ~ m1_pre_topc(sK2,sK0)
% 11.17/2.00      | ~ m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
% 11.17/2.00      | ~ v2_pre_topc(sK1)
% 11.17/2.00      | ~ v2_pre_topc(sK0)
% 11.17/2.00      | v2_struct_0(sK3)
% 11.17/2.00      | v2_struct_0(sK2)
% 11.17/2.00      | v2_struct_0(sK1)
% 11.17/2.00      | v2_struct_0(sK0)
% 11.17/2.00      | ~ l1_pre_topc(sK1)
% 11.17/2.00      | ~ l1_pre_topc(sK0)
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
% 11.17/2.00      | ~ v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3))
% 11.17/2.00      | ~ v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_3489]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_7714,plain,
% 11.17/2.00      ( v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK3,sK0) != iProver_top
% 11.17/2.00      | m1_pre_topc(sK2,sK0) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v2_struct_0(sK3) = iProver_top
% 11.17/2.00      | v2_struct_0(sK2) = iProver_top
% 11.17/2.00      | v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | v2_struct_0(sK0) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | l1_pre_topc(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_7713]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_14,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 11.17/2.00      | m1_subset_1(k2_tmap_1(X1,X2,X0,X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
% 11.17/2.00      | ~ l1_struct_0(X1)
% 11.17/2.00      | ~ l1_struct_0(X3)
% 11.17/2.00      | ~ l1_struct_0(X2)
% 11.17/2.00      | ~ v1_funct_1(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f61]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_750,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0_52,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 11.17/2.00      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 11.17/2.00      | m1_subset_1(k2_tmap_1(X0_54,X1_54,X0_52,X2_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2_54),u1_struct_0(X1_54))))
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(X1_54)
% 11.17/2.00      | ~ l1_struct_0(X2_54)
% 11.17/2.00      | ~ v1_funct_1(X0_52) ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_14]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1859,plain,
% 11.17/2.00      ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,X0_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_750]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_10743,plain,
% 11.17/2.00      ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(sK3)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1859]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_10744,plain,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) = iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | l1_struct_0(sK3) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_10743]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_10746,plain,
% 11.17/2.00      ( ~ v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ l1_struct_0(sK2)
% 11.17/2.00      | ~ l1_struct_0(sK1)
% 11.17/2.00      | ~ l1_struct_0(sK0)
% 11.17/2.00      | ~ v1_funct_1(sK4) ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1859]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_10747,plain,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) = iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | l1_struct_0(sK2) != iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | l1_struct_0(sK0) != iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_10746]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19857,plain,
% 11.17/2.00      ( v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4 ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_19769,c_33,c_34,c_35,c_36,c_37,c_38,c_39,c_40,c_41,
% 11.17/2.00                 c_42,c_43,c_44,c_45,c_92,c_2120,c_2872,c_2880,c_3132,
% 11.17/2.00                 c_3180,c_6147,c_6242,c_7714,c_10744,c_10747]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19858,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_19857]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19863,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4
% 11.17/2.00      | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK3),u1_struct_0(sK3),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k2_tmap_1(sK0,sK1,sK4,sK2),u1_struct_0(sK2),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k2_tmap_1(sK0,sK1,sK4,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v2_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | l1_pre_topc(sK1) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK3)) != iProver_top
% 11.17/2.00      | v1_funct_1(k2_tmap_1(sK0,sK1,sK4,sK2)) != iProver_top ),
% 11.17/2.00      inference(superposition,[status(thm)],[c_4940,c_19858]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19866,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) = sK4 ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_19863,c_35,c_36,c_37,c_38,c_43,c_44,c_45,c_92,c_2120,
% 11.17/2.00                 c_2872,c_2880,c_3132,c_3180,c_6147,c_6242,c_10744,
% 11.17/2.00                 c_10747]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_4,plain,
% 11.17/2.00      ( v2_struct_0(X0)
% 11.17/2.00      | ~ v1_xboole_0(u1_struct_0(X0))
% 11.17/2.00      | ~ l1_struct_0(X0) ),
% 11.17/2.00      inference(cnf_transformation,[],[f49]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_5,plain,
% 11.17/2.00      ( r1_funct_2(X0,X1,X2,X3,X4,X4)
% 11.17/2.00      | ~ v1_funct_2(X4,X2,X3)
% 11.17/2.00      | ~ v1_funct_2(X4,X0,X1)
% 11.17/2.00      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 11.17/2.00      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 11.17/2.00      | v1_xboole_0(X1)
% 11.17/2.00      | v1_xboole_0(X3)
% 11.17/2.00      | ~ v1_funct_1(X4) ),
% 11.17/2.00      inference(cnf_transformation,[],[f79]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_18,negated_conjecture,
% 11.17/2.00      ( ~ r1_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1),sK4,k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) ),
% 11.17/2.00      inference(cnf_transformation,[],[f77]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_347,plain,
% 11.17/2.00      ( ~ v1_funct_2(X0,X1,X2)
% 11.17/2.00      | ~ v1_funct_2(X0,X3,X4)
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.17/2.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 11.17/2.00      | v1_xboole_0(X2)
% 11.17/2.00      | v1_xboole_0(X4)
% 11.17/2.00      | ~ v1_funct_1(X0)
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != X0
% 11.17/2.00      | u1_struct_0(k1_tsep_1(sK0,sK2,sK3)) != X3
% 11.17/2.00      | u1_struct_0(sK1) != X4
% 11.17/2.00      | u1_struct_0(sK1) != X2
% 11.17/2.00      | u1_struct_0(sK0) != X1
% 11.17/2.00      | sK4 != X0 ),
% 11.17/2.00      inference(resolution_lifted,[status(thm)],[c_5,c_18]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_348,plain,
% 11.17/2.00      ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | v1_xboole_0(u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
% 11.17/2.00      | sK4 != k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) ),
% 11.17/2.00      inference(unflattening,[status(thm)],[c_347]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_380,plain,
% 11.17/2.00      ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | v2_struct_0(X0)
% 11.17/2.00      | ~ l1_struct_0(X0)
% 11.17/2.00      | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
% 11.17/2.00      | u1_struct_0(X0) != u1_struct_0(sK1) ),
% 11.17/2.00      inference(resolution_lifted,[status(thm)],[c_4,c_348]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_732,plain,
% 11.17/2.00      ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | v2_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
% 11.17/2.00      | u1_struct_0(X0_54) != u1_struct_0(sK1)
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4 ),
% 11.17/2.00      inference(subtyping,[status(esa)],[c_380]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_763,plain,
% 11.17/2.00      ( ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))
% 11.17/2.00      | ~ v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1))))
% 11.17/2.00      | ~ m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 11.17/2.00      | ~ v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
% 11.17/2.00      | sP0_iProver_split
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4 ),
% 11.17/2.00      inference(splitting,
% 11.17/2.00                [splitting(split),new_symbols(definition,[])],
% 11.17/2.00                [c_732]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1387,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(k1_tsep_1(sK0,sK2,sK3)),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) != iProver_top
% 11.17/2.00      | sP0_iProver_split = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_763]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1707,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) != iProver_top
% 11.17/2.00      | sP0_iProver_split = iProver_top ),
% 11.17/2.00      inference(light_normalisation,[status(thm)],[c_1387,c_743]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_778,plain,
% 11.17/2.00      ( ~ v1_funct_1(X0_52) | v1_funct_1(X1_52) | X1_52 != X0_52 ),
% 11.17/2.00      theory(equality) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1793,plain,
% 11.17/2.00      ( ~ v1_funct_1(X0_52)
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)))
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != X0_52 ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_778]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1794,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != X0_52
% 11.17/2.00      | v1_funct_1(X0_52) != iProver_top
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_1793]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1796,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
% 11.17/2.00      | v1_funct_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3))) = iProver_top
% 11.17/2.00      | v1_funct_1(sK4) != iProver_top ),
% 11.17/2.00      inference(instantiation,[status(thm)],[c_1794]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2198,plain,
% 11.17/2.00      ( m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
% 11.17/2.00      | sP0_iProver_split = iProver_top ),
% 11.17/2.00      inference(global_propositional_subsumption,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_1707,c_43,c_1796]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2199,plain,
% 11.17/2.00      ( k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)) != sK4
% 11.17/2.00      | v1_funct_2(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(k10_tmap_1(sK0,sK1,sK2,sK3,k2_tmap_1(sK0,sK1,sK4,sK2),k2_tmap_1(sK0,sK1,sK4,sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | sP0_iProver_split = iProver_top ),
% 11.17/2.00      inference(renaming,[status(thm)],[c_2198]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19870,plain,
% 11.17/2.00      ( sK4 != sK4
% 11.17/2.00      | v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | sP0_iProver_split = iProver_top ),
% 11.17/2.00      inference(demodulation,[status(thm)],[c_19866,c_2199]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_19871,plain,
% 11.17/2.00      ( v1_funct_2(sK4,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 11.17/2.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 11.17/2.00      | sP0_iProver_split = iProver_top ),
% 11.17/2.00      inference(equality_resolution_simp,[status(thm)],[c_19870]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_762,plain,
% 11.17/2.00      ( v2_struct_0(X0_54)
% 11.17/2.00      | ~ l1_struct_0(X0_54)
% 11.17/2.00      | u1_struct_0(X0_54) != u1_struct_0(sK1)
% 11.17/2.00      | ~ sP0_iProver_split ),
% 11.17/2.00      inference(splitting,
% 11.17/2.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 11.17/2.00                [c_732]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_1388,plain,
% 11.17/2.00      ( u1_struct_0(X0_54) != u1_struct_0(sK1)
% 11.17/2.00      | v2_struct_0(X0_54) = iProver_top
% 11.17/2.00      | l1_struct_0(X0_54) != iProver_top
% 11.17/2.00      | sP0_iProver_split != iProver_top ),
% 11.17/2.00      inference(predicate_to_equality,[status(thm)],[c_762]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(c_2287,plain,
% 11.17/2.00      ( v2_struct_0(sK1) = iProver_top
% 11.17/2.00      | l1_struct_0(sK1) != iProver_top
% 11.17/2.00      | sP0_iProver_split != iProver_top ),
% 11.17/2.00      inference(equality_resolution,[status(thm)],[c_1388]) ).
% 11.17/2.00  
% 11.17/2.00  cnf(contradiction,plain,
% 11.17/2.00      ( $false ),
% 11.17/2.00      inference(minisat,
% 11.17/2.00                [status(thm)],
% 11.17/2.00                [c_19871,c_2287,c_2120,c_45,c_44,c_38,c_36]) ).
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  % SZS output end CNFRefutation for theBenchmark.p
% 11.17/2.00  
% 11.17/2.00  ------                               Statistics
% 11.17/2.00  
% 11.17/2.00  ------ General
% 11.17/2.00  
% 11.17/2.00  abstr_ref_over_cycles:                  0
% 11.17/2.00  abstr_ref_under_cycles:                 0
% 11.17/2.00  gc_basic_clause_elim:                   0
% 11.17/2.00  forced_gc_time:                         0
% 11.17/2.00  parsing_time:                           0.013
% 11.17/2.00  unif_index_cands_time:                  0.
% 11.17/2.00  unif_index_add_time:                    0.
% 11.17/2.00  orderings_time:                         0.
% 11.17/2.00  out_proof_time:                         0.023
% 11.17/2.00  total_time:                             1.033
% 11.17/2.00  num_of_symbols:                         58
% 11.17/2.00  num_of_terms:                           29686
% 11.17/2.00  
% 11.17/2.00  ------ Preprocessing
% 11.17/2.00  
% 11.17/2.00  num_of_splits:                          1
% 11.17/2.00  num_of_split_atoms:                     1
% 11.17/2.00  num_of_reused_defs:                     0
% 11.17/2.00  num_eq_ax_congr_red:                    21
% 11.17/2.00  num_of_sem_filtered_clauses:            1
% 11.17/2.00  num_of_subtypes:                        5
% 11.17/2.00  monotx_restored_types:                  0
% 11.17/2.00  sat_num_of_epr_types:                   0
% 11.17/2.00  sat_num_of_non_cyclic_types:            0
% 11.17/2.00  sat_guarded_non_collapsed_types:        1
% 11.17/2.00  num_pure_diseq_elim:                    0
% 11.17/2.00  simp_replaced_by:                       0
% 11.17/2.00  res_preprocessed:                       174
% 11.17/2.00  prep_upred:                             0
% 11.17/2.00  prep_unflattend:                        27
% 11.17/2.00  smt_new_axioms:                         0
% 11.17/2.00  pred_elim_cands:                        9
% 11.17/2.00  pred_elim:                              2
% 11.17/2.00  pred_elim_cl:                           3
% 11.17/2.00  pred_elim_cycles:                       4
% 11.17/2.00  merged_defs:                            0
% 11.17/2.00  merged_defs_ncl:                        0
% 11.17/2.00  bin_hyper_res:                          0
% 11.17/2.00  prep_cycles:                            4
% 11.17/2.00  pred_elim_time:                         0.011
% 11.17/2.00  splitting_time:                         0.
% 11.17/2.00  sem_filter_time:                        0.
% 11.17/2.00  monotx_time:                            0.
% 11.17/2.00  subtype_inf_time:                       0.001
% 11.17/2.00  
% 11.17/2.00  ------ Problem properties
% 11.17/2.00  
% 11.17/2.00  clauses:                                31
% 11.17/2.00  conjectures:                            14
% 11.17/2.00  epr:                                    13
% 11.17/2.00  horn:                                   23
% 11.17/2.00  ground:                                 15
% 11.17/2.00  unary:                                  14
% 11.17/2.00  binary:                                 1
% 11.17/2.00  lits:                                   166
% 11.17/2.00  lits_eq:                                6
% 11.17/2.00  fd_pure:                                0
% 11.17/2.00  fd_pseudo:                              0
% 11.17/2.00  fd_cond:                                0
% 11.17/2.00  fd_pseudo_cond:                         1
% 11.17/2.00  ac_symbols:                             0
% 11.17/2.00  
% 11.17/2.00  ------ Propositional Solver
% 11.17/2.00  
% 11.17/2.00  prop_solver_calls:                      26
% 11.17/2.00  prop_fast_solver_calls:                 3612
% 11.17/2.00  smt_solver_calls:                       0
% 11.17/2.00  smt_fast_solver_calls:                  0
% 11.17/2.00  prop_num_of_clauses:                    7470
% 11.17/2.00  prop_preprocess_simplified:             14004
% 11.17/2.00  prop_fo_subsumed:                       310
% 11.17/2.00  prop_solver_time:                       0.
% 11.17/2.00  smt_solver_time:                        0.
% 11.17/2.00  smt_fast_solver_time:                   0.
% 11.17/2.00  prop_fast_solver_time:                  0.
% 11.17/2.00  prop_unsat_core_time:                   0.002
% 11.17/2.00  
% 11.17/2.00  ------ QBF
% 11.17/2.00  
% 11.17/2.00  qbf_q_res:                              0
% 11.17/2.00  qbf_num_tautologies:                    0
% 11.17/2.00  qbf_prep_cycles:                        0
% 11.17/2.00  
% 11.17/2.00  ------ BMC1
% 11.17/2.00  
% 11.17/2.00  bmc1_current_bound:                     -1
% 11.17/2.00  bmc1_last_solved_bound:                 -1
% 11.17/2.00  bmc1_unsat_core_size:                   -1
% 11.17/2.00  bmc1_unsat_core_parents_size:           -1
% 11.17/2.00  bmc1_merge_next_fun:                    0
% 11.17/2.00  bmc1_unsat_core_clauses_time:           0.
% 11.17/2.00  
% 11.17/2.00  ------ Instantiation
% 11.17/2.00  
% 11.17/2.00  inst_num_of_clauses:                    1708
% 11.17/2.00  inst_num_in_passive:                    43
% 11.17/2.00  inst_num_in_active:                     920
% 11.17/2.00  inst_num_in_unprocessed:                745
% 11.17/2.00  inst_num_of_loops:                      1050
% 11.17/2.00  inst_num_of_learning_restarts:          0
% 11.17/2.00  inst_num_moves_active_passive:          127
% 11.17/2.00  inst_lit_activity:                      0
% 11.17/2.00  inst_lit_activity_moves:                0
% 11.17/2.00  inst_num_tautologies:                   0
% 11.17/2.00  inst_num_prop_implied:                  0
% 11.17/2.00  inst_num_existing_simplified:           0
% 11.17/2.00  inst_num_eq_res_simplified:             0
% 11.17/2.00  inst_num_child_elim:                    0
% 11.17/2.00  inst_num_of_dismatching_blockings:      1153
% 11.17/2.00  inst_num_of_non_proper_insts:           1287
% 11.17/2.00  inst_num_of_duplicates:                 0
% 11.17/2.00  inst_inst_num_from_inst_to_res:         0
% 11.17/2.00  inst_dismatching_checking_time:         0.
% 11.17/2.00  
% 11.17/2.00  ------ Resolution
% 11.17/2.00  
% 11.17/2.00  res_num_of_clauses:                     0
% 11.17/2.00  res_num_in_passive:                     0
% 11.17/2.00  res_num_in_active:                      0
% 11.17/2.00  res_num_of_loops:                       178
% 11.17/2.00  res_forward_subset_subsumed:            12
% 11.17/2.00  res_backward_subset_subsumed:           0
% 11.17/2.00  res_forward_subsumed:                   0
% 11.17/2.00  res_backward_subsumed:                  0
% 11.17/2.00  res_forward_subsumption_resolution:     0
% 11.17/2.00  res_backward_subsumption_resolution:    0
% 11.17/2.00  res_clause_to_clause_subsumption:       2341
% 11.17/2.00  res_orphan_elimination:                 0
% 11.17/2.00  res_tautology_del:                      45
% 11.17/2.00  res_num_eq_res_simplified:              0
% 11.17/2.00  res_num_sel_changes:                    0
% 11.17/2.00  res_moves_from_active_to_pass:          0
% 11.17/2.00  
% 11.17/2.00  ------ Superposition
% 11.17/2.00  
% 11.17/2.00  sup_time_total:                         0.
% 11.17/2.00  sup_time_generating:                    0.
% 11.17/2.00  sup_time_sim_full:                      0.
% 11.17/2.00  sup_time_sim_immed:                     0.
% 11.17/2.00  
% 11.17/2.00  sup_num_of_clauses:                     273
% 11.17/2.00  sup_num_in_active:                      193
% 11.17/2.00  sup_num_in_passive:                     80
% 11.17/2.00  sup_num_of_loops:                       209
% 11.17/2.00  sup_fw_superposition:                   242
% 11.17/2.00  sup_bw_superposition:                   41
% 11.17/2.00  sup_immediate_simplified:               55
% 11.17/2.00  sup_given_eliminated:                   0
% 11.17/2.00  comparisons_done:                       0
% 11.17/2.00  comparisons_avoided:                    0
% 11.17/2.00  
% 11.17/2.00  ------ Simplifications
% 11.17/2.00  
% 11.17/2.00  
% 11.17/2.00  sim_fw_subset_subsumed:                 4
% 11.17/2.00  sim_bw_subset_subsumed:                 14
% 11.17/2.00  sim_fw_subsumed:                        0
% 11.17/2.00  sim_bw_subsumed:                        0
% 11.17/2.00  sim_fw_subsumption_res:                 18
% 11.17/2.00  sim_bw_subsumption_res:                 0
% 11.17/2.00  sim_tautology_del:                      1
% 11.17/2.00  sim_eq_tautology_del:                   20
% 11.17/2.00  sim_eq_res_simp:                        1
% 11.17/2.00  sim_fw_demodulated:                     0
% 11.17/2.00  sim_bw_demodulated:                     6
% 11.17/2.00  sim_light_normalised:                   53
% 11.17/2.00  sim_joinable_taut:                      0
% 11.17/2.00  sim_joinable_simp:                      0
% 11.17/2.00  sim_ac_normalised:                      0
% 11.17/2.00  sim_smt_subsumption:                    0
% 11.17/2.00  
%------------------------------------------------------------------------------
