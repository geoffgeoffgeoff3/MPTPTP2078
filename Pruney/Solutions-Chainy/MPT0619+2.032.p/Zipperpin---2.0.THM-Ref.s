%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.0NovfOPJk9

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:24 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   78 ( 173 expanded)
%              Number of leaves         :   28 (  62 expanded)
%              Depth                    :   15
%              Number of atoms          :  508 (1605 expanded)
%              Number of equality atoms :   54 ( 184 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k11_relat_1_type,type,(
    k11_relat_1: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(t41_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( A
         != ( k1_tarski @ B ) )
        & ( A != k1_xboole_0 )
        & ! [C: $i] :
            ~ ( ( r2_hidden @ C @ A )
              & ( C != B ) ) ) )).

thf('0',plain,(
    ! [X14: $i,X15: $i] :
      ( ( X14 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C @ X15 @ X14 ) @ X14 )
      | ( X14
        = ( k1_tarski @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[t41_zfmisc_1])).

thf(t14_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( ( k1_relat_1 @ B )
          = ( k1_tarski @ A ) )
       => ( ( k2_relat_1 @ B )
          = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ( ( ( k1_relat_1 @ B )
            = ( k1_tarski @ A ) )
         => ( ( k2_relat_1 @ B )
            = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t14_funct_1])).

thf('1',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t146_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k9_relat_1 @ A @ ( k1_relat_1 @ A ) )
        = ( k2_relat_1 @ A ) ) ) )).

thf('2',plain,(
    ! [X18: $i] :
      ( ( ( k9_relat_1 @ X18 @ ( k1_relat_1 @ X18 ) )
        = ( k2_relat_1 @ X18 ) )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t146_relat_1])).

thf('3',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = ( k2_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf('4',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['3','4'])).

thf(d16_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( k11_relat_1 @ A @ B )
          = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) )).

thf('6',plain,(
    ! [X16: $i,X17: $i] :
      ( ( ( k11_relat_1 @ X16 @ X17 )
        = ( k9_relat_1 @ X16 @ ( k1_tarski @ X17 ) ) )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[d16_relat_1])).

thf('7',plain,
    ( ( ( k11_relat_1 @ sk_B @ sk_A )
      = ( k2_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('8',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,
    ( ( k11_relat_1 @ sk_B @ sk_A )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['7','8'])).

thf(t204_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( r2_hidden @ B @ ( k11_relat_1 @ C @ A ) ) ) ) )).

thf('10',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ~ ( r2_hidden @ X19 @ ( k11_relat_1 @ X20 @ X21 ) )
      | ( r2_hidden @ ( k4_tarski @ X21 @ X19 ) @ X20 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t204_relat_1])).

thf('11',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ X0 ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ X0 ) @ sk_B ) ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['0','13'])).

thf('15',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t98_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k7_relat_1 @ A @ ( k1_relat_1 @ A ) )
        = A ) ) )).

thf('16',plain,(
    ! [X26: $i] :
      ( ( ( k7_relat_1 @ X26 @ ( k1_relat_1 @ X26 ) )
        = X26 )
      | ~ ( v1_relat_1 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t98_relat_1])).

thf('17',plain,
    ( ( ( k7_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = sk_B )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( ( k7_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
    = sk_B ),
    inference(demod,[status(thm)],['17','18'])).

thf(t87_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ) )).

thf('20',plain,(
    ! [X24: $i,X25: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X24 @ X25 ) ) @ X25 )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t87_relat_1])).

