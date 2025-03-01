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
% DateTime   : Thu Dec  3 12:17:46 EST 2020

% Result     : Theorem 1.47s
% Output     : CNFRefutation 1.47s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 778 expanded)
%              Number of clauses        :   72 ( 232 expanded)
%              Number of leaves         :   14 ( 255 expanded)
%              Depth                    :   20
%              Number of atoms          :  338 (5189 expanded)
%              Number of equality atoms :  134 (1483 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,conjecture,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0] :
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
    inference(negated_conjecture,[],[f8])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
          & v2_funct_1(X2)
          & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,sK3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),sK3)
        & v2_funct_1(X2)
        & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
        & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
              & v2_funct_1(X2)
              & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
              & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( ? [X3] :
            ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2),X3)
            & v2_funct_1(sK2)
            & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2)
            & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( k7_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2,X3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2),X3)
                & v2_funct_1(X2)
                & k2_struct_0(sK1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2)
                & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
            & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1))
            & v1_funct_1(X2) )
        & l1_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3)
                    & v2_funct_1(X2)
                    & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
            & l1_struct_0(X1) )
        & l1_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( k7_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2),X3)
                  & v2_funct_1(X2)
                  & k2_struct_0(X1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2)
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK0))) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1) )
      & l1_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3)
    & v2_funct_1(sK2)
    & k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0)))
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_struct_0(sK1)
    & l1_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f21,f25,f24,f23,f22])).

fof(f42,plain,(
    k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f31,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f36,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f37,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f16])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f43,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f26])).

fof(f38,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f26])).

fof(f39,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f26])).

fof(f40,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f26])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f18])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( v2_funct_1(X1)
       => k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0)
      | ~ v2_funct_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f11,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0)
      | ~ v2_funct_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f10])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0)
      | ~ v2_funct_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f29,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f44,plain,(
    k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_11,negated_conjecture,
    ( k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_377,negated_conjecture,
    ( k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_4,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_17,negated_conjecture,
    ( l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_190,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_17])).

cnf(c_191,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_190])).

cnf(c_371,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_191])).

cnf(c_16,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_185,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_16])).

cnf(c_186,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_185])).

cnf(c_372,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_186])).

cnf(c_700,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_377,c_371,c_372])).

cnf(c_5,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_10,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_218,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_10])).

cnf(c_219,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2) ),
    inference(unflattening,[status(thm)],[c_218])).

cnf(c_15,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_223,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(sK2,X0,X1)
    | k2_relset_1(X0,X1,sK2) != X1
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_219,c_15])).

cnf(c_224,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_relset_1(X0,X1,sK2) != X1
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2) ),
    inference(renaming,[status(thm)],[c_223])).

cnf(c_370,plain,
    ( ~ v1_funct_2(sK2,X0_51,X1_51)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | k2_relset_1(X0_51,X1_51,sK2) != X1_51
    | k2_tops_2(X0_51,X1_51,sK2) = k2_funct_1(sK2) ),
    inference(subtyping,[status(esa)],[c_224])).

cnf(c_680,plain,
    ( k2_relset_1(X0_51,X1_51,sK2) != X1_51
    | k2_tops_2(X0_51,X1_51,sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,X0_51,X1_51) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_370])).

cnf(c_1075,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_700,c_680])).

cnf(c_14,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_374,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_678,plain,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_374])).

cnf(c_697,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_678,c_371,c_372])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_375,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_677,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_375])).

cnf(c_703,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_677,c_371,c_372])).

cnf(c_1118,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1075,c_697,c_703])).

cnf(c_6,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_381,plain,
    ( ~ v1_funct_2(X0_49,X0_51,X1_51)
    | ~ m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | m1_subset_1(k2_tops_2(X0_51,X1_51,X0_49),k1_zfmisc_1(k2_zfmisc_1(X1_51,X0_51)))
    | ~ v1_funct_1(X0_49) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_673,plain,
    ( v1_funct_2(X0_49,X0_51,X1_51) != iProver_top
    | m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | m1_subset_1(k2_tops_2(X0_51,X1_51,X0_49),k1_zfmisc_1(k2_zfmisc_1(X1_51,X0_51))) = iProver_top
    | v1_funct_1(X0_49) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_381])).

cnf(c_1122,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1118,c_673])).

cnf(c_20,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_1506,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1122,c_20,c_697,c_703])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_382,plain,
    ( ~ m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | k8_relset_1(X0_51,X1_51,X0_49,X1_49) = k10_relat_1(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_672,plain,
    ( k8_relset_1(X0_51,X1_51,X0_49,X1_49) = k10_relat_1(X0_49,X1_49)
    | m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_382])).

cnf(c_1512,plain,
    ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0_49) = k10_relat_1(k2_funct_1(sK2),X0_49) ),
    inference(superposition,[status(thm)],[c_1506,c_672])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_0,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k10_relat_1(k2_funct_1(X0),X1) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_242,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k10_relat_1(k2_funct_1(X0),X1) = k9_relat_1(X0,X1)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_10])).

cnf(c_243,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | k10_relat_1(k2_funct_1(sK2),X0) = k9_relat_1(sK2,X0) ),
    inference(unflattening,[status(thm)],[c_242])).

cnf(c_247,plain,
    ( ~ v1_relat_1(sK2)
    | k10_relat_1(k2_funct_1(sK2),X0) = k9_relat_1(sK2,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_243,c_15])).

cnf(c_268,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k10_relat_1(k2_funct_1(sK2),X3) = k9_relat_1(sK2,X3)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_247])).

cnf(c_269,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k10_relat_1(k2_funct_1(sK2),X2) = k9_relat_1(sK2,X2) ),
    inference(unflattening,[status(thm)],[c_268])).

cnf(c_369,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49) ),
    inference(subtyping,[status(esa)],[c_269])).

cnf(c_384,plain,
    ( k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_369])).

cnf(c_683,plain,
    ( k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49)
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_384])).

cnf(c_386,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_369])).

cnf(c_385,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_369])).

cnf(c_792,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ sP1_iProver_split ),
    inference(instantiation,[status(thm)],[c_385])).

cnf(c_1278,plain,
    ( k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49) ),
    inference(global_propositional_subsumption,[status(thm)],[c_683,c_13,c_386,c_384,c_792])).

cnf(c_1531,plain,
    ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49) ),
    inference(light_normalisation,[status(thm)],[c_1512,c_1278])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_383,plain,
    ( ~ m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | k7_relset_1(X0_51,X1_51,X0_49,X1_49) = k9_relat_1(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_671,plain,
    ( k7_relset_1(X0_51,X1_51,X0_49,X1_49) = k9_relat_1(X0_49,X1_49)
    | m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_383])).

cnf(c_910,plain,
    ( k7_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,X0_49) = k9_relat_1(sK2,X0_49) ),
    inference(superposition,[status(thm)],[c_703,c_671])).

cnf(c_9,negated_conjecture,
    ( k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_378,negated_conjecture,
    ( k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_722,plain,
    ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2),sK3) != k7_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,sK3) ),
    inference(light_normalisation,[status(thm)],[c_378,c_371,c_372])).

cnf(c_1121,plain,
    ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),sK3) != k7_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,sK3) ),
    inference(demodulation,[status(thm)],[c_1118,c_722])).

cnf(c_1204,plain,
    ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),sK3) != k9_relat_1(sK2,sK3) ),
    inference(demodulation,[status(thm)],[c_910,c_1121])).

cnf(c_1608,plain,
    ( k9_relat_1(sK2,sK3) != k9_relat_1(sK2,sK3) ),
    inference(demodulation,[status(thm)],[c_1531,c_1204])).

cnf(c_395,plain,
    ( k9_relat_1(X0_49,X1_49) = k9_relat_1(X2_49,X1_49)
    | X0_49 != X2_49 ),
    theory(equality)).

cnf(c_1189,plain,
    ( k9_relat_1(sK2,sK3) = k9_relat_1(X0_49,sK3)
    | sK2 != X0_49 ),
    inference(instantiation,[status(thm)],[c_395])).

cnf(c_1190,plain,
    ( k9_relat_1(sK2,sK3) = k9_relat_1(sK2,sK3)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1189])).

cnf(c_388,plain,
    ( X0_49 = X0_49 ),
    theory(equality)).

