%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0518+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:07:47 EST 2020

% Result     : Theorem 0.73s
% Output     : CNFRefutation 0.73s
% Verified   : 
% Statistics : Number of formulae       :   18 (  29 expanded)
%              Number of clauses        :    9 (  11 expanded)
%              Number of leaves         :    4 (   7 expanded)
%              Depth                    :    7
%              Number of atoms          :   42 (  62 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t118_relat_1,conjecture,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),k2_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t118_relat_1)).

fof(t117_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k8_relat_1(X1,X2),X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t117_relat_1)).

fof(t25_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( r1_tarski(X1,X2)
           => ( r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
              & r1_tarski(k2_relat_1(X1),k2_relat_1(X2)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_relat_1)).

fof(dt_k8_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => v1_relat_1(k8_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k8_relat_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] :
        ( v1_relat_1(X2)
       => r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),k2_relat_1(X2)) ) ),
    inference(assume_negation,[status(cth)],[t118_relat_1])).

fof(c_0_5,plain,(
    ! [X2264,X2265] :
      ( ~ v1_relat_1(X2265)
      | r1_tarski(k8_relat_1(X2264,X2265),X2265) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t117_relat_1])])).

fof(c_0_6,negated_conjecture,
    ( v1_relat_1(esk143_0)
    & ~ r1_tarski(k2_relat_1(k8_relat_1(esk142_0,esk143_0)),k2_relat_1(esk143_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_7,plain,(
    ! [X2293,X2294] :
      ( ( r1_tarski(k1_relat_1(X2293),k1_relat_1(X2294))
        | ~ r1_tarski(X2293,X2294)
        | ~ v1_relat_1(X2294)
        | ~ v1_relat_1(X2293) )
      & ( r1_tarski(k2_relat_1(X2293),k2_relat_1(X2294))
        | ~ r1_tarski(X2293,X2294)
        | ~ v1_relat_1(X2294)
        | ~ v1_relat_1(X2293) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_relat_1])])])])).

cnf(c_0_8,plain,
    ( r1_tarski(k8_relat_1(X2,X1),X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( v1_relat_1(esk143_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( r1_tarski(k2_relat_1(X1),k2_relat_1(X2))
    | ~ r1_tarski(X1,X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( r1_tarski(k8_relat_1(X1,esk143_0),esk143_0) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

fof(c_0_12,plain,(
    ! [X2190,X2191] :
      ( ~ v1_relat_1(X2191)
      | v1_relat_1(k8_relat_1(X2190,X2191)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k8_relat_1])])).

cnf(c_0_13,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(X1,esk143_0)),k2_relat_1(esk143_0))
    | ~ v1_relat_1(k8_relat_1(X1,esk143_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_11]),c_0_9])])).

cnf(c_0_14,plain,
    ( v1_relat_1(k8_relat_1(X2,X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_15,negated_conjecture,
    ( ~ r1_tarski(k2_relat_1(k8_relat_1(esk142_0,esk143_0)),k2_relat_1(esk143_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_16,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(X1,esk143_0)),k2_relat_1(esk143_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_14]),c_0_9])])).

cnf(c_0_17,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_15,c_0_16])]),
    [proof]).
%------------------------------------------------------------------------------
