%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:17:52 EST 2020

% Result     : Theorem 2.43s
% Output     : CNFRefutation 2.43s
% Verified   : 
% Statistics : Number of formulae       :  156 ( 674 expanded)
%              Number of clauses        :   92 ( 145 expanded)
%              Number of leaves         :   18 ( 247 expanded)
%              Depth                    :   16
%              Number of atoms          :  954 (7228 expanded)
%              Number of equality atoms :  135 ( 185 expanded)
%              Maximal formula depth    :   18 (   7 average)
%              Maximal clause size      :   26 (   5 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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

fof(f12,plain,(
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

fof(f13,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f12])).

fof(f31,plain,(
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
    inference(nnf_transformation,[],[f13])).

fof(f39,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_funct_2(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f9,axiom,(
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
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( v2_connsp_1(X3,X0)
                      & v5_pre_topc(X2,X0,X1) )
                   => v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1)
                  | ~ v2_connsp_1(X3,X0)
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1)
                  | ~ v2_connsp_1(X3,X0)
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f56,plain,(
    ! [X2,X0,X3,X1] :
      ( v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1)
      | ~ v2_connsp_1(X3,X0)
      | ~ v5_pre_topc(X2,X0,X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( l1_pre_topc(X1)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( v3_tops_2(X2,X0,X1)
              <=> ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                  & v5_pre_topc(X2,X0,X1)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( v3_tops_2(X2,X0,X1)
              <=> ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                  & v5_pre_topc(X2,X0,X1)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( v3_tops_2(X2,X0,X1)
              <=> ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                  & v5_pre_topc(X2,X0,X1)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f15])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( v3_tops_2(X2,X0,X1)
                  | ~ v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ v2_funct_1(X2)
                  | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  | k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X0) )
                & ( ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                    & v5_pre_topc(X2,X0,X1)
                    & v2_funct_1(X2)
                    & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                    & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0) )
                  | ~ v3_tops_2(X2,X0,X1) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( v3_tops_2(X2,X0,X1)
                  | ~ v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ v2_funct_1(X2)
                  | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  | k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X0) )
                & ( ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
                    & v5_pre_topc(X2,X0,X1)
                    & v2_funct_1(X2)
                    & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                    & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0) )
                  | ~ v3_tops_2(X2,X0,X1) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f32])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
      | ~ v3_tops_2(X2,X0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,conjecture,(
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
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                 => ( ( v2_connsp_1(X3,X1)
                      & v3_tops_2(X2,X0,X1) )
                   => v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
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
                    ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                   => ( ( v2_connsp_1(X3,X1)
                        & v3_tops_2(X2,X0,X1) )
                     => v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0)
                  & v2_connsp_1(X3,X1)
                  & v3_tops_2(X2,X0,X1)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f30,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0)
                  & v2_connsp_1(X3,X1)
                  & v3_tops_2(X2,X0,X1)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0)
          & v2_connsp_1(X3,X1)
          & v3_tops_2(X2,X0,X1)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
     => ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,sK3),X0)
        & v2_connsp_1(sK3,X1)
        & v3_tops_2(X2,X0,X1)
        & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0)
              & v2_connsp_1(X3,X1)
              & v3_tops_2(X2,X0,X1)
              & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( ? [X3] :
            ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2,X3),X0)
            & v2_connsp_1(X3,X1)
            & v3_tops_2(sK2,X0,X1)
            & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0)
                  & v2_connsp_1(X3,X1)
                  & v3_tops_2(X2,X0,X1)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2,X3),X0)
                & v2_connsp_1(X3,sK1)
                & v3_tops_2(X2,X0,sK1)
                & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK1))) )
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
            & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1))
            & v1_funct_1(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0)
                    & v2_connsp_1(X3,X1)
                    & v3_tops_2(X2,X0,X1)
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
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
                  ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2,X3),sK0)
                  & v2_connsp_1(X3,X1)
                  & v3_tops_2(X2,sK0,X1)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0)
    & v2_connsp_1(sK3,sK1)
    & v3_tops_2(sK2,sK0,sK1)
    & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f30,f37,f36,f35,f34])).

fof(f67,plain,(
    v3_tops_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f59,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f62,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f63,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f64,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f38])).

fof(f65,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f58,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f60,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f61,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( l1_struct_0(X1)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( v2_funct_1(X2)
                      & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) )
                   => k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
                  | ~ v2_funct_1(X2)
                  | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
                  | ~ v2_funct_1(X2)
                  | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f55,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
      | ~ v2_funct_1(X2)
      | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f17])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_1(k2_tops_2(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( l1_struct_0(X1)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( ( v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) )
               => v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
              | ~ v2_funct_1(X2)
              | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
              | ~ v2_funct_1(X2)
              | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
      | ~ v2_funct_1(X2)
      | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( ( l1_struct_0(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( ( v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) )
               => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
              | ~ v2_funct_1(X2)
              | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
              | ~ v2_funct_1(X2)
              | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
      | ~ v2_funct_1(X2)
      | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f41,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( ( l1_struct_0(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( ( v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) )
               => ( k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
                  & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
                & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1) )
              | ~ v2_funct_1(X2)
              | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
                & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1) )
              | ~ v2_funct_1(X2)
              | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_struct_0(X1)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))
      | ~ v2_funct_1(X2)
      | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_struct_0(X1)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
      | ~ v3_tops_2(X2,X0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_1(X2)
      | ~ v3_tops_2(X2,X0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f69,plain,(
    ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f68,plain,(
    v2_connsp_1(sK3,sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f66,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_1155,plain,
    ( ~ v2_connsp_1(X0_53,X0_55)
    | v2_connsp_1(X1_53,X0_55)
    | X1_53 != X0_53 ),
    theory(equality)).

cnf(c_2353,plain,
    ( v2_connsp_1(X0_53,sK0)
    | ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
    | X0_53 != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
    inference(instantiation,[status(thm)],[c_1155])).

cnf(c_2685,plain,
    ( v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,X1_53),sK0)
    | ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,X1_53) != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
    inference(instantiation,[status(thm)],[c_2353])).

cnf(c_3757,plain,
    ( v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,sK3),sK0)
    | ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,sK3) != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
    inference(instantiation,[status(thm)],[c_2685])).

cnf(c_3759,plain,
    ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
    | v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0)
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
    inference(instantiation,[status(thm)],[c_3757])).

cnf(c_1,plain,
    ( ~ r2_funct_2(X0,X1,X2,X3)
    | ~ v1_funct_2(X3,X0,X1)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X2)
    | X2 = X3 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1136,plain,
    ( ~ r2_funct_2(X0_54,X1_54,X0_53,X1_53)
    | ~ v1_funct_2(X0_53,X0_54,X1_54)
    | ~ v1_funct_2(X1_53,X0_54,X1_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X1_53)
    | X0_53 = X1_53 ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_2655,plain,
    ( ~ r2_funct_2(X0_54,X1_54,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),X0_54,X1_54)
    | ~ v1_funct_2(sK2,X0_54,X1_54)
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | ~ v1_funct_1(sK2)
    | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) = sK2 ),
    inference(instantiation,[status(thm)],[c_1136])).

cnf(c_3135,plain,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | ~ v1_funct_1(sK2)
    | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) = sK2 ),
    inference(instantiation,[status(thm)],[c_2655])).

cnf(c_1154,plain,
    ( X0_53 != X1_53
    | X2_53 != X3_53
    | k8_relset_1(X0_54,X1_54,X0_53,X2_53) = k8_relset_1(X0_54,X1_54,X1_53,X3_53) ),
    theory(equality)).

cnf(c_2686,plain,
    ( X0_53 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | X1_53 != sK3
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,X1_53) = k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
    inference(instantiation,[status(thm)],[c_1154])).

cnf(c_3117,plain,
    ( X0_53 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,sK3) = k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2686])).

cnf(c_3118,plain,
    ( k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) = k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3)
    | sK3 != sK3
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_3117])).

cnf(c_1143,plain,
    ( X0_53 != X1_53
    | X2_53 != X1_53
    | X2_53 = X0_53 ),
    theory(equality)).

cnf(c_2541,plain,
    ( X0_53 != X1_53
    | X0_53 = k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X1_53 ),
    inference(instantiation,[status(thm)],[c_1143])).

cnf(c_2542,plain,
    ( k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != sK2
    | sK2 = k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_2541])).

cnf(c_1141,plain,
    ( X0_53 = X0_53 ),
    theory(equality)).

cnf(c_2459,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1141])).

cnf(c_2129,plain,
    ( v2_connsp_1(X0_53,sK0)
    | ~ v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3),sK0)
    | X0_53 != k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
    inference(instantiation,[status(thm)],[c_1155])).

cnf(c_2246,plain,
    ( v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
    | ~ v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3),sK0)
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) != k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
    inference(instantiation,[status(thm)],[c_2129])).

cnf(c_17,plain,
    ( ~ v5_pre_topc(X0,X1,X2)
    | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v2_connsp_1(X3,X1)
    | v2_connsp_1(k7_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0,X3),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_4,plain,
    ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
    | ~ v3_tops_2(X2,X0,X1)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_20,negated_conjecture,
    ( v3_tops_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_426,plain,
    ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X2)
    | sK2 != X2
    | sK1 != X1
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_20])).

cnf(c_427,plain,
    ( v5_pre_topc(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK1,sK0)
    | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_pre_topc(sK1)
    | ~ l1_pre_topc(sK0)
    | ~ v1_funct_1(sK2) ),
    inference(unflattening,[status(thm)],[c_426])).

cnf(c_28,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_24,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_23,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_429,plain,
    ( v5_pre_topc(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK1,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_427,c_28,c_25,c_24,c_23,c_22])).

cnf(c_466,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v2_connsp_1(X3,X1)
    | v2_connsp_1(k7_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0,X3),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != X0
    | sK1 != X1
    | sK0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_429])).

cnf(c_467,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v2_connsp_1(X0,sK1)
    | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0),sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v2_pre_topc(sK1)
    | ~ v2_pre_topc(sK0)
    | v2_struct_0(sK1)
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK1)
    | ~ l1_pre_topc(sK0)
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(unflattening,[status(thm)],[c_466])).

cnf(c_30,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_29,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_26,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_471,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v2_connsp_1(X0,sK1)
    | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0),sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_467,c_30,c_29,c_28,c_27,c_26,c_25])).

cnf(c_1120,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v2_connsp_1(X0_53,sK1)
    | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0_53),sK0)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(subtyping,[status(esa)],[c_471])).

cnf(c_1138,plain,
    ( ~ v2_connsp_1(X0_53,sK1)
    | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0_53),sK0)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_1120])).