thf('21',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf('22',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['21','22','23'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('25',plain,(
    ! [X0: $i] :
      ( ( k2_tarski @ X0 @ X0 )
      = ( k1_tarski @ X0 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('26',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r2_hidden @ X10 @ X11 )
      | ~ ( r1_tarski @ ( k2_tarski @ X10 @ X12 ) @ X11 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    r2_hidden @ sk_A @ ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['24','27'])).

thf('29',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t205_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
      <=> ( ( k11_relat_1 @ B @ A )
         != k1_xboole_0 ) ) ) )).

thf('30',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( r2_hidden @ X23 @ ( k1_relat_1 @ X22 ) )
      | ( ( k11_relat_1 @ X22 @ X23 )
       != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t205_relat_1])).

thf('31',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( ( k11_relat_1 @ sk_B @ X0 )
       != k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( ( k11_relat_1 @ sk_B @ X0 )
       != k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['31','32'])).

thf('34',plain,(
    ( k11_relat_1 @ sk_B @ sk_A )
 != k1_xboole_0 ),
    inference('sup-',[status(thm)],['28','33'])).

thf('35',plain,
    ( ( k11_relat_1 @ sk_B @ sk_A )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('36',plain,(
    ( k2_relat_1 @ sk_B )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['34','35'])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) ) ) @ sk_B ) ) ),
    inference('simplify_reflect-',[status(thm)],['14','36'])).

thf(t8_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( B
            = ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf('38',plain,(
    ! [X27: $i,X28: $i,X29: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X27 @ X29 ) @ X28 )
      | ( X29
        = ( k1_funct_1 @ X28 @ X27 ) )
      | ~ ( v1_funct_1 @ X28 )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('39',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) )
        = ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) )
        = ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['39','40','41'])).

