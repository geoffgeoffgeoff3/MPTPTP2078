%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:22:28 EST 2020

% Result     : Theorem 2.03s
% Output     : CNFRefutation 2.03s
% Verified   : 
% Statistics : Number of formulae       :  157 (1936 expanded)
%              Number of clauses        :   88 ( 515 expanded)
%              Number of leaves         :   18 ( 605 expanded)
%              Depth                    :   22
%              Number of atoms          :  647 (16570 expanded)
%              Number of equality atoms :  150 (1921 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    5 (   2 average)

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
              ( ( m1_pre_topc(X2,X1)
                & ~ v2_struct_0(X2) )
             => ! [X3] :
                  ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                    & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                    & v1_funct_1(X3) )
                 => ( g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                   => r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
                ( ( m1_pre_topc(X2,X1)
                  & ~ v2_struct_0(X2) )
               => ! [X3] :
                    ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                      & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                      & v1_funct_1(X3) )
                   => ( g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                     => r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2))
                  & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
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
                  ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2))
                  & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2))
          & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
          & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
          & v1_funct_1(X3) )
     => ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),sK3,k2_tmap_1(X1,X0,sK3,X2))
        & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
        & v1_funct_2(sK3,u1_struct_0(X1),u1_struct_0(X0))
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2))
              & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X3) )
          & m1_pre_topc(X2,X1)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(sK2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,sK2))
            & g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2)) = g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
            & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
            & v1_funct_1(X3) )
        & m1_pre_topc(sK2,X1)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2))
                  & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ r1_funct_2(u1_struct_0(sK1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(sK1,X0,X3,X2))
                & g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
                & v1_funct_2(X3,u1_struct_0(sK1),u1_struct_0(X0))
                & v1_funct_1(X3) )
            & m1_pre_topc(X2,sK1)
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
                    ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2))
                    & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                    & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                    & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                    & v1_funct_1(X3) )
                & m1_pre_topc(X2,X1)
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
                  ( ~ r1_funct_2(u1_struct_0(X1),u1_struct_0(sK0),u1_struct_0(X2),u1_struct_0(sK0),X3,k2_tmap_1(X1,sK0,X3,X2))
                  & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(sK0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,
    ( ~ r1_funct_2(u1_struct_0(sK1),u1_struct_0(sK0),u1_struct_0(sK2),u1_struct_0(sK0),sK3,k2_tmap_1(sK1,sK0,sK3,sK2))
    & g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2))
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))
    & v1_funct_1(sK3)
    & m1_pre_topc(sK2,sK1)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f36,f42,f41,f40,f39])).

fof(f71,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f43])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f20])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f4])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f69,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f43])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f53,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f55,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f63,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f43])).

fof(f61,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f43])).

fof(f70,plain,(
    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f43])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f44,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f72,plain,(
    g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2)) ),
    inference(cnf_transformation,[],[f43])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2,X3] :
          ( g1_pre_topc(X0,X1) = g1_pre_topc(X2,X3)
         => ( X1 = X3
            & X0 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ! [X2,X3] :
          ( ( X1 = X3
            & X0 = X2 )
          | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f56,plain,(
    ! [X2,X0,X3,X1] :
      ( X0 = X2
      | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f66,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f43])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f54,plain,(
    ! [X0] :
      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f12,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
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
    inference(ennf_transformation,[],[f12])).

fof(f32,plain,(
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
    inference(flattening,[],[f31])).

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
    inference(nnf_transformation,[],[f32])).

fof(f59,plain,(
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

fof(f75,plain,(
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
    inference(equality_resolution,[],[f59])).

fof(f73,plain,(
    ~ r1_funct_2(u1_struct_0(sK1),u1_struct_0(sK0),u1_struct_0(sK2),u1_struct_0(sK0),sK3,k2_tmap_1(sK1,sK0,sK3,sK2)) ),
    inference(cnf_transformation,[],[f43])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f52,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f25])).

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
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)
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
    inference(ennf_transformation,[],[f13])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)
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
    inference(flattening,[],[f33])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)
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
    inference(cnf_transformation,[],[f34])).

fof(f68,plain,(
    m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f43])).

fof(f64,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f43])).

fof(f65,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f43])).

fof(f62,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f43])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k7_relat_1(X0,k1_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( k7_relat_1(X0,k1_relat_1(X0)) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f46,plain,(
    ! [X0] :
      ( k7_relat_1(X0,k1_relat_1(X0)) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1150,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_4,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_7,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_408,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_4,c_7])).

cnf(c_3,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_330,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_3,c_7])).

cnf(c_412,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_408,c_4,c_330])).

cnf(c_21,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_656,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_412,c_21])).

cnf(c_657,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_xboole_0(X1)
    | ~ v1_relat_1(sK3)
    | k1_relat_1(sK3) = X0 ),
    inference(unflattening,[status(thm)],[c_656])).

cnf(c_9,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_11,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_312,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_9,c_11])).

cnf(c_27,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_522,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_312,c_27])).

cnf(c_523,plain,
    ( v2_struct_0(sK0)
    | ~ v1_xboole_0(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_522])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_525,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_523,c_29])).

cnf(c_745,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_relat_1(sK3)
    | u1_struct_0(sK0) != X1
    | k1_relat_1(sK3) = X0 ),
    inference(resolution_lifted,[status(thm)],[c_657,c_525])).

cnf(c_746,plain,
    ( ~ v1_funct_2(sK3,X0,u1_struct_0(sK0))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,u1_struct_0(sK0))))
    | ~ v1_relat_1(sK3)
    | k1_relat_1(sK3) = X0 ),
    inference(unflattening,[status(thm)],[c_745])).

cnf(c_1142,plain,
    ( k1_relat_1(sK3) = X0
    | v1_funct_2(sK3,X0,u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,u1_struct_0(sK0)))) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_746])).

cnf(c_1516,plain,
    ( u1_struct_0(sK1) = k1_relat_1(sK3)
    | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_1142])).

cnf(c_20,negated_conjecture,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1517,plain,
    ( ~ v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v1_relat_1(sK3)
    | u1_struct_0(sK1) = k1_relat_1(sK3) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1516])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1155,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1614,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_1155])).

cnf(c_1629,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
    | v1_relat_1(sK3) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1614])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1657,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_2016,plain,
    ( u1_struct_0(sK1) = k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1516,c_20,c_1517,c_1629,c_1657])).

cnf(c_18,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | X2 = X1
    | g1_pre_topc(X2,X3) != g1_pre_topc(X1,X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1151,plain,
    ( X0 = X1
    | g1_pre_topc(X0,X2) != g1_pre_topc(X1,X3)
    | m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1720,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != g1_pre_topc(X0,X1)
    | u1_struct_0(sK2) = X0
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_1151])).

cnf(c_1746,plain,
    ( u1_struct_0(sK2) = u1_struct_0(sK1)
    | m1_subset_1(u1_pre_topc(sK1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK1)))) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1720])).

cnf(c_24,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_35,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_10,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_58,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_60,plain,
    ( m1_subset_1(u1_pre_topc(sK1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK1)))) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(instantiation,[status(thm)],[c_58])).

cnf(c_1966,plain,
    ( u1_struct_0(sK2) = u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1746,c_35,c_60])).

cnf(c_2020,plain,
    ( u1_struct_0(sK2) = k1_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_2016,c_1966])).

cnf(c_14,plain,
    ( r1_funct_2(X0,X1,X2,X3,X4,X4)
    | ~ v1_funct_2(X4,X2,X3)
    | ~ v1_funct_2(X4,X0,X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_xboole_0(X1)
    | v1_xboole_0(X3)
    | ~ v1_funct_1(X4) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_17,negated_conjecture,
    ( ~ r1_funct_2(u1_struct_0(sK1),u1_struct_0(sK0),u1_struct_0(sK2),u1_struct_0(sK0),sK3,k2_tmap_1(sK1,sK0,sK3,sK2)) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_550,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X0,X3,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | ~ v1_funct_1(X0)
    | k2_tmap_1(sK1,sK0,sK3,sK2) != X0
    | u1_struct_0(sK2) != X1
    | u1_struct_0(sK0) != X2
    | u1_struct_0(sK0) != X4
    | u1_struct_0(sK1) != X3
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_17])).

cnf(c_551,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
    | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | v1_xboole_0(u1_struct_0(sK0))
    | ~ v1_funct_1(k2_tmap_1(sK1,sK0,sK3,sK2))
    | sK3 != k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(unflattening,[status(thm)],[c_550])).

cnf(c_553,plain,
    ( ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
    | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
    | ~ v1_funct_1(k2_tmap_1(sK1,sK0,sK3,sK2))
    | sK3 != k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_551,c_29,c_523])).

cnf(c_554,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
    | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(k2_tmap_1(sK1,sK0,sK3,sK2))
    | sK3 != k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(renaming,[status(thm)],[c_553])).

cnf(c_689,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
    | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
    | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | k2_tmap_1(sK1,sK0,sK3,sK2) != sK3 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_554])).

cnf(c_1144,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) != sK3
    | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0)) != iProver_top
    | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0)))) != iProver_top
    | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_689])).

cnf(c_2401,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) != sK3
    | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0)) != iProver_top
    | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0)))) != iProver_top
    | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1144,c_2016])).

cnf(c_2461,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) != sK3
    | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2020,c_2401])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_677,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_21])).

cnf(c_678,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2) ),
    inference(unflattening,[status(thm)],[c_677])).

cnf(c_1145,plain,
    ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_678])).

cnf(c_1426,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0) = k7_relat_1(sK3,X0) ),
    inference(superposition,[status(thm)],[c_1150,c_1145])).

cnf(c_16,plain,
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
    inference(cnf_transformation,[],[f60])).

cnf(c_22,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_369,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3)
    | sK2 != X3
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_22])).

cnf(c_370,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X1)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
    inference(unflattening,[status(thm)],[c_369])).

cnf(c_26,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_25,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_374,plain,
    ( ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_370,c_26,c_25,c_24])).