cnf(c_2081,plain,
    ( v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3),sK0)
    | ~ v2_connsp_1(sK3,sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ sP0_iProver_split ),
    inference(instantiation,[status(thm)],[c_1138])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_funct_1(X0)
    | ~ l1_struct_0(X2)
    | ~ l1_struct_0(X1)
    | ~ v1_funct_1(X0)
    | k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0),X3) = k7_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0,X3)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1131,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(X1_55))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(X1_55))))
    | ~ m1_subset_1(X1_53,k1_zfmisc_1(u1_struct_0(X0_55)))
    | ~ v2_funct_1(X0_53)
    | ~ l1_struct_0(X1_55)
    | ~ l1_struct_0(X0_55)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53) != k2_struct_0(X1_55)
    | k8_relset_1(u1_struct_0(X1_55),u1_struct_0(X0_55),k2_tops_2(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53),X1_53) = k7_relset_1(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53,X1_53) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1972,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(sK1),u1_struct_0(X0_55))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0_55))))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_funct_1(X0_53)
    | ~ l1_struct_0(X0_55)
    | ~ l1_struct_0(sK1)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X0_55),X0_53) != k2_struct_0(X0_55)
    | k8_relset_1(u1_struct_0(X0_55),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0_55),X0_53),sK3) = k7_relset_1(u1_struct_0(sK1),u1_struct_0(X0_55),X0_53,sK3) ),
    inference(instantiation,[status(thm)],[c_1131])).

cnf(c_2078,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
    | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) = k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
    inference(instantiation,[status(thm)],[c_1972])).

cnf(c_9,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1135,plain,
    ( ~ v1_funct_2(X0_53,X0_54,X1_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | m1_subset_1(k2_tops_2(X0_54,X1_54,X0_53),k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54)))
    | ~ v1_funct_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_2001,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_1135])).

cnf(c_10,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k2_tops_2(X1,X2,X0),X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1134,plain,
    ( ~ v1_funct_2(X0_53,X0_54,X1_54)
    | v1_funct_2(k2_tops_2(X0_54,X1_54,X0_53),X1_54,X0_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v1_funct_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_2002,plain,
    ( v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_1134])).

cnf(c_11,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_tops_2(X1,X2,X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1133,plain,
    ( ~ v1_funct_2(X0_53,X0_54,X1_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v1_funct_1(X0_53)
    | v1_funct_1(k2_tops_2(X0_54,X1_54,X0_53)) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_2004,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_1133])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_funct_1(X0)
    | v2_funct_1(k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0))
    | ~ l1_struct_0(X2)
    | ~ l1_struct_0(X1)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1132,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(X1_55))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(X1_55))))
    | ~ v2_funct_1(X0_53)
    | v2_funct_1(k2_tops_2(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53))
    | ~ l1_struct_0(X1_55)
    | ~ l1_struct_0(X0_55)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53) != k2_struct_0(X1_55) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_1969,plain,
    ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v2_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | ~ v2_funct_1(sK2)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != k2_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_1132])).

cnf(c_1964,plain,
    ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1135])).

cnf(c_1961,plain,
    ( v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1134])).

cnf(c_1955,plain,
    ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1133])).

cnf(c_15,plain,
    ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | ~ v2_funct_1(X2)
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X0)
    | ~ v1_funct_1(X2)
    | k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_525,plain,
    ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v2_funct_1(X2)
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X0)
    | ~ v1_funct_1(X2)
    | k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_27])).

cnf(c_526,plain,
    ( r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X1)),X1)
    | ~ v1_funct_2(X1,u1_struct_0(X0),u1_struct_0(sK1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
    | ~ v2_funct_1(X1)
    | ~ l1_struct_0(X0)
    | ~ l1_struct_0(sK1)
    | ~ v1_funct_1(X1)
    | k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X1) != k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_525])).

cnf(c_2,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_90,plain,
    ( ~ l1_pre_topc(sK1)
    | l1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_530,plain,
    ( ~ l1_struct_0(X0)
    | ~ v2_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
    | ~ v1_funct_2(X1,u1_struct_0(X0),u1_struct_0(sK1))
    | r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X1)),X1)
    | ~ v1_funct_1(X1)
    | k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X1) != k2_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_526,c_25,c_90])).

cnf(c_531,plain,
    ( r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X1)),X1)
    | ~ v1_funct_2(X1,u1_struct_0(X0),u1_struct_0(sK1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
    | ~ v2_funct_1(X1)
    | ~ l1_struct_0(X0)
    | ~ v1_funct_1(X1)
    | k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X1) != k2_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_530])).

cnf(c_1117,plain,
    ( r2_funct_2(u1_struct_0(X0_55),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0_55),k2_tops_2(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53)),X0_53)
    | ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(sK1))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(sK1))))
    | ~ v2_funct_1(X0_53)
    | ~ l1_struct_0(X0_55)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53) != k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_531])).

cnf(c_1927,plain,
    ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v2_funct_1(sK2)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != k2_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_1117])).

cnf(c_12,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_struct_0(X2)
    | ~ v2_funct_1(X0)
    | ~ l1_struct_0(X2)
    | ~ l1_struct_0(X1)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2)
    | k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0)) = k2_struct_0(X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_620,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_funct_1(X0)
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X2)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2)
    | k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0)) = k2_struct_0(X1)
    | sK1 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_27])).

cnf(c_621,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK1))))
    | ~ v2_funct_1(X0)
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(sK1)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),X0) != k2_struct_0(sK1)
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK1),X0)) = k2_struct_0(X1) ),
    inference(unflattening,[status(thm)],[c_620])).

cnf(c_625,plain,
    ( ~ l1_struct_0(X1)
    | ~ v2_funct_1(X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK1))))
    | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(sK1))
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),X0) != k2_struct_0(sK1)
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK1),X0)) = k2_struct_0(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_621,c_25,c_90])).

cnf(c_626,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK1))))
    | ~ v2_funct_1(X0)
    | ~ l1_struct_0(X1)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),X0) != k2_struct_0(sK1)
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK1),X0)) = k2_struct_0(X1) ),
    inference(renaming,[status(thm)],[c_625])).

cnf(c_1114,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(sK1))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(sK1))))
    | ~ v2_funct_1(X0_53)
    | ~ l1_struct_0(X0_55)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53) != k2_struct_0(sK1)
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X0_55),k2_tops_2(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53)) = k2_struct_0(X0_55) ),
    inference(subtyping,[status(esa)],[c_626])).

cnf(c_1924,plain,
    ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v2_funct_1(sK2)
    | ~ l1_struct_0(sK0)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) = k2_struct_0(sK0)
    | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != k2_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_1114])).

cnf(c_1139,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_1120])).

cnf(c_7,plain,
    ( ~ v3_tops_2(X0,X1,X2)
    | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) = k2_struct_0(X2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_396,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) = k2_struct_0(X2)
    | sK2 != X0
    | sK1 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_20])).

cnf(c_397,plain,
    ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ l1_pre_topc(sK1)
    | ~ l1_pre_topc(sK0)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_396])).

cnf(c_399,plain,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_397,c_28,c_25,c_24,c_23,c_22])).

cnf(c_1123,plain,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_399])).

cnf(c_1168,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_1141])).

cnf(c_514,plain,
    ( l1_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_28])).

cnf(c_515,plain,
    ( l1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_514])).

cnf(c_6,plain,
    ( ~ v3_tops_2(X0,X1,X2)
    | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_funct_1(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_404,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_funct_1(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | sK2 != X0
    | sK1 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_20])).

cnf(c_405,plain,
    ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v2_funct_1(sK2)
    | ~ l1_pre_topc(sK1)
    | ~ l1_pre_topc(sK0)
    | ~ v1_funct_1(sK2) ),
    inference(unflattening,[status(thm)],[c_404])).

