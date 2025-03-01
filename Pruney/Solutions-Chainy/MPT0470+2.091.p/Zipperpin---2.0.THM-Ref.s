%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.08zVoEoZlD

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:40:39 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :   82 ( 106 expanded)
%              Number of leaves         :   21 (  39 expanded)
%              Depth                    :   19
%              Number of atoms          :  566 ( 762 expanded)
%              Number of equality atoms :   66 (  97 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(cc1_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_relat_1 @ A ) ) )).

thf('0',plain,(
    ! [X21: $i] :
      ( ( v1_relat_1 @ X21 )
      | ~ ( v1_xboole_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[cc1_relat_1])).

thf(dt_k5_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_relat_1 @ B ) )
     => ( v1_relat_1 @ ( k5_relat_1 @ A @ B ) ) ) )).

thf('1',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( v1_relat_1 @ X22 )
      | ~ ( v1_relat_1 @ X23 )
      | ( v1_relat_1 @ ( k5_relat_1 @ X22 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_relat_1])).

thf('2',plain,(
    ! [X21: $i] :
      ( ( v1_relat_1 @ X21 )
      | ~ ( v1_xboole_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[cc1_relat_1])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('3',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf(t47_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ B ) )
           => ( ( k2_relat_1 @ ( k5_relat_1 @ B @ A ) )
              = ( k2_relat_1 @ A ) ) ) ) ) )).