cnf(c_375,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
    inference(renaming,[status(thm)],[c_374])).

cnf(c_28,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_470,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_375,c_28])).

cnf(c_471,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | v2_struct_0(sK0)
    | ~ l1_pre_topc(sK0)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,X0,sK2) ),
    inference(unflattening,[status(thm)],[c_470])).

cnf(c_475,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,X0,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_471,c_29,c_27])).

cnf(c_635,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,X0,sK2)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_475,c_21])).

cnf(c_636,plain,
    ( ~ v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(unflattening,[status(thm)],[c_635])).

cnf(c_638,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_636,c_20,c_19])).

cnf(c_1429,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK2)) ),
    inference(demodulation,[status(thm)],[c_1426,c_638])).

cnf(c_1969,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK1)) ),
    inference(demodulation,[status(thm)],[c_1966,c_1429])).

cnf(c_1658,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1657])).

cnf(c_1959,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1614,c_1658])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,k1_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1153,plain,
    ( k7_relat_1(X0,k1_relat_1(X0)) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1964,plain,
    ( k7_relat_1(sK3,k1_relat_1(sK3)) = sK3 ),
    inference(superposition,[status(thm)],[c_1959,c_1153])).

cnf(c_2560,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_1969,c_1964,c_2016])).

cnf(c_2989,plain,
    ( v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2461,c_2560])).

cnf(c_2993,plain,
    ( v1_funct_2(sK3,k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2989,c_2560])).

cnf(c_2023,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2016,c_1150])).