cnf(c_420,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_388])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1608,c_1190,c_420])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n021.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 14:12:49 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running in FOF mode
% 1.47/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.47/0.97  
% 1.47/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.47/0.97  
% 1.47/0.97  ------  iProver source info
% 1.47/0.97  
% 1.47/0.97  git: date: 2020-06-30 10:37:57 +0100
% 1.47/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.47/0.97  git: non_committed_changes: false
% 1.47/0.97  git: last_make_outside_of_git: false
% 1.47/0.97  
% 1.47/0.97  ------ 
% 1.47/0.97  
% 1.47/0.97  ------ Input Options
% 1.47/0.97  
% 1.47/0.97  --out_options                           all
% 1.47/0.97  --tptp_safe_out                         true
% 1.47/0.97  --problem_path                          ""
% 1.47/0.97  --include_path                          ""
% 1.47/0.97  --clausifier                            res/vclausify_rel
% 1.47/0.97  --clausifier_options                    --mode clausify
% 1.47/0.97  --stdin                                 false
% 1.47/0.97  --stats_out                             all
% 1.47/0.97  
% 1.47/0.97  ------ General Options
% 1.47/0.97  
% 1.47/0.97  --fof                                   false
% 1.47/0.97  --time_out_real                         305.
% 1.47/0.97  --time_out_virtual                      -1.
% 1.47/0.97  --symbol_type_check                     false
% 1.47/0.97  --clausify_out                          false
% 1.47/0.97  --sig_cnt_out                           false
% 1.47/0.97  --trig_cnt_out                          false
% 1.47/0.97  --trig_cnt_out_tolerance                1.
% 1.47/0.97  --trig_cnt_out_sk_spl                   false
% 1.47/0.97  --abstr_cl_out                          false
% 1.47/0.97  
% 1.47/0.97  ------ Global Options
% 1.47/0.97  
% 1.47/0.97  --schedule                              default
% 1.47/0.97  --add_important_lit                     false
% 1.47/0.97  --prop_solver_per_cl                    1000
% 1.47/0.97  --min_unsat_core                        false
% 1.47/0.97  --soft_assumptions                      false
% 1.47/0.97  --soft_lemma_size                       3
% 1.47/0.97  --prop_impl_unit_size                   0
% 1.47/0.97  --prop_impl_unit                        []
% 1.47/0.97  --share_sel_clauses                     true
% 1.47/0.97  --reset_solvers                         false
% 1.47/0.97  --bc_imp_inh                            [conj_cone]
% 1.47/0.97  --conj_cone_tolerance                   3.
% 1.47/0.97  --extra_neg_conj                        none
% 1.47/0.97  --large_theory_mode                     true
% 1.47/0.97  --prolific_symb_bound                   200
% 1.47/0.97  --lt_threshold                          2000
% 1.47/0.97  --clause_weak_htbl                      true
% 1.47/0.97  --gc_record_bc_elim                     false
% 1.47/0.97  
% 1.47/0.97  ------ Preprocessing Options
% 1.47/0.97  
% 1.47/0.97  --preprocessing_flag                    true
% 1.47/0.97  --time_out_prep_mult                    0.1
% 1.47/0.97  --splitting_mode                        input
% 1.47/0.97  --splitting_grd                         true
% 1.47/0.97  --splitting_cvd                         false
% 1.47/0.97  --splitting_cvd_svl                     false
% 1.47/0.97  --splitting_nvd                         32
% 1.47/0.97  --sub_typing                            true
% 1.47/0.97  --prep_gs_sim                           true
% 1.47/0.97  --prep_unflatten                        true
% 1.47/0.97  --prep_res_sim                          true
% 1.47/0.97  --prep_upred                            true
% 1.47/0.97  --prep_sem_filter                       exhaustive
% 1.47/0.97  --prep_sem_filter_out                   false
% 1.47/0.97  --pred_elim                             true
% 1.47/0.97  --res_sim_input                         true
% 1.47/0.97  --eq_ax_congr_red                       true
% 1.47/0.97  --pure_diseq_elim                       true
% 1.47/0.97  --brand_transform                       false
% 1.47/0.97  --non_eq_to_eq                          false
% 1.47/0.97  --prep_def_merge                        true
% 1.47/0.97  --prep_def_merge_prop_impl              false
% 1.47/0.97  --prep_def_merge_mbd                    true
% 1.47/0.97  --prep_def_merge_tr_red                 false
% 1.47/0.97  --prep_def_merge_tr_cl                  false
% 1.47/0.97  --smt_preprocessing                     true
% 1.47/0.97  --smt_ac_axioms                         fast
% 1.47/0.97  --preprocessed_out                      false
% 1.47/0.97  --preprocessed_stats                    false
% 1.47/0.97  
% 1.47/0.97  ------ Abstraction refinement Options
% 1.47/0.97  
% 1.47/0.97  --abstr_ref                             []
% 1.47/0.97  --abstr_ref_prep                        false
% 1.47/0.97  --abstr_ref_until_sat                   false
% 1.47/0.97  --abstr_ref_sig_restrict                funpre
% 1.47/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 1.47/0.97  --abstr_ref_under                       []
% 1.47/0.97  
% 1.47/0.97  ------ SAT Options
% 1.47/0.97  
% 1.47/0.97  --sat_mode                              false
% 1.47/0.97  --sat_fm_restart_options                ""
% 1.47/0.97  --sat_gr_def                            false
% 1.47/0.97  --sat_epr_types                         true
% 1.47/0.97  --sat_non_cyclic_types                  false
% 1.47/0.97  --sat_finite_models                     false
% 1.47/0.97  --sat_fm_lemmas                         false
% 1.47/0.97  --sat_fm_prep                           false
% 1.47/0.97  --sat_fm_uc_incr                        true
% 1.47/0.97  --sat_out_model                         small
% 1.47/0.97  --sat_out_clauses                       false
% 1.47/0.97  
% 1.47/0.97  ------ QBF Options
% 1.47/0.97  
% 1.47/0.97  --qbf_mode                              false
% 1.47/0.97  --qbf_elim_univ                         false
% 1.47/0.97  --qbf_dom_inst                          none
% 1.47/0.97  --qbf_dom_pre_inst                      false
% 1.47/0.97  --qbf_sk_in                             false
% 1.47/0.97  --qbf_pred_elim                         true
% 1.47/0.97  --qbf_split                             512
% 1.47/0.97  
% 1.47/0.97  ------ BMC1 Options
% 1.47/0.97  
% 1.47/0.97  --bmc1_incremental                      false
% 1.47/0.97  --bmc1_axioms                           reachable_all
% 1.47/0.97  --bmc1_min_bound                        0
% 1.47/0.97  --bmc1_max_bound                        -1
% 1.47/0.97  --bmc1_max_bound_default                -1
% 1.47/0.97  --bmc1_symbol_reachability              true
% 1.47/0.97  --bmc1_property_lemmas                  false
% 1.47/0.97  --bmc1_k_induction                      false
% 1.47/0.97  --bmc1_non_equiv_states                 false
% 1.47/0.97  --bmc1_deadlock                         false
% 1.47/0.97  --bmc1_ucm                              false
% 1.47/0.97  --bmc1_add_unsat_core                   none
% 1.47/0.97  --bmc1_unsat_core_children              false
% 1.47/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 1.47/0.97  --bmc1_out_stat                         full
% 1.47/0.97  --bmc1_ground_init                      false
% 1.47/0.97  --bmc1_pre_inst_next_state              false
% 1.47/0.97  --bmc1_pre_inst_state                   false
% 1.47/0.97  --bmc1_pre_inst_reach_state             false
% 1.47/0.97  --bmc1_out_unsat_core                   false
% 1.47/0.97  --bmc1_aig_witness_out                  false
% 1.47/0.97  --bmc1_verbose                          false
% 1.47/0.97  --bmc1_dump_clauses_tptp                false
% 1.47/0.97  --bmc1_dump_unsat_core_tptp             false
% 1.47/0.97  --bmc1_dump_file                        -
% 1.47/0.97  --bmc1_ucm_expand_uc_limit              128
% 1.47/0.97  --bmc1_ucm_n_expand_iterations          6
% 1.47/0.97  --bmc1_ucm_extend_mode                  1
% 1.47/0.97  --bmc1_ucm_init_mode                    2
% 1.47/0.97  --bmc1_ucm_cone_mode                    none
% 1.47/0.97  --bmc1_ucm_reduced_relation_type        0
% 1.47/0.97  --bmc1_ucm_relax_model                  4
% 1.47/0.97  --bmc1_ucm_full_tr_after_sat            true
% 1.47/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 1.47/0.97  --bmc1_ucm_layered_model                none
% 1.47/0.97  --bmc1_ucm_max_lemma_size               10
% 1.47/0.97  
% 1.47/0.97  ------ AIG Options
% 1.47/0.97  
% 1.47/0.97  --aig_mode                              false
% 1.47/0.97  
% 1.47/0.97  ------ Instantiation Options
% 1.47/0.97  
% 1.47/0.97  --instantiation_flag                    true
% 1.47/0.97  --inst_sos_flag                         false
% 1.47/0.97  --inst_sos_phase                        true
% 1.47/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.47/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.47/0.97  --inst_lit_sel_side                     num_symb
% 1.47/0.97  --inst_solver_per_active                1400
% 1.47/0.97  --inst_solver_calls_frac                1.
% 1.47/0.97  --inst_passive_queue_type               priority_queues
% 1.47/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.47/0.97  --inst_passive_queues_freq              [25;2]
% 1.47/0.97  --inst_dismatching                      true
% 1.47/0.97  --inst_eager_unprocessed_to_passive     true
% 1.47/0.97  --inst_prop_sim_given                   true
% 1.47/0.97  --inst_prop_sim_new                     false
% 1.47/0.97  --inst_subs_new                         false
% 1.47/0.97  --inst_eq_res_simp                      false
% 1.47/0.97  --inst_subs_given                       false
% 1.47/0.97  --inst_orphan_elimination               true
% 1.47/0.97  --inst_learning_loop_flag               true
% 1.47/0.97  --inst_learning_start                   3000
% 1.47/0.97  --inst_learning_factor                  2
% 1.47/0.97  --inst_start_prop_sim_after_learn       3
% 1.47/0.97  --inst_sel_renew                        solver
% 1.47/0.97  --inst_lit_activity_flag                true
% 1.47/0.97  --inst_restr_to_given                   false
% 1.47/0.97  --inst_activity_threshold               500
% 1.47/0.97  --inst_out_proof                        true
% 1.47/0.97  
% 1.47/0.97  ------ Resolution Options
% 1.47/0.97  
% 1.47/0.97  --resolution_flag                       true
% 1.47/0.97  --res_lit_sel                           adaptive
% 1.47/0.97  --res_lit_sel_side                      none
% 1.47/0.97  --res_ordering                          kbo
% 1.47/0.97  --res_to_prop_solver                    active
% 1.47/0.97  --res_prop_simpl_new                    false
% 1.47/0.97  --res_prop_simpl_given                  true
% 1.47/0.97  --res_passive_queue_type                priority_queues
% 1.47/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.47/0.97  --res_passive_queues_freq               [15;5]
% 1.47/0.97  --res_forward_subs                      full
% 1.47/0.97  --res_backward_subs                     full
% 1.47/0.97  --res_forward_subs_resolution           true
% 1.47/0.97  --res_backward_subs_resolution          true
% 1.47/0.97  --res_orphan_elimination                true
% 1.47/0.97  --res_time_limit                        2.
% 1.47/0.97  --res_out_proof                         true
% 1.47/0.97  
% 1.47/0.97  ------ Superposition Options
% 1.47/0.97  
% 1.47/0.97  --superposition_flag                    true
% 1.47/0.97  --sup_passive_queue_type                priority_queues
% 1.47/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.47/0.97  --sup_passive_queues_freq               [8;1;4]
% 1.47/0.97  --demod_completeness_check              fast
% 1.47/0.97  --demod_use_ground                      true
% 1.47/0.97  --sup_to_prop_solver                    passive
% 1.47/0.97  --sup_prop_simpl_new                    true
% 1.47/0.97  --sup_prop_simpl_given                  true
% 1.47/0.97  --sup_fun_splitting                     false
% 1.47/0.97  --sup_smt_interval                      50000
% 1.47/0.97  
% 1.47/0.97  ------ Superposition Simplification Setup
% 1.47/0.97  
% 1.47/0.97  --sup_indices_passive                   []
% 1.47/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 1.47/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/0.97  --sup_full_bw                           [BwDemod]
% 1.47/0.97  --sup_immed_triv                        [TrivRules]
% 1.47/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.47/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/0.97  --sup_immed_bw_main                     []
% 1.47/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 1.47/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/0.97  
% 1.47/0.97  ------ Combination Options
% 1.47/0.97  
% 1.47/0.97  --comb_res_mult                         3
% 1.47/0.97  --comb_sup_mult                         2
% 1.47/0.97  --comb_inst_mult                        10
% 1.47/0.97  
% 1.47/0.97  ------ Debug Options
% 1.47/0.97  
% 1.47/0.97  --dbg_backtrace                         false
% 1.47/0.97  --dbg_dump_prop_clauses                 false
% 1.47/0.97  --dbg_dump_prop_clauses_file            -
% 1.47/0.97  --dbg_out_stat                          false
% 1.47/0.97  ------ Parsing...
% 1.47/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.47/0.97  
% 1.47/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.47/0.97  
% 1.47/0.97  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.47/0.97  
% 1.47/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.47/0.97  ------ Proving...
% 1.47/0.97  ------ Problem Properties 
% 1.47/0.97  
% 1.47/0.97  
% 1.47/0.97  clauses                                 17
% 1.47/0.97  conjectures                             6
% 1.47/0.97  EPR                                     2
% 1.47/0.97  Horn                                    16
% 1.47/0.97  unary                                   8
% 1.47/0.97  binary                                  5
% 1.47/0.97  lits                                    34
% 1.47/0.97  lits eq                                 9
% 1.47/0.97  fd_pure                                 0
% 1.47/0.97  fd_pseudo                               0
% 1.47/0.97  fd_cond                                 0
% 1.47/0.97  fd_pseudo_cond                          0
% 1.47/0.97  AC symbols                              0
% 1.47/0.97  
% 1.47/0.97  ------ Schedule dynamic 5 is on 
% 1.47/0.97  
% 1.47/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.47/0.97  
% 1.47/0.97  
% 1.47/0.97  ------ 
% 1.47/0.97  Current options:
% 1.47/0.97  ------ 
% 1.47/0.97  
% 1.47/0.97  ------ Input Options
% 1.47/0.97  
% 1.47/0.97  --out_options                           all
% 1.47/0.97  --tptp_safe_out                         true
% 1.47/0.97  --problem_path                          ""
% 1.47/0.97  --include_path                          ""
% 1.47/0.97  --clausifier                            res/vclausify_rel
% 1.47/0.97  --clausifier_options                    --mode clausify
% 1.47/0.97  --stdin                                 false
% 1.47/0.97  --stats_out                             all
% 1.47/0.97  
% 1.47/0.97  ------ General Options
% 1.47/0.97  
% 1.47/0.97  --fof                                   false
% 1.47/0.97  --time_out_real                         305.
% 1.47/0.97  --time_out_virtual                      -1.
% 1.47/0.97  --symbol_type_check                     false
% 1.47/0.97  --clausify_out                          false
% 1.47/0.97  --sig_cnt_out                           false
% 1.47/0.97  --trig_cnt_out                          false
% 1.47/0.97  --trig_cnt_out_tolerance                1.
% 1.47/0.97  --trig_cnt_out_sk_spl                   false
% 1.47/0.97  --abstr_cl_out                          false
% 1.47/0.97  
% 1.47/0.97  ------ Global Options
% 1.47/0.97  
% 1.47/0.97  --schedule                              default
% 1.47/0.97  --add_important_lit                     false
% 1.47/0.97  --prop_solver_per_cl                    1000
% 1.47/0.97  --min_unsat_core                        false
% 1.47/0.97  --soft_assumptions                      false
% 1.47/0.97  --soft_lemma_size                       3
% 1.47/0.97  --prop_impl_unit_size                   0
% 1.47/0.97  --prop_impl_unit                        []
% 1.47/0.97  --share_sel_clauses                     true
% 1.47/0.97  --reset_solvers                         false
% 1.47/0.97  --bc_imp_inh                            [conj_cone]
% 1.47/0.97  --conj_cone_tolerance                   3.
% 1.47/0.97  --extra_neg_conj                        none
% 1.47/0.97  --large_theory_mode                     true
% 1.47/0.97  --prolific_symb_bound                   200
% 1.47/0.97  --lt_threshold                          2000
% 1.47/0.97  --clause_weak_htbl                      true
% 1.47/0.97  --gc_record_bc_elim                     false
% 1.47/0.97  
% 1.47/0.97  ------ Preprocessing Options
% 1.47/0.97  
% 1.47/0.97  --preprocessing_flag                    true
% 1.47/0.97  --time_out_prep_mult                    0.1
% 1.47/0.97  --splitting_mode                        input
% 1.47/0.97  --splitting_grd                         true
% 1.47/0.97  --splitting_cvd                         false
% 1.47/0.97  --splitting_cvd_svl                     false
% 1.47/0.97  --splitting_nvd                         32
% 1.47/0.97  --sub_typing                            true
% 1.47/0.97  --prep_gs_sim                           true
% 1.47/0.97  --prep_unflatten                        true
% 1.47/0.97  --prep_res_sim                          true
% 1.47/0.97  --prep_upred                            true
% 1.47/0.97  --prep_sem_filter                       exhaustive
% 1.47/0.97  --prep_sem_filter_out                   false
% 1.47/0.97  --pred_elim                             true
% 1.47/0.97  --res_sim_input                         true
% 1.47/0.97  --eq_ax_congr_red                       true
% 1.47/0.97  --pure_diseq_elim                       true
% 1.47/0.97  --brand_transform                       false
% 1.47/0.97  --non_eq_to_eq                          false
% 1.47/0.97  --prep_def_merge                        true
% 1.47/0.97  --prep_def_merge_prop_impl              false
% 1.47/0.97  --prep_def_merge_mbd                    true
% 1.47/0.97  --prep_def_merge_tr_red                 false
% 1.47/0.97  --prep_def_merge_tr_cl                  false
% 1.47/0.97  --smt_preprocessing                     true
% 1.47/0.97  --smt_ac_axioms                         fast
% 1.47/0.97  --preprocessed_out                      false
% 1.47/0.97  --preprocessed_stats                    false
% 1.47/0.97  
% 1.47/0.97  ------ Abstraction refinement Options
% 1.47/0.97  
% 1.47/0.97  --abstr_ref                             []
% 1.47/0.97  --abstr_ref_prep                        false
% 1.47/0.97  --abstr_ref_until_sat                   false
% 1.47/0.97  --abstr_ref_sig_restrict                funpre
% 1.47/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 1.47/0.97  --abstr_ref_under                       []
% 1.47/0.97  
% 1.47/0.97  ------ SAT Options
% 1.47/0.97  
% 1.47/0.97  --sat_mode                              false
% 1.47/0.97  --sat_fm_restart_options                ""
% 1.47/0.97  --sat_gr_def                            false
% 1.47/0.97  --sat_epr_types                         true
% 1.47/0.97  --sat_non_cyclic_types                  false
% 1.47/0.97  --sat_finite_models                     false
% 1.47/0.97  --sat_fm_lemmas                         false
% 1.47/0.97  --sat_fm_prep                           false
% 1.47/0.97  --sat_fm_uc_incr                        true
% 1.47/0.97  --sat_out_model                         small
% 1.47/0.97  --sat_out_clauses                       false
% 1.47/0.97  
% 1.47/0.97  ------ QBF Options
% 1.47/0.97  
% 1.47/0.97  --qbf_mode                              false
% 1.47/0.97  --qbf_elim_univ                         false
% 1.47/0.97  --qbf_dom_inst                          none
% 1.47/0.97  --qbf_dom_pre_inst                      false
% 1.47/0.97  --qbf_sk_in                             false
% 1.47/0.97  --qbf_pred_elim                         true
% 1.47/0.97  --qbf_split                             512
% 1.47/0.97  
% 1.47/0.97  ------ BMC1 Options
% 1.47/0.97  
% 1.47/0.97  --bmc1_incremental                      false
% 1.47/0.97  --bmc1_axioms                           reachable_all
% 1.47/0.97  --bmc1_min_bound                        0
% 1.47/0.97  --bmc1_max_bound                        -1
% 1.47/0.97  --bmc1_max_bound_default                -1
% 1.47/0.97  --bmc1_symbol_reachability              true
% 1.47/0.97  --bmc1_property_lemmas                  false
% 1.47/0.97  --bmc1_k_induction                      false
% 1.47/0.97  --bmc1_non_equiv_states                 false
% 1.47/0.97  --bmc1_deadlock                         false
% 1.47/0.97  --bmc1_ucm                              false
% 1.47/0.97  --bmc1_add_unsat_core                   none
% 1.47/0.97  --bmc1_unsat_core_children              false
% 1.47/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 1.47/0.97  --bmc1_out_stat                         full
% 1.47/0.97  --bmc1_ground_init                      false
% 1.47/0.97  --bmc1_pre_inst_next_state              false
% 1.47/0.97  --bmc1_pre_inst_state                   false
% 1.47/0.97  --bmc1_pre_inst_reach_state             false
% 1.47/0.97  --bmc1_out_unsat_core                   false
% 1.47/0.97  --bmc1_aig_witness_out                  false
% 1.47/0.97  --bmc1_verbose                          false
% 1.47/0.97  --bmc1_dump_clauses_tptp                false
% 1.47/0.97  --bmc1_dump_unsat_core_tptp             false
% 1.47/0.97  --bmc1_dump_file                        -
% 1.47/0.97  --bmc1_ucm_expand_uc_limit              128
% 1.47/0.97  --bmc1_ucm_n_expand_iterations          6
% 1.47/0.97  --bmc1_ucm_extend_mode                  1
% 1.47/0.97  --bmc1_ucm_init_mode                    2
% 1.47/0.97  --bmc1_ucm_cone_mode                    none
% 1.47/0.97  --bmc1_ucm_reduced_relation_type        0
% 1.47/0.97  --bmc1_ucm_relax_model                  4
% 1.47/0.97  --bmc1_ucm_full_tr_after_sat            true
% 1.47/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 1.47/0.97  --bmc1_ucm_layered_model                none
% 1.47/0.97  --bmc1_ucm_max_lemma_size               10
% 1.47/0.97  
% 1.47/0.97  ------ AIG Options
% 1.47/0.97  
% 1.47/0.97  --aig_mode                              false
% 1.47/0.97  
% 1.47/0.97  ------ Instantiation Options
% 1.47/0.97  
% 1.47/0.97  --instantiation_flag                    true
% 1.47/0.97  --inst_sos_flag                         false
% 1.47/0.97  --inst_sos_phase                        true
% 1.47/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.47/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.47/0.97  --inst_lit_sel_side                     none
% 1.47/0.97  --inst_solver_per_active                1400
% 1.47/0.97  --inst_solver_calls_frac                1.
% 1.47/0.97  --inst_passive_queue_type               priority_queues
% 1.47/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.47/0.97  --inst_passive_queues_freq              [25;2]
% 1.47/0.97  --inst_dismatching                      true
% 1.47/0.97  --inst_eager_unprocessed_to_passive     true
% 1.47/0.97  --inst_prop_sim_given                   true
% 1.47/0.97  --inst_prop_sim_new                     false
% 1.47/0.97  --inst_subs_new                         false
% 1.47/0.97  --inst_eq_res_simp                      false
% 1.47/0.97  --inst_subs_given                       false
% 1.47/0.97  --inst_orphan_elimination               true
% 1.47/0.97  --inst_learning_loop_flag               true
% 1.47/0.97  --inst_learning_start                   3000
% 1.47/0.97  --inst_learning_factor                  2
% 1.47/0.97  --inst_start_prop_sim_after_learn       3
% 1.47/0.97  --inst_sel_renew                        solver
% 1.47/0.97  --inst_lit_activity_flag                true
% 1.47/0.97  --inst_restr_to_given                   false
% 1.47/0.97  --inst_activity_threshold               500
% 1.47/0.97  --inst_out_proof                        true
% 1.47/0.97  
% 1.47/0.97  ------ Resolution Options
% 1.47/0.97  
% 1.47/0.97  --resolution_flag                       false
% 1.47/0.97  --res_lit_sel                           adaptive
% 1.47/0.97  --res_lit_sel_side                      none
% 1.47/0.97  --res_ordering                          kbo
% 1.47/0.98  --res_to_prop_solver                    active
% 1.47/0.98  --res_prop_simpl_new                    false
% 1.47/0.98  --res_prop_simpl_given                  true
% 1.47/0.98  --res_passive_queue_type                priority_queues
% 1.47/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.47/0.98  --res_passive_queues_freq               [15;5]
% 1.47/0.98  --res_forward_subs                      full
% 1.47/0.98  --res_backward_subs                     full
% 1.47/0.98  --res_forward_subs_resolution           true
% 1.47/0.98  --res_backward_subs_resolution          true
% 1.47/0.98  --res_orphan_elimination                true
% 1.47/0.98  --res_time_limit                        2.
% 1.47/0.98  --res_out_proof                         true
% 1.47/0.98  
% 1.47/0.98  ------ Superposition Options
% 1.47/0.98  
% 1.47/0.98  --superposition_flag                    true
% 1.47/0.98  --sup_passive_queue_type                priority_queues
% 1.47/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.47/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.47/0.98  --demod_completeness_check              fast
% 1.47/0.98  --demod_use_ground                      true
% 1.47/0.98  --sup_to_prop_solver                    passive
% 1.47/0.98  --sup_prop_simpl_new                    true
% 1.47/0.98  --sup_prop_simpl_given                  true
% 1.47/0.98  --sup_fun_splitting                     false
% 1.47/0.98  --sup_smt_interval                      50000
% 1.47/0.98  
% 1.47/0.98  ------ Superposition Simplification Setup
% 1.47/0.98  
% 1.47/0.98  --sup_indices_passive                   []
% 1.47/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.47/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/0.98  --sup_full_bw                           [BwDemod]
% 1.47/0.98  --sup_immed_triv                        [TrivRules]
% 1.47/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.47/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/0.98  --sup_immed_bw_main                     []
% 1.47/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.47/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/0.98  
% 1.47/0.98  ------ Combination Options
% 1.47/0.98  
% 1.47/0.98  --comb_res_mult                         3
% 1.47/0.98  --comb_sup_mult                         2
% 1.47/0.98  --comb_inst_mult                        10
% 1.47/0.98  
% 1.47/0.98  ------ Debug Options
% 1.47/0.98  
% 1.47/0.98  --dbg_backtrace                         false
% 1.47/0.98  --dbg_dump_prop_clauses                 false
% 1.47/0.98  --dbg_dump_prop_clauses_file            -
% 1.47/0.98  --dbg_out_stat                          false
% 1.47/0.98  
% 1.47/0.98  
% 1.47/0.98  
% 1.47/0.98  
% 1.47/0.98  ------ Proving...
% 1.47/0.98  
% 1.47/0.98  
% 1.47/0.98  % SZS status Theorem for theBenchmark.p
% 1.47/0.98  
% 1.47/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 1.47/0.98  
% 1.47/0.98  fof(f8,conjecture,(
% 1.47/0.98    ! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) => k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3))))))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f9,negated_conjecture,(
% 1.47/0.98    ~! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2)) => k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) = k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3))))))),
% 1.47/0.98    inference(negated_conjecture,[],[f8])).
% 1.47/0.98  
% 1.47/0.98  fof(f20,plain,(
% 1.47/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) & (v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2))) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & l1_struct_0(X1)) & l1_struct_0(X0))),
% 1.47/0.98    inference(ennf_transformation,[],[f9])).
% 1.47/0.98  
% 1.47/0.98  fof(f21,plain,(
% 1.47/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) & l1_struct_0(X0))),
% 1.47/0.98    inference(flattening,[],[f20])).
% 1.47/0.98  
% 1.47/0.98  fof(f25,plain,(
% 1.47/0.98    ( ! [X2,X0,X1] : (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,sK3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),sK3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.47/0.98    introduced(choice_axiom,[])).
% 1.47/0.98  
% 1.47/0.98  fof(f24,plain,(
% 1.47/0.98    ( ! [X0,X1] : (? [X2] : (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2),X3) & v2_funct_1(sK2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 1.47/0.98    introduced(choice_axiom,[])).
% 1.47/0.98  
% 1.47/0.98  fof(f23,plain,(
% 1.47/0.98    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) => (? [X2] : (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2,X3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2),X3) & v2_funct_1(X2) & k2_struct_0(sK1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_struct_0(sK1))) )),
% 1.47/0.98    introduced(choice_axiom,[])).
% 1.47/0.98  
% 1.47/0.98  fof(f22,plain,(
% 1.47/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (k7_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2),X3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (k7_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2,X3) != k8_relset_1(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2),X3) & v2_funct_1(X2) & k2_struct_0(X1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1)) & l1_struct_0(sK0))),
% 1.47/0.98    introduced(choice_axiom,[])).
% 1.47/0.98  
% 1.47/0.98  fof(f26,plain,(
% 1.47/0.98    (((k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) & v2_funct_1(sK2) & k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_struct_0(sK1)) & l1_struct_0(sK0)),
% 1.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f21,f25,f24,f23,f22])).
% 1.47/0.98  
% 1.47/0.98  fof(f42,plain,(
% 1.47/0.98    k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f5,axiom,(
% 1.47/0.98    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f15,plain,(
% 1.47/0.98    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 1.47/0.98    inference(ennf_transformation,[],[f5])).
% 1.47/0.98  
% 1.47/0.98  fof(f31,plain,(
% 1.47/0.98    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 1.47/0.98    inference(cnf_transformation,[],[f15])).
% 1.47/0.98  
% 1.47/0.98  fof(f36,plain,(
% 1.47/0.98    l1_struct_0(sK0)),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f37,plain,(
% 1.47/0.98    l1_struct_0(sK1)),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f6,axiom,(
% 1.47/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f16,plain,(
% 1.47/0.98    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 1.47/0.98    inference(ennf_transformation,[],[f6])).
% 1.47/0.98  
% 1.47/0.98  fof(f17,plain,(
% 1.47/0.98    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.47/0.98    inference(flattening,[],[f16])).
% 1.47/0.98  
% 1.47/0.98  fof(f32,plain,(
% 1.47/0.98    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 1.47/0.98    inference(cnf_transformation,[],[f17])).
% 1.47/0.98  
% 1.47/0.98  fof(f43,plain,(
% 1.47/0.98    v2_funct_1(sK2)),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f38,plain,(
% 1.47/0.98    v1_funct_1(sK2)),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f39,plain,(
% 1.47/0.98    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f40,plain,(
% 1.47/0.98    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  fof(f7,axiom,(
% 1.47/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f18,plain,(
% 1.47/0.98    ! [X0,X1,X2] : ((m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 1.47/0.98    inference(ennf_transformation,[],[f7])).
% 1.47/0.98  
% 1.47/0.98  fof(f19,plain,(
% 1.47/0.98    ! [X0,X1,X2] : ((m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.47/0.98    inference(flattening,[],[f18])).
% 1.47/0.98  
% 1.47/0.98  fof(f35,plain,(
% 1.47/0.98    ( ! [X2,X0,X1] : (m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 1.47/0.98    inference(cnf_transformation,[],[f19])).
% 1.47/0.98  
% 1.47/0.98  fof(f4,axiom,(
% 1.47/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f14,plain,(
% 1.47/0.98    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.47/0.98    inference(ennf_transformation,[],[f4])).
% 1.47/0.98  
% 1.47/0.98  fof(f30,plain,(
% 1.47/0.98    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.47/0.98    inference(cnf_transformation,[],[f14])).
% 1.47/0.98  
% 1.47/0.98  fof(f2,axiom,(
% 1.47/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f12,plain,(
% 1.47/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.47/0.98    inference(ennf_transformation,[],[f2])).
% 1.47/0.98  
% 1.47/0.98  fof(f28,plain,(
% 1.47/0.98    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.47/0.98    inference(cnf_transformation,[],[f12])).
% 1.47/0.98  
% 1.47/0.98  fof(f1,axiom,(
% 1.47/0.98    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (v2_funct_1(X1) => k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0)))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f10,plain,(
% 1.47/0.98    ! [X0,X1] : ((k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0) | ~v2_funct_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.47/0.98    inference(ennf_transformation,[],[f1])).
% 1.47/0.98  
% 1.47/0.98  fof(f11,plain,(
% 1.47/0.98    ! [X0,X1] : (k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0) | ~v2_funct_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.47/0.98    inference(flattening,[],[f10])).
% 1.47/0.98  
% 1.47/0.98  fof(f27,plain,(
% 1.47/0.98    ( ! [X0,X1] : (k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0) | ~v2_funct_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.47/0.98    inference(cnf_transformation,[],[f11])).
% 1.47/0.98  
% 1.47/0.98  fof(f3,axiom,(
% 1.47/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 1.47/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.47/0.98  
% 1.47/0.98  fof(f13,plain,(
% 1.47/0.98    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.47/0.98    inference(ennf_transformation,[],[f3])).
% 1.47/0.98  
% 1.47/0.98  fof(f29,plain,(
% 1.47/0.98    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.47/0.98    inference(cnf_transformation,[],[f13])).
% 1.47/0.98  
% 1.47/0.98  fof(f44,plain,(
% 1.47/0.98    k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3)),
% 1.47/0.98    inference(cnf_transformation,[],[f26])).
% 1.47/0.98  
% 1.47/0.98  cnf(c_11,negated_conjecture,
% 1.47/0.98      ( k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) ),
% 1.47/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_377,negated_conjecture,
% 1.47/0.98      ( k2_struct_0(sK1) = k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_11]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_4,plain,
% 1.47/0.98      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 1.47/0.98      inference(cnf_transformation,[],[f31]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_17,negated_conjecture,
% 1.47/0.98      ( l1_struct_0(sK0) ),
% 1.47/0.98      inference(cnf_transformation,[],[f36]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_190,plain,
% 1.47/0.98      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 1.47/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_17]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_191,plain,
% 1.47/0.98      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 1.47/0.98      inference(unflattening,[status(thm)],[c_190]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_371,plain,
% 1.47/0.98      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_191]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_16,negated_conjecture,
% 1.47/0.98      ( l1_struct_0(sK1) ),
% 1.47/0.98      inference(cnf_transformation,[],[f37]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_185,plain,
% 1.47/0.98      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 1.47/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_16]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_186,plain,
% 1.47/0.98      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 1.47/0.98      inference(unflattening,[status(thm)],[c_185]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_372,plain,
% 1.47/0.98      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_186]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_700,plain,
% 1.47/0.98      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 1.47/0.98      inference(light_normalisation,[status(thm)],[c_377,c_371,c_372]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_5,plain,
% 1.47/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.47/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | ~ v1_funct_1(X0)
% 1.47/0.98      | ~ v2_funct_1(X0)
% 1.47/0.98      | k2_relset_1(X1,X2,X0) != X2
% 1.47/0.98      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0) ),
% 1.47/0.98      inference(cnf_transformation,[],[f32]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_10,negated_conjecture,
% 1.47/0.98      ( v2_funct_1(sK2) ),
% 1.47/0.98      inference(cnf_transformation,[],[f43]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_218,plain,
% 1.47/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.47/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | ~ v1_funct_1(X0)
% 1.47/0.98      | k2_relset_1(X1,X2,X0) != X2
% 1.47/0.98      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 1.47/0.98      | sK2 != X0 ),
% 1.47/0.98      inference(resolution_lifted,[status(thm)],[c_5,c_10]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_219,plain,
% 1.47/0.98      ( ~ v1_funct_2(sK2,X0,X1)
% 1.47/0.98      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.47/0.98      | ~ v1_funct_1(sK2)
% 1.47/0.98      | k2_relset_1(X0,X1,sK2) != X1
% 1.47/0.98      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2) ),
% 1.47/0.98      inference(unflattening,[status(thm)],[c_218]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_15,negated_conjecture,
% 1.47/0.98      ( v1_funct_1(sK2) ),
% 1.47/0.98      inference(cnf_transformation,[],[f38]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_223,plain,
% 1.47/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.47/0.98      | ~ v1_funct_2(sK2,X0,X1)
% 1.47/0.98      | k2_relset_1(X0,X1,sK2) != X1
% 1.47/0.98      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2) ),
% 1.47/0.98      inference(global_propositional_subsumption,
% 1.47/0.98                [status(thm)],
% 1.47/0.98                [c_219,c_15]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_224,plain,
% 1.47/0.98      ( ~ v1_funct_2(sK2,X0,X1)
% 1.47/0.98      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.47/0.98      | k2_relset_1(X0,X1,sK2) != X1
% 1.47/0.98      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2) ),
% 1.47/0.98      inference(renaming,[status(thm)],[c_223]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_370,plain,
% 1.47/0.98      ( ~ v1_funct_2(sK2,X0_51,X1_51)
% 1.47/0.98      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.47/0.98      | k2_relset_1(X0_51,X1_51,sK2) != X1_51
% 1.47/0.98      | k2_tops_2(X0_51,X1_51,sK2) = k2_funct_1(sK2) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_224]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_680,plain,
% 1.47/0.98      ( k2_relset_1(X0_51,X1_51,sK2) != X1_51
% 1.47/0.98      | k2_tops_2(X0_51,X1_51,sK2) = k2_funct_1(sK2)
% 1.47/0.98      | v1_funct_2(sK2,X0_51,X1_51) != iProver_top
% 1.47/0.98      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_370]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1075,plain,
% 1.47/0.98      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2)
% 1.47/0.98      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 1.47/0.98      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top ),
% 1.47/0.98      inference(superposition,[status(thm)],[c_700,c_680]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_14,negated_conjecture,
% 1.47/0.98      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 1.47/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_374,negated_conjecture,
% 1.47/0.98      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_14]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_678,plain,
% 1.47/0.98      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_374]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_697,plain,
% 1.47/0.98      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
% 1.47/0.98      inference(light_normalisation,[status(thm)],[c_678,c_371,c_372]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_13,negated_conjecture,
% 1.47/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 1.47/0.98      inference(cnf_transformation,[],[f40]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_375,negated_conjecture,
% 1.47/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_13]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_677,plain,
% 1.47/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_375]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_703,plain,
% 1.47/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
% 1.47/0.98      inference(light_normalisation,[status(thm)],[c_677,c_371,c_372]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1118,plain,
% 1.47/0.98      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 1.47/0.98      inference(global_propositional_subsumption,
% 1.47/0.98                [status(thm)],
% 1.47/0.98                [c_1075,c_697,c_703]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_6,plain,
% 1.47/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.47/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 1.47/0.98      | ~ v1_funct_1(X0) ),
% 1.47/0.98      inference(cnf_transformation,[],[f35]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_381,plain,
% 1.47/0.98      ( ~ v1_funct_2(X0_49,X0_51,X1_51)
% 1.47/0.98      | ~ m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.47/0.98      | m1_subset_1(k2_tops_2(X0_51,X1_51,X0_49),k1_zfmisc_1(k2_zfmisc_1(X1_51,X0_51)))
% 1.47/0.98      | ~ v1_funct_1(X0_49) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_6]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_673,plain,
% 1.47/0.98      ( v1_funct_2(X0_49,X0_51,X1_51) != iProver_top
% 1.47/0.98      | m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.47/0.98      | m1_subset_1(k2_tops_2(X0_51,X1_51,X0_49),k1_zfmisc_1(k2_zfmisc_1(X1_51,X0_51))) = iProver_top
% 1.47/0.98      | v1_funct_1(X0_49) != iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_381]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1122,plain,
% 1.47/0.98      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 1.47/0.98      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top
% 1.47/0.98      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 1.47/0.98      | v1_funct_1(sK2) != iProver_top ),
% 1.47/0.98      inference(superposition,[status(thm)],[c_1118,c_673]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_20,plain,
% 1.47/0.98      ( v1_funct_1(sK2) = iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1506,plain,
% 1.47/0.98      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top ),
% 1.47/0.98      inference(global_propositional_subsumption,
% 1.47/0.98                [status(thm)],
% 1.47/0.98                [c_1122,c_20,c_697,c_703]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_3,plain,
% 1.47/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 1.47/0.98      inference(cnf_transformation,[],[f30]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_382,plain,
% 1.47/0.98      ( ~ m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.47/0.98      | k8_relset_1(X0_51,X1_51,X0_49,X1_49) = k10_relat_1(X0_49,X1_49) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_672,plain,
% 1.47/0.98      ( k8_relset_1(X0_51,X1_51,X0_49,X1_49) = k10_relat_1(X0_49,X1_49)
% 1.47/0.98      | m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_382]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1512,plain,
% 1.47/0.98      ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0_49) = k10_relat_1(k2_funct_1(sK2),X0_49) ),
% 1.47/0.98      inference(superposition,[status(thm)],[c_1506,c_672]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1,plain,
% 1.47/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | v1_relat_1(X0) ),
% 1.47/0.98      inference(cnf_transformation,[],[f28]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_0,plain,
% 1.47/0.98      ( ~ v1_relat_1(X0)
% 1.47/0.98      | ~ v1_funct_1(X0)
% 1.47/0.98      | ~ v2_funct_1(X0)
% 1.47/0.98      | k10_relat_1(k2_funct_1(X0),X1) = k9_relat_1(X0,X1) ),
% 1.47/0.98      inference(cnf_transformation,[],[f27]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_242,plain,
% 1.47/0.98      ( ~ v1_relat_1(X0)
% 1.47/0.98      | ~ v1_funct_1(X0)
% 1.47/0.98      | k10_relat_1(k2_funct_1(X0),X1) = k9_relat_1(X0,X1)
% 1.47/0.98      | sK2 != X0 ),
% 1.47/0.98      inference(resolution_lifted,[status(thm)],[c_0,c_10]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_243,plain,
% 1.47/0.98      ( ~ v1_relat_1(sK2)
% 1.47/0.98      | ~ v1_funct_1(sK2)
% 1.47/0.98      | k10_relat_1(k2_funct_1(sK2),X0) = k9_relat_1(sK2,X0) ),
% 1.47/0.98      inference(unflattening,[status(thm)],[c_242]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_247,plain,
% 1.47/0.98      ( ~ v1_relat_1(sK2)
% 1.47/0.98      | k10_relat_1(k2_funct_1(sK2),X0) = k9_relat_1(sK2,X0) ),
% 1.47/0.98      inference(global_propositional_subsumption,
% 1.47/0.98                [status(thm)],
% 1.47/0.98                [c_243,c_15]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_268,plain,
% 1.47/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | k10_relat_1(k2_funct_1(sK2),X3) = k9_relat_1(sK2,X3)
% 1.47/0.98      | sK2 != X0 ),
% 1.47/0.98      inference(resolution_lifted,[status(thm)],[c_1,c_247]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_269,plain,
% 1.47/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.47/0.98      | k10_relat_1(k2_funct_1(sK2),X2) = k9_relat_1(sK2,X2) ),
% 1.47/0.98      inference(unflattening,[status(thm)],[c_268]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_369,plain,
% 1.47/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.47/0.98      | k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_269]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_384,plain,
% 1.47/0.98      ( k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49)
% 1.47/0.98      | ~ sP0_iProver_split ),
% 1.47/0.98      inference(splitting,
% 1.47/0.98                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.47/0.98                [c_369]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_683,plain,
% 1.47/0.98      ( k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49)
% 1.47/0.98      | sP0_iProver_split != iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_384]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_386,plain,
% 1.47/0.98      ( sP1_iProver_split | sP0_iProver_split ),
% 1.47/0.98      inference(splitting,
% 1.47/0.98                [splitting(split),new_symbols(definition,[])],
% 1.47/0.98                [c_369]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_385,plain,
% 1.47/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.47/0.98      | ~ sP1_iProver_split ),
% 1.47/0.98      inference(splitting,
% 1.47/0.98                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.47/0.98                [c_369]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_792,plain,
% 1.47/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 1.47/0.98      | ~ sP1_iProver_split ),
% 1.47/0.98      inference(instantiation,[status(thm)],[c_385]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1278,plain,
% 1.47/0.98      ( k10_relat_1(k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49) ),
% 1.47/0.98      inference(global_propositional_subsumption,
% 1.47/0.98                [status(thm)],
% 1.47/0.98                [c_683,c_13,c_386,c_384,c_792]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1531,plain,
% 1.47/0.98      ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0_49) = k9_relat_1(sK2,X0_49) ),
% 1.47/0.98      inference(light_normalisation,[status(thm)],[c_1512,c_1278]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_2,plain,
% 1.47/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.47/0.98      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 1.47/0.98      inference(cnf_transformation,[],[f29]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_383,plain,
% 1.47/0.98      ( ~ m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.47/0.98      | k7_relset_1(X0_51,X1_51,X0_49,X1_49) = k9_relat_1(X0_49,X1_49) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_2]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_671,plain,
% 1.47/0.98      ( k7_relset_1(X0_51,X1_51,X0_49,X1_49) = k9_relat_1(X0_49,X1_49)
% 1.47/0.98      | m1_subset_1(X0_49,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 1.47/0.98      inference(predicate_to_equality,[status(thm)],[c_383]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_910,plain,
% 1.47/0.98      ( k7_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,X0_49) = k9_relat_1(sK2,X0_49) ),
% 1.47/0.98      inference(superposition,[status(thm)],[c_703,c_671]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_9,negated_conjecture,
% 1.47/0.98      ( k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
% 1.47/0.98      inference(cnf_transformation,[],[f44]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_378,negated_conjecture,
% 1.47/0.98      ( k7_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2,sK3) != k8_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2),sK3) ),
% 1.47/0.98      inference(subtyping,[status(esa)],[c_9]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_722,plain,
% 1.47/0.98      ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2),sK3) != k7_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,sK3) ),
% 1.47/0.98      inference(light_normalisation,[status(thm)],[c_378,c_371,c_372]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1121,plain,
% 1.47/0.98      ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),sK3) != k7_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,sK3) ),
% 1.47/0.98      inference(demodulation,[status(thm)],[c_1118,c_722]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1204,plain,
% 1.47/0.98      ( k8_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),sK3) != k9_relat_1(sK2,sK3) ),
% 1.47/0.98      inference(demodulation,[status(thm)],[c_910,c_1121]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1608,plain,
% 1.47/0.98      ( k9_relat_1(sK2,sK3) != k9_relat_1(sK2,sK3) ),
% 1.47/0.98      inference(demodulation,[status(thm)],[c_1531,c_1204]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_395,plain,
% 1.47/0.98      ( k9_relat_1(X0_49,X1_49) = k9_relat_1(X2_49,X1_49)
% 1.47/0.98      | X0_49 != X2_49 ),
% 1.47/0.98      theory(equality) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1189,plain,
% 1.47/0.98      ( k9_relat_1(sK2,sK3) = k9_relat_1(X0_49,sK3) | sK2 != X0_49 ),
% 1.47/0.98      inference(instantiation,[status(thm)],[c_395]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_1190,plain,
% 1.47/0.98      ( k9_relat_1(sK2,sK3) = k9_relat_1(sK2,sK3) | sK2 != sK2 ),
% 1.47/0.98      inference(instantiation,[status(thm)],[c_1189]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_388,plain,( X0_49 = X0_49 ),theory(equality) ).
% 1.47/0.98  
% 1.47/0.98  cnf(c_420,plain,
% 1.47/0.98      ( sK2 = sK2 ),
% 1.47/0.98      inference(instantiation,[status(thm)],[c_388]) ).
% 1.47/0.98  
% 1.47/0.98  cnf(contradiction,plain,
% 1.47/0.98      ( $false ),
% 1.47/0.98      inference(minisat,[status(thm)],[c_1608,c_1190,c_420]) ).
% 1.47/0.98  
% 1.47/0.98  
% 1.47/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.47/0.98  
% 1.47/0.98  ------                               Statistics
% 1.47/0.98  
% 1.47/0.98  ------ General
% 1.47/0.98  
% 1.47/0.98  abstr_ref_over_cycles:                  0
% 1.47/0.98  abstr_ref_under_cycles:                 0
% 1.47/0.98  gc_basic_clause_elim:                   0
% 1.47/0.98  forced_gc_time:                         0
% 1.47/0.98  parsing_time:                           0.007
% 1.47/0.98  unif_index_cands_time:                  0.
% 1.47/0.98  unif_index_add_time:                    0.
% 1.47/0.98  orderings_time:                         0.
% 1.47/0.98  out_proof_time:                         0.016
% 1.47/0.98  total_time:                             0.1
% 1.47/0.98  num_of_symbols:                         59
% 1.47/0.98  num_of_terms:                           1546
% 1.47/0.98  
% 1.47/0.98  ------ Preprocessing
% 1.47/0.98  
% 1.47/0.98  num_of_splits:                          2
% 1.47/0.98  num_of_split_atoms:                     2
% 1.47/0.98  num_of_reused_defs:                     0
% 1.47/0.98  num_eq_ax_congr_red:                    11
% 1.47/0.98  num_of_sem_filtered_clauses:            1
% 1.47/0.98  num_of_subtypes:                        5
% 1.47/0.98  monotx_restored_types:                  0
% 1.47/0.98  sat_num_of_epr_types:                   0
% 1.47/0.98  sat_num_of_non_cyclic_types:            0
% 1.47/0.98  sat_guarded_non_collapsed_types:        0
% 1.47/0.98  num_pure_diseq_elim:                    0
% 1.47/0.98  simp_replaced_by:                       0
% 1.47/0.98  res_preprocessed:                       106
% 1.47/0.98  prep_upred:                             0
% 1.47/0.98  prep_unflattend:                        5
% 1.47/0.98  smt_new_axioms:                         0
% 1.47/0.98  pred_elim_cands:                        3
% 1.47/0.98  pred_elim:                              3
% 1.47/0.98  pred_elim_cl:                           3
% 1.47/0.98  pred_elim_cycles:                       6
% 1.47/0.98  merged_defs:                            0
% 1.47/0.98  merged_defs_ncl:                        0
% 1.47/0.98  bin_hyper_res:                          0
% 1.47/0.98  prep_cycles:                            4
% 1.47/0.98  pred_elim_time:                         0.002
% 1.47/0.98  splitting_time:                         0.
% 1.47/0.98  sem_filter_time:                        0.
% 1.47/0.98  monotx_time:                            0.
% 1.47/0.98  subtype_inf_time:                       0.
% 1.47/0.98  
% 1.47/0.98  ------ Problem properties
% 1.47/0.98  
% 1.47/0.98  clauses:                                17
% 1.47/0.98  conjectures:                            6
% 1.47/0.98  epr:                                    2
% 1.47/0.98  horn:                                   16
% 1.47/0.98  ground:                                 9
% 1.47/0.98  unary:                                  8
% 1.47/0.98  binary:                                 5
% 1.47/0.98  lits:                                   34
% 1.47/0.98  lits_eq:                                9
% 1.47/0.98  fd_pure:                                0
% 1.47/0.98  fd_pseudo:                              0
% 1.47/0.98  fd_cond:                                0
% 1.47/0.98  fd_pseudo_cond:                         0
% 1.47/0.98  ac_symbols:                             0
% 1.47/0.98  
% 1.47/0.98  ------ Propositional Solver
% 1.47/0.98  
% 1.47/0.98  prop_solver_calls:                      26
% 1.47/0.98  prop_fast_solver_calls:                 583
% 1.47/0.98  smt_solver_calls:                       0
% 1.47/0.98  smt_fast_solver_calls:                  0
% 1.47/0.98  prop_num_of_clauses:                    549
% 1.47/0.98  prop_preprocess_simplified:             2657
% 1.47/0.98  prop_fo_subsumed:                       15
% 1.47/0.98  prop_solver_time:                       0.
% 1.47/0.98  smt_solver_time:                        0.
% 1.47/0.98  smt_fast_solver_time:                   0.
% 1.47/0.98  prop_fast_solver_time:                  0.
% 1.47/0.98  prop_unsat_core_time:                   0.
% 1.47/0.98  
% 1.47/0.98  ------ QBF
% 1.47/0.98  
% 1.47/0.98  qbf_q_res:                              0
% 1.47/0.98  qbf_num_tautologies:                    0
% 1.47/0.98  qbf_prep_cycles:                        0
% 1.47/0.98  
% 1.47/0.98  ------ BMC1
% 1.47/0.98  
% 1.47/0.98  bmc1_current_bound:                     -1
% 1.47/0.98  bmc1_last_solved_bound:                 -1
% 1.47/0.98  bmc1_unsat_core_size:                   -1
% 1.47/0.98  bmc1_unsat_core_parents_size:           -1
% 1.47/0.98  bmc1_merge_next_fun:                    0
% 1.47/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.47/0.98  
% 1.47/0.98  ------ Instantiation
% 1.47/0.98  
% 1.47/0.98  inst_num_of_clauses:                    181
% 1.47/0.98  inst_num_in_passive:                    16
% 1.47/0.98  inst_num_in_active:                     134
% 1.47/0.98  inst_num_in_unprocessed:                31
% 1.47/0.98  inst_num_of_loops:                      140
% 1.47/0.98  inst_num_of_learning_restarts:          0
% 1.47/0.98  inst_num_moves_active_passive:          3
% 1.47/0.98  inst_lit_activity:                      0
% 1.47/0.98  inst_lit_activity_moves:                0
% 1.47/0.98  inst_num_tautologies:                   0
% 1.47/0.98  inst_num_prop_implied:                  0
% 1.47/0.98  inst_num_existing_simplified:           0
% 1.47/0.98  inst_num_eq_res_simplified:             0
% 1.47/0.98  inst_num_child_elim:                    0
% 1.47/0.98  inst_num_of_dismatching_blockings:      10
% 1.47/0.98  inst_num_of_non_proper_insts:           128
% 1.47/0.98  inst_num_of_duplicates:                 0
% 1.47/0.98  inst_inst_num_from_inst_to_res:         0
% 1.47/0.98  inst_dismatching_checking_time:         0.
% 1.47/0.98  
% 1.47/0.98  ------ Resolution
% 1.47/0.98  
% 1.47/0.98  res_num_of_clauses:                     0
% 1.47/0.98  res_num_in_passive:                     0
% 1.47/0.98  res_num_in_active:                      0
% 1.47/0.98  res_num_of_loops:                       110
% 1.47/0.98  res_forward_subset_subsumed:            25
% 1.47/0.98  res_backward_subset_subsumed:           0
% 1.47/0.98  res_forward_subsumed:                   0
% 1.47/0.98  res_backward_subsumed:                  0
% 1.47/0.98  res_forward_subsumption_resolution:     0
% 1.47/0.98  res_backward_subsumption_resolution:    0
% 1.47/0.98  res_clause_to_clause_subsumption:       54
% 1.47/0.98  res_orphan_elimination:                 0
% 1.47/0.98  res_tautology_del:                      26
% 1.47/0.98  res_num_eq_res_simplified:              0
% 1.47/0.98  res_num_sel_changes:                    0
% 1.47/0.98  res_moves_from_active_to_pass:          0
% 1.47/0.98  
% 1.47/0.98  ------ Superposition
% 1.47/0.98  
% 1.47/0.98  sup_time_total:                         0.
% 1.47/0.98  sup_time_generating:                    0.
% 1.47/0.98  sup_time_sim_full:                      0.
% 1.47/0.98  sup_time_sim_immed:                     0.
% 1.47/0.98  
% 1.47/0.98  sup_num_of_clauses:                     33
% 1.47/0.98  sup_num_in_active:                      24
% 1.47/0.98  sup_num_in_passive:                     9
% 1.47/0.98  sup_num_of_loops:                       27
% 1.47/0.98  sup_fw_superposition:                   8
% 1.47/0.98  sup_bw_superposition:                   10
% 1.47/0.98  sup_immediate_simplified:               3
% 1.47/0.98  sup_given_eliminated:                   0
% 1.47/0.98  comparisons_done:                       0
% 1.47/0.98  comparisons_avoided:                    0
% 1.47/0.98  
% 1.47/0.98  ------ Simplifications
% 1.47/0.98  
% 1.47/0.98  
% 1.47/0.98  sim_fw_subset_subsumed:                 0
% 1.47/0.98  sim_bw_subset_subsumed:                 2
% 1.47/0.98  sim_fw_subsumed:                        0
% 1.47/0.98  sim_bw_subsumed:                        0
% 1.47/0.98  sim_fw_subsumption_res:                 0
% 1.47/0.98  sim_bw_subsumption_res:                 0
% 1.47/0.98  sim_tautology_del:                      0
% 1.47/0.98  sim_eq_tautology_del:                   0
% 1.47/0.98  sim_eq_res_simp:                        0
% 1.47/0.98  sim_fw_demodulated:                     0
% 1.47/0.98  sim_bw_demodulated:                     3
% 1.47/0.98  sim_light_normalised:                   9
% 1.47/0.98  sim_joinable_taut:                      0
% 1.47/0.98  sim_joinable_simp:                      0
% 1.47/0.98  sim_ac_normalised:                      0
% 1.47/0.98  sim_smt_subsumption:                    0
% 1.47/0.98  
%------------------------------------------------------------------------------