thf('4',plain,(
    ! [X27: $i,X28: $i] :
      ( ~ ( v1_relat_1 @ X27 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X27 @ X28 ) )
        = ( k2_relat_1 @ X28 ) )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X28 ) @ ( k2_relat_1 @ X27 ) )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t47_relat_1])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ k1_xboole_0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
        = ( k2_relat_1 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('6',plain,(
    ! [X1: $i] :
      ( r1_tarski @ k1_xboole_0 @ X1 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('7',plain,
    ( ( k2_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('8',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ k1_xboole_0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['2','8'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('10',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('11',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf(t22_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k3_xboole_0 @ A @ ( k2_zfmisc_1 @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ A ) ) )
        = A ) ) )).

thf('12',plain,(
    ! [X24: $i] :
      ( ( ( k3_xboole_0 @ X24 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ X24 ) @ ( k2_relat_1 @ X24 ) ) )
        = X24 )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t22_relat_1])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( ( k3_xboole_0 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) @ ( k2_zfmisc_1 @ ( k1_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) ) @ k1_xboole_0 ) )
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference('sup+',[status(thm)],['11','12'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('14',plain,(
    ! [X17: $i,X18: $i] :
      ( ( ( k2_zfmisc_1 @ X17 @ X18 )
        = k1_xboole_0 )
      | ( X18 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('15',plain,(
    ! [X17: $i] :
      ( ( k2_zfmisc_1 @ X17 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['14'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k5_relat_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference(demod,[status(thm)],['13','15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['1','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['0','19'])).

thf('21',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf(t62_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( k5_relat_1 @ k1_xboole_0 @ A )
          = k1_xboole_0 )
        & ( ( k5_relat_1 @ A @ k1_xboole_0 )
          = k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ( ( ( k5_relat_1 @ k1_xboole_0 @ A )
            = k1_xboole_0 )
          & ( ( k5_relat_1 @ A @ k1_xboole_0 )
            = k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t62_relat_1])).

thf('23',plain,
    ( ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
     != k1_xboole_0 )
    | ( ( k5_relat_1 @ sk_A @ k1_xboole_0 )
     != k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,
    ( ( ( k5_relat_1 @ sk_A @ k1_xboole_0 )
     != k1_xboole_0 )
   <= ( ( k5_relat_1 @ sk_A @ k1_xboole_0 )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['23'])).

thf('25',plain,(
    ! [X21: $i] :
      ( ( v1_relat_1 @ X21 )
      | ~ ( v1_xboole_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[cc1_relat_1])).

thf('26',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( v1_relat_1 @ X22 )
      | ~ ( v1_relat_1 @ X23 )
      | ( v1_relat_1 @ ( k5_relat_1 @ X22 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_relat_1])).

thf('27',plain,(
    ! [X21: $i] :
      ( ( v1_relat_1 @ X21 )
      | ~ ( v1_xboole_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[cc1_relat_1])).

thf('28',plain,
    ( ( k2_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf(t46_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k1_relat_1 @ B ) )
           => ( ( k1_relat_1 @ ( k5_relat_1 @ A @ B ) )
              = ( k1_relat_1 @ A ) ) ) ) ) )).

thf('29',plain,(
    ! [X25: $i,X26: $i] :
      ( ~ ( v1_relat_1 @ X25 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X26 @ X25 ) )
        = ( k1_relat_1 @ X26 ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X26 ) @ ( k1_relat_1 @ X25 ) )
      | ~ ( v1_relat_1 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t46_relat_1])).

thf('30',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ k1_xboole_0 @ ( k1_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ k1_xboole_0 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
        = ( k1_relat_1 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X1: $i] :
      ( r1_tarski @ k1_xboole_0 @ X1 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('32',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('33',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ k1_xboole_0 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['30','31','32'])).

thf('34',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['27','33'])).

thf('35',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('36',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['34','35'])).

thf('37',plain,(
    ! [X24: $i] :
      ( ( ( k3_xboole_0 @ X24 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ X24 ) @ ( k2_relat_1 @ X24 ) ) )
        = X24 )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t22_relat_1])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( ( k3_xboole_0 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) @ ( k2_zfmisc_1 @ k1_xboole_0 @ ( k2_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) ) ) )
        = ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X17: $i,X18: $i] :
      ( ( ( k2_zfmisc_1 @ X17 @ X18 )
        = k1_xboole_0 )
      | ( X17 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('40',plain,(
    ! [X18: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X18 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k5_relat_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['38','40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k5_relat_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['26','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k5_relat_1 @ k1_xboole_0 @ X0 ) )
      | ~ ( v1_relat_1 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['43'])).

thf('45',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k5_relat_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['25','44'])).

thf('46',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('47',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( k1_xboole_0
        = ( k5_relat_1 @ k1_xboole_0 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['45','46'])).

thf('48',plain,
    ( ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
     != k1_xboole_0 )
   <= ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['23'])).

thf('49',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( v1_relat_1 @ sk_A ) )
   <= ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
     != k1_xboole_0 ) ),
    inference(demod,[status(thm)],['49','50'])).

thf('52',plain,
    ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
    = k1_xboole_0 ),
    inference(simplify,[status(thm)],['51'])).

thf('53',plain,
    ( ( ( k5_relat_1 @ sk_A @ k1_xboole_0 )
     != k1_xboole_0 )
    | ( ( k5_relat_1 @ k1_xboole_0 @ sk_A )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['23'])).

thf('54',plain,(
    ( k5_relat_1 @ sk_A @ k1_xboole_0 )
 != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['52','53'])).

thf('55',plain,(
    ( k5_relat_1 @ sk_A @ k1_xboole_0 )
 != k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['24','54'])).

thf('56',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['22','55'])).

thf('57',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('58',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['56','57'])).

thf('59',plain,(
    $false ),
    inference(simplify,[status(thm)],['58'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.08zVoEoZlD
% 0.13/0.35  % Computer   : n013.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 18:14:40 EST 2020
% 0.13/0.36  % CPUTime    : 
% 0.13/0.36  % Running portfolio for 600 s
% 0.13/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.36  % Number of cores: 8
% 0.13/0.36  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.23/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.23/0.49  % Solved by: fo/fo7.sh
% 0.23/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.23/0.49  % done 40 iterations in 0.023s
% 0.23/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.23/0.49  % SZS output start Refutation
% 0.23/0.49  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.23/0.49  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.23/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.23/0.49  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.23/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.23/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.23/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.23/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.23/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.23/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.23/0.49  thf(cc1_relat_1, axiom,
% 0.23/0.49    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_relat_1 @ A ) ))).
% 0.23/0.49  thf('0', plain, (![X21 : $i]: ((v1_relat_1 @ X21) | ~ (v1_xboole_0 @ X21))),
% 0.23/0.49      inference('cnf', [status(esa)], [cc1_relat_1])).
% 0.23/0.49  thf(dt_k5_relat_1, axiom,
% 0.23/0.49    (![A:$i,B:$i]:
% 0.23/0.49     ( ( ( v1_relat_1 @ A ) & ( v1_relat_1 @ B ) ) =>
% 0.23/0.49       ( v1_relat_1 @ ( k5_relat_1 @ A @ B ) ) ))).
% 0.23/0.49  thf('1', plain,
% 0.23/0.49      (![X22 : $i, X23 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X22)
% 0.23/0.49          | ~ (v1_relat_1 @ X23)
% 0.23/0.49          | (v1_relat_1 @ (k5_relat_1 @ X22 @ X23)))),
% 0.23/0.49      inference('cnf', [status(esa)], [dt_k5_relat_1])).
% 0.23/0.49  thf('2', plain, (![X21 : $i]: ((v1_relat_1 @ X21) | ~ (v1_xboole_0 @ X21))),
% 0.23/0.49      inference('cnf', [status(esa)], [cc1_relat_1])).
% 0.23/0.49  thf(t60_relat_1, axiom,
% 0.23/0.49    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.23/0.49     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.23/0.49  thf('3', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.23/0.49  thf(t47_relat_1, axiom,
% 0.23/0.49    (![A:$i]:
% 0.23/0.49     ( ( v1_relat_1 @ A ) =>
% 0.23/0.49       ( ![B:$i]:
% 0.23/0.49         ( ( v1_relat_1 @ B ) =>
% 0.23/0.49           ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) =>
% 0.23/0.49             ( ( k2_relat_1 @ ( k5_relat_1 @ B @ A ) ) = ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.23/0.49  thf('4', plain,
% 0.23/0.49      (![X27 : $i, X28 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X27)
% 0.23/0.49          | ((k2_relat_1 @ (k5_relat_1 @ X27 @ X28)) = (k2_relat_1 @ X28))
% 0.23/0.49          | ~ (r1_tarski @ (k1_relat_1 @ X28) @ (k2_relat_1 @ X27))
% 0.23/0.49          | ~ (v1_relat_1 @ X28))),
% 0.23/0.49      inference('cnf', [status(esa)], [t47_relat_1])).
% 0.23/0.49  thf('5', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (r1_tarski @ k1_xboole_0 @ (k2_relat_1 @ X0))
% 0.23/0.49          | ~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ((k2_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0))
% 0.23/0.49              = (k2_relat_1 @ k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0))),
% 0.23/0.49      inference('sup-', [status(thm)], ['3', '4'])).
% 0.23/0.49  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.23/0.49  thf('6', plain, (![X1 : $i]: (r1_tarski @ k1_xboole_0 @ X1)),
% 0.23/0.49      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.23/0.49  thf('7', plain, (((k2_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.23/0.49  thf('8', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ((k2_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0)) = (k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0))),
% 0.23/0.49      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.23/0.49  thf('9', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k2_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0)) = (k1_xboole_0)))),
% 0.23/0.49      inference('sup-', [status(thm)], ['2', '8'])).
% 0.23/0.49  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.23/0.49  thf('10', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.23/0.49      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.23/0.49  thf('11', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k2_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0)) = (k1_xboole_0)))),
% 0.23/0.49      inference('demod', [status(thm)], ['9', '10'])).
% 0.23/0.49  thf(t22_relat_1, axiom,
% 0.23/0.49    (![A:$i]:
% 0.23/0.49     ( ( v1_relat_1 @ A ) =>
% 0.23/0.49       ( ( k3_xboole_0 @
% 0.23/0.49           A @ ( k2_zfmisc_1 @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ A ) ) ) =
% 0.23/0.49         ( A ) ) ))).
% 0.23/0.49  thf('12', plain,
% 0.23/0.49      (![X24 : $i]:
% 0.23/0.49         (((k3_xboole_0 @ X24 @ 
% 0.23/0.49            (k2_zfmisc_1 @ (k1_relat_1 @ X24) @ (k2_relat_1 @ X24))) = (
% 0.23/0.49            X24))
% 0.23/0.49          | ~ (v1_relat_1 @ X24))),
% 0.23/0.49      inference('cnf', [status(esa)], [t22_relat_1])).
% 0.23/0.49  thf('13', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (((k3_xboole_0 @ (k5_relat_1 @ X0 @ k1_xboole_0) @ 
% 0.23/0.49            (k2_zfmisc_1 @ (k1_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0)) @ 
% 0.23/0.49             k1_xboole_0))
% 0.23/0.49            = (k5_relat_1 @ X0 @ k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0)))),
% 0.23/0.49      inference('sup+', [status(thm)], ['11', '12'])).
% 0.23/0.49  thf(t113_zfmisc_1, axiom,
% 0.23/0.49    (![A:$i,B:$i]:
% 0.23/0.49     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.23/0.49       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.23/0.49  thf('14', plain,
% 0.23/0.49      (![X17 : $i, X18 : $i]:
% 0.23/0.49         (((k2_zfmisc_1 @ X17 @ X18) = (k1_xboole_0))
% 0.23/0.49          | ((X18) != (k1_xboole_0)))),
% 0.23/0.49      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.23/0.49  thf('15', plain,
% 0.23/0.49      (![X17 : $i]: ((k2_zfmisc_1 @ X17 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('simplify', [status(thm)], ['14'])).
% 0.23/0.49  thf(t2_boole, axiom,
% 0.23/0.49    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.23/0.49  thf('16', plain,
% 0.23/0.49      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('cnf', [status(esa)], [t2_boole])).
% 0.23/0.49  thf('17', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (((k1_xboole_0) = (k5_relat_1 @ X0 @ k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ (k5_relat_1 @ X0 @ k1_xboole_0)))),
% 0.23/0.49      inference('demod', [status(thm)], ['13', '15', '16'])).
% 0.23/0.49  thf('18', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_xboole_0) = (k5_relat_1 @ X0 @ k1_xboole_0)))),
% 0.23/0.49      inference('sup-', [status(thm)], ['1', '17'])).
% 0.23/0.49  thf('19', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (((k1_xboole_0) = (k5_relat_1 @ X0 @ k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ k1_xboole_0))),
% 0.23/0.49      inference('simplify', [status(thm)], ['18'])).
% 0.23/0.49  thf('20', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_xboole_0) = (k5_relat_1 @ X0 @ k1_xboole_0)))),
% 0.23/0.49      inference('sup-', [status(thm)], ['0', '19'])).
% 0.23/0.49  thf('21', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.23/0.49      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.23/0.49  thf('22', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_xboole_0) = (k5_relat_1 @ X0 @ k1_xboole_0)))),
% 0.23/0.49      inference('demod', [status(thm)], ['20', '21'])).
% 0.23/0.49  thf(t62_relat_1, conjecture,
% 0.23/0.49    (![A:$i]:
% 0.23/0.49     ( ( v1_relat_1 @ A ) =>
% 0.23/0.49       ( ( ( k5_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) & 
% 0.23/0.49         ( ( k5_relat_1 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ) ) ))).
% 0.23/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.23/0.49    (~( ![A:$i]:
% 0.23/0.49        ( ( v1_relat_1 @ A ) =>
% 0.23/0.49          ( ( ( k5_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) & 
% 0.23/0.49            ( ( k5_relat_1 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ) ) ) )),
% 0.23/0.49    inference('cnf.neg', [status(esa)], [t62_relat_1])).
% 0.23/0.49  thf('23', plain,
% 0.23/0.49      ((((k5_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0))
% 0.23/0.49        | ((k5_relat_1 @ sk_A @ k1_xboole_0) != (k1_xboole_0)))),
% 0.23/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.49  thf('24', plain,
% 0.23/0.49      ((((k5_relat_1 @ sk_A @ k1_xboole_0) != (k1_xboole_0)))
% 0.23/0.49         <= (~ (((k5_relat_1 @ sk_A @ k1_xboole_0) = (k1_xboole_0))))),
% 0.23/0.49      inference('split', [status(esa)], ['23'])).
% 0.23/0.49  thf('25', plain, (![X21 : $i]: ((v1_relat_1 @ X21) | ~ (v1_xboole_0 @ X21))),
% 0.23/0.49      inference('cnf', [status(esa)], [cc1_relat_1])).
% 0.23/0.49  thf('26', plain,
% 0.23/0.49      (![X22 : $i, X23 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X22)
% 0.23/0.49          | ~ (v1_relat_1 @ X23)
% 0.23/0.49          | (v1_relat_1 @ (k5_relat_1 @ X22 @ X23)))),
% 0.23/0.49      inference('cnf', [status(esa)], [dt_k5_relat_1])).
% 0.23/0.49  thf('27', plain, (![X21 : $i]: ((v1_relat_1 @ X21) | ~ (v1_xboole_0 @ X21))),
% 0.23/0.49      inference('cnf', [status(esa)], [cc1_relat_1])).
% 0.23/0.49  thf('28', plain, (((k2_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.23/0.49  thf(t46_relat_1, axiom,
% 0.23/0.49    (![A:$i]:
% 0.23/0.49     ( ( v1_relat_1 @ A ) =>
% 0.23/0.49       ( ![B:$i]:
% 0.23/0.49         ( ( v1_relat_1 @ B ) =>
% 0.23/0.49           ( ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) =>
% 0.23/0.49             ( ( k1_relat_1 @ ( k5_relat_1 @ A @ B ) ) = ( k1_relat_1 @ A ) ) ) ) ) ))).
% 0.23/0.49  thf('29', plain,
% 0.23/0.49      (![X25 : $i, X26 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X25)
% 0.23/0.49          | ((k1_relat_1 @ (k5_relat_1 @ X26 @ X25)) = (k1_relat_1 @ X26))
% 0.23/0.49          | ~ (r1_tarski @ (k2_relat_1 @ X26) @ (k1_relat_1 @ X25))
% 0.23/0.49          | ~ (v1_relat_1 @ X26))),
% 0.23/0.49      inference('cnf', [status(esa)], [t46_relat_1])).
% 0.23/0.49  thf('30', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (r1_tarski @ k1_xboole_0 @ (k1_relat_1 @ X0))
% 0.23/0.49          | ~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ((k1_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0))
% 0.23/0.49              = (k1_relat_1 @ k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0))),
% 0.23/0.49      inference('sup-', [status(thm)], ['28', '29'])).
% 0.23/0.49  thf('31', plain, (![X1 : $i]: (r1_tarski @ k1_xboole_0 @ X1)),
% 0.23/0.49      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.23/0.49  thf('32', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.23/0.49  thf('33', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ((k1_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0)) = (k1_xboole_0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0))),
% 0.23/0.49      inference('demod', [status(thm)], ['30', '31', '32'])).
% 0.23/0.49  thf('34', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0)) = (k1_xboole_0)))),
% 0.23/0.49      inference('sup-', [status(thm)], ['27', '33'])).
% 0.23/0.49  thf('35', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.23/0.49      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.23/0.49  thf('36', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0)) = (k1_xboole_0)))),
% 0.23/0.49      inference('demod', [status(thm)], ['34', '35'])).
% 0.23/0.49  thf('37', plain,
% 0.23/0.49      (![X24 : $i]:
% 0.23/0.49         (((k3_xboole_0 @ X24 @ 
% 0.23/0.49            (k2_zfmisc_1 @ (k1_relat_1 @ X24) @ (k2_relat_1 @ X24))) = (
% 0.23/0.49            X24))
% 0.23/0.49          | ~ (v1_relat_1 @ X24))),
% 0.23/0.49      inference('cnf', [status(esa)], [t22_relat_1])).
% 0.23/0.49  thf('38', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (((k3_xboole_0 @ (k5_relat_1 @ k1_xboole_0 @ X0) @ 
% 0.23/0.49            (k2_zfmisc_1 @ k1_xboole_0 @ 
% 0.23/0.49             (k2_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0))))
% 0.23/0.49            = (k5_relat_1 @ k1_xboole_0 @ X0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0)))),
% 0.23/0.49      inference('sup+', [status(thm)], ['36', '37'])).
% 0.23/0.49  thf('39', plain,
% 0.23/0.49      (![X17 : $i, X18 : $i]:
% 0.23/0.49         (((k2_zfmisc_1 @ X17 @ X18) = (k1_xboole_0))
% 0.23/0.49          | ((X17) != (k1_xboole_0)))),
% 0.23/0.49      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.23/0.49  thf('40', plain,
% 0.23/0.49      (![X18 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X18) = (k1_xboole_0))),
% 0.23/0.49      inference('simplify', [status(thm)], ['39'])).
% 0.23/0.49  thf('41', plain,
% 0.23/0.49      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.23/0.49      inference('cnf', [status(esa)], [t2_boole])).
% 0.23/0.49  thf('42', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (((k1_xboole_0) = (k5_relat_1 @ k1_xboole_0 @ X0))
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ (k5_relat_1 @ k1_xboole_0 @ X0)))),
% 0.23/0.49      inference('demod', [status(thm)], ['38', '40', '41'])).
% 0.23/0.49  thf('43', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X0)
% 0.23/0.49          | ~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_xboole_0) = (k5_relat_1 @ k1_xboole_0 @ X0)))),
% 0.23/0.49      inference('sup-', [status(thm)], ['26', '42'])).
% 0.23/0.49  thf('44', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (((k1_xboole_0) = (k5_relat_1 @ k1_xboole_0 @ X0))
% 0.23/0.49          | ~ (v1_relat_1 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0))),
% 0.23/0.49      inference('simplify', [status(thm)], ['43'])).
% 0.23/0.49  thf('45', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.23/0.49          | ~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_xboole_0) = (k5_relat_1 @ k1_xboole_0 @ X0)))),
% 0.23/0.49      inference('sup-', [status(thm)], ['25', '44'])).
% 0.23/0.49  thf('46', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.23/0.49      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.23/0.49  thf('47', plain,
% 0.23/0.49      (![X0 : $i]:
% 0.23/0.49         (~ (v1_relat_1 @ X0)
% 0.23/0.49          | ((k1_xboole_0) = (k5_relat_1 @ k1_xboole_0 @ X0)))),
% 0.23/0.49      inference('demod', [status(thm)], ['45', '46'])).
% 0.23/0.49  thf('48', plain,
% 0.23/0.49      ((((k5_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0)))
% 0.23/0.49         <= (~ (((k5_relat_1 @ k1_xboole_0 @ sk_A) = (k1_xboole_0))))),
% 0.23/0.49      inference('split', [status(esa)], ['23'])).
% 0.23/0.50  thf('49', plain,
% 0.23/0.50      (((((k1_xboole_0) != (k1_xboole_0)) | ~ (v1_relat_1 @ sk_A)))
% 0.23/0.50         <= (~ (((k5_relat_1 @ k1_xboole_0 @ sk_A) = (k1_xboole_0))))),
% 0.23/0.50      inference('sup-', [status(thm)], ['47', '48'])).
% 0.23/0.50  thf('50', plain, ((v1_relat_1 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('51', plain,
% 0.23/0.50      ((((k1_xboole_0) != (k1_xboole_0)))
% 0.23/0.50         <= (~ (((k5_relat_1 @ k1_xboole_0 @ sk_A) = (k1_xboole_0))))),
% 0.23/0.50      inference('demod', [status(thm)], ['49', '50'])).
% 0.23/0.50  thf('52', plain, ((((k5_relat_1 @ k1_xboole_0 @ sk_A) = (k1_xboole_0)))),
% 0.23/0.50      inference('simplify', [status(thm)], ['51'])).
% 0.23/0.50  thf('53', plain,
% 0.23/0.50      (~ (((k5_relat_1 @ sk_A @ k1_xboole_0) = (k1_xboole_0))) | 
% 0.23/0.50       ~ (((k5_relat_1 @ k1_xboole_0 @ sk_A) = (k1_xboole_0)))),
% 0.23/0.50      inference('split', [status(esa)], ['23'])).
% 0.23/0.50  thf('54', plain, (~ (((k5_relat_1 @ sk_A @ k1_xboole_0) = (k1_xboole_0)))),
% 0.23/0.50      inference('sat_resolution*', [status(thm)], ['52', '53'])).
% 0.23/0.50  thf('55', plain, (((k5_relat_1 @ sk_A @ k1_xboole_0) != (k1_xboole_0))),
% 0.23/0.50      inference('simpl_trail', [status(thm)], ['24', '54'])).
% 0.23/0.50  thf('56', plain,
% 0.23/0.50      ((((k1_xboole_0) != (k1_xboole_0)) | ~ (v1_relat_1 @ sk_A))),
% 0.23/0.50      inference('sup-', [status(thm)], ['22', '55'])).
% 0.23/0.50  thf('57', plain, ((v1_relat_1 @ sk_A)),
% 0.23/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.50  thf('58', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.23/0.50      inference('demod', [status(thm)], ['56', '57'])).
% 0.23/0.50  thf('59', plain, ($false), inference('simplify', [status(thm)], ['58'])).
% 0.23/0.50  
% 0.23/0.50  % SZS output end Refutation
% 0.23/0.50  
% 0.23/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
