%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.McD0FN8pJ4

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:47:30 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   48 (  64 expanded)
%              Number of leaves         :   24 (  32 expanded)
%              Depth                    :    8
%              Number of atoms          :  203 ( 294 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v5_funct_1_type,type,(
    v5_funct_1: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(cc1_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_funct_1 @ A ) ) )).

thf('0',plain,(
    ! [X39: $i] :
      ( ( v1_funct_1 @ X39 )
      | ~ ( v1_xboole_0 @ X39 ) ) ),
    inference(cnf,[status(esa)],[cc1_funct_1])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('1',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf(d20_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( v5_funct_1 @ B @ A )
          <=> ! [C: $i] :
                ( ( r2_hidden @ C @ ( k1_relat_1 @ B ) )
               => ( r2_hidden @ ( k1_funct_1 @ B @ C ) @ ( k1_funct_1 @ A @ C ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X40: $i,X41: $i] :
      ( ~ ( v1_relat_1 @ X40 )
      | ~ ( v1_funct_1 @ X40 )
      | ( r2_hidden @ ( sk_C_1 @ X40 @ X41 ) @ ( k1_relat_1 @ X40 ) )
      | ( v5_funct_1 @ X40 @ X41 )
      | ~ ( v1_funct_1 @ X41 )
      | ~ ( v1_relat_1 @ X41 ) ) ),
    inference(cnf,[status(esa)],[d20_funct_1])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( v5_funct_1 @ X0 @ X1 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_xboole_0 @ ( k1_relat_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ k1_xboole_0 )
      | ~ ( v1_funct_1 @ k1_xboole_0 )
      | ( v5_funct_1 @ k1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','4'])).

thf('6',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('7',plain,(
    ! [X3: $i] :
      ( r1_xboole_0 @ X3 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf(t55_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
        & ( r2_hidden @ A @ C ) ) )).

thf('8',plain,(
    ! [X31: $i,X32: $i,X33: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_tarski @ X31 @ X32 ) @ X33 )
      | ~ ( r2_hidden @ X31 @ X33 ) ) ),
    inference(cnf,[status(esa)],[t55_zfmisc_1])).

thf('9',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['6','9'])).

thf(d1_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
    <=> ! [B: $i] :
          ~ ( ( r2_hidden @ B @ A )
            & ! [C: $i,D: $i] :
                ( B
               != ( k4_tarski @ C @ D ) ) ) ) )).

thf('11',plain,(
    ! [X36: $i] :
      ( ( v1_relat_1 @ X36 )
      | ( r2_hidden @ ( sk_B_1 @ X36 ) @ X36 ) ) ),
    inference(cnf,[status(esa)],[d1_relat_1])).

thf('12',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('13',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ k1_xboole_0 )
      | ( v5_funct_1 @ k1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['5','10','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( v5_funct_1 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['0','14'])).

thf('16',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['6','9'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( v5_funct_1 @ k1_xboole_0 @ X0 ) ) ),
    inference(demod,[status(thm)],['15','16'])).

thf(t174_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( v5_funct_1 @ k1_xboole_0 @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ( v5_funct_1 @ k1_xboole_0 @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t174_funct_1])).

thf('18',plain,(
    ~ ( v5_funct_1 @ k1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( ~ ( v1_funct_1 @ sk_A )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    $false ),
    inference(demod,[status(thm)],['19','20','21'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.McD0FN8pJ4
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 19:39:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 34 iterations in 0.021s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.20/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.47  thf(sk_B_1_type, type, sk_B_1: $i > $i).
% 0.20/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.47  thf(v5_funct_1_type, type, v5_funct_1: $i > $i > $o).
% 0.20/0.47  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.47  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.20/0.47  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.47  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 0.20/0.47  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.47  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.47  thf(cc1_funct_1, axiom,
% 0.20/0.47    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_funct_1 @ A ) ))).
% 0.20/0.47  thf('0', plain, (![X39 : $i]: ((v1_funct_1 @ X39) | ~ (v1_xboole_0 @ X39))),
% 0.20/0.47      inference('cnf', [status(esa)], [cc1_funct_1])).
% 0.20/0.47  thf(t60_relat_1, axiom,
% 0.20/0.47    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.20/0.47     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.20/0.47  thf('1', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.20/0.47      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.20/0.47  thf(d20_funct_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.47           ( ( v5_funct_1 @ B @ A ) <=>
% 0.20/0.47             ( ![C:$i]:
% 0.20/0.47               ( ( r2_hidden @ C @ ( k1_relat_1 @ B ) ) =>
% 0.20/0.47                 ( r2_hidden @ ( k1_funct_1 @ B @ C ) @ ( k1_funct_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      (![X40 : $i, X41 : $i]:
% 0.20/0.47         (~ (v1_relat_1 @ X40)
% 0.20/0.47          | ~ (v1_funct_1 @ X40)
% 0.20/0.47          | (r2_hidden @ (sk_C_1 @ X40 @ X41) @ (k1_relat_1 @ X40))
% 0.20/0.47          | (v5_funct_1 @ X40 @ X41)
% 0.20/0.47          | ~ (v1_funct_1 @ X41)
% 0.20/0.47          | ~ (v1_relat_1 @ X41))),
% 0.20/0.47      inference('cnf', [status(esa)], [d20_funct_1])).
% 0.20/0.47  thf(d1_xboole_0, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.20/0.47  thf('3', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.20/0.47      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (~ (v1_relat_1 @ X1)
% 0.20/0.47          | ~ (v1_funct_1 @ X1)
% 0.20/0.47          | (v5_funct_1 @ X0 @ X1)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_xboole_0 @ (k1_relat_1 @ X0)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['2', '3'])).
% 0.20/0.47  thf('5', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.20/0.47          | ~ (v1_relat_1 @ k1_xboole_0)
% 0.20/0.47          | ~ (v1_funct_1 @ k1_xboole_0)
% 0.20/0.47          | (v5_funct_1 @ k1_xboole_0 @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (v1_relat_1 @ X0))),
% 0.20/0.47      inference('sup-', [status(thm)], ['1', '4'])).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.20/0.47  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.20/0.47  thf('7', plain, (![X3 : $i]: (r1_xboole_0 @ X3 @ k1_xboole_0)),
% 0.20/0.47      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.20/0.47  thf(t55_zfmisc_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ~( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) & ( r2_hidden @ A @ C ) ) ))).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (![X31 : $i, X32 : $i, X33 : $i]:
% 0.20/0.47         (~ (r1_xboole_0 @ (k2_tarski @ X31 @ X32) @ X33)
% 0.20/0.47          | ~ (r2_hidden @ X31 @ X33))),
% 0.20/0.47      inference('cnf', [status(esa)], [t55_zfmisc_1])).
% 0.20/0.47  thf('9', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.20/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.20/0.47  thf('10', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.20/0.47      inference('sup-', [status(thm)], ['6', '9'])).
% 0.20/0.47  thf(d1_relat_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ A ) <=>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ~( ( r2_hidden @ B @ A ) & 
% 0.20/0.47              ( ![C:$i,D:$i]: ( ( B ) != ( k4_tarski @ C @ D ) ) ) ) ) ) ))).
% 0.20/0.47  thf('11', plain,
% 0.20/0.47      (![X36 : $i]: ((v1_relat_1 @ X36) | (r2_hidden @ (sk_B_1 @ X36) @ X36))),
% 0.20/0.47      inference('cnf', [status(esa)], [d1_relat_1])).
% 0.20/0.47  thf('12', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.20/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.20/0.47  thf('13', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.20/0.47      inference('sup-', [status(thm)], ['11', '12'])).
% 0.20/0.47  thf('14', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ k1_xboole_0)
% 0.20/0.47          | (v5_funct_1 @ k1_xboole_0 @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (v1_relat_1 @ X0))),
% 0.20/0.47      inference('demod', [status(thm)], ['5', '10', '13'])).
% 0.20/0.47  thf('15', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.20/0.47          | ~ (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | (v5_funct_1 @ k1_xboole_0 @ X0))),
% 0.20/0.47      inference('sup-', [status(thm)], ['0', '14'])).
% 0.20/0.47  thf('16', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.20/0.47      inference('sup-', [status(thm)], ['6', '9'])).
% 0.20/0.47  thf('17', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | (v5_funct_1 @ k1_xboole_0 @ X0))),
% 0.20/0.47      inference('demod', [status(thm)], ['15', '16'])).
% 0.20/0.47  thf(t174_funct_1, conjecture,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47       ( v5_funct_1 @ k1_xboole_0 @ A ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i]:
% 0.20/0.47        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47          ( v5_funct_1 @ k1_xboole_0 @ A ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t174_funct_1])).
% 0.20/0.47  thf('18', plain, (~ (v5_funct_1 @ k1_xboole_0 @ sk_A)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('19', plain, ((~ (v1_funct_1 @ sk_A) | ~ (v1_relat_1 @ sk_A))),
% 0.20/0.47      inference('sup-', [status(thm)], ['17', '18'])).
% 0.20/0.47  thf('20', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('21', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('22', plain, ($false),
% 0.20/0.47      inference('demod', [status(thm)], ['19', '20', '21'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
