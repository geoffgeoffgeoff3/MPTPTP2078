%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0435+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JhjzrEYItp

% Computer   : n027.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:51:54 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   21 (  23 expanded)
%              Number of leaves         :   11 (  12 expanded)
%              Depth                    :    5
%              Number of atoms          :  112 ( 132 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t18_relat_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ~ ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k2_relat_1 @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ~ ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
            & ! [C: $i] :
                ~ ( r2_hidden @ C @ ( k2_relat_1 @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t18_relat_1])).

thf('0',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d4_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_relat_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( r2_hidden @ ( k4_tarski @ C @ D ) @ A ) ) ) )).

thf('1',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X3 )
      | ( r2_hidden @ ( k4_tarski @ X4 @ ( sk_D_1 @ X4 @ X2 ) ) @ X2 )
      | ( X3
       != ( k1_relat_1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d4_relat_1])).

thf('2',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r2_hidden @ ( k4_tarski @ X4 @ ( sk_D_1 @ X4 @ X2 ) ) @ X2 )
      | ~ ( r2_hidden @ X4 @ ( k1_relat_1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['1'])).

thf('3',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ ( sk_D_1 @ sk_A @ sk_B ) ) @ sk_B ),
    inference('sup-',[status(thm)],['0','2'])).

thf(d5_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k2_relat_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( r2_hidden @ ( k4_tarski @ D @ C ) @ A ) ) ) )).

thf('4',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X7 @ X8 ) @ X9 )
      | ( r2_hidden @ X8 @ X10 )
      | ( X10
       != ( k2_relat_1 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[d5_relat_1])).

thf('5',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( r2_hidden @ X8 @ ( k2_relat_1 @ X9 ) )
      | ~ ( r2_hidden @ ( k4_tarski @ X7 @ X8 ) @ X9 ) ) ),
    inference(simplify,[status(thm)],['4'])).

thf('6',plain,(
    r2_hidden @ ( sk_D_1 @ sk_A @ sk_B ) @ ( k2_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['3','5'])).

thf('7',plain,(
    ! [X14: $i] :
      ~ ( r2_hidden @ X14 @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    $false ),
    inference('sup-',[status(thm)],['6','7'])).


%------------------------------------------------------------------------------