cnf(c_18,negated_conjecture,
    ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_19,negated_conjecture,
    ( v2_connsp_1(sK3,sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f66])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3759,c_3135,c_3118,c_2542,c_2459,c_2246,c_2081,c_2078,c_2001,c_2002,c_2004,c_1969,c_1964,c_1961,c_1955,c_1927,c_1924,c_1139,c_1123,c_1168,c_515,c_405,c_90,c_18,c_19,c_21,c_22,c_23,c_24,c_25,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n005.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:16:32 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.27/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.27/0.99  
% 2.27/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.27/0.99  
% 2.27/0.99  ------  iProver source info
% 2.27/0.99  
% 2.27/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.27/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.27/0.99  git: non_committed_changes: false
% 2.27/0.99  git: last_make_outside_of_git: false
% 2.27/0.99  
% 2.27/0.99  ------ 
% 2.27/0.99  
% 2.27/0.99  ------ Input Options
% 2.27/0.99  
% 2.27/0.99  --out_options                           all
% 2.27/0.99  --tptp_safe_out                         true
% 2.27/0.99  --problem_path                          ""
% 2.27/0.99  --include_path                          ""
% 2.27/0.99  --clausifier                            res/vclausify_rel
% 2.27/0.99  --clausifier_options                    --mode clausify
% 2.27/0.99  --stdin                                 false
% 2.27/0.99  --stats_out                             all
% 2.27/0.99  
% 2.27/0.99  ------ General Options
% 2.27/0.99  
% 2.27/0.99  --fof                                   false
% 2.27/0.99  --time_out_real                         305.
% 2.27/0.99  --time_out_virtual                      -1.
% 2.27/0.99  --symbol_type_check                     false
% 2.27/0.99  --clausify_out                          false
% 2.27/0.99  --sig_cnt_out                           false
% 2.27/0.99  --trig_cnt_out                          false
% 2.27/0.99  --trig_cnt_out_tolerance                1.
% 2.27/0.99  --trig_cnt_out_sk_spl                   false
% 2.27/0.99  --abstr_cl_out                          false
% 2.27/0.99  
% 2.27/0.99  ------ Global Options
% 2.27/0.99  
% 2.27/0.99  --schedule                              default
% 2.27/0.99  --add_important_lit                     false
% 2.27/0.99  --prop_solver_per_cl                    1000
% 2.27/0.99  --min_unsat_core                        false
% 2.27/0.99  --soft_assumptions                      false
% 2.27/0.99  --soft_lemma_size                       3
% 2.27/0.99  --prop_impl_unit_size                   0
% 2.27/0.99  --prop_impl_unit                        []
% 2.27/0.99  --share_sel_clauses                     true
% 2.27/0.99  --reset_solvers                         false
% 2.27/0.99  --bc_imp_inh                            [conj_cone]
% 2.27/0.99  --conj_cone_tolerance                   3.
% 2.27/0.99  --extra_neg_conj                        none
% 2.27/0.99  --large_theory_mode                     true
% 2.27/0.99  --prolific_symb_bound                   200
% 2.27/0.99  --lt_threshold                          2000
% 2.27/0.99  --clause_weak_htbl                      true
% 2.27/0.99  --gc_record_bc_elim                     false
% 2.27/0.99  
% 2.27/0.99  ------ Preprocessing Options
% 2.27/0.99  
% 2.27/0.99  --preprocessing_flag                    true
% 2.27/0.99  --time_out_prep_mult                    0.1
% 2.27/0.99  --splitting_mode                        input
% 2.27/0.99  --splitting_grd                         true
% 2.27/0.99  --splitting_cvd                         false
% 2.27/0.99  --splitting_cvd_svl                     false
% 2.27/0.99  --splitting_nvd                         32
% 2.27/0.99  --sub_typing                            true
% 2.27/0.99  --prep_gs_sim                           true
% 2.27/0.99  --prep_unflatten                        true
% 2.27/0.99  --prep_res_sim                          true
% 2.27/0.99  --prep_upred                            true
% 2.27/0.99  --prep_sem_filter                       exhaustive
% 2.27/0.99  --prep_sem_filter_out                   false
% 2.27/0.99  --pred_elim                             true
% 2.27/0.99  --res_sim_input                         true
% 2.27/0.99  --eq_ax_congr_red                       true
% 2.27/0.99  --pure_diseq_elim                       true
% 2.27/0.99  --brand_transform                       false
% 2.27/0.99  --non_eq_to_eq                          false
% 2.27/0.99  --prep_def_merge                        true
% 2.27/0.99  --prep_def_merge_prop_impl              false
% 2.27/0.99  --prep_def_merge_mbd                    true
% 2.27/0.99  --prep_def_merge_tr_red                 false
% 2.27/0.99  --prep_def_merge_tr_cl                  false
% 2.27/0.99  --smt_preprocessing                     true
% 2.27/0.99  --smt_ac_axioms                         fast
% 2.27/0.99  --preprocessed_out                      false
% 2.27/0.99  --preprocessed_stats                    false
% 2.27/0.99  
% 2.27/0.99  ------ Abstraction refinement Options
% 2.27/0.99  
% 2.27/0.99  --abstr_ref                             []
% 2.27/0.99  --abstr_ref_prep                        false
% 2.27/0.99  --abstr_ref_until_sat                   false
% 2.27/0.99  --abstr_ref_sig_restrict                funpre
% 2.27/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.27/0.99  --abstr_ref_under                       []
% 2.27/0.99  
% 2.27/0.99  ------ SAT Options
% 2.27/0.99  
% 2.27/0.99  --sat_mode                              false
% 2.27/0.99  --sat_fm_restart_options                ""
% 2.27/0.99  --sat_gr_def                            false
% 2.27/0.99  --sat_epr_types                         true
% 2.27/0.99  --sat_non_cyclic_types                  false
% 2.27/0.99  --sat_finite_models                     false
% 2.27/0.99  --sat_fm_lemmas                         false
% 2.27/0.99  --sat_fm_prep                           false
% 2.27/0.99  --sat_fm_uc_incr                        true
% 2.27/0.99  --sat_out_model                         small
% 2.27/0.99  --sat_out_clauses                       false
% 2.27/0.99  
% 2.27/0.99  ------ QBF Options
% 2.27/0.99  
% 2.27/0.99  --qbf_mode                              false
% 2.27/0.99  --qbf_elim_univ                         false
% 2.27/0.99  --qbf_dom_inst                          none
% 2.27/0.99  --qbf_dom_pre_inst                      false
% 2.27/0.99  --qbf_sk_in                             false
% 2.27/0.99  --qbf_pred_elim                         true
% 2.27/0.99  --qbf_split                             512
% 2.27/0.99  
% 2.27/0.99  ------ BMC1 Options
% 2.27/0.99  
% 2.27/0.99  --bmc1_incremental                      false
% 2.27/0.99  --bmc1_axioms                           reachable_all
% 2.27/0.99  --bmc1_min_bound                        0
% 2.27/0.99  --bmc1_max_bound                        -1
% 2.27/0.99  --bmc1_max_bound_default                -1
% 2.27/0.99  --bmc1_symbol_reachability              true
% 2.27/0.99  --bmc1_property_lemmas                  false
% 2.27/0.99  --bmc1_k_induction                      false
% 2.27/0.99  --bmc1_non_equiv_states                 false
% 2.27/0.99  --bmc1_deadlock                         false
% 2.27/0.99  --bmc1_ucm                              false
% 2.27/0.99  --bmc1_add_unsat_core                   none
% 2.27/0.99  --bmc1_unsat_core_children              false
% 2.27/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.27/0.99  --bmc1_out_stat                         full
% 2.27/0.99  --bmc1_ground_init                      false
% 2.27/0.99  --bmc1_pre_inst_next_state              false
% 2.27/0.99  --bmc1_pre_inst_state                   false
% 2.27/0.99  --bmc1_pre_inst_reach_state             false
% 2.27/0.99  --bmc1_out_unsat_core                   false
% 2.27/0.99  --bmc1_aig_witness_out                  false
% 2.27/0.99  --bmc1_verbose                          false
% 2.27/0.99  --bmc1_dump_clauses_tptp                false
% 2.27/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.27/0.99  --bmc1_dump_file                        -
% 2.27/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.27/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.27/0.99  --bmc1_ucm_extend_mode                  1
% 2.27/0.99  --bmc1_ucm_init_mode                    2
% 2.27/0.99  --bmc1_ucm_cone_mode                    none
% 2.27/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.27/0.99  --bmc1_ucm_relax_model                  4
% 2.27/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.27/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.27/0.99  --bmc1_ucm_layered_model                none
% 2.27/0.99  --bmc1_ucm_max_lemma_size               10
% 2.27/0.99  
% 2.27/0.99  ------ AIG Options
% 2.27/0.99  
% 2.27/0.99  --aig_mode                              false
% 2.27/0.99  
% 2.27/0.99  ------ Instantiation Options
% 2.27/0.99  
% 2.27/0.99  --instantiation_flag                    true
% 2.27/0.99  --inst_sos_flag                         false
% 2.27/0.99  --inst_sos_phase                        true
% 2.27/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.27/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.27/0.99  --inst_lit_sel_side                     num_symb
% 2.27/0.99  --inst_solver_per_active                1400
% 2.27/0.99  --inst_solver_calls_frac                1.
% 2.27/0.99  --inst_passive_queue_type               priority_queues
% 2.27/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.27/0.99  --inst_passive_queues_freq              [25;2]
% 2.27/0.99  --inst_dismatching                      true
% 2.27/0.99  --inst_eager_unprocessed_to_passive     true
% 2.27/0.99  --inst_prop_sim_given                   true
% 2.27/0.99  --inst_prop_sim_new                     false
% 2.27/0.99  --inst_subs_new                         false
% 2.27/1.00  --inst_eq_res_simp                      false
% 2.27/1.00  --inst_subs_given                       false
% 2.27/1.00  --inst_orphan_elimination               true
% 2.27/1.00  --inst_learning_loop_flag               true
% 2.27/1.00  --inst_learning_start                   3000
% 2.27/1.00  --inst_learning_factor                  2
% 2.27/1.00  --inst_start_prop_sim_after_learn       3
% 2.27/1.00  --inst_sel_renew                        solver
% 2.27/1.00  --inst_lit_activity_flag                true
% 2.27/1.00  --inst_restr_to_given                   false
% 2.27/1.00  --inst_activity_threshold               500
% 2.27/1.00  --inst_out_proof                        true
% 2.27/1.00  
% 2.27/1.00  ------ Resolution Options
% 2.27/1.00  
% 2.27/1.00  --resolution_flag                       true
% 2.27/1.00  --res_lit_sel                           adaptive
% 2.27/1.00  --res_lit_sel_side                      none
% 2.27/1.00  --res_ordering                          kbo
% 2.27/1.00  --res_to_prop_solver                    active
% 2.27/1.00  --res_prop_simpl_new                    false
% 2.27/1.00  --res_prop_simpl_given                  true
% 2.27/1.00  --res_passive_queue_type                priority_queues
% 2.27/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.43/1.00  --res_passive_queues_freq               [15;5]
% 2.43/1.00  --res_forward_subs                      full
% 2.43/1.00  --res_backward_subs                     full
% 2.43/1.00  --res_forward_subs_resolution           true
% 2.43/1.00  --res_backward_subs_resolution          true
% 2.43/1.00  --res_orphan_elimination                true
% 2.43/1.00  --res_time_limit                        2.
% 2.43/1.00  --res_out_proof                         true
% 2.43/1.00  
% 2.43/1.00  ------ Superposition Options
% 2.43/1.00  
% 2.43/1.00  --superposition_flag                    true
% 2.43/1.00  --sup_passive_queue_type                priority_queues
% 2.43/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.43/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.43/1.00  --demod_completeness_check              fast
% 2.43/1.00  --demod_use_ground                      true
% 2.43/1.00  --sup_to_prop_solver                    passive
% 2.43/1.00  --sup_prop_simpl_new                    true
% 2.43/1.00  --sup_prop_simpl_given                  true
% 2.43/1.00  --sup_fun_splitting                     false
% 2.43/1.00  --sup_smt_interval                      50000
% 2.43/1.00  
% 2.43/1.00  ------ Superposition Simplification Setup
% 2.43/1.00  
% 2.43/1.00  --sup_indices_passive                   []
% 2.43/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.43/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.43/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.43/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.43/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.43/1.00  --sup_full_bw                           [BwDemod]
% 2.43/1.00  --sup_immed_triv                        [TrivRules]
% 2.43/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.43/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.43/1.00  --sup_immed_bw_main                     []
% 2.43/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.43/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.43/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.43/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.43/1.00  
% 2.43/1.00  ------ Combination Options
% 2.43/1.00  
% 2.43/1.00  --comb_res_mult                         3
% 2.43/1.00  --comb_sup_mult                         2
% 2.43/1.00  --comb_inst_mult                        10
% 2.43/1.00  
% 2.43/1.00  ------ Debug Options
% 2.43/1.00  
% 2.43/1.00  --dbg_backtrace                         false
% 2.43/1.00  --dbg_dump_prop_clauses                 false
% 2.43/1.00  --dbg_dump_prop_clauses_file            -
% 2.43/1.00  --dbg_out_stat                          false
% 2.43/1.00  ------ Parsing...
% 2.43/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.43/1.00  
% 2.43/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 2.43/1.00  
% 2.43/1.00  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.43/1.00  
% 2.43/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.43/1.00  ------ Proving...
% 2.43/1.00  ------ Problem Properties 
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  clauses                                 27
% 2.43/1.00  conjectures                             6
% 2.43/1.00  EPR                                     5
% 2.43/1.00  Horn                                    27
% 2.43/1.00  unary                                   11
% 2.43/1.00  binary                                  0
% 2.43/1.00  lits                                    105
% 2.43/1.00  lits eq                                 16
% 2.43/1.00  fd_pure                                 0
% 2.43/1.00  fd_pseudo                               0
% 2.43/1.00  fd_cond                                 0
% 2.43/1.00  fd_pseudo_cond                          1
% 2.43/1.00  AC symbols                              0
% 2.43/1.00  
% 2.43/1.00  ------ Schedule dynamic 5 is on 
% 2.43/1.00  
% 2.43/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  ------ 
% 2.43/1.00  Current options:
% 2.43/1.00  ------ 
% 2.43/1.00  
% 2.43/1.00  ------ Input Options
% 2.43/1.00  
% 2.43/1.00  --out_options                           all
% 2.43/1.00  --tptp_safe_out                         true
% 2.43/1.00  --problem_path                          ""
% 2.43/1.00  --include_path                          ""
% 2.43/1.00  --clausifier                            res/vclausify_rel
% 2.43/1.00  --clausifier_options                    --mode clausify
% 2.43/1.00  --stdin                                 false
% 2.43/1.00  --stats_out                             all
% 2.43/1.00  
% 2.43/1.00  ------ General Options
% 2.43/1.00  
% 2.43/1.00  --fof                                   false
% 2.43/1.00  --time_out_real                         305.
% 2.43/1.00  --time_out_virtual                      -1.
% 2.43/1.00  --symbol_type_check                     false
% 2.43/1.00  --clausify_out                          false
% 2.43/1.00  --sig_cnt_out                           false
% 2.43/1.00  --trig_cnt_out                          false
% 2.43/1.00  --trig_cnt_out_tolerance                1.
% 2.43/1.00  --trig_cnt_out_sk_spl                   false
% 2.43/1.00  --abstr_cl_out                          false
% 2.43/1.00  
% 2.43/1.00  ------ Global Options
% 2.43/1.00  
% 2.43/1.00  --schedule                              default
% 2.43/1.00  --add_important_lit                     false
% 2.43/1.00  --prop_solver_per_cl                    1000
% 2.43/1.00  --min_unsat_core                        false
% 2.43/1.00  --soft_assumptions                      false
% 2.43/1.00  --soft_lemma_size                       3
% 2.43/1.00  --prop_impl_unit_size                   0
% 2.43/1.00  --prop_impl_unit                        []
% 2.43/1.00  --share_sel_clauses                     true
% 2.43/1.00  --reset_solvers                         false
% 2.43/1.00  --bc_imp_inh                            [conj_cone]
% 2.43/1.00  --conj_cone_tolerance                   3.
% 2.43/1.00  --extra_neg_conj                        none
% 2.43/1.00  --large_theory_mode                     true
% 2.43/1.00  --prolific_symb_bound                   200
% 2.43/1.00  --lt_threshold                          2000
% 2.43/1.00  --clause_weak_htbl                      true
% 2.43/1.00  --gc_record_bc_elim                     false
% 2.43/1.00  
% 2.43/1.00  ------ Preprocessing Options
% 2.43/1.00  
% 2.43/1.00  --preprocessing_flag                    true
% 2.43/1.00  --time_out_prep_mult                    0.1
% 2.43/1.00  --splitting_mode                        input
% 2.43/1.00  --splitting_grd                         true
% 2.43/1.00  --splitting_cvd                         false
% 2.43/1.00  --splitting_cvd_svl                     false
% 2.43/1.00  --splitting_nvd                         32
% 2.43/1.00  --sub_typing                            true
% 2.43/1.00  --prep_gs_sim                           true
% 2.43/1.00  --prep_unflatten                        true
% 2.43/1.00  --prep_res_sim                          true
% 2.43/1.00  --prep_upred                            true
% 2.43/1.00  --prep_sem_filter                       exhaustive
% 2.43/1.00  --prep_sem_filter_out                   false
% 2.43/1.00  --pred_elim                             true
% 2.43/1.00  --res_sim_input                         true
% 2.43/1.00  --eq_ax_congr_red                       true
% 2.43/1.00  --pure_diseq_elim                       true
% 2.43/1.00  --brand_transform                       false
% 2.43/1.00  --non_eq_to_eq                          false
% 2.43/1.00  --prep_def_merge                        true
% 2.43/1.00  --prep_def_merge_prop_impl              false
% 2.43/1.00  --prep_def_merge_mbd                    true
% 2.43/1.00  --prep_def_merge_tr_red                 false
% 2.43/1.00  --prep_def_merge_tr_cl                  false
% 2.43/1.00  --smt_preprocessing                     true
% 2.43/1.00  --smt_ac_axioms                         fast
% 2.43/1.00  --preprocessed_out                      false
% 2.43/1.00  --preprocessed_stats                    false
% 2.43/1.00  
% 2.43/1.00  ------ Abstraction refinement Options
% 2.43/1.00  
% 2.43/1.00  --abstr_ref                             []
% 2.43/1.00  --abstr_ref_prep                        false
% 2.43/1.00  --abstr_ref_until_sat                   false
% 2.43/1.00  --abstr_ref_sig_restrict                funpre
% 2.43/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.43/1.00  --abstr_ref_under                       []
% 2.43/1.00  
% 2.43/1.00  ------ SAT Options
% 2.43/1.00  
% 2.43/1.00  --sat_mode                              false
% 2.43/1.00  --sat_fm_restart_options                ""
% 2.43/1.00  --sat_gr_def                            false
% 2.43/1.00  --sat_epr_types                         true
% 2.43/1.00  --sat_non_cyclic_types                  false
% 2.43/1.00  --sat_finite_models                     false
% 2.43/1.00  --sat_fm_lemmas                         false
% 2.43/1.00  --sat_fm_prep                           false
% 2.43/1.00  --sat_fm_uc_incr                        true
% 2.43/1.00  --sat_out_model                         small
% 2.43/1.00  --sat_out_clauses                       false
% 2.43/1.00  
% 2.43/1.00  ------ QBF Options
% 2.43/1.00  
% 2.43/1.00  --qbf_mode                              false
% 2.43/1.00  --qbf_elim_univ                         false
% 2.43/1.00  --qbf_dom_inst                          none
% 2.43/1.00  --qbf_dom_pre_inst                      false
% 2.43/1.00  --qbf_sk_in                             false
% 2.43/1.00  --qbf_pred_elim                         true
% 2.43/1.00  --qbf_split                             512
% 2.43/1.00  
% 2.43/1.00  ------ BMC1 Options
% 2.43/1.00  
% 2.43/1.00  --bmc1_incremental                      false
% 2.43/1.00  --bmc1_axioms                           reachable_all
% 2.43/1.00  --bmc1_min_bound                        0
% 2.43/1.00  --bmc1_max_bound                        -1
% 2.43/1.00  --bmc1_max_bound_default                -1
% 2.43/1.00  --bmc1_symbol_reachability              true
% 2.43/1.00  --bmc1_property_lemmas                  false
% 2.43/1.00  --bmc1_k_induction                      false
% 2.43/1.00  --bmc1_non_equiv_states                 false
% 2.43/1.00  --bmc1_deadlock                         false
% 2.43/1.00  --bmc1_ucm                              false
% 2.43/1.00  --bmc1_add_unsat_core                   none
% 2.43/1.00  --bmc1_unsat_core_children              false
% 2.43/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.43/1.00  --bmc1_out_stat                         full
% 2.43/1.00  --bmc1_ground_init                      false
% 2.43/1.00  --bmc1_pre_inst_next_state              false
% 2.43/1.00  --bmc1_pre_inst_state                   false
% 2.43/1.00  --bmc1_pre_inst_reach_state             false
% 2.43/1.00  --bmc1_out_unsat_core                   false
% 2.43/1.00  --bmc1_aig_witness_out                  false
% 2.43/1.00  --bmc1_verbose                          false
% 2.43/1.00  --bmc1_dump_clauses_tptp                false
% 2.43/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.43/1.00  --bmc1_dump_file                        -
% 2.43/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.43/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.43/1.00  --bmc1_ucm_extend_mode                  1
% 2.43/1.00  --bmc1_ucm_init_mode                    2
% 2.43/1.00  --bmc1_ucm_cone_mode                    none
% 2.43/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.43/1.00  --bmc1_ucm_relax_model                  4
% 2.43/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.43/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.43/1.00  --bmc1_ucm_layered_model                none
% 2.43/1.00  --bmc1_ucm_max_lemma_size               10
% 2.43/1.00  
% 2.43/1.00  ------ AIG Options
% 2.43/1.00  
% 2.43/1.00  --aig_mode                              false
% 2.43/1.00  
% 2.43/1.00  ------ Instantiation Options
% 2.43/1.00  
% 2.43/1.00  --instantiation_flag                    true
% 2.43/1.00  --inst_sos_flag                         false
% 2.43/1.00  --inst_sos_phase                        true
% 2.43/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.43/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.43/1.00  --inst_lit_sel_side                     none
% 2.43/1.00  --inst_solver_per_active                1400
% 2.43/1.00  --inst_solver_calls_frac                1.
% 2.43/1.00  --inst_passive_queue_type               priority_queues
% 2.43/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.43/1.00  --inst_passive_queues_freq              [25;2]
% 2.43/1.00  --inst_dismatching                      true
% 2.43/1.00  --inst_eager_unprocessed_to_passive     true
% 2.43/1.00  --inst_prop_sim_given                   true
% 2.43/1.00  --inst_prop_sim_new                     false
% 2.43/1.00  --inst_subs_new                         false
% 2.43/1.00  --inst_eq_res_simp                      false
% 2.43/1.00  --inst_subs_given                       false
% 2.43/1.00  --inst_orphan_elimination               true
% 2.43/1.00  --inst_learning_loop_flag               true
% 2.43/1.00  --inst_learning_start                   3000
% 2.43/1.00  --inst_learning_factor                  2
% 2.43/1.00  --inst_start_prop_sim_after_learn       3
% 2.43/1.00  --inst_sel_renew                        solver
% 2.43/1.00  --inst_lit_activity_flag                true
% 2.43/1.00  --inst_restr_to_given                   false
% 2.43/1.00  --inst_activity_threshold               500
% 2.43/1.00  --inst_out_proof                        true
% 2.43/1.00  
% 2.43/1.00  ------ Resolution Options
% 2.43/1.00  
% 2.43/1.00  --resolution_flag                       false
% 2.43/1.00  --res_lit_sel                           adaptive
% 2.43/1.00  --res_lit_sel_side                      none
% 2.43/1.00  --res_ordering                          kbo
% 2.43/1.00  --res_to_prop_solver                    active
% 2.43/1.00  --res_prop_simpl_new                    false
% 2.43/1.00  --res_prop_simpl_given                  true
% 2.43/1.00  --res_passive_queue_type                priority_queues
% 2.43/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.43/1.00  --res_passive_queues_freq               [15;5]
% 2.43/1.00  --res_forward_subs                      full
% 2.43/1.00  --res_backward_subs                     full
% 2.43/1.00  --res_forward_subs_resolution           true
% 2.43/1.00  --res_backward_subs_resolution          true
% 2.43/1.00  --res_orphan_elimination                true
% 2.43/1.00  --res_time_limit                        2.
% 2.43/1.00  --res_out_proof                         true
% 2.43/1.00  
% 2.43/1.00  ------ Superposition Options
% 2.43/1.00  
% 2.43/1.00  --superposition_flag                    true
% 2.43/1.00  --sup_passive_queue_type                priority_queues
% 2.43/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.43/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.43/1.00  --demod_completeness_check              fast
% 2.43/1.00  --demod_use_ground                      true
% 2.43/1.00  --sup_to_prop_solver                    passive
% 2.43/1.00  --sup_prop_simpl_new                    true
% 2.43/1.00  --sup_prop_simpl_given                  true
% 2.43/1.00  --sup_fun_splitting                     false
% 2.43/1.00  --sup_smt_interval                      50000
% 2.43/1.00  
% 2.43/1.00  ------ Superposition Simplification Setup
% 2.43/1.00  
% 2.43/1.00  --sup_indices_passive                   []
% 2.43/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.43/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.43/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.43/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.43/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.43/1.00  --sup_full_bw                           [BwDemod]
% 2.43/1.00  --sup_immed_triv                        [TrivRules]
% 2.43/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.43/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.43/1.00  --sup_immed_bw_main                     []
% 2.43/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.43/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.43/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.43/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.43/1.00  
% 2.43/1.00  ------ Combination Options
% 2.43/1.00  
% 2.43/1.00  --comb_res_mult                         3
% 2.43/1.00  --comb_sup_mult                         2
% 2.43/1.00  --comb_inst_mult                        10
% 2.43/1.00  
% 2.43/1.00  ------ Debug Options
% 2.43/1.00  
% 2.43/1.00  --dbg_backtrace                         false
% 2.43/1.00  --dbg_dump_prop_clauses                 false
% 2.43/1.00  --dbg_dump_prop_clauses_file            -
% 2.43/1.00  --dbg_out_stat                          false
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  ------ Proving...
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  % SZS status Theorem for theBenchmark.p
% 2.43/1.00  
% 2.43/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.43/1.00  
% 2.43/1.00  fof(f1,axiom,(
% 2.43/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (r2_funct_2(X0,X1,X2,X3) <=> X2 = X3))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f12,plain,(
% 2.43/1.00    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.43/1.00    inference(ennf_transformation,[],[f1])).
% 2.43/1.00  
% 2.43/1.00  fof(f13,plain,(
% 2.43/1.00    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.43/1.00    inference(flattening,[],[f12])).
% 2.43/1.00  
% 2.43/1.00  fof(f31,plain,(
% 2.43/1.00    ! [X0,X1,X2,X3] : (((r2_funct_2(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.43/1.00    inference(nnf_transformation,[],[f13])).
% 2.43/1.00  
% 2.43/1.00  fof(f39,plain,(
% 2.43/1.00    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f31])).
% 2.43/1.00  
% 2.43/1.00  fof(f9,axiom,(
% 2.43/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_connsp_1(X3,X0) & v5_pre_topc(X2,X0,X1)) => v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1))))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f27,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1) | (~v2_connsp_1(X3,X0) | ~v5_pre_topc(X2,X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.43/1.00    inference(ennf_transformation,[],[f9])).
% 2.43/1.00  
% 2.43/1.00  fof(f28,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1) | ~v2_connsp_1(X3,X0) | ~v5_pre_topc(X2,X0,X1) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.43/1.00    inference(flattening,[],[f27])).
% 2.43/1.00  
% 2.43/1.00  fof(f56,plain,(
% 2.43/1.00    ( ! [X2,X0,X3,X1] : (v2_connsp_1(k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X1) | ~v2_connsp_1(X3,X0) | ~v5_pre_topc(X2,X0,X1) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f28])).
% 2.43/1.00  
% 2.43/1.00  fof(f3,axiom,(
% 2.43/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (l1_pre_topc(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (v3_tops_2(X2,X0,X1) <=> (v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) & v5_pre_topc(X2,X0,X1) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0))))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f15,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : ((v3_tops_2(X2,X0,X1) <=> (v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) & v5_pre_topc(X2,X0,X1) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | ~l1_pre_topc(X1)) | ~l1_pre_topc(X0))),
% 2.43/1.00    inference(ennf_transformation,[],[f3])).
% 2.43/1.00  
% 2.43/1.00  fof(f16,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : ((v3_tops_2(X2,X0,X1) <=> (v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) & v5_pre_topc(X2,X0,X1) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1)) | ~l1_pre_topc(X0))),
% 2.43/1.00    inference(flattening,[],[f15])).
% 2.43/1.00  
% 2.43/1.00  fof(f32,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (((v3_tops_2(X2,X0,X1) | (~v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) | ~v5_pre_topc(X2,X0,X1) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X0))) & ((v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) & v5_pre_topc(X2,X0,X1) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0)) | ~v3_tops_2(X2,X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1)) | ~l1_pre_topc(X0))),
% 2.43/1.00    inference(nnf_transformation,[],[f16])).
% 2.43/1.00  
% 2.43/1.00  fof(f33,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (((v3_tops_2(X2,X0,X1) | ~v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) | ~v5_pre_topc(X2,X0,X1) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X0)) & ((v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) & v5_pre_topc(X2,X0,X1) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & k1_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X0)) | ~v3_tops_2(X2,X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1)) | ~l1_pre_topc(X0))),
% 2.43/1.00    inference(flattening,[],[f32])).
% 2.43/1.00  
% 2.43/1.00  fof(f46,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0) | ~v3_tops_2(X2,X0,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~l1_pre_topc(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f33])).
% 2.43/1.00  
% 2.43/1.00  fof(f10,conjecture,(
% 2.43/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) => ((v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1)) => v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0))))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f11,negated_conjecture,(
% 2.43/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) => ((v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1)) => v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0))))))),
% 2.43/1.00    inference(negated_conjecture,[],[f10])).
% 2.43/1.00  
% 2.43/1.00  fof(f29,plain,(
% 2.43/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) & (v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1))) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.43/1.00    inference(ennf_transformation,[],[f11])).
% 2.43/1.00  
% 2.43/1.00  fof(f30,plain,(
% 2.43/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) & v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.43/1.00    inference(flattening,[],[f29])).
% 2.43/1.00  
% 2.43/1.00  fof(f37,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) & v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) => (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,sK3),X0) & v2_connsp_1(sK3,X1) & v3_tops_2(X2,X0,X1) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X1))))) )),
% 2.43/1.00    introduced(choice_axiom,[])).
% 2.43/1.00  
% 2.43/1.00  fof(f36,plain,(
% 2.43/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) & v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2,X3),X0) & v2_connsp_1(X3,X1) & v3_tops_2(sK2,X0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 2.43/1.00    introduced(choice_axiom,[])).
% 2.43/1.00  
% 2.43/1.00  fof(f35,plain,(
% 2.43/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) & v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2,X3),X0) & v2_connsp_1(X3,sK1) & v3_tops_2(X2,X0,sK1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 2.43/1.00    introduced(choice_axiom,[])).
% 2.43/1.00  
% 2.43/1.00  fof(f34,plain,(
% 2.43/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3),X0) & v2_connsp_1(X3,X1) & v3_tops_2(X2,X0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2,X3),sK0) & v2_connsp_1(X3,X1) & v3_tops_2(X2,sK0,X1) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 2.43/1.00    introduced(choice_axiom,[])).
% 2.43/1.00  
% 2.43/1.00  fof(f38,plain,(
% 2.43/1.00    (((~v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0) & v2_connsp_1(sK3,sK1) & v3_tops_2(sK2,sK0,sK1) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 2.43/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f30,f37,f36,f35,f34])).
% 2.43/1.00  
% 2.43/1.00  fof(f67,plain,(
% 2.43/1.00    v3_tops_2(sK2,sK0,sK1)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f59,plain,(
% 2.43/1.00    l1_pre_topc(sK0)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f62,plain,(
% 2.43/1.00    l1_pre_topc(sK1)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f63,plain,(
% 2.43/1.00    v1_funct_1(sK2)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f64,plain,(
% 2.43/1.00    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f65,plain,(
% 2.43/1.00    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f57,plain,(
% 2.43/1.00    ~v2_struct_0(sK0)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f58,plain,(
% 2.43/1.00    v2_pre_topc(sK0)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f60,plain,(
% 2.43/1.00    ~v2_struct_0(sK1)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f61,plain,(
% 2.43/1.00    v2_pre_topc(sK1)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f8,axiom,(
% 2.43/1.00    ! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) => k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3))))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f25,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) | (~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(ennf_transformation,[],[f8])).
% 2.43/1.00  
% 2.43/1.00  fof(f26,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(flattening,[],[f25])).
% 2.43/1.00  
% 2.43/1.00  fof(f55,plain,(
% 2.43/1.00    ( ! [X2,X0,X3,X1] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f26])).
% 2.43/1.00  
% 2.43/1.00  fof(f4,axiom,(
% 2.43/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f17,plain,(
% 2.43/1.00    ! [X0,X1,X2] : ((m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.43/1.00    inference(ennf_transformation,[],[f4])).
% 2.43/1.00  
% 2.43/1.00  fof(f18,plain,(
% 2.43/1.00    ! [X0,X1,X2] : ((m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.43/1.00    inference(flattening,[],[f17])).
% 2.43/1.00  
% 2.43/1.00  fof(f50,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f18])).
% 2.43/1.00  
% 2.43/1.00  fof(f49,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f18])).
% 2.43/1.00  
% 2.43/1.00  fof(f48,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (v1_funct_1(k2_tops_2(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f18])).
% 2.43/1.00  
% 2.43/1.00  fof(f6,axiom,(
% 2.43/1.00    ! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) => v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2))))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f21,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : ((v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) | (~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(ennf_transformation,[],[f6])).
% 2.43/1.00  
% 2.43/1.00  fof(f22,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(flattening,[],[f21])).
% 2.43/1.00  
% 2.43/1.00  fof(f53,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (v2_funct_1(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f22])).
% 2.43/1.00  
% 2.43/1.00  fof(f7,axiom,(
% 2.43/1.00    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f23,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : ((r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) | (~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_struct_0(X1) | v2_struct_0(X1))) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(ennf_transformation,[],[f7])).
% 2.43/1.00  
% 2.43/1.00  fof(f24,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_struct_0(X1) | v2_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(flattening,[],[f23])).
% 2.43/1.00  
% 2.43/1.00  fof(f54,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | v2_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f24])).
% 2.43/1.00  
% 2.43/1.00  fof(f2,axiom,(
% 2.43/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f14,plain,(
% 2.43/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.43/1.00    inference(ennf_transformation,[],[f2])).
% 2.43/1.00  
% 2.43/1.00  fof(f41,plain,(
% 2.43/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f14])).
% 2.43/1.00  
% 2.43/1.00  fof(f5,axiom,(
% 2.43/1.00    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) => (k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1))))))),
% 2.43/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.43/1.00  
% 2.43/1.00  fof(f19,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : (((k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1)) | (~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_struct_0(X1) | v2_struct_0(X1))) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(ennf_transformation,[],[f5])).
% 2.43/1.00  
% 2.43/1.00  fof(f20,plain,(
% 2.43/1.00    ! [X0] : (! [X1] : (! [X2] : ((k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1)) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_struct_0(X1) | v2_struct_0(X1)) | ~l1_struct_0(X0))),
% 2.43/1.00    inference(flattening,[],[f19])).
% 2.43/1.00  
% 2.43/1.00  fof(f52,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (k2_struct_0(X0) = k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) | ~v2_funct_1(X2) | k2_struct_0(X1) != k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_struct_0(X1) | v2_struct_0(X1) | ~l1_struct_0(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f20])).
% 2.43/1.00  
% 2.43/1.00  fof(f43,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) | ~v3_tops_2(X2,X0,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~l1_pre_topc(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f33])).
% 2.43/1.00  
% 2.43/1.00  fof(f44,plain,(
% 2.43/1.00    ( ! [X2,X0,X1] : (v2_funct_1(X2) | ~v3_tops_2(X2,X0,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~l1_pre_topc(X0)) )),
% 2.43/1.00    inference(cnf_transformation,[],[f33])).
% 2.43/1.00  
% 2.43/1.00  fof(f69,plain,(
% 2.43/1.00    ~v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f68,plain,(
% 2.43/1.00    v2_connsp_1(sK3,sK1)),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  fof(f66,plain,(
% 2.43/1.00    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))),
% 2.43/1.00    inference(cnf_transformation,[],[f38])).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1155,plain,
% 2.43/1.00      ( ~ v2_connsp_1(X0_53,X0_55)
% 2.43/1.00      | v2_connsp_1(X1_53,X0_55)
% 2.43/1.00      | X1_53 != X0_53 ),
% 2.43/1.00      theory(equality) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2353,plain,
% 2.43/1.00      ( v2_connsp_1(X0_53,sK0)
% 2.43/1.00      | ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
% 2.43/1.00      | X0_53 != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1155]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2685,plain,
% 2.43/1.00      ( v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,X1_53),sK0)
% 2.43/1.00      | ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,X1_53) != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2353]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_3757,plain,
% 2.43/1.00      ( v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,sK3),sK0)
% 2.43/1.00      | ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,sK3) != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2685]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_3759,plain,
% 2.43/1.00      ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
% 2.43/1.00      | v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0)
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_3757]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1,plain,
% 2.43/1.00      ( ~ r2_funct_2(X0,X1,X2,X3)
% 2.43/1.00      | ~ v1_funct_2(X3,X0,X1)
% 2.43/1.00      | ~ v1_funct_2(X2,X0,X1)
% 2.43/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.43/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.43/1.00      | ~ v1_funct_1(X3)
% 2.43/1.00      | ~ v1_funct_1(X2)
% 2.43/1.00      | X2 = X3 ),
% 2.43/1.00      inference(cnf_transformation,[],[f39]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1136,plain,
% 2.43/1.00      ( ~ r2_funct_2(X0_54,X1_54,X0_53,X1_53)
% 2.43/1.00      | ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.43/1.00      | ~ v1_funct_2(X1_53,X0_54,X1_54)
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | ~ m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | ~ v1_funct_1(X1_53)
% 2.43/1.00      | X0_53 = X1_53 ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_1]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2655,plain,
% 2.43/1.00      ( ~ r2_funct_2(X0_54,X1_54,k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
% 2.43/1.00      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),X0_54,X1_54)
% 2.43/1.00      | ~ v1_funct_2(sK2,X0_54,X1_54)
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.43/1.00      | ~ v1_funct_1(sK2)
% 2.43/1.00      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) = sK2 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1136]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_3135,plain,
% 2.43/1.00      ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
% 2.43/1.00      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.43/1.00      | ~ v1_funct_1(sK2)
% 2.43/1.00      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) = sK2 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2655]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1154,plain,
% 2.43/1.00      ( X0_53 != X1_53
% 2.43/1.00      | X2_53 != X3_53
% 2.43/1.00      | k8_relset_1(X0_54,X1_54,X0_53,X2_53) = k8_relset_1(X0_54,X1_54,X1_53,X3_53) ),
% 2.43/1.00      theory(equality) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2686,plain,
% 2.43/1.00      ( X0_53 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | X1_53 != sK3
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,X1_53) = k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1154]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_3117,plain,
% 2.43/1.00      ( X0_53 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),X0_53,sK3) = k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3)
% 2.43/1.00      | sK3 != sK3 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2686]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_3118,plain,
% 2.43/1.00      ( k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) = k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3)
% 2.43/1.00      | sK3 != sK3
% 2.43/1.00      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_3117]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1143,plain,
% 2.43/1.00      ( X0_53 != X1_53 | X2_53 != X1_53 | X2_53 = X0_53 ),
% 2.43/1.00      theory(equality) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2541,plain,
% 2.43/1.00      ( X0_53 != X1_53
% 2.43/1.00      | X0_53 = k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X1_53 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1143]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2542,plain,
% 2.43/1.00      ( k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != sK2
% 2.43/1.00      | sK2 = k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | sK2 != sK2 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2541]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1141,plain,( X0_53 = X0_53 ),theory(equality) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2459,plain,
% 2.43/1.00      ( sK3 = sK3 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1141]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2129,plain,
% 2.43/1.00      ( v2_connsp_1(X0_53,sK0)
% 2.43/1.00      | ~ v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3),sK0)
% 2.43/1.00      | X0_53 != k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1155]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2246,plain,
% 2.43/1.00      ( v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3),sK0)
% 2.43/1.00      | ~ v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3),sK0)
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) != k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2129]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_17,plain,
% 2.43/1.00      ( ~ v5_pre_topc(X0,X1,X2)
% 2.43/1.00      | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ v2_connsp_1(X3,X1)
% 2.43/1.00      | v2_connsp_1(k7_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0,X3),X2)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
% 2.43/1.00      | ~ v2_pre_topc(X2)
% 2.43/1.00      | ~ v2_pre_topc(X1)
% 2.43/1.00      | v2_struct_0(X2)
% 2.43/1.00      | v2_struct_0(X1)
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ l1_pre_topc(X2)
% 2.43/1.00      | ~ v1_funct_1(X0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_4,plain,
% 2.43/1.00      ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
% 2.43/1.00      | ~ v3_tops_2(X2,X0,X1)
% 2.43/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.43/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.43/1.00      | ~ l1_pre_topc(X0)
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ v1_funct_1(X2) ),
% 2.43/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_20,negated_conjecture,
% 2.43/1.00      ( v3_tops_2(sK2,sK0,sK1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_426,plain,
% 2.43/1.00      ( v5_pre_topc(k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X1,X0)
% 2.43/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.43/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.43/1.00      | ~ l1_pre_topc(X0)
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ v1_funct_1(X2)
% 2.43/1.00      | sK2 != X2
% 2.43/1.00      | sK1 != X1
% 2.43/1.00      | sK0 != X0 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_4,c_20]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_427,plain,
% 2.43/1.00      ( v5_pre_topc(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK1,sK0)
% 2.43/1.00      | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ l1_pre_topc(sK1)
% 2.43/1.00      | ~ l1_pre_topc(sK0)
% 2.43/1.00      | ~ v1_funct_1(sK2) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_426]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_28,negated_conjecture,
% 2.43/1.00      ( l1_pre_topc(sK0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_25,negated_conjecture,
% 2.43/1.00      ( l1_pre_topc(sK1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_24,negated_conjecture,
% 2.43/1.00      ( v1_funct_1(sK2) ),
% 2.43/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_23,negated_conjecture,
% 2.43/1.00      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 2.43/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_22,negated_conjecture,
% 2.43/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 2.43/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_429,plain,
% 2.43/1.00      ( v5_pre_topc(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK1,sK0) ),
% 2.43/1.00      inference(global_propositional_subsumption,
% 2.43/1.00                [status(thm)],
% 2.43/1.00                [c_427,c_28,c_25,c_24,c_23,c_22]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_466,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ v2_connsp_1(X3,X1)
% 2.43/1.00      | v2_connsp_1(k7_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0,X3),X2)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
% 2.43/1.00      | ~ v2_pre_topc(X1)
% 2.43/1.00      | ~ v2_pre_topc(X2)
% 2.43/1.00      | v2_struct_0(X1)
% 2.43/1.00      | v2_struct_0(X2)
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ l1_pre_topc(X2)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != X0
% 2.43/1.00      | sK1 != X1
% 2.43/1.00      | sK0 != X2 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_429]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_467,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ v2_connsp_1(X0,sK1)
% 2.43/1.00      | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0),sK0)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ v2_pre_topc(sK1)
% 2.43/1.00      | ~ v2_pre_topc(sK0)
% 2.43/1.00      | v2_struct_0(sK1)
% 2.43/1.00      | v2_struct_0(sK0)
% 2.43/1.00      | ~ l1_pre_topc(sK1)
% 2.43/1.00      | ~ l1_pre_topc(sK0)
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_466]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_30,negated_conjecture,
% 2.43/1.00      ( ~ v2_struct_0(sK0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_29,negated_conjecture,
% 2.43/1.00      ( v2_pre_topc(sK0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_27,negated_conjecture,
% 2.43/1.00      ( ~ v2_struct_0(sK1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_26,negated_conjecture,
% 2.43/1.00      ( v2_pre_topc(sK1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_471,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ v2_connsp_1(X0,sK1)
% 2.43/1.00      | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0),sK0)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(global_propositional_subsumption,
% 2.43/1.00                [status(thm)],
% 2.43/1.00                [c_467,c_30,c_29,c_28,c_27,c_26,c_25]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1120,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ v2_connsp_1(X0_53,sK1)
% 2.43/1.00      | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0_53),sK0)
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_471]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1138,plain,
% 2.43/1.00      ( ~ v2_connsp_1(X0_53,sK1)
% 2.43/1.00      | v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),X0_53),sK0)
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ sP0_iProver_split ),
% 2.43/1.00      inference(splitting,
% 2.43/1.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.43/1.00                [c_1120]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2081,plain,
% 2.43/1.00      ( v2_connsp_1(k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3),sK0)
% 2.43/1.00      | ~ v2_connsp_1(sK3,sK1)
% 2.43/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ sP0_iProver_split ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1138]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_16,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | ~ l1_struct_0(X2)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k8_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0),X3) = k7_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0,X3)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2) ),
% 2.43/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1131,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(X1_55))
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(X1_55))))
% 2.43/1.00      | ~ m1_subset_1(X1_53,k1_zfmisc_1(u1_struct_0(X0_55)))
% 2.43/1.00      | ~ v2_funct_1(X0_53)
% 2.43/1.00      | ~ l1_struct_0(X1_55)
% 2.43/1.00      | ~ l1_struct_0(X0_55)
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53) != k2_struct_0(X1_55)
% 2.43/1.00      | k8_relset_1(u1_struct_0(X1_55),u1_struct_0(X0_55),k2_tops_2(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53),X1_53) = k7_relset_1(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53,X1_53) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_16]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1972,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,u1_struct_0(sK1),u1_struct_0(X0_55))
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0_55))))
% 2.43/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ v2_funct_1(X0_53)
% 2.43/1.00      | ~ l1_struct_0(X0_55)
% 2.43/1.00      | ~ l1_struct_0(sK1)
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X0_55),X0_53) != k2_struct_0(X0_55)
% 2.43/1.00      | k8_relset_1(u1_struct_0(X0_55),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0_55),X0_53),sK3) = k7_relset_1(u1_struct_0(sK1),u1_struct_0(X0_55),X0_53,sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1131]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2078,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.43/1.00      | ~ v2_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | ~ l1_struct_0(sK1)
% 2.43/1.00      | ~ l1_struct_0(sK0)
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
% 2.43/1.00      | k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK3) = k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1972]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_9,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.43/1.00      | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.43/1.00      | ~ v1_funct_1(X0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1135,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | m1_subset_1(k2_tops_2(X0_54,X1_54,X0_53),k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54)))
% 2.43/1.00      | ~ v1_funct_1(X0_53) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_9]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2001,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1135]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_10,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.43/1.00      | v1_funct_2(k2_tops_2(X1,X2,X0),X2,X1)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.43/1.00      | ~ v1_funct_1(X0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1134,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.43/1.00      | v1_funct_2(k2_tops_2(X0_54,X1_54,X0_53),X1_54,X0_54)
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | ~ v1_funct_1(X0_53) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_10]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2002,plain,
% 2.43/1.00      ( v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1134]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_11,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | v1_funct_1(k2_tops_2(X1,X2,X0)) ),
% 2.43/1.00      inference(cnf_transformation,[],[f48]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1133,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | v1_funct_1(k2_tops_2(X0_54,X1_54,X0_53)) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_11]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2004,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1133]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_14,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | v2_funct_1(k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0))
% 2.43/1.00      | ~ l1_struct_0(X2)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2) ),
% 2.43/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1132,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(X1_55))
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(X1_55))))
% 2.43/1.00      | ~ v2_funct_1(X0_53)
% 2.43/1.00      | v2_funct_1(k2_tops_2(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53))
% 2.43/1.00      | ~ l1_struct_0(X1_55)
% 2.43/1.00      | ~ l1_struct_0(X0_55)
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(X1_55),X0_53) != k2_struct_0(X1_55) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_14]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1969,plain,
% 2.43/1.00      ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | v2_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | ~ v2_funct_1(sK2)
% 2.43/1.00      | ~ l1_struct_0(sK1)
% 2.43/1.00      | ~ l1_struct_0(sK0)
% 2.43/1.00      | ~ v1_funct_1(sK2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1132]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1964,plain,
% 2.43/1.00      ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v1_funct_1(sK2) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1135]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1961,plain,
% 2.43/1.00      ( v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v1_funct_1(sK2) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1134]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1955,plain,
% 2.43/1.00      ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | ~ v1_funct_1(sK2) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1133]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_15,plain,
% 2.43/1.00      ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
% 2.43/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.43/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.43/1.00      | v2_struct_0(X1)
% 2.43/1.00      | ~ v2_funct_1(X2)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ l1_struct_0(X0)
% 2.43/1.00      | ~ v1_funct_1(X2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_525,plain,
% 2.43/1.00      ( r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
% 2.43/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.43/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.43/1.00      | ~ v2_funct_1(X2)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ l1_struct_0(X0)
% 2.43/1.00      | ~ v1_funct_1(X2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) != k2_struct_0(X1)
% 2.43/1.00      | sK1 != X1 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_27]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_526,plain,
% 2.43/1.00      ( r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X1)),X1)
% 2.43/1.00      | ~ v1_funct_2(X1,u1_struct_0(X0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(X1)
% 2.43/1.00      | ~ l1_struct_0(X0)
% 2.43/1.00      | ~ l1_struct_0(sK1)
% 2.43/1.00      | ~ v1_funct_1(X1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X1) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_525]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_2,plain,
% 2.43/1.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f41]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_90,plain,
% 2.43/1.00      ( ~ l1_pre_topc(sK1) | l1_struct_0(sK1) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_530,plain,
% 2.43/1.00      ( ~ l1_struct_0(X0)
% 2.43/1.00      | ~ v2_funct_1(X1)
% 2.43/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v1_funct_2(X1,u1_struct_0(X0),u1_struct_0(sK1))
% 2.43/1.00      | r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X1)),X1)
% 2.43/1.00      | ~ v1_funct_1(X1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X1) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(global_propositional_subsumption,
% 2.43/1.00                [status(thm)],
% 2.43/1.00                [c_526,c_25,c_90]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_531,plain,
% 2.43/1.00      ( r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X1)),X1)
% 2.43/1.00      | ~ v1_funct_2(X1,u1_struct_0(X0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(X1)
% 2.43/1.00      | ~ l1_struct_0(X0)
% 2.43/1.00      | ~ v1_funct_1(X1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X1) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(renaming,[status(thm)],[c_530]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1117,plain,
% 2.43/1.00      ( r2_funct_2(u1_struct_0(X0_55),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0_55),k2_tops_2(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53)),X0_53)
% 2.43/1.00      | ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(X0_53)
% 2.43/1.00      | ~ l1_struct_0(X0_55)
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_531]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1927,plain,
% 2.43/1.00      ( r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
% 2.43/1.00      | ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(sK2)
% 2.43/1.00      | ~ l1_struct_0(sK0)
% 2.43/1.00      | ~ v1_funct_1(sK2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1117]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_12,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | v2_struct_0(X2)
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | ~ l1_struct_0(X2)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0)) = k2_struct_0(X1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_620,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ l1_struct_0(X2)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) != k2_struct_0(X2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X2),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X2),X0)) = k2_struct_0(X1)
% 2.43/1.00      | sK1 != X2 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_12,c_27]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_621,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ l1_struct_0(sK1)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),X0) != k2_struct_0(sK1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK1),X0)) = k2_struct_0(X1) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_620]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_625,plain,
% 2.43/1.00      ( ~ l1_struct_0(X1)
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(sK1))
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),X0) != k2_struct_0(sK1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK1),X0)) = k2_struct_0(X1) ),
% 2.43/1.00      inference(global_propositional_subsumption,
% 2.43/1.00                [status(thm)],
% 2.43/1.00                [c_621,c_25,c_90]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_626,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(X0)
% 2.43/1.00      | ~ l1_struct_0(X1)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),X0) != k2_struct_0(sK1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK1),X0)) = k2_struct_0(X1) ),
% 2.43/1.00      inference(renaming,[status(thm)],[c_625]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1114,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0_53,u1_struct_0(X0_55),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_55),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(X0_53)
% 2.43/1.00      | ~ l1_struct_0(X0_55)
% 2.43/1.00      | ~ v1_funct_1(X0_53)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53) != k2_struct_0(sK1)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(X0_55),k2_tops_2(u1_struct_0(X0_55),u1_struct_0(sK1),X0_53)) = k2_struct_0(X0_55) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_626]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1924,plain,
% 2.43/1.00      ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ v2_funct_1(sK2)
% 2.43/1.00      | ~ l1_struct_0(sK0)
% 2.43/1.00      | ~ v1_funct_1(sK2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) = k2_struct_0(sK0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != k2_struct_0(sK1) ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1114]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1139,plain,
% 2.43/1.00      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.43/1.00      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.43/1.00      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.43/1.00      | sP0_iProver_split ),
% 2.43/1.00      inference(splitting,
% 2.43/1.00                [splitting(split),new_symbols(definition,[])],
% 2.43/1.00                [c_1120]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_7,plain,
% 2.43/1.00      ( ~ v3_tops_2(X0,X1,X2)
% 2.43/1.00      | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ l1_pre_topc(X2)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) = k2_struct_0(X2) ),
% 2.43/1.00      inference(cnf_transformation,[],[f43]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_396,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ l1_pre_topc(X2)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | k2_relset_1(u1_struct_0(X1),u1_struct_0(X2),X0) = k2_struct_0(X2)
% 2.43/1.00      | sK2 != X0
% 2.43/1.00      | sK1 != X2
% 2.43/1.00      | sK0 != X1 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_20]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_397,plain,
% 2.43/1.00      ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | ~ l1_pre_topc(sK1)
% 2.43/1.00      | ~ l1_pre_topc(sK0)
% 2.43/1.00      | ~ v1_funct_1(sK2)
% 2.43/1.00      | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_396]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_399,plain,
% 2.43/1.00      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.43/1.00      inference(global_propositional_subsumption,
% 2.43/1.00                [status(thm)],
% 2.43/1.00                [c_397,c_28,c_25,c_24,c_23,c_22]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1123,plain,
% 2.43/1.00      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.43/1.00      inference(subtyping,[status(esa)],[c_399]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_1168,plain,
% 2.43/1.00      ( sK2 = sK2 ),
% 2.43/1.00      inference(instantiation,[status(thm)],[c_1141]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_514,plain,
% 2.43/1.00      ( l1_struct_0(X0) | sK0 != X0 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_2,c_28]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_515,plain,
% 2.43/1.00      ( l1_struct_0(sK0) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_514]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_6,plain,
% 2.43/1.00      ( ~ v3_tops_2(X0,X1,X2)
% 2.43/1.00      | ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | v2_funct_1(X0)
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ l1_pre_topc(X2)
% 2.43/1.00      | ~ v1_funct_1(X0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f44]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_404,plain,
% 2.43/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.43/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.43/1.00      | v2_funct_1(X0)
% 2.43/1.00      | ~ l1_pre_topc(X1)
% 2.43/1.00      | ~ l1_pre_topc(X2)
% 2.43/1.00      | ~ v1_funct_1(X0)
% 2.43/1.00      | sK2 != X0
% 2.43/1.00      | sK1 != X2
% 2.43/1.00      | sK0 != X1 ),
% 2.43/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_20]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_405,plain,
% 2.43/1.00      ( ~ v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.43/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.43/1.00      | v2_funct_1(sK2)
% 2.43/1.00      | ~ l1_pre_topc(sK1)
% 2.43/1.00      | ~ l1_pre_topc(sK0)
% 2.43/1.00      | ~ v1_funct_1(sK2) ),
% 2.43/1.00      inference(unflattening,[status(thm)],[c_404]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_18,negated_conjecture,
% 2.43/1.00      ( ~ v2_connsp_1(k8_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3),sK0) ),
% 2.43/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_19,negated_conjecture,
% 2.43/1.00      ( v2_connsp_1(sK3,sK1) ),
% 2.43/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(c_21,negated_conjecture,
% 2.43/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.43/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.43/1.00  
% 2.43/1.00  cnf(contradiction,plain,
% 2.43/1.00      ( $false ),
% 2.43/1.00      inference(minisat,
% 2.43/1.00                [status(thm)],
% 2.43/1.00                [c_3759,c_3135,c_3118,c_2542,c_2459,c_2246,c_2081,c_2078,
% 2.43/1.00                 c_2001,c_2002,c_2004,c_1969,c_1964,c_1961,c_1955,c_1927,
% 2.43/1.00                 c_1924,c_1139,c_1123,c_1168,c_515,c_405,c_90,c_18,c_19,
% 2.43/1.00                 c_21,c_22,c_23,c_24,c_25,c_28]) ).
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.43/1.00  
% 2.43/1.00  ------                               Statistics
% 2.43/1.00  
% 2.43/1.00  ------ General
% 2.43/1.00  
% 2.43/1.00  abstr_ref_over_cycles:                  0
% 2.43/1.00  abstr_ref_under_cycles:                 0
% 2.43/1.00  gc_basic_clause_elim:                   0
% 2.43/1.00  forced_gc_time:                         0
% 2.43/1.00  parsing_time:                           0.01
% 2.43/1.00  unif_index_cands_time:                  0.
% 2.43/1.00  unif_index_add_time:                    0.
% 2.43/1.00  orderings_time:                         0.
% 2.43/1.00  out_proof_time:                         0.011
% 2.43/1.00  total_time:                             0.191
% 2.43/1.00  num_of_symbols:                         62
% 2.43/1.00  num_of_terms:                           3462
% 2.43/1.00  
% 2.43/1.00  ------ Preprocessing
% 2.43/1.00  
% 2.43/1.00  num_of_splits:                          1
% 2.43/1.00  num_of_split_atoms:                     1
% 2.43/1.00  num_of_reused_defs:                     0
% 2.43/1.00  num_eq_ax_congr_red:                    33
% 2.43/1.00  num_of_sem_filtered_clauses:            1
% 2.43/1.00  num_of_subtypes:                        5
% 2.43/1.00  monotx_restored_types:                  0
% 2.43/1.00  sat_num_of_epr_types:                   0
% 2.43/1.00  sat_num_of_non_cyclic_types:            0
% 2.43/1.00  sat_guarded_non_collapsed_types:        1
% 2.43/1.00  num_pure_diseq_elim:                    0
% 2.43/1.00  simp_replaced_by:                       0
% 2.43/1.00  res_preprocessed:                       142
% 2.43/1.00  prep_upred:                             0
% 2.43/1.00  prep_unflattend:                        64
% 2.43/1.00  smt_new_axioms:                         0
% 2.43/1.00  pred_elim_cands:                        7
% 2.43/1.00  pred_elim:                              5
% 2.43/1.00  pred_elim_cl:                           5
% 2.43/1.00  pred_elim_cycles:                       8
% 2.43/1.00  merged_defs:                            0
% 2.43/1.00  merged_defs_ncl:                        0
% 2.43/1.00  bin_hyper_res:                          0
% 2.43/1.00  prep_cycles:                            4
% 2.43/1.00  pred_elim_time:                         0.02
% 2.43/1.00  splitting_time:                         0.
% 2.43/1.00  sem_filter_time:                        0.
% 2.43/1.00  monotx_time:                            0.
% 2.43/1.00  subtype_inf_time:                       0.001
% 2.43/1.00  
% 2.43/1.00  ------ Problem properties
% 2.43/1.00  
% 2.43/1.00  clauses:                                27
% 2.43/1.00  conjectures:                            6
% 2.43/1.00  epr:                                    5
% 2.43/1.00  horn:                                   27
% 2.43/1.00  ground:                                 12
% 2.43/1.00  unary:                                  11
% 2.43/1.00  binary:                                 0
% 2.43/1.00  lits:                                   105
% 2.43/1.00  lits_eq:                                16
% 2.43/1.00  fd_pure:                                0
% 2.43/1.00  fd_pseudo:                              0
% 2.43/1.00  fd_cond:                                0
% 2.43/1.00  fd_pseudo_cond:                         1
% 2.43/1.00  ac_symbols:                             0
% 2.43/1.00  
% 2.43/1.00  ------ Propositional Solver
% 2.43/1.00  
% 2.43/1.00  prop_solver_calls:                      28
% 2.43/1.00  prop_fast_solver_calls:                 1523
% 2.43/1.00  smt_solver_calls:                       0
% 2.43/1.00  smt_fast_solver_calls:                  0
% 2.43/1.00  prop_num_of_clauses:                    889
% 2.43/1.00  prop_preprocess_simplified:             4298
% 2.43/1.00  prop_fo_subsumed:                       109
% 2.43/1.00  prop_solver_time:                       0.
% 2.43/1.00  smt_solver_time:                        0.
% 2.43/1.00  smt_fast_solver_time:                   0.
% 2.43/1.00  prop_fast_solver_time:                  0.
% 2.43/1.00  prop_unsat_core_time:                   0.
% 2.43/1.00  
% 2.43/1.00  ------ QBF
% 2.43/1.00  
% 2.43/1.00  qbf_q_res:                              0
% 2.43/1.00  qbf_num_tautologies:                    0
% 2.43/1.00  qbf_prep_cycles:                        0
% 2.43/1.00  
% 2.43/1.00  ------ BMC1
% 2.43/1.00  
% 2.43/1.00  bmc1_current_bound:                     -1
% 2.43/1.00  bmc1_last_solved_bound:                 -1
% 2.43/1.00  bmc1_unsat_core_size:                   -1
% 2.43/1.00  bmc1_unsat_core_parents_size:           -1
% 2.43/1.00  bmc1_merge_next_fun:                    0
% 2.43/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.43/1.00  
% 2.43/1.00  ------ Instantiation
% 2.43/1.00  
% 2.43/1.00  inst_num_of_clauses:                    276
% 2.43/1.00  inst_num_in_passive:                    24
% 2.43/1.00  inst_num_in_active:                     206
% 2.43/1.00  inst_num_in_unprocessed:                45
% 2.43/1.00  inst_num_of_loops:                      225
% 2.43/1.00  inst_num_of_learning_restarts:          0
% 2.43/1.00  inst_num_moves_active_passive:          12
% 2.43/1.00  inst_lit_activity:                      0
% 2.43/1.00  inst_lit_activity_moves:                0
% 2.43/1.00  inst_num_tautologies:                   0
% 2.43/1.00  inst_num_prop_implied:                  0
% 2.43/1.00  inst_num_existing_simplified:           0
% 2.43/1.00  inst_num_eq_res_simplified:             0
% 2.43/1.00  inst_num_child_elim:                    0
% 2.43/1.00  inst_num_of_dismatching_blockings:      155
% 2.43/1.00  inst_num_of_non_proper_insts:           359
% 2.43/1.00  inst_num_of_duplicates:                 0
% 2.43/1.00  inst_inst_num_from_inst_to_res:         0
% 2.43/1.00  inst_dismatching_checking_time:         0.
% 2.43/1.00  
% 2.43/1.00  ------ Resolution
% 2.43/1.00  
% 2.43/1.00  res_num_of_clauses:                     0
% 2.43/1.00  res_num_in_passive:                     0
% 2.43/1.00  res_num_in_active:                      0
% 2.43/1.00  res_num_of_loops:                       146
% 2.43/1.00  res_forward_subset_subsumed:            35
% 2.43/1.00  res_backward_subset_subsumed:           2
% 2.43/1.00  res_forward_subsumed:                   0
% 2.43/1.00  res_backward_subsumed:                  0
% 2.43/1.00  res_forward_subsumption_resolution:     0
% 2.43/1.00  res_backward_subsumption_resolution:    0
% 2.43/1.00  res_clause_to_clause_subsumption:       138
% 2.43/1.00  res_orphan_elimination:                 0
% 2.43/1.00  res_tautology_del:                      85
% 2.43/1.00  res_num_eq_res_simplified:              0
% 2.43/1.00  res_num_sel_changes:                    0
% 2.43/1.00  res_moves_from_active_to_pass:          0
% 2.43/1.00  
% 2.43/1.00  ------ Superposition
% 2.43/1.00  
% 2.43/1.00  sup_time_total:                         0.
% 2.43/1.00  sup_time_generating:                    0.
% 2.43/1.00  sup_time_sim_full:                      0.
% 2.43/1.00  sup_time_sim_immed:                     0.
% 2.43/1.00  
% 2.43/1.00  sup_num_of_clauses:                     51
% 2.43/1.00  sup_num_in_active:                      44
% 2.43/1.00  sup_num_in_passive:                     7
% 2.43/1.00  sup_num_of_loops:                       44
% 2.43/1.00  sup_fw_superposition:                   17
% 2.43/1.00  sup_bw_superposition:                   9
% 2.43/1.00  sup_immediate_simplified:               0
% 2.43/1.00  sup_given_eliminated:                   0
% 2.43/1.00  comparisons_done:                       0
% 2.43/1.00  comparisons_avoided:                    0
% 2.43/1.00  
% 2.43/1.00  ------ Simplifications
% 2.43/1.00  
% 2.43/1.00  
% 2.43/1.00  sim_fw_subset_subsumed:                 0
% 2.43/1.00  sim_bw_subset_subsumed:                 0
% 2.43/1.00  sim_fw_subsumed:                        0
% 2.43/1.00  sim_bw_subsumed:                        0
% 2.43/1.00  sim_fw_subsumption_res:                 4
% 2.43/1.00  sim_bw_subsumption_res:                 0
% 2.43/1.00  sim_tautology_del:                      0
% 2.43/1.00  sim_eq_tautology_del:                   2
% 2.43/1.00  sim_eq_res_simp:                        0
% 2.43/1.00  sim_fw_demodulated:                     0
% 2.43/1.00  sim_bw_demodulated:                     0
% 2.43/1.00  sim_light_normalised:                   0
% 2.43/1.00  sim_joinable_taut:                      0
% 2.43/1.00  sim_joinable_simp:                      0
% 2.43/1.00  sim_ac_normalised:                      0
% 2.43/1.00  sim_smt_subsumption:                    0
% 2.43/1.00  
%------------------------------------------------------------------------------