cnf(c_1149,plain,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2024,plain,
    ( v1_funct_2(sK3,k1_relat_1(sK3),u1_struct_0(sK0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2016,c_1149])).

cnf(c_2996,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2993,c_2023,c_2024])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n022.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 15:06:26 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.35  % Running in FOF mode
% 2.03/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.03/0.99  
% 2.03/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.03/0.99  
% 2.03/0.99  ------  iProver source info
% 2.03/0.99  
% 2.03/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.03/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.03/0.99  git: non_committed_changes: false
% 2.03/0.99  git: last_make_outside_of_git: false
% 2.03/0.99  
% 2.03/0.99  ------ 
% 2.03/0.99  
% 2.03/0.99  ------ Input Options
% 2.03/0.99  
% 2.03/0.99  --out_options                           all
% 2.03/0.99  --tptp_safe_out                         true
% 2.03/0.99  --problem_path                          ""
% 2.03/0.99  --include_path                          ""
% 2.03/0.99  --clausifier                            res/vclausify_rel
% 2.03/0.99  --clausifier_options                    --mode clausify
% 2.03/0.99  --stdin                                 false
% 2.03/0.99  --stats_out                             all
% 2.03/0.99  
% 2.03/0.99  ------ General Options
% 2.03/0.99  
% 2.03/0.99  --fof                                   false
% 2.03/0.99  --time_out_real                         305.
% 2.03/0.99  --time_out_virtual                      -1.
% 2.03/0.99  --symbol_type_check                     false
% 2.03/0.99  --clausify_out                          false
% 2.03/0.99  --sig_cnt_out                           false
% 2.03/0.99  --trig_cnt_out                          false
% 2.03/0.99  --trig_cnt_out_tolerance                1.
% 2.03/0.99  --trig_cnt_out_sk_spl                   false
% 2.03/0.99  --abstr_cl_out                          false
% 2.03/0.99  
% 2.03/0.99  ------ Global Options
% 2.03/0.99  
% 2.03/0.99  --schedule                              default
% 2.03/0.99  --add_important_lit                     false
% 2.03/0.99  --prop_solver_per_cl                    1000
% 2.03/0.99  --min_unsat_core                        false
% 2.03/0.99  --soft_assumptions                      false
% 2.03/0.99  --soft_lemma_size                       3
% 2.03/0.99  --prop_impl_unit_size                   0
% 2.03/0.99  --prop_impl_unit                        []
% 2.03/0.99  --share_sel_clauses                     true
% 2.03/0.99  --reset_solvers                         false
% 2.03/0.99  --bc_imp_inh                            [conj_cone]
% 2.03/0.99  --conj_cone_tolerance                   3.
% 2.03/0.99  --extra_neg_conj                        none
% 2.03/0.99  --large_theory_mode                     true
% 2.03/0.99  --prolific_symb_bound                   200
% 2.03/0.99  --lt_threshold                          2000
% 2.03/0.99  --clause_weak_htbl                      true
% 2.03/0.99  --gc_record_bc_elim                     false
% 2.03/0.99  
% 2.03/0.99  ------ Preprocessing Options
% 2.03/0.99  
% 2.03/0.99  --preprocessing_flag                    true
% 2.03/0.99  --time_out_prep_mult                    0.1
% 2.03/0.99  --splitting_mode                        input
% 2.03/0.99  --splitting_grd                         true
% 2.03/0.99  --splitting_cvd                         false
% 2.03/0.99  --splitting_cvd_svl                     false
% 2.03/0.99  --splitting_nvd                         32
% 2.03/0.99  --sub_typing                            true
% 2.03/0.99  --prep_gs_sim                           true
% 2.03/0.99  --prep_unflatten                        true
% 2.03/0.99  --prep_res_sim                          true
% 2.03/0.99  --prep_upred                            true
% 2.03/0.99  --prep_sem_filter                       exhaustive
% 2.03/0.99  --prep_sem_filter_out                   false
% 2.03/0.99  --pred_elim                             true
% 2.03/0.99  --res_sim_input                         true
% 2.03/0.99  --eq_ax_congr_red                       true
% 2.03/0.99  --pure_diseq_elim                       true
% 2.03/0.99  --brand_transform                       false
% 2.03/0.99  --non_eq_to_eq                          false
% 2.03/0.99  --prep_def_merge                        true
% 2.03/0.99  --prep_def_merge_prop_impl              false
% 2.03/0.99  --prep_def_merge_mbd                    true
% 2.03/0.99  --prep_def_merge_tr_red                 false
% 2.03/0.99  --prep_def_merge_tr_cl                  false
% 2.03/0.99  --smt_preprocessing                     true
% 2.03/0.99  --smt_ac_axioms                         fast
% 2.03/0.99  --preprocessed_out                      false
% 2.03/0.99  --preprocessed_stats                    false
% 2.03/0.99  
% 2.03/0.99  ------ Abstraction refinement Options
% 2.03/0.99  
% 2.03/0.99  --abstr_ref                             []
% 2.03/0.99  --abstr_ref_prep                        false
% 2.03/0.99  --abstr_ref_until_sat                   false
% 2.03/0.99  --abstr_ref_sig_restrict                funpre
% 2.03/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.03/0.99  --abstr_ref_under                       []
% 2.03/0.99  
% 2.03/0.99  ------ SAT Options
% 2.03/0.99  
% 2.03/0.99  --sat_mode                              false
% 2.03/0.99  --sat_fm_restart_options                ""
% 2.03/0.99  --sat_gr_def                            false
% 2.03/0.99  --sat_epr_types                         true
% 2.03/0.99  --sat_non_cyclic_types                  false
% 2.03/0.99  --sat_finite_models                     false
% 2.03/0.99  --sat_fm_lemmas                         false
% 2.03/0.99  --sat_fm_prep                           false
% 2.03/0.99  --sat_fm_uc_incr                        true
% 2.03/0.99  --sat_out_model                         small
% 2.03/0.99  --sat_out_clauses                       false
% 2.03/0.99  
% 2.03/0.99  ------ QBF Options
% 2.03/0.99  
% 2.03/0.99  --qbf_mode                              false
% 2.03/0.99  --qbf_elim_univ                         false
% 2.03/0.99  --qbf_dom_inst                          none
% 2.03/0.99  --qbf_dom_pre_inst                      false
% 2.03/0.99  --qbf_sk_in                             false
% 2.03/0.99  --qbf_pred_elim                         true
% 2.03/0.99  --qbf_split                             512
% 2.03/0.99  
% 2.03/0.99  ------ BMC1 Options
% 2.03/0.99  
% 2.03/0.99  --bmc1_incremental                      false
% 2.03/0.99  --bmc1_axioms                           reachable_all
% 2.03/0.99  --bmc1_min_bound                        0
% 2.03/0.99  --bmc1_max_bound                        -1
% 2.03/0.99  --bmc1_max_bound_default                -1
% 2.03/0.99  --bmc1_symbol_reachability              true
% 2.03/0.99  --bmc1_property_lemmas                  false
% 2.03/0.99  --bmc1_k_induction                      false
% 2.03/0.99  --bmc1_non_equiv_states                 false
% 2.03/0.99  --bmc1_deadlock                         false
% 2.03/0.99  --bmc1_ucm                              false
% 2.03/0.99  --bmc1_add_unsat_core                   none
% 2.03/0.99  --bmc1_unsat_core_children              false
% 2.03/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.03/0.99  --bmc1_out_stat                         full
% 2.03/0.99  --bmc1_ground_init                      false
% 2.03/0.99  --bmc1_pre_inst_next_state              false
% 2.03/0.99  --bmc1_pre_inst_state                   false
% 2.03/0.99  --bmc1_pre_inst_reach_state             false
% 2.03/0.99  --bmc1_out_unsat_core                   false
% 2.03/0.99  --bmc1_aig_witness_out                  false
% 2.03/0.99  --bmc1_verbose                          false
% 2.03/0.99  --bmc1_dump_clauses_tptp                false
% 2.03/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.03/0.99  --bmc1_dump_file                        -
% 2.03/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.03/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.03/0.99  --bmc1_ucm_extend_mode                  1
% 2.03/0.99  --bmc1_ucm_init_mode                    2
% 2.03/0.99  --bmc1_ucm_cone_mode                    none
% 2.03/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.03/0.99  --bmc1_ucm_relax_model                  4
% 2.03/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.03/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.03/0.99  --bmc1_ucm_layered_model                none
% 2.03/0.99  --bmc1_ucm_max_lemma_size               10
% 2.03/0.99  
% 2.03/0.99  ------ AIG Options
% 2.03/0.99  
% 2.03/0.99  --aig_mode                              false
% 2.03/0.99  
% 2.03/0.99  ------ Instantiation Options
% 2.03/0.99  
% 2.03/0.99  --instantiation_flag                    true
% 2.03/0.99  --inst_sos_flag                         false
% 2.03/0.99  --inst_sos_phase                        true
% 2.03/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.03/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.03/0.99  --inst_lit_sel_side                     num_symb
% 2.03/0.99  --inst_solver_per_active                1400
% 2.03/0.99  --inst_solver_calls_frac                1.
% 2.03/0.99  --inst_passive_queue_type               priority_queues
% 2.03/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.03/0.99  --inst_passive_queues_freq              [25;2]
% 2.03/0.99  --inst_dismatching                      true
% 2.03/0.99  --inst_eager_unprocessed_to_passive     true
% 2.03/0.99  --inst_prop_sim_given                   true
% 2.03/0.99  --inst_prop_sim_new                     false
% 2.03/0.99  --inst_subs_new                         false
% 2.03/0.99  --inst_eq_res_simp                      false
% 2.03/0.99  --inst_subs_given                       false
% 2.03/0.99  --inst_orphan_elimination               true
% 2.03/0.99  --inst_learning_loop_flag               true
% 2.03/0.99  --inst_learning_start                   3000
% 2.03/0.99  --inst_learning_factor                  2
% 2.03/0.99  --inst_start_prop_sim_after_learn       3
% 2.03/0.99  --inst_sel_renew                        solver
% 2.03/0.99  --inst_lit_activity_flag                true
% 2.03/0.99  --inst_restr_to_given                   false
% 2.03/0.99  --inst_activity_threshold               500
% 2.03/0.99  --inst_out_proof                        true
% 2.03/0.99  
% 2.03/0.99  ------ Resolution Options
% 2.03/0.99  
% 2.03/0.99  --resolution_flag                       true
% 2.03/0.99  --res_lit_sel                           adaptive
% 2.03/0.99  --res_lit_sel_side                      none
% 2.03/0.99  --res_ordering                          kbo
% 2.03/0.99  --res_to_prop_solver                    active
% 2.03/0.99  --res_prop_simpl_new                    false
% 2.03/0.99  --res_prop_simpl_given                  true
% 2.03/0.99  --res_passive_queue_type                priority_queues
% 2.03/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.03/0.99  --res_passive_queues_freq               [15;5]
% 2.03/0.99  --res_forward_subs                      full
% 2.03/0.99  --res_backward_subs                     full
% 2.03/0.99  --res_forward_subs_resolution           true
% 2.03/0.99  --res_backward_subs_resolution          true
% 2.03/0.99  --res_orphan_elimination                true
% 2.03/0.99  --res_time_limit                        2.
% 2.03/0.99  --res_out_proof                         true
% 2.03/0.99  
% 2.03/0.99  ------ Superposition Options
% 2.03/0.99  
% 2.03/0.99  --superposition_flag                    true
% 2.03/0.99  --sup_passive_queue_type                priority_queues
% 2.03/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.03/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.03/0.99  --demod_completeness_check              fast
% 2.03/0.99  --demod_use_ground                      true
% 2.03/0.99  --sup_to_prop_solver                    passive
% 2.03/0.99  --sup_prop_simpl_new                    true
% 2.03/0.99  --sup_prop_simpl_given                  true
% 2.03/0.99  --sup_fun_splitting                     false
% 2.03/0.99  --sup_smt_interval                      50000
% 2.03/0.99  
% 2.03/0.99  ------ Superposition Simplification Setup
% 2.03/0.99  
% 2.03/0.99  --sup_indices_passive                   []
% 2.03/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.03/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.03/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.03/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.03/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.03/0.99  --sup_full_bw                           [BwDemod]
% 2.03/0.99  --sup_immed_triv                        [TrivRules]
% 2.03/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.03/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.03/0.99  --sup_immed_bw_main                     []
% 2.03/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.03/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.03/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.03/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.03/0.99  
% 2.03/0.99  ------ Combination Options
% 2.03/0.99  
% 2.03/0.99  --comb_res_mult                         3
% 2.03/0.99  --comb_sup_mult                         2
% 2.03/0.99  --comb_inst_mult                        10
% 2.03/0.99  
% 2.03/0.99  ------ Debug Options
% 2.03/0.99  
% 2.03/0.99  --dbg_backtrace                         false
% 2.03/0.99  --dbg_dump_prop_clauses                 false
% 2.03/0.99  --dbg_dump_prop_clauses_file            -
% 2.03/0.99  --dbg_out_stat                          false
% 2.03/0.99  ------ Parsing...
% 2.03/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.03/0.99  
% 2.03/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 10 0s  sf_e  pe_s  pe_e 
% 2.03/0.99  
% 2.03/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.03/0.99  
% 2.03/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.03/0.99  ------ Proving...
% 2.03/0.99  ------ Problem Properties 
% 2.03/0.99  
% 2.03/0.99  
% 2.03/0.99  clauses                                 16
% 2.03/0.99  conjectures                             3
% 2.03/0.99  EPR                                     0
% 2.03/0.99  Horn                                    16
% 2.03/0.99  unary                                   7
% 2.03/0.99  binary                                  2
% 2.03/0.99  lits                                    36
% 2.03/0.99  lits eq                                 12
% 2.03/0.99  fd_pure                                 0
% 2.03/0.99  fd_pseudo                               0
% 2.03/0.99  fd_cond                                 2
% 2.03/0.99  fd_pseudo_cond                          2
% 2.03/0.99  AC symbols                              0
% 2.03/0.99  
% 2.03/0.99  ------ Schedule dynamic 5 is on 
% 2.03/0.99  
% 2.03/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.03/0.99  
% 2.03/0.99  
% 2.03/0.99  ------ 
% 2.03/0.99  Current options:
% 2.03/0.99  ------ 
% 2.03/0.99  
% 2.03/0.99  ------ Input Options
% 2.03/0.99  
% 2.03/0.99  --out_options                           all
% 2.03/0.99  --tptp_safe_out                         true
% 2.03/0.99  --problem_path                          ""
% 2.03/0.99  --include_path                          ""
% 2.03/0.99  --clausifier                            res/vclausify_rel
% 2.03/0.99  --clausifier_options                    --mode clausify
% 2.03/0.99  --stdin                                 false
% 2.03/0.99  --stats_out                             all
% 2.03/0.99  
% 2.03/0.99  ------ General Options
% 2.03/0.99  
% 2.03/0.99  --fof                                   false
% 2.03/0.99  --time_out_real                         305.
% 2.03/0.99  --time_out_virtual                      -1.
% 2.03/0.99  --symbol_type_check                     false
% 2.03/0.99  --clausify_out                          false
% 2.03/0.99  --sig_cnt_out                           false
% 2.03/0.99  --trig_cnt_out                          false
% 2.03/0.99  --trig_cnt_out_tolerance                1.
% 2.03/0.99  --trig_cnt_out_sk_spl                   false
% 2.03/0.99  --abstr_cl_out                          false
% 2.03/0.99  
% 2.03/0.99  ------ Global Options
% 2.03/0.99  
% 2.03/0.99  --schedule                              default
% 2.03/0.99  --add_important_lit                     false
% 2.03/0.99  --prop_solver_per_cl                    1000
% 2.03/0.99  --min_unsat_core                        false
% 2.03/0.99  --soft_assumptions                      false
% 2.03/0.99  --soft_lemma_size                       3
% 2.03/0.99  --prop_impl_unit_size                   0
% 2.03/0.99  --prop_impl_unit                        []
% 2.03/0.99  --share_sel_clauses                     true
% 2.03/0.99  --reset_solvers                         false
% 2.03/0.99  --bc_imp_inh                            [conj_cone]
% 2.03/0.99  --conj_cone_tolerance                   3.
% 2.03/0.99  --extra_neg_conj                        none
% 2.03/0.99  --large_theory_mode                     true
% 2.03/0.99  --prolific_symb_bound                   200
% 2.03/0.99  --lt_threshold                          2000
% 2.03/0.99  --clause_weak_htbl                      true
% 2.03/0.99  --gc_record_bc_elim                     false
% 2.03/0.99  
% 2.03/0.99  ------ Preprocessing Options
% 2.03/0.99  
% 2.03/0.99  --preprocessing_flag                    true
% 2.03/0.99  --time_out_prep_mult                    0.1
% 2.03/0.99  --splitting_mode                        input
% 2.03/0.99  --splitting_grd                         true
% 2.03/0.99  --splitting_cvd                         false
% 2.03/0.99  --splitting_cvd_svl                     false
% 2.03/0.99  --splitting_nvd                         32
% 2.03/0.99  --sub_typing                            true
% 2.03/0.99  --prep_gs_sim                           true
% 2.03/0.99  --prep_unflatten                        true
% 2.03/0.99  --prep_res_sim                          true
% 2.03/0.99  --prep_upred                            true
% 2.03/0.99  --prep_sem_filter                       exhaustive
% 2.03/0.99  --prep_sem_filter_out                   false
% 2.03/0.99  --pred_elim                             true
% 2.03/0.99  --res_sim_input                         true
% 2.03/0.99  --eq_ax_congr_red                       true
% 2.03/0.99  --pure_diseq_elim                       true
% 2.03/0.99  --brand_transform                       false
% 2.03/0.99  --non_eq_to_eq                          false
% 2.03/0.99  --prep_def_merge                        true
% 2.03/0.99  --prep_def_merge_prop_impl              false
% 2.03/0.99  --prep_def_merge_mbd                    true
% 2.03/0.99  --prep_def_merge_tr_red                 false
% 2.03/0.99  --prep_def_merge_tr_cl                  false
% 2.03/0.99  --smt_preprocessing                     true
% 2.03/0.99  --smt_ac_axioms                         fast
% 2.03/0.99  --preprocessed_out                      false
% 2.03/0.99  --preprocessed_stats                    false
% 2.03/0.99  
% 2.03/0.99  ------ Abstraction refinement Options
% 2.03/0.99  
% 2.03/0.99  --abstr_ref                             []
% 2.03/0.99  --abstr_ref_prep                        false
% 2.03/0.99  --abstr_ref_until_sat                   false
% 2.03/0.99  --abstr_ref_sig_restrict                funpre
% 2.03/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.03/0.99  --abstr_ref_under                       []
% 2.03/0.99  
% 2.03/0.99  ------ SAT Options
% 2.03/0.99  
% 2.03/0.99  --sat_mode                              false
% 2.03/0.99  --sat_fm_restart_options                ""
% 2.03/0.99  --sat_gr_def                            false
% 2.03/0.99  --sat_epr_types                         true
% 2.03/0.99  --sat_non_cyclic_types                  false
% 2.03/0.99  --sat_finite_models                     false
% 2.03/0.99  --sat_fm_lemmas                         false
% 2.03/0.99  --sat_fm_prep                           false
% 2.03/0.99  --sat_fm_uc_incr                        true
% 2.03/0.99  --sat_out_model                         small
% 2.03/0.99  --sat_out_clauses                       false
% 2.03/0.99  
% 2.03/0.99  ------ QBF Options
% 2.03/0.99  
% 2.03/0.99  --qbf_mode                              false
% 2.03/0.99  --qbf_elim_univ                         false
% 2.03/0.99  --qbf_dom_inst                          none
% 2.03/0.99  --qbf_dom_pre_inst                      false
% 2.03/0.99  --qbf_sk_in                             false
% 2.03/0.99  --qbf_pred_elim                         true
% 2.03/0.99  --qbf_split                             512
% 2.03/0.99  
% 2.03/0.99  ------ BMC1 Options
% 2.03/0.99  
% 2.03/0.99  --bmc1_incremental                      false
% 2.03/0.99  --bmc1_axioms                           reachable_all
% 2.03/0.99  --bmc1_min_bound                        0
% 2.03/0.99  --bmc1_max_bound                        -1
% 2.03/0.99  --bmc1_max_bound_default                -1
% 2.03/0.99  --bmc1_symbol_reachability              true
% 2.03/0.99  --bmc1_property_lemmas                  false
% 2.03/0.99  --bmc1_k_induction                      false
% 2.03/0.99  --bmc1_non_equiv_states                 false
% 2.03/0.99  --bmc1_deadlock                         false
% 2.03/0.99  --bmc1_ucm                              false
% 2.03/0.99  --bmc1_add_unsat_core                   none
% 2.03/0.99  --bmc1_unsat_core_children              false
% 2.03/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.03/0.99  --bmc1_out_stat                         full
% 2.03/0.99  --bmc1_ground_init                      false
% 2.03/0.99  --bmc1_pre_inst_next_state              false
% 2.03/0.99  --bmc1_pre_inst_state                   false
% 2.03/0.99  --bmc1_pre_inst_reach_state             false
% 2.03/0.99  --bmc1_out_unsat_core                   false
% 2.03/0.99  --bmc1_aig_witness_out                  false
% 2.03/0.99  --bmc1_verbose                          false
% 2.03/0.99  --bmc1_dump_clauses_tptp                false
% 2.03/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.03/0.99  --bmc1_dump_file                        -
% 2.03/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.03/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.03/0.99  --bmc1_ucm_extend_mode                  1
% 2.03/0.99  --bmc1_ucm_init_mode                    2
% 2.03/0.99  --bmc1_ucm_cone_mode                    none
% 2.03/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.03/0.99  --bmc1_ucm_relax_model                  4
% 2.03/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.03/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.03/0.99  --bmc1_ucm_layered_model                none
% 2.03/0.99  --bmc1_ucm_max_lemma_size               10
% 2.03/0.99  
% 2.03/0.99  ------ AIG Options
% 2.03/0.99  
% 2.03/0.99  --aig_mode                              false
% 2.03/0.99  
% 2.03/0.99  ------ Instantiation Options
% 2.03/0.99  
% 2.03/0.99  --instantiation_flag                    true
% 2.03/0.99  --inst_sos_flag                         false
% 2.03/0.99  --inst_sos_phase                        true
% 2.03/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.03/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.03/0.99  --inst_lit_sel_side                     none
% 2.03/0.99  --inst_solver_per_active                1400
% 2.03/0.99  --inst_solver_calls_frac                1.
% 2.03/0.99  --inst_passive_queue_type               priority_queues
% 2.03/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.03/0.99  --inst_passive_queues_freq              [25;2]
% 2.03/0.99  --inst_dismatching                      true
% 2.03/0.99  --inst_eager_unprocessed_to_passive     true
% 2.03/0.99  --inst_prop_sim_given                   true
% 2.03/0.99  --inst_prop_sim_new                     false
% 2.03/0.99  --inst_subs_new                         false
% 2.03/0.99  --inst_eq_res_simp                      false
% 2.03/0.99  --inst_subs_given                       false
% 2.03/0.99  --inst_orphan_elimination               true
% 2.03/0.99  --inst_learning_loop_flag               true
% 2.03/0.99  --inst_learning_start                   3000
% 2.03/0.99  --inst_learning_factor                  2
% 2.03/0.99  --inst_start_prop_sim_after_learn       3
% 2.03/0.99  --inst_sel_renew                        solver
% 2.03/0.99  --inst_lit_activity_flag                true
% 2.03/0.99  --inst_restr_to_given                   false
% 2.03/0.99  --inst_activity_threshold               500
% 2.03/0.99  --inst_out_proof                        true
% 2.03/0.99  
% 2.03/0.99  ------ Resolution Options
% 2.03/0.99  
% 2.03/0.99  --resolution_flag                       false
% 2.03/0.99  --res_lit_sel                           adaptive
% 2.03/0.99  --res_lit_sel_side                      none
% 2.03/0.99  --res_ordering                          kbo
% 2.03/0.99  --res_to_prop_solver                    active
% 2.03/0.99  --res_prop_simpl_new                    false
% 2.03/0.99  --res_prop_simpl_given                  true
% 2.03/0.99  --res_passive_queue_type                priority_queues
% 2.03/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.03/0.99  --res_passive_queues_freq               [15;5]
% 2.03/0.99  --res_forward_subs                      full
% 2.03/0.99  --res_backward_subs                     full
% 2.03/0.99  --res_forward_subs_resolution           true
% 2.03/0.99  --res_backward_subs_resolution          true
% 2.03/0.99  --res_orphan_elimination                true
% 2.03/0.99  --res_time_limit                        2.
% 2.03/0.99  --res_out_proof                         true
% 2.03/0.99  
% 2.03/0.99  ------ Superposition Options
% 2.03/0.99  
% 2.03/0.99  --superposition_flag                    true
% 2.03/0.99  --sup_passive_queue_type                priority_queues
% 2.03/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.03/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.03/0.99  --demod_completeness_check              fast
% 2.03/0.99  --demod_use_ground                      true
% 2.03/0.99  --sup_to_prop_solver                    passive
% 2.03/0.99  --sup_prop_simpl_new                    true
% 2.03/0.99  --sup_prop_simpl_given                  true
% 2.03/0.99  --sup_fun_splitting                     false
% 2.03/0.99  --sup_smt_interval                      50000
% 2.03/0.99  
% 2.03/0.99  ------ Superposition Simplification Setup
% 2.03/0.99  
% 2.03/0.99  --sup_indices_passive                   []
% 2.03/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.03/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.03/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.03/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.03/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.03/0.99  --sup_full_bw                           [BwDemod]
% 2.03/0.99  --sup_immed_triv                        [TrivRules]
% 2.03/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.03/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.03/0.99  --sup_immed_bw_main                     []
% 2.03/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.03/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.03/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.03/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.03/0.99  
% 2.03/0.99  ------ Combination Options
% 2.03/0.99  
% 2.03/0.99  --comb_res_mult                         3
% 2.03/0.99  --comb_sup_mult                         2
% 2.03/0.99  --comb_inst_mult                        10
% 2.03/0.99  
% 2.03/0.99  ------ Debug Options
% 2.03/0.99  
% 2.03/0.99  --dbg_backtrace                         false
% 2.03/0.99  --dbg_dump_prop_clauses                 false
% 2.03/0.99  --dbg_dump_prop_clauses_file            -
% 2.03/0.99  --dbg_out_stat                          false
% 2.03/0.99  
% 2.03/0.99  
% 2.03/0.99  
% 2.03/0.99  
% 2.03/0.99  ------ Proving...
% 2.03/0.99  
% 2.03/0.99  
% 2.03/0.99  % SZS status Theorem for theBenchmark.p
% 2.03/0.99  
% 2.03/0.99   Resolution empty clause
% 2.03/0.99  
% 2.03/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.03/0.99  
% 2.03/0.99  fof(f14,conjecture,(
% 2.03/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => (g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) => r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)))))))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f15,negated_conjecture,(
% 2.03/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => (g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) => r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)))))))),
% 2.03/0.99    inference(negated_conjecture,[],[f14])).
% 2.03/0.99  
% 2.03/0.99  fof(f35,plain,(
% 2.03/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3))) & (m1_pre_topc(X2,X1) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.03/0.99    inference(ennf_transformation,[],[f15])).
% 2.03/0.99  
% 2.03/0.99  fof(f36,plain,(
% 2.03/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.03/0.99    inference(flattening,[],[f35])).
% 2.03/0.99  
% 2.03/0.99  fof(f42,plain,(
% 2.03/0.99    ( ! [X2,X0,X1] : (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),sK3,k2_tmap_1(X1,X0,sK3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(sK3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(sK3))) )),
% 2.03/0.99    introduced(choice_axiom,[])).
% 2.03/0.99  
% 2.03/0.99  fof(f41,plain,(
% 2.03/0.99    ( ! [X0,X1] : (? [X2] : (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(sK2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,sK2)) & g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2)) = g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(sK2,X1) & ~v2_struct_0(sK2))) )),
% 2.03/0.99    introduced(choice_axiom,[])).
% 2.03/0.99  
% 2.03/0.99  fof(f40,plain,(
% 2.03/0.99    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (~r1_funct_2(u1_struct_0(sK1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(sK1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(sK1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,sK1) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 2.03/0.99    introduced(choice_axiom,[])).
% 2.03/0.99  
% 2.03/0.99  fof(f39,plain,(
% 2.03/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(X0),u1_struct_0(X2),u1_struct_0(X0),X3,k2_tmap_1(X1,X0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~r1_funct_2(u1_struct_0(X1),u1_struct_0(sK0),u1_struct_0(X2),u1_struct_0(sK0),X3,k2_tmap_1(X1,sK0,X3,X2)) & g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(sK0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 2.03/0.99    introduced(choice_axiom,[])).
% 2.03/0.99  
% 2.03/0.99  fof(f43,plain,(
% 2.03/0.99    (((~r1_funct_2(u1_struct_0(sK1),u1_struct_0(sK0),u1_struct_0(sK2),u1_struct_0(sK0),sK3,k2_tmap_1(sK1,sK0,sK3,sK2)) & g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) & v1_funct_1(sK3)) & m1_pre_topc(sK2,sK1) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 2.03/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f36,f42,f41,f40,f39])).
% 2.03/0.99  
% 2.03/0.99  fof(f71,plain,(
% 2.03/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))),
% 2.03/0.99    inference(cnf_transformation,[],[f43])).
% 2.03/0.99  
% 2.03/0.99  fof(f5,axiom,(
% 2.03/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f20,plain,(
% 2.03/0.99    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.03/0.99    inference(ennf_transformation,[],[f5])).
% 2.03/0.99  
% 2.03/0.99  fof(f21,plain,(
% 2.03/0.99    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.03/0.99    inference(flattening,[],[f20])).
% 2.03/0.99  
% 2.03/0.99  fof(f49,plain,(
% 2.03/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 2.03/0.99    inference(cnf_transformation,[],[f21])).
% 2.03/0.99  
% 2.03/0.99  fof(f6,axiom,(
% 2.03/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f22,plain,(
% 2.03/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 2.03/0.99    inference(ennf_transformation,[],[f6])).
% 2.03/0.99  
% 2.03/0.99  fof(f23,plain,(
% 2.03/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.03/0.99    inference(flattening,[],[f22])).
% 2.03/0.99  
% 2.03/0.99  fof(f37,plain,(
% 2.03/0.99    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.03/0.99    inference(nnf_transformation,[],[f23])).
% 2.03/0.99  
% 2.03/0.99  fof(f50,plain,(
% 2.03/0.99    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.03/0.99    inference(cnf_transformation,[],[f37])).
% 2.03/0.99  
% 2.03/0.99  fof(f4,axiom,(
% 2.03/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f16,plain,(
% 2.03/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 2.03/0.99    inference(pure_predicate_removal,[],[f4])).
% 2.03/0.99  
% 2.03/0.99  fof(f19,plain,(
% 2.03/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.03/0.99    inference(ennf_transformation,[],[f16])).
% 2.03/0.99  
% 2.03/0.99  fof(f47,plain,(
% 2.03/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.03/0.99    inference(cnf_transformation,[],[f19])).
% 2.03/0.99  
% 2.03/0.99  fof(f69,plain,(
% 2.03/0.99    v1_funct_1(sK3)),
% 2.03/0.99    inference(cnf_transformation,[],[f43])).
% 2.03/0.99  
% 2.03/0.99  fof(f8,axiom,(
% 2.03/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f26,plain,(
% 2.03/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.03/0.99    inference(ennf_transformation,[],[f8])).
% 2.03/0.99  
% 2.03/0.99  fof(f53,plain,(
% 2.03/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.03/0.99    inference(cnf_transformation,[],[f26])).
% 2.03/0.99  
% 2.03/0.99  fof(f10,axiom,(
% 2.03/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f28,plain,(
% 2.03/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.03/0.99    inference(ennf_transformation,[],[f10])).
% 2.03/0.99  
% 2.03/0.99  fof(f29,plain,(
% 2.03/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.03/0.99    inference(flattening,[],[f28])).
% 2.03/0.99  
% 2.03/0.99  fof(f55,plain,(
% 2.03/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.03/0.99    inference(cnf_transformation,[],[f29])).
% 2.03/0.99  
% 2.03/0.99  fof(f63,plain,(
% 2.03/0.99    l1_pre_topc(sK0)),
% 2.03/0.99    inference(cnf_transformation,[],[f43])).
% 2.03/0.99  
% 2.03/0.99  fof(f61,plain,(
% 2.03/0.99    ~v2_struct_0(sK0)),
% 2.03/0.99    inference(cnf_transformation,[],[f43])).
% 2.03/0.99  
% 2.03/0.99  fof(f70,plain,(
% 2.03/0.99    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))),
% 2.03/0.99    inference(cnf_transformation,[],[f43])).
% 2.03/0.99  
% 2.03/0.99  fof(f1,axiom,(
% 2.03/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f17,plain,(
% 2.03/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.03/0.99    inference(ennf_transformation,[],[f1])).
% 2.03/0.99  
% 2.03/0.99  fof(f44,plain,(
% 2.03/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.03/0.99    inference(cnf_transformation,[],[f17])).
% 2.03/0.99  
% 2.03/0.99  fof(f2,axiom,(
% 2.03/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f45,plain,(
% 2.03/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.03/0.99    inference(cnf_transformation,[],[f2])).
% 2.03/0.99  
% 2.03/0.99  fof(f72,plain,(
% 2.03/0.99    g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2))),
% 2.03/0.99    inference(cnf_transformation,[],[f43])).
% 2.03/0.99  
% 2.03/0.99  fof(f11,axiom,(
% 2.03/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2,X3] : (g1_pre_topc(X0,X1) = g1_pre_topc(X2,X3) => (X1 = X3 & X0 = X2)))),
% 2.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/0.99  
% 2.03/0.99  fof(f30,plain,(
% 2.03/0.99    ! [X0,X1] : (! [X2,X3] : ((X1 = X3 & X0 = X2) | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.03/0.99    inference(ennf_transformation,[],[f11])).
% 2.03/0.99  
% 2.03/0.99  fof(f56,plain,(
% 2.03/0.99    ( ! [X2,X0,X3,X1] : (X0 = X2 | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.03/1.00    inference(cnf_transformation,[],[f30])).
% 2.03/1.00  
% 2.03/1.00  fof(f66,plain,(
% 2.03/1.00    l1_pre_topc(sK1)),
% 2.03/1.00    inference(cnf_transformation,[],[f43])).
% 2.03/1.00  
% 2.03/1.00  fof(f9,axiom,(
% 2.03/1.00    ! [X0] : (l1_pre_topc(X0) => m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/1.00  
% 2.03/1.00  fof(f27,plain,(
% 2.03/1.00    ! [X0] : (m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.03/1.00    inference(ennf_transformation,[],[f9])).
% 2.03/1.00  
% 2.03/1.00  fof(f54,plain,(
% 2.03/1.00    ( ! [X0] : (m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 2.03/1.00    inference(cnf_transformation,[],[f27])).
% 2.03/1.00  
% 2.03/1.00  fof(f12,axiom,(
% 2.03/1.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_2(X5,X2,X3) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X4,X0,X1) & v1_funct_1(X4) & ~v1_xboole_0(X3) & ~v1_xboole_0(X1)) => (r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5))),
% 2.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/1.00  
% 2.03/1.00  fof(f31,plain,(
% 2.03/1.00    ! [X0,X1,X2,X3,X4,X5] : ((r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1)))),
% 2.03/1.00    inference(ennf_transformation,[],[f12])).
% 2.03/1.00  
% 2.03/1.00  fof(f32,plain,(
% 2.03/1.00    ! [X0,X1,X2,X3,X4,X5] : ((r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1))),
% 2.03/1.00    inference(flattening,[],[f31])).
% 2.03/1.00  
% 2.03/1.00  fof(f38,plain,(
% 2.03/1.00    ! [X0,X1,X2,X3,X4,X5] : (((r1_funct_2(X0,X1,X2,X3,X4,X5) | X4 != X5) & (X4 = X5 | ~r1_funct_2(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1))),
% 2.03/1.00    inference(nnf_transformation,[],[f32])).
% 2.03/1.00  
% 2.03/1.00  fof(f59,plain,(
% 2.03/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (r1_funct_2(X0,X1,X2,X3,X4,X5) | X4 != X5 | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1)) )),
% 2.03/1.00    inference(cnf_transformation,[],[f38])).
% 2.03/1.00  
% 2.03/1.00  fof(f75,plain,(
% 2.03/1.00    ( ! [X2,X0,X5,X3,X1] : (r1_funct_2(X0,X1,X2,X3,X5,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X5,X0,X1) | ~v1_funct_1(X5) | v1_xboole_0(X3) | v1_xboole_0(X1)) )),
% 2.03/1.00    inference(equality_resolution,[],[f59])).
% 2.03/1.00  
% 2.03/1.00  fof(f73,plain,(
% 2.03/1.00    ~r1_funct_2(u1_struct_0(sK1),u1_struct_0(sK0),u1_struct_0(sK2),u1_struct_0(sK0),sK3,k2_tmap_1(sK1,sK0,sK3,sK2))),
% 2.03/1.00    inference(cnf_transformation,[],[f43])).
% 2.03/1.00  
% 2.03/1.00  fof(f7,axiom,(
% 2.03/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3))),
% 2.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/1.00  
% 2.03/1.00  fof(f24,plain,(
% 2.03/1.00    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 2.03/1.00    inference(ennf_transformation,[],[f7])).
% 2.03/1.00  
% 2.03/1.00  fof(f25,plain,(
% 2.03/1.00    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 2.03/1.00    inference(flattening,[],[f24])).
% 2.03/1.00  
% 2.03/1.00  fof(f52,plain,(
% 2.03/1.00    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 2.03/1.00    inference(cnf_transformation,[],[f25])).
% 2.03/1.00  
% 2.03/1.00  fof(f13,axiom,(
% 2.03/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_pre_topc(X3,X0) => k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)))))),
% 2.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/1.00  
% 2.03/1.00  fof(f33,plain,(
% 2.03/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.03/1.00    inference(ennf_transformation,[],[f13])).
% 2.03/1.00  
% 2.03/1.00  fof(f34,plain,(
% 2.03/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.03/1.00    inference(flattening,[],[f33])).
% 2.03/1.00  
% 2.03/1.00  fof(f60,plain,(
% 2.03/1.00    ( ! [X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.03/1.00    inference(cnf_transformation,[],[f34])).
% 2.03/1.00  
% 2.03/1.00  fof(f68,plain,(
% 2.03/1.00    m1_pre_topc(sK2,sK1)),
% 2.03/1.00    inference(cnf_transformation,[],[f43])).
% 2.03/1.00  
% 2.03/1.00  fof(f64,plain,(
% 2.03/1.00    ~v2_struct_0(sK1)),
% 2.03/1.00    inference(cnf_transformation,[],[f43])).
% 2.03/1.00  
% 2.03/1.00  fof(f65,plain,(
% 2.03/1.00    v2_pre_topc(sK1)),
% 2.03/1.00    inference(cnf_transformation,[],[f43])).
% 2.03/1.00  
% 2.03/1.00  fof(f62,plain,(
% 2.03/1.00    v2_pre_topc(sK0)),
% 2.03/1.00    inference(cnf_transformation,[],[f43])).
% 2.03/1.00  
% 2.03/1.00  fof(f3,axiom,(
% 2.03/1.00    ! [X0] : (v1_relat_1(X0) => k7_relat_1(X0,k1_relat_1(X0)) = X0)),
% 2.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.03/1.00  
% 2.03/1.00  fof(f18,plain,(
% 2.03/1.00    ! [X0] : (k7_relat_1(X0,k1_relat_1(X0)) = X0 | ~v1_relat_1(X0))),
% 2.03/1.00    inference(ennf_transformation,[],[f3])).
% 2.03/1.00  
% 2.03/1.00  fof(f46,plain,(
% 2.03/1.00    ( ! [X0] : (k7_relat_1(X0,k1_relat_1(X0)) = X0 | ~v1_relat_1(X0)) )),
% 2.03/1.00    inference(cnf_transformation,[],[f18])).
% 2.03/1.00  
% 2.03/1.00  cnf(c_19,negated_conjecture,
% 2.03/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
% 2.03/1.00      inference(cnf_transformation,[],[f71]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1150,plain,
% 2.03/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_4,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.03/1.00      | v1_partfun1(X0,X1)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | v1_xboole_0(X2)
% 2.03/1.00      | ~ v1_funct_1(X0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_7,plain,
% 2.03/1.00      ( ~ v1_partfun1(X0,X1)
% 2.03/1.00      | ~ v4_relat_1(X0,X1)
% 2.03/1.00      | ~ v1_relat_1(X0)
% 2.03/1.00      | k1_relat_1(X0) = X1 ),
% 2.03/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_408,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.03/1.00      | ~ v4_relat_1(X0,X1)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | v1_xboole_0(X2)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | ~ v1_relat_1(X0)
% 2.03/1.00      | k1_relat_1(X0) = X1 ),
% 2.03/1.00      inference(resolution,[status(thm)],[c_4,c_7]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_3,plain,
% 2.03/1.00      ( v4_relat_1(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.03/1.00      inference(cnf_transformation,[],[f47]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_330,plain,
% 2.03/1.00      ( ~ v1_partfun1(X0,X1)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | ~ v1_relat_1(X0)
% 2.03/1.00      | k1_relat_1(X0) = X1 ),
% 2.03/1.00      inference(resolution,[status(thm)],[c_3,c_7]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_412,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | v1_xboole_0(X2)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | ~ v1_relat_1(X0)
% 2.03/1.00      | k1_relat_1(X0) = X1 ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_408,c_4,c_330]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_21,negated_conjecture,
% 2.03/1.00      ( v1_funct_1(sK3) ),
% 2.03/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_656,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | v1_xboole_0(X2)
% 2.03/1.00      | ~ v1_relat_1(X0)
% 2.03/1.00      | k1_relat_1(X0) = X1
% 2.03/1.00      | sK3 != X0 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_412,c_21]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_657,plain,
% 2.03/1.00      ( ~ v1_funct_2(sK3,X0,X1)
% 2.03/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.03/1.00      | v1_xboole_0(X1)
% 2.03/1.00      | ~ v1_relat_1(sK3)
% 2.03/1.00      | k1_relat_1(sK3) = X0 ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_656]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_9,plain,
% 2.03/1.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_11,plain,
% 2.03/1.00      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.03/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_312,plain,
% 2.03/1.00      ( v2_struct_0(X0) | ~ l1_pre_topc(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.03/1.00      inference(resolution,[status(thm)],[c_9,c_11]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_27,negated_conjecture,
% 2.03/1.00      ( l1_pre_topc(sK0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_522,plain,
% 2.03/1.00      ( v2_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK0 != X0 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_312,c_27]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_523,plain,
% 2.03/1.00      ( v2_struct_0(sK0) | ~ v1_xboole_0(u1_struct_0(sK0)) ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_522]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_29,negated_conjecture,
% 2.03/1.00      ( ~ v2_struct_0(sK0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_525,plain,
% 2.03/1.00      ( ~ v1_xboole_0(u1_struct_0(sK0)) ),
% 2.03/1.00      inference(global_propositional_subsumption,[status(thm)],[c_523,c_29]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_745,plain,
% 2.03/1.00      ( ~ v1_funct_2(sK3,X0,X1)
% 2.03/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.03/1.00      | ~ v1_relat_1(sK3)
% 2.03/1.00      | u1_struct_0(sK0) != X1
% 2.03/1.00      | k1_relat_1(sK3) = X0 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_657,c_525]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_746,plain,
% 2.03/1.00      ( ~ v1_funct_2(sK3,X0,u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,u1_struct_0(sK0))))
% 2.03/1.00      | ~ v1_relat_1(sK3)
% 2.03/1.00      | k1_relat_1(sK3) = X0 ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_745]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1142,plain,
% 2.03/1.00      ( k1_relat_1(sK3) = X0
% 2.03/1.00      | v1_funct_2(sK3,X0,u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,u1_struct_0(sK0)))) != iProver_top
% 2.03/1.00      | v1_relat_1(sK3) != iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_746]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1516,plain,
% 2.03/1.00      ( u1_struct_0(sK1) = k1_relat_1(sK3)
% 2.03/1.00      | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | v1_relat_1(sK3) != iProver_top ),
% 2.03/1.00      inference(superposition,[status(thm)],[c_1150,c_1142]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_20,negated_conjecture,
% 2.03/1.00      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
% 2.03/1.00      inference(cnf_transformation,[],[f70]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1517,plain,
% 2.03/1.00      ( ~ v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_relat_1(sK3)
% 2.03/1.00      | u1_struct_0(sK1) = k1_relat_1(sK3) ),
% 2.03/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_1516]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_0,plain,
% 2.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f44]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1155,plain,
% 2.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.03/1.00      | v1_relat_1(X1) != iProver_top
% 2.03/1.00      | v1_relat_1(X0) = iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1614,plain,
% 2.03/1.00      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) != iProver_top
% 2.03/1.00      | v1_relat_1(sK3) = iProver_top ),
% 2.03/1.00      inference(superposition,[status(thm)],[c_1150,c_1155]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1629,plain,
% 2.03/1.00      ( ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))
% 2.03/1.00      | v1_relat_1(sK3) ),
% 2.03/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_1614]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1,plain,
% 2.03/1.00      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.03/1.00      inference(cnf_transformation,[],[f45]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1657,plain,
% 2.03/1.00      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
% 2.03/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2016,plain,
% 2.03/1.00      ( u1_struct_0(sK1) = k1_relat_1(sK3) ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_1516,c_20,c_1517,c_1629,c_1657]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_18,negated_conjecture,
% 2.03/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = g1_pre_topc(u1_struct_0(sK2),u1_pre_topc(sK2)) ),
% 2.03/1.00      inference(cnf_transformation,[],[f72]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_13,plain,
% 2.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.03/1.00      | X2 = X1
% 2.03/1.00      | g1_pre_topc(X2,X3) != g1_pre_topc(X1,X0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1151,plain,
% 2.03/1.00      ( X0 = X1
% 2.03/1.00      | g1_pre_topc(X0,X2) != g1_pre_topc(X1,X3)
% 2.03/1.00      | m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1720,plain,
% 2.03/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != g1_pre_topc(X0,X1)
% 2.03/1.00      | u1_struct_0(sK2) = X0
% 2.03/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.03/1.00      inference(superposition,[status(thm)],[c_18,c_1151]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1746,plain,
% 2.03/1.00      ( u1_struct_0(sK2) = u1_struct_0(sK1)
% 2.03/1.00      | m1_subset_1(u1_pre_topc(sK1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK1)))) != iProver_top ),
% 2.03/1.00      inference(equality_resolution,[status(thm)],[c_1720]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_24,negated_conjecture,
% 2.03/1.00      ( l1_pre_topc(sK1) ),
% 2.03/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_35,plain,
% 2.03/1.00      ( l1_pre_topc(sK1) = iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_10,plain,
% 2.03/1.00      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 2.03/1.00      | ~ l1_pre_topc(X0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_58,plain,
% 2.03/1.00      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
% 2.03/1.00      | l1_pre_topc(X0) != iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_60,plain,
% 2.03/1.00      ( m1_subset_1(u1_pre_topc(sK1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK1)))) = iProver_top
% 2.03/1.00      | l1_pre_topc(sK1) != iProver_top ),
% 2.03/1.00      inference(instantiation,[status(thm)],[c_58]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1966,plain,
% 2.03/1.00      ( u1_struct_0(sK2) = u1_struct_0(sK1) ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_1746,c_35,c_60]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2020,plain,
% 2.03/1.00      ( u1_struct_0(sK2) = k1_relat_1(sK3) ),
% 2.03/1.00      inference(demodulation,[status(thm)],[c_2016,c_1966]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_14,plain,
% 2.03/1.00      ( r1_funct_2(X0,X1,X2,X3,X4,X4)
% 2.03/1.00      | ~ v1_funct_2(X4,X2,X3)
% 2.03/1.00      | ~ v1_funct_2(X4,X0,X1)
% 2.03/1.00      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.03/1.00      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.03/1.00      | v1_xboole_0(X1)
% 2.03/1.00      | v1_xboole_0(X3)
% 2.03/1.00      | ~ v1_funct_1(X4) ),
% 2.03/1.00      inference(cnf_transformation,[],[f75]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_17,negated_conjecture,
% 2.03/1.00      ( ~ r1_funct_2(u1_struct_0(sK1),u1_struct_0(sK0),u1_struct_0(sK2),u1_struct_0(sK0),sK3,k2_tmap_1(sK1,sK0,sK3,sK2)) ),
% 2.03/1.00      inference(cnf_transformation,[],[f73]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_550,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.03/1.00      | ~ v1_funct_2(X0,X3,X4)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 2.03/1.00      | v1_xboole_0(X2)
% 2.03/1.00      | v1_xboole_0(X4)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_tmap_1(sK1,sK0,sK3,sK2) != X0
% 2.03/1.00      | u1_struct_0(sK2) != X1
% 2.03/1.00      | u1_struct_0(sK0) != X2
% 2.03/1.00      | u1_struct_0(sK0) != X4
% 2.03/1.00      | u1_struct_0(sK1) != X3
% 2.03/1.00      | sK3 != X0 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_17]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_551,plain,
% 2.03/1.00      ( ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | v1_xboole_0(u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_funct_1(k2_tmap_1(sK1,sK0,sK3,sK2))
% 2.03/1.00      | sK3 != k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_550]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_553,plain,
% 2.03/1.00      ( ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
% 2.03/1.00      | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_funct_1(k2_tmap_1(sK1,sK0,sK3,sK2))
% 2.03/1.00      | sK3 != k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_551,c_29,c_523]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_554,plain,
% 2.03/1.00      ( ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | ~ v1_funct_1(k2_tmap_1(sK1,sK0,sK3,sK2))
% 2.03/1.00      | sK3 != k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.03/1.00      inference(renaming,[status(thm)],[c_553]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_689,plain,
% 2.03/1.00      ( ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0))
% 2.03/1.00      | ~ v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0))))
% 2.03/1.00      | ~ m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | k2_tmap_1(sK1,sK0,sK3,sK2) != sK3 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_21,c_554]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1144,plain,
% 2.03/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) != sK3
% 2.03/1.00      | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0)))) != iProver_top
% 2.03/1.00      | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) != iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_689]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2401,plain,
% 2.03/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) != sK3
% 2.03/1.00      | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),u1_struct_0(sK2),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK0)))) != iProver_top
% 2.03/1.00      | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
% 2.03/1.00      inference(light_normalisation,[status(thm)],[c_1144,c_2016]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2461,plain,
% 2.03/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) != sK3
% 2.03/1.00      | v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
% 2.03/1.00      inference(demodulation,[status(thm)],[c_2020,c_2401]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_8,plain,
% 2.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 2.03/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_677,plain,
% 2.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.03/1.00      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3)
% 2.03/1.00      | sK3 != X0 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_8,c_21]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_678,plain,
% 2.03/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.03/1.00      | k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2) ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_677]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1145,plain,
% 2.03/1.00      ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
% 2.03/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_678]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1426,plain,
% 2.03/1.00      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0) = k7_relat_1(sK3,X0) ),
% 2.03/1.00      inference(superposition,[status(thm)],[c_1150,c_1145]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_16,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.03/1.00      | ~ m1_pre_topc(X3,X1)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.03/1.00      | ~ v2_pre_topc(X2)
% 2.03/1.00      | ~ v2_pre_topc(X1)
% 2.03/1.00      | v2_struct_0(X1)
% 2.03/1.00      | v2_struct_0(X2)
% 2.03/1.00      | ~ l1_pre_topc(X1)
% 2.03/1.00      | ~ l1_pre_topc(X2)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
% 2.03/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_22,negated_conjecture,
% 2.03/1.00      ( m1_pre_topc(sK2,sK1) ),
% 2.03/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_369,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.03/1.00      | ~ v2_pre_topc(X1)
% 2.03/1.00      | ~ v2_pre_topc(X2)
% 2.03/1.00      | v2_struct_0(X1)
% 2.03/1.00      | v2_struct_0(X2)
% 2.03/1.00      | ~ l1_pre_topc(X1)
% 2.03/1.00      | ~ l1_pre_topc(X2)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3)
% 2.03/1.00      | sK2 != X3
% 2.03/1.00      | sK1 != X1 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_22]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_370,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.03/1.00      | ~ v2_pre_topc(X1)
% 2.03/1.00      | ~ v2_pre_topc(sK1)
% 2.03/1.00      | v2_struct_0(X1)
% 2.03/1.00      | v2_struct_0(sK1)
% 2.03/1.00      | ~ l1_pre_topc(X1)
% 2.03/1.00      | ~ l1_pre_topc(sK1)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_369]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_26,negated_conjecture,
% 2.03/1.00      ( ~ v2_struct_0(sK1) ),
% 2.03/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_25,negated_conjecture,
% 2.03/1.00      ( v2_pre_topc(sK1) ),
% 2.03/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_374,plain,
% 2.03/1.00      ( ~ l1_pre_topc(X1)
% 2.03/1.00      | ~ v2_pre_topc(X1)
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.03/1.00      | ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.03/1.00      | v2_struct_0(X1)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_370,c_26,c_25,c_24]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_375,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.03/1.00      | ~ v2_pre_topc(X1)
% 2.03/1.00      | v2_struct_0(X1)
% 2.03/1.00      | ~ l1_pre_topc(X1)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
% 2.03/1.00      inference(renaming,[status(thm)],[c_374]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_28,negated_conjecture,
% 2.03/1.00      ( v2_pre_topc(sK0) ),
% 2.03/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_470,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.03/1.00      | v2_struct_0(X1)
% 2.03/1.00      | ~ l1_pre_topc(X1)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2)
% 2.03/1.00      | sK0 != X1 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_375,c_28]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_471,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | v2_struct_0(sK0)
% 2.03/1.00      | ~ l1_pre_topc(sK0)
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,X0,sK2) ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_470]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_475,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | ~ v1_funct_1(X0)
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,X0,sK2) ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_471,c_29,c_27]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_635,plain,
% 2.03/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,X0,sK2)
% 2.03/1.00      | sK3 != X0 ),
% 2.03/1.00      inference(resolution_lifted,[status(thm)],[c_475,c_21]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_636,plain,
% 2.03/1.00      ( ~ v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))
% 2.03/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.03/1.00      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.03/1.00      inference(unflattening,[status(thm)],[c_635]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_638,plain,
% 2.03/1.00      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.03/1.00      inference(global_propositional_subsumption,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_636,c_20,c_19]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1429,plain,
% 2.03/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK2)) ),
% 2.03/1.00      inference(demodulation,[status(thm)],[c_1426,c_638]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1969,plain,
% 2.03/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK1)) ),
% 2.03/1.00      inference(demodulation,[status(thm)],[c_1966,c_1429]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1658,plain,
% 2.03/1.00      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) = iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_1657]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1959,plain,
% 2.03/1.00      ( v1_relat_1(sK3) = iProver_top ),
% 2.03/1.00      inference(global_propositional_subsumption,[status(thm)],[c_1614,c_1658]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2,plain,
% 2.03/1.00      ( ~ v1_relat_1(X0) | k7_relat_1(X0,k1_relat_1(X0)) = X0 ),
% 2.03/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1153,plain,
% 2.03/1.00      ( k7_relat_1(X0,k1_relat_1(X0)) = X0 | v1_relat_1(X0) != iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1964,plain,
% 2.03/1.00      ( k7_relat_1(sK3,k1_relat_1(sK3)) = sK3 ),
% 2.03/1.00      inference(superposition,[status(thm)],[c_1959,c_1153]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2560,plain,
% 2.03/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) = sK3 ),
% 2.03/1.00      inference(light_normalisation,[status(thm)],[c_1969,c_1964,c_2016]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2989,plain,
% 2.03/1.00      ( v1_funct_2(k2_tmap_1(sK1,sK0,sK3,sK2),k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | m1_subset_1(k2_tmap_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
% 2.03/1.00      inference(global_propositional_subsumption,[status(thm)],[c_2461,c_2560]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2993,plain,
% 2.03/1.00      ( v1_funct_2(sK3,k1_relat_1(sK3),u1_struct_0(sK0)) != iProver_top
% 2.03/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) != iProver_top ),
% 2.03/1.00      inference(light_normalisation,[status(thm)],[c_2989,c_2560]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2023,plain,
% 2.03/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK0)))) = iProver_top ),
% 2.03/1.00      inference(demodulation,[status(thm)],[c_2016,c_1150]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_1149,plain,
% 2.03/1.00      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) = iProver_top ),
% 2.03/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2024,plain,
% 2.03/1.00      ( v1_funct_2(sK3,k1_relat_1(sK3),u1_struct_0(sK0)) = iProver_top ),
% 2.03/1.00      inference(demodulation,[status(thm)],[c_2016,c_1149]) ).
% 2.03/1.00  
% 2.03/1.00  cnf(c_2996,plain,
% 2.03/1.00      ( $false ),
% 2.03/1.00      inference(forward_subsumption_resolution,
% 2.03/1.00                [status(thm)],
% 2.03/1.00                [c_2993,c_2023,c_2024]) ).
% 2.03/1.00  
% 2.03/1.00  
% 2.03/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.03/1.00  
% 2.03/1.00  ------                               Statistics
% 2.03/1.00  
% 2.03/1.00  ------ General
% 2.03/1.00  
% 2.03/1.00  abstr_ref_over_cycles:                  0
% 2.03/1.00  abstr_ref_under_cycles:                 0
% 2.03/1.00  gc_basic_clause_elim:                   0
% 2.03/1.00  forced_gc_time:                         0
% 2.03/1.00  parsing_time:                           0.013
% 2.03/1.00  unif_index_cands_time:                  0.
% 2.03/1.00  unif_index_add_time:                    0.
% 2.03/1.00  orderings_time:                         0.
% 2.03/1.00  out_proof_time:                         0.013
% 2.03/1.00  total_time:                             0.138
% 2.03/1.00  num_of_symbols:                         57
% 2.03/1.00  num_of_terms:                           3597
% 2.03/1.00  
% 2.03/1.00  ------ Preprocessing
% 2.03/1.00  
% 2.03/1.00  num_of_splits:                          0
% 2.03/1.00  num_of_split_atoms:                     0
% 2.03/1.00  num_of_reused_defs:                     0
% 2.03/1.00  num_eq_ax_congr_red:                    6
% 2.03/1.00  num_of_sem_filtered_clauses:            1
% 2.03/1.00  num_of_subtypes:                        0
% 2.03/1.00  monotx_restored_types:                  0
% 2.03/1.00  sat_num_of_epr_types:                   0
% 2.03/1.00  sat_num_of_non_cyclic_types:            0
% 2.03/1.00  sat_guarded_non_collapsed_types:        0
% 2.03/1.00  num_pure_diseq_elim:                    0
% 2.03/1.00  simp_replaced_by:                       0
% 2.03/1.00  res_preprocessed:                       106
% 2.03/1.00  prep_upred:                             0
% 2.03/1.00  prep_unflattend:                        31
% 2.03/1.00  smt_new_axioms:                         0
% 2.03/1.00  pred_elim_cands:                        3
% 2.03/1.00  pred_elim:                              10
% 2.03/1.00  pred_elim_cl:                           13
% 2.03/1.00  pred_elim_cycles:                       14
% 2.03/1.00  merged_defs:                            0
% 2.03/1.00  merged_defs_ncl:                        0
% 2.03/1.00  bin_hyper_res:                          0
% 2.03/1.00  prep_cycles:                            4
% 2.03/1.00  pred_elim_time:                         0.011
% 2.03/1.00  splitting_time:                         0.
% 2.03/1.00  sem_filter_time:                        0.
% 2.03/1.00  monotx_time:                            0.
% 2.03/1.00  subtype_inf_time:                       0.
% 2.03/1.00  
% 2.03/1.00  ------ Problem properties
% 2.03/1.00  
% 2.03/1.00  clauses:                                16
% 2.03/1.00  conjectures:                            3
% 2.03/1.00  epr:                                    0
% 2.03/1.00  horn:                                   16
% 2.03/1.00  ground:                                 8
% 2.03/1.00  unary:                                  7
% 2.03/1.00  binary:                                 2
% 2.03/1.00  lits:                                   36
% 2.03/1.00  lits_eq:                                12
% 2.03/1.00  fd_pure:                                0
% 2.03/1.00  fd_pseudo:                              0
% 2.03/1.00  fd_cond:                                2
% 2.03/1.00  fd_pseudo_cond:                         2
% 2.03/1.00  ac_symbols:                             0
% 2.03/1.00  
% 2.03/1.00  ------ Propositional Solver
% 2.03/1.00  
% 2.03/1.00  prop_solver_calls:                      28
% 2.03/1.00  prop_fast_solver_calls:                 779
% 2.03/1.00  smt_solver_calls:                       0
% 2.03/1.00  smt_fast_solver_calls:                  0
% 2.03/1.00  prop_num_of_clauses:                    1084
% 2.03/1.00  prop_preprocess_simplified:             3612
% 2.03/1.00  prop_fo_subsumed:                       22
% 2.03/1.00  prop_solver_time:                       0.
% 2.03/1.00  smt_solver_time:                        0.
% 2.03/1.00  smt_fast_solver_time:                   0.
% 2.03/1.00  prop_fast_solver_time:                  0.
% 2.03/1.00  prop_unsat_core_time:                   0.
% 2.03/1.00  
% 2.03/1.00  ------ QBF
% 2.03/1.00  
% 2.03/1.00  qbf_q_res:                              0
% 2.03/1.00  qbf_num_tautologies:                    0
% 2.03/1.00  qbf_prep_cycles:                        0
% 2.03/1.00  
% 2.03/1.00  ------ BMC1
% 2.03/1.00  
% 2.03/1.00  bmc1_current_bound:                     -1
% 2.03/1.00  bmc1_last_solved_bound:                 -1
% 2.03/1.00  bmc1_unsat_core_size:                   -1
% 2.03/1.00  bmc1_unsat_core_parents_size:           -1
% 2.03/1.00  bmc1_merge_next_fun:                    0
% 2.03/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.03/1.00  
% 2.03/1.00  ------ Instantiation
% 2.03/1.00  
% 2.03/1.00  inst_num_of_clauses:                    330
% 2.03/1.00  inst_num_in_passive:                    57
% 2.03/1.00  inst_num_in_active:                     204
% 2.03/1.00  inst_num_in_unprocessed:                71
% 2.03/1.00  inst_num_of_loops:                      210
% 2.03/1.00  inst_num_of_learning_restarts:          0
% 2.03/1.00  inst_num_moves_active_passive:          3
% 2.03/1.00  inst_lit_activity:                      0
% 2.03/1.00  inst_lit_activity_moves:                0
% 2.03/1.00  inst_num_tautologies:                   0
% 2.03/1.00  inst_num_prop_implied:                  0
% 2.03/1.00  inst_num_existing_simplified:           0
% 2.03/1.00  inst_num_eq_res_simplified:             0
% 2.03/1.00  inst_num_child_elim:                    0
% 2.03/1.00  inst_num_of_dismatching_blockings:      99
% 2.03/1.00  inst_num_of_non_proper_insts:           337
% 2.03/1.00  inst_num_of_duplicates:                 0
% 2.03/1.00  inst_inst_num_from_inst_to_res:         0
% 2.03/1.00  inst_dismatching_checking_time:         0.
% 2.03/1.00  
% 2.03/1.00  ------ Resolution
% 2.03/1.00  
% 2.03/1.00  res_num_of_clauses:                     0
% 2.03/1.00  res_num_in_passive:                     0
% 2.03/1.00  res_num_in_active:                      0
% 2.03/1.00  res_num_of_loops:                       110
% 2.03/1.00  res_forward_subset_subsumed:            35
% 2.03/1.00  res_backward_subset_subsumed:           4
% 2.03/1.00  res_forward_subsumed:                   0
% 2.03/1.00  res_backward_subsumed:                  0
% 2.03/1.00  res_forward_subsumption_resolution:     0
% 2.03/1.00  res_backward_subsumption_resolution:    0
% 2.03/1.00  res_clause_to_clause_subsumption:       77
% 2.03/1.00  res_orphan_elimination:                 0
% 2.03/1.00  res_tautology_del:                      44
% 2.03/1.00  res_num_eq_res_simplified:              0
% 2.03/1.00  res_num_sel_changes:                    0
% 2.03/1.00  res_moves_from_active_to_pass:          0
% 2.03/1.00  
% 2.03/1.00  ------ Superposition
% 2.03/1.00  
% 2.03/1.00  sup_time_total:                         0.
% 2.03/1.00  sup_time_generating:                    0.
% 2.03/1.00  sup_time_sim_full:                      0.
% 2.03/1.00  sup_time_sim_immed:                     0.
% 2.03/1.00  
% 2.03/1.00  sup_num_of_clauses:                     30
% 2.03/1.00  sup_num_in_active:                      24
% 2.03/1.00  sup_num_in_passive:                     6
% 2.03/1.00  sup_num_of_loops:                       41
% 2.03/1.00  sup_fw_superposition:                   13
% 2.03/1.00  sup_bw_superposition:                   11
% 2.03/1.00  sup_immediate_simplified:               4
% 2.03/1.00  sup_given_eliminated:                   0
% 2.03/1.00  comparisons_done:                       0
% 2.03/1.00  comparisons_avoided:                    0
% 2.03/1.00  
% 2.03/1.00  ------ Simplifications
% 2.03/1.00  
% 2.03/1.00  
% 2.03/1.00  sim_fw_subset_subsumed:                 1
% 2.03/1.00  sim_bw_subset_subsumed:                 3
% 2.03/1.00  sim_fw_subsumed:                        3
% 2.03/1.00  sim_bw_subsumed:                        0
% 2.03/1.00  sim_fw_subsumption_res:                 2
% 2.03/1.00  sim_bw_subsumption_res:                 0
% 2.03/1.00  sim_tautology_del:                      0
% 2.03/1.00  sim_eq_tautology_del:                   9
% 2.03/1.00  sim_eq_res_simp:                        0
% 2.03/1.00  sim_fw_demodulated:                     1
% 2.03/1.00  sim_bw_demodulated:                     17
% 2.03/1.00  sim_light_normalised:                   7
% 2.03/1.00  sim_joinable_taut:                      0
% 2.03/1.00  sim_joinable_simp:                      0
% 2.03/1.00  sim_ac_normalised:                      0
% 2.03/1.00  sim_smt_subsumption:                    0
% 2.03/1.00  
%------------------------------------------------------------------------------
