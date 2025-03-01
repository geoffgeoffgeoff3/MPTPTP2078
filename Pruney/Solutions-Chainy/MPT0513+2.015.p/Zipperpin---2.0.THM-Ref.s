%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.2IiDfbGtDe

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:41:27 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   29 (  30 expanded)
%              Number of leaves         :   12 (  13 expanded)
%              Depth                    :   10
%              Number of atoms          :  139 ( 146 expanded)
%              Number of equality atoms :   14 (  15 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('0',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf(cc1_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_relat_1 @ A ) ) )).

thf('1',plain,(
    ! [X1: $i] :
      ( ( v1_relat_1 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc1_relat_1])).

thf(t110_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k7_relat_1 @ A @ k1_xboole_0 )
        = k1_xboole_0 ) ) )).

thf('2',plain,(
    ! [X5: $i] :
      ( ( ( k7_relat_1 @ X5 @ k1_xboole_0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t110_relat_1])).

thf('3',plain,(
    ! [X5: $i] :
      ( ( ( k7_relat_1 @ X5 @ k1_xboole_0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t110_relat_1])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('4',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf(t102_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r1_tarski @ A @ B )
       => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
          = ( k7_relat_1 @ C @ A ) ) ) ) )).

thf('5',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ~ ( r1_tarski @ X2 @ X3 )
      | ~ ( v1_relat_1 @ X4 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X4 @ X2 ) @ X3 )
        = ( k7_relat_1 @ X4 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t102_relat_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ k1_xboole_0 ) @ X0 )
        = ( k7_relat_1 @ X1 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ k1_xboole_0 @ X1 )
        = ( k7_relat_1 @ X0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ k1_xboole_0 @ X1 )
        = ( k7_relat_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ k1_xboole_0 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k7_relat_1 @ k1_xboole_0 @ X0 )
        = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf(t111_relat_1,conjecture,(
    ! [A: $i] :
      ( ( k7_relat_1 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( k7_relat_1 @ k1_xboole_0 @ A )
        = k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t111_relat_1])).

thf('11',plain,(
    ( k7_relat_1 @ k1_xboole_0 @ sk_A )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i] :
      ~ ( v1_relat_1 @ X0 ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    ! [X0: $i] :
      ~ ( v1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['1','13'])).

thf('15',plain,(
    $false ),
    inference('sup-',[status(thm)],['0','14'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.2IiDfbGtDe
% 0.13/0.33  % Computer   : n005.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % DateTime   : Tue Dec  1 20:51:03 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.46  % Solved by: fo/fo7.sh
% 0.20/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.46  % done 17 iterations in 0.015s
% 0.20/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.46  % SZS output start Refutation
% 0.20/0.46  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.46  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.20/0.46  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.46  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.46  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.46  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.20/0.46  thf('0', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.20/0.46      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.20/0.46  thf(cc1_relat_1, axiom,
% 0.20/0.46    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_relat_1 @ A ) ))).
% 0.20/0.46  thf('1', plain, (![X1 : $i]: ((v1_relat_1 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.20/0.46      inference('cnf', [status(esa)], [cc1_relat_1])).
% 0.20/0.46  thf(t110_relat_1, axiom,
% 0.20/0.46    (![A:$i]:
% 0.20/0.46     ( ( v1_relat_1 @ A ) =>
% 0.20/0.46       ( ( k7_relat_1 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ) ))).
% 0.20/0.46  thf('2', plain,
% 0.20/0.46      (![X5 : $i]:
% 0.20/0.46         (((k7_relat_1 @ X5 @ k1_xboole_0) = (k1_xboole_0))
% 0.20/0.46          | ~ (v1_relat_1 @ X5))),
% 0.20/0.46      inference('cnf', [status(esa)], [t110_relat_1])).
% 0.20/0.46  thf('3', plain,
% 0.20/0.46      (![X5 : $i]:
% 0.20/0.46         (((k7_relat_1 @ X5 @ k1_xboole_0) = (k1_xboole_0))
% 0.20/0.46          | ~ (v1_relat_1 @ X5))),
% 0.20/0.46      inference('cnf', [status(esa)], [t110_relat_1])).
% 0.20/0.46  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.20/0.46  thf('4', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.20/0.46      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.20/0.46  thf(t102_relat_1, axiom,
% 0.20/0.46    (![A:$i,B:$i,C:$i]:
% 0.20/0.46     ( ( v1_relat_1 @ C ) =>
% 0.20/0.46       ( ( r1_tarski @ A @ B ) =>
% 0.20/0.46         ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) = ( k7_relat_1 @ C @ A ) ) ) ))).
% 0.20/0.46  thf('5', plain,
% 0.20/0.46      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.46         (~ (r1_tarski @ X2 @ X3)
% 0.20/0.46          | ~ (v1_relat_1 @ X4)
% 0.20/0.46          | ((k7_relat_1 @ (k7_relat_1 @ X4 @ X2) @ X3)
% 0.20/0.46              = (k7_relat_1 @ X4 @ X2)))),
% 0.20/0.46      inference('cnf', [status(esa)], [t102_relat_1])).
% 0.20/0.46  thf('6', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i]:
% 0.20/0.46         (((k7_relat_1 @ (k7_relat_1 @ X1 @ k1_xboole_0) @ X0)
% 0.20/0.46            = (k7_relat_1 @ X1 @ k1_xboole_0))
% 0.20/0.46          | ~ (v1_relat_1 @ X1))),
% 0.20/0.46      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.46  thf('7', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i]:
% 0.20/0.46         (((k7_relat_1 @ k1_xboole_0 @ X1) = (k7_relat_1 @ X0 @ k1_xboole_0))
% 0.20/0.46          | ~ (v1_relat_1 @ X0)
% 0.20/0.46          | ~ (v1_relat_1 @ X0))),
% 0.20/0.46      inference('sup+', [status(thm)], ['3', '6'])).
% 0.20/0.46  thf('8', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i]:
% 0.20/0.46         (~ (v1_relat_1 @ X0)
% 0.20/0.46          | ((k7_relat_1 @ k1_xboole_0 @ X1) = (k7_relat_1 @ X0 @ k1_xboole_0)))),
% 0.20/0.46      inference('simplify', [status(thm)], ['7'])).
% 0.20/0.46  thf('9', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i]:
% 0.20/0.46         (((k7_relat_1 @ k1_xboole_0 @ X0) = (k1_xboole_0))
% 0.20/0.46          | ~ (v1_relat_1 @ X1)
% 0.20/0.46          | ~ (v1_relat_1 @ X1))),
% 0.20/0.46      inference('sup+', [status(thm)], ['2', '8'])).
% 0.20/0.46  thf('10', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i]:
% 0.20/0.46         (~ (v1_relat_1 @ X1)
% 0.20/0.46          | ((k7_relat_1 @ k1_xboole_0 @ X0) = (k1_xboole_0)))),
% 0.20/0.46      inference('simplify', [status(thm)], ['9'])).
% 0.20/0.46  thf(t111_relat_1, conjecture,
% 0.20/0.46    (![A:$i]: ( ( k7_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 0.20/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.46    (~( ![A:$i]: ( ( k7_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) )),
% 0.20/0.46    inference('cnf.neg', [status(esa)], [t111_relat_1])).
% 0.20/0.46  thf('11', plain, (((k7_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('12', plain,
% 0.20/0.46      (![X0 : $i]: (((k1_xboole_0) != (k1_xboole_0)) | ~ (v1_relat_1 @ X0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.46  thf('13', plain, (![X0 : $i]: ~ (v1_relat_1 @ X0)),
% 0.20/0.46      inference('simplify', [status(thm)], ['12'])).
% 0.20/0.46  thf('14', plain, (![X0 : $i]: ~ (v1_xboole_0 @ X0)),
% 0.20/0.46      inference('sup-', [status(thm)], ['1', '13'])).
% 0.20/0.46  thf('15', plain, ($false), inference('sup-', [status(thm)], ['0', '14'])).
% 0.20/0.46  
% 0.20/0.46  % SZS output end Refutation
% 0.20/0.46  
% 0.20/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