thf('43',plain,(
    ! [X14: $i,X15: $i] :
      ( ( X14 = k1_xboole_0 )
      | ( ( sk_C @ X15 @ X14 )
       != X15 )
      | ( X14
        = ( k1_tarski @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[t41_zfmisc_1])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( ( k1_funct_1 @ sk_B @ sk_A )
       != X0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,
    ( ( ( k2_relat_1 @ sk_B )
      = k1_xboole_0 )
    | ( ( k2_relat_1 @ sk_B )
      = ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,(
    ( k2_relat_1 @ sk_B )
 != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    ( k2_relat_1 @ sk_B )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['34','35'])).

thf('48',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['45','46','47'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.0NovfOPJk9
% 0.13/0.35  % Computer   : n024.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 09:44:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.22/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.49  % Solved by: fo/fo7.sh
% 0.22/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.49  % done 78 iterations in 0.027s
% 0.22/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.49  % SZS output start Refutation
% 0.22/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.49  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.22/0.49  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.22/0.49  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.22/0.49  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.22/0.49  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.22/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.49  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.22/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.22/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.49  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.49  thf(k11_relat_1_type, type, k11_relat_1: $i > $i > $i).
% 0.22/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.49  thf(t41_zfmisc_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ~( ( ( A ) != ( k1_tarski @ B ) ) & ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.22/0.49          ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( ( C ) != ( B ) ) ) ) ) ) ))).
% 0.22/0.49  thf('0', plain,
% 0.22/0.49      (![X14 : $i, X15 : $i]:
% 0.22/0.49         (((X14) = (k1_xboole_0))
% 0.22/0.49          | (r2_hidden @ (sk_C @ X15 @ X14) @ X14)
% 0.22/0.49          | ((X14) = (k1_tarski @ X15)))),
% 0.22/0.49      inference('cnf', [status(esa)], [t41_zfmisc_1])).
% 0.22/0.49  thf(t14_funct_1, conjecture,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.22/0.49       ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.22/0.49         ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ))).
% 0.22/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.49    (~( ![A:$i,B:$i]:
% 0.22/0.49        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.22/0.49          ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.22/0.49            ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )),
% 0.22/0.49    inference('cnf.neg', [status(esa)], [t14_funct_1])).
% 0.22/0.49  thf('1', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(t146_relat_1, axiom,
% 0.22/0.49    (![A:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ A ) =>
% 0.22/0.49       ( ( k9_relat_1 @ A @ ( k1_relat_1 @ A ) ) = ( k2_relat_1 @ A ) ) ))).
% 0.22/0.49  thf('2', plain,
% 0.22/0.49      (![X18 : $i]:
% 0.22/0.49         (((k9_relat_1 @ X18 @ (k1_relat_1 @ X18)) = (k2_relat_1 @ X18))
% 0.22/0.49          | ~ (v1_relat_1 @ X18))),
% 0.22/0.49      inference('cnf', [status(esa)], [t146_relat_1])).
% 0.22/0.49  thf('3', plain,
% 0.22/0.49      ((((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k2_relat_1 @ sk_B))
% 0.22/0.49        | ~ (v1_relat_1 @ sk_B))),
% 0.22/0.49      inference('sup+', [status(thm)], ['1', '2'])).
% 0.22/0.49  thf('4', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('5', plain,
% 0.22/0.49      (((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k2_relat_1 @ sk_B))),
% 0.22/0.49      inference('demod', [status(thm)], ['3', '4'])).
% 0.22/0.49  thf(d16_relat_1, axiom,
% 0.22/0.49    (![A:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ A ) =>
% 0.22/0.49       ( ![B:$i]:
% 0.22/0.49         ( ( k11_relat_1 @ A @ B ) = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) ))).
% 0.22/0.49  thf('6', plain,
% 0.22/0.49      (![X16 : $i, X17 : $i]:
% 0.22/0.49         (((k11_relat_1 @ X16 @ X17) = (k9_relat_1 @ X16 @ (k1_tarski @ X17)))
% 0.22/0.49          | ~ (v1_relat_1 @ X16))),
% 0.22/0.49      inference('cnf', [status(esa)], [d16_relat_1])).
% 0.22/0.49  thf('7', plain,
% 0.22/0.49      ((((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))
% 0.22/0.49        | ~ (v1_relat_1 @ sk_B))),
% 0.22/0.49      inference('sup+', [status(thm)], ['5', '6'])).
% 0.22/0.49  thf('8', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('9', plain, (((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))),
% 0.22/0.49      inference('demod', [status(thm)], ['7', '8'])).
% 0.22/0.49  thf(t204_relat_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ C ) =>
% 0.22/0.49       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.22/0.49         ( r2_hidden @ B @ ( k11_relat_1 @ C @ A ) ) ) ))).
% 0.22/0.49  thf('10', plain,
% 0.22/0.49      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X19 @ (k11_relat_1 @ X20 @ X21))
% 0.22/0.49          | (r2_hidden @ (k4_tarski @ X21 @ X19) @ X20)
% 0.22/0.49          | ~ (v1_relat_1 @ X20))),
% 0.22/0.49      inference('cnf', [status(esa)], [t204_relat_1])).
% 0.22/0.49  thf('11', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_B))
% 0.22/0.49          | ~ (v1_relat_1 @ sk_B)
% 0.22/0.49          | (r2_hidden @ (k4_tarski @ sk_A @ X0) @ sk_B))),
% 0.22/0.49      inference('sup-', [status(thm)], ['9', '10'])).
% 0.22/0.49  thf('12', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('13', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_B))
% 0.22/0.49          | (r2_hidden @ (k4_tarski @ sk_A @ X0) @ sk_B))),
% 0.22/0.49      inference('demod', [status(thm)], ['11', '12'])).
% 0.22/0.49  thf('14', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.22/0.49          | ((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.22/0.49          | (r2_hidden @ 
% 0.22/0.49             (k4_tarski @ sk_A @ (sk_C @ X0 @ (k2_relat_1 @ sk_B))) @ sk_B))),
% 0.22/0.49      inference('sup-', [status(thm)], ['0', '13'])).
% 0.22/0.49  thf('15', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(t98_relat_1, axiom,
% 0.22/0.49    (![A:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ A ) =>
% 0.22/0.49       ( ( k7_relat_1 @ A @ ( k1_relat_1 @ A ) ) = ( A ) ) ))).
% 0.22/0.49  thf('16', plain,
% 0.22/0.49      (![X26 : $i]:
% 0.22/0.49         (((k7_relat_1 @ X26 @ (k1_relat_1 @ X26)) = (X26))
% 0.22/0.49          | ~ (v1_relat_1 @ X26))),
% 0.22/0.49      inference('cnf', [status(esa)], [t98_relat_1])).
% 0.22/0.49  thf('17', plain,
% 0.22/0.49      ((((k7_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (sk_B))
% 0.22/0.49        | ~ (v1_relat_1 @ sk_B))),
% 0.22/0.49      inference('sup+', [status(thm)], ['15', '16'])).
% 0.22/0.49  thf('18', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('19', plain, (((k7_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (sk_B))),
% 0.22/0.49      inference('demod', [status(thm)], ['17', '18'])).
% 0.22/0.49  thf(t87_relat_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ B ) =>
% 0.22/0.49       ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ))).
% 0.22/0.49  thf('20', plain,
% 0.22/0.49      (![X24 : $i, X25 : $i]:
% 0.22/0.49         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X24 @ X25)) @ X25)
% 0.22/0.49          | ~ (v1_relat_1 @ X24))),
% 0.22/0.49      inference('cnf', [status(esa)], [t87_relat_1])).
% 0.22/0.49  thf('21', plain,
% 0.22/0.49      (((r1_tarski @ (k1_relat_1 @ sk_B) @ (k1_tarski @ sk_A))
% 0.22/0.49        | ~ (v1_relat_1 @ sk_B))),
% 0.22/0.49      inference('sup+', [status(thm)], ['19', '20'])).
% 0.22/0.49  thf('22', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('23', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('24', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_A))),
% 0.22/0.49      inference('demod', [status(thm)], ['21', '22', '23'])).
% 0.22/0.49  thf(t69_enumset1, axiom,
% 0.22/0.49    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.22/0.49  thf('25', plain, (![X0 : $i]: ((k2_tarski @ X0 @ X0) = (k1_tarski @ X0))),
% 0.22/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.22/0.49  thf(t38_zfmisc_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.22/0.49       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.22/0.49  thf('26', plain,
% 0.22/0.49      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.22/0.49         ((r2_hidden @ X10 @ X11)
% 0.22/0.49          | ~ (r1_tarski @ (k2_tarski @ X10 @ X12) @ X11))),
% 0.22/0.49      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.22/0.49  thf('27', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i]:
% 0.22/0.49         (~ (r1_tarski @ (k1_tarski @ X0) @ X1) | (r2_hidden @ X0 @ X1))),
% 0.22/0.49      inference('sup-', [status(thm)], ['25', '26'])).
% 0.22/0.49  thf('28', plain, ((r2_hidden @ sk_A @ (k1_tarski @ sk_A))),
% 0.22/0.49      inference('sup-', [status(thm)], ['24', '27'])).
% 0.22/0.49  thf('29', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(t205_relat_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ B ) =>
% 0.22/0.49       ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) <=>
% 0.22/0.49         ( ( k11_relat_1 @ B @ A ) != ( k1_xboole_0 ) ) ) ))).
% 0.22/0.49  thf('30', plain,
% 0.22/0.49      (![X22 : $i, X23 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X23 @ (k1_relat_1 @ X22))
% 0.22/0.49          | ((k11_relat_1 @ X22 @ X23) != (k1_xboole_0))
% 0.22/0.49          | ~ (v1_relat_1 @ X22))),
% 0.22/0.49      inference('cnf', [status(esa)], [t205_relat_1])).
% 0.22/0.49  thf('31', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.22/0.49          | ~ (v1_relat_1 @ sk_B)
% 0.22/0.49          | ((k11_relat_1 @ sk_B @ X0) != (k1_xboole_0)))),
% 0.22/0.49      inference('sup-', [status(thm)], ['29', '30'])).
% 0.22/0.49  thf('32', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('33', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.22/0.49          | ((k11_relat_1 @ sk_B @ X0) != (k1_xboole_0)))),
% 0.22/0.49      inference('demod', [status(thm)], ['31', '32'])).
% 0.22/0.49  thf('34', plain, (((k11_relat_1 @ sk_B @ sk_A) != (k1_xboole_0))),
% 0.22/0.49      inference('sup-', [status(thm)], ['28', '33'])).
% 0.22/0.49  thf('35', plain, (((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))),
% 0.22/0.49      inference('demod', [status(thm)], ['7', '8'])).
% 0.22/0.49  thf('36', plain, (((k2_relat_1 @ sk_B) != (k1_xboole_0))),
% 0.22/0.49      inference('demod', [status(thm)], ['34', '35'])).
% 0.22/0.49  thf('37', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.22/0.49          | (r2_hidden @ 
% 0.22/0.49             (k4_tarski @ sk_A @ (sk_C @ X0 @ (k2_relat_1 @ sk_B))) @ sk_B))),
% 0.22/0.49      inference('simplify_reflect-', [status(thm)], ['14', '36'])).
% 0.22/0.49  thf(t8_funct_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.22/0.49       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.22/0.49         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.22/0.49           ( ( B ) = ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.22/0.49  thf('38', plain,
% 0.22/0.49      (![X27 : $i, X28 : $i, X29 : $i]:
% 0.22/0.49         (~ (r2_hidden @ (k4_tarski @ X27 @ X29) @ X28)
% 0.22/0.49          | ((X29) = (k1_funct_1 @ X28 @ X27))
% 0.22/0.49          | ~ (v1_funct_1 @ X28)
% 0.22/0.49          | ~ (v1_relat_1 @ X28))),
% 0.22/0.49      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.22/0.49  thf('39', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.22/0.49          | ~ (v1_relat_1 @ sk_B)
% 0.22/0.49          | ~ (v1_funct_1 @ sk_B)
% 0.22/0.49          | ((sk_C @ X0 @ (k2_relat_1 @ sk_B)) = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.22/0.49      inference('sup-', [status(thm)], ['37', '38'])).
% 0.22/0.49  thf('40', plain, ((v1_relat_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('41', plain, ((v1_funct_1 @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('42', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.22/0.49          | ((sk_C @ X0 @ (k2_relat_1 @ sk_B)) = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.22/0.49      inference('demod', [status(thm)], ['39', '40', '41'])).
% 0.22/0.49  thf('43', plain,
% 0.22/0.49      (![X14 : $i, X15 : $i]:
% 0.22/0.49         (((X14) = (k1_xboole_0))
% 0.22/0.49          | ((sk_C @ X15 @ X14) != (X15))
% 0.22/0.49          | ((X14) = (k1_tarski @ X15)))),
% 0.22/0.49      inference('cnf', [status(esa)], [t41_zfmisc_1])).
% 0.22/0.49  thf('44', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         (((k1_funct_1 @ sk_B @ sk_A) != (X0))
% 0.22/0.49          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.22/0.49          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.22/0.49          | ((k2_relat_1 @ sk_B) = (k1_xboole_0)))),
% 0.22/0.49      inference('sup-', [status(thm)], ['42', '43'])).
% 0.22/0.49  thf('45', plain,
% 0.22/0.49      ((((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.22/0.49        | ((k2_relat_1 @ sk_B) = (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A))))),
% 0.22/0.49      inference('simplify', [status(thm)], ['44'])).
% 0.22/0.49  thf('46', plain,
% 0.22/0.49      (((k2_relat_1 @ sk_B) != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('47', plain, (((k2_relat_1 @ sk_B) != (k1_xboole_0))),
% 0.22/0.49      inference('demod', [status(thm)], ['34', '35'])).
% 0.22/0.49  thf('48', plain, ($false),
% 0.22/0.49      inference('simplify_reflect-', [status(thm)], ['45', '46', '47'])).
% 0.22/0.49  
% 0.22/0.49  % SZS output end Refutation
% 0.22/0.49  
% 0.22/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
