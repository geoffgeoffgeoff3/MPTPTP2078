%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.7CSIdgh1xA

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:16 EST 2020

% Result     : Theorem 0.34s
% Output     : Refutation 0.34s
% Verified   : 
% Statistics : Number of formulae       :   48 (  55 expanded)
%              Number of leaves         :   21 (  26 expanded)
%              Depth                    :   14
%              Number of atoms          :  295 ( 380 expanded)
%              Number of equality atoms :   22 (  28 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(t143_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ! [C: $i] :
            ~ ( ( r2_hidden @ C @ A )
              & ( ( k10_relat_1 @ B @ ( k1_tarski @ C ) )
                = k1_xboole_0 ) )
       => ( r1_tarski @ A @ ( k2_relat_1 @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ( ! [C: $i] :
              ~ ( ( r2_hidden @ C @ A )
                & ( ( k10_relat_1 @ B @ ( k1_tarski @ C ) )
                  = k1_xboole_0 ) )
         => ( r1_tarski @ A @ ( k2_relat_1 @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t143_funct_1])).

thf('0',plain,(
    ~ ( r1_tarski @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('1',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf(l27_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ) )).

thf('2',plain,(
    ! [X19: $i,X20: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X19 ) @ X20 )
      | ( r2_hidden @ X19 @ X20 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('3',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k3_xboole_0 @ X4 @ X5 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( ( k3_xboole_0 @ ( k1_tarski @ X1 ) @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('5',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k2_tarski @ X8 @ X7 )
      = ( k2_tarski @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('6',plain,(
    ! [X21: $i,X22: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X21 @ X22 ) )
      = ( k3_xboole_0 @ X21 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X21: $i,X22: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X21 @ X22 ) )
      = ( k3_xboole_0 @ X21 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X4: $i,X6: $i] :
      ( ( r1_xboole_0 @ X4 @ X6 )
      | ( ( k3_xboole_0 @ X4 @ X6 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X1 @ X0 )
       != k1_xboole_0 )
      | ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r2_hidden @ X1 @ X0 )
      | ( r1_xboole_0 @ X0 @ ( k1_tarski @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['4','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ ( k1_tarski @ X1 ) )
      | ( r2_hidden @ X1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf(t173_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( ( k10_relat_1 @ B @ A )
          = k1_xboole_0 )
      <=> ( r1_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('14',plain,(
    ! [X23: $i,X24: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_relat_1 @ X23 ) @ X24 )
      | ( ( k10_relat_1 @ X23 @ X24 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t173_relat_1])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ ( k2_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ( ( k10_relat_1 @ X1 @ ( k1_tarski @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ~ ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k10_relat_1 @ X0 @ ( k1_tarski @ ( sk_C @ ( k2_relat_1 @ X0 ) @ X1 ) ) )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ X1 @ ( k2_relat_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X25: $i] :
      ( ~ ( r2_hidden @ X25 @ sk_A )
      | ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ X25 ) )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_tarski @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ~ ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_B ) @ X0 ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_tarski @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ~ ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_B ) @ X0 ) @ sk_A ) ) ),
    inference(demod,[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_B ) @ X0 ) @ sk_A )
      | ( r1_tarski @ X0 @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,
    ( ( r1_tarski @ sk_A @ ( k2_relat_1 @ sk_B ) )
    | ( r1_tarski @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['1','22'])).

thf('24',plain,(
    r1_tarski @ sk_A @ ( k2_relat_1 @ sk_B ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    $false ),
    inference(demod,[status(thm)],['0','24'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.7CSIdgh1xA
% 0.13/0.35  % Computer   : n024.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 09:49:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.34/0.52  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.34/0.52  % Solved by: fo/fo7.sh
% 0.34/0.52  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.34/0.52  % done 171 iterations in 0.056s
% 0.34/0.52  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.34/0.52  % SZS output start Refutation
% 0.34/0.52  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.34/0.52  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.34/0.52  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.34/0.52  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.34/0.52  thf(sk_B_type, type, sk_B: $i).
% 0.34/0.52  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.34/0.52  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.34/0.52  thf(sk_A_type, type, sk_A: $i).
% 0.34/0.52  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.34/0.52  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.34/0.52  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.34/0.52  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.34/0.52  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.34/0.52  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.34/0.52  thf(t143_funct_1, conjecture,
% 0.34/0.52    (![A:$i,B:$i]:
% 0.34/0.52     ( ( v1_relat_1 @ B ) =>
% 0.34/0.52       ( ( ![C:$i]:
% 0.34/0.52           ( ~( ( r2_hidden @ C @ A ) & 
% 0.34/0.52                ( ( k10_relat_1 @ B @ ( k1_tarski @ C ) ) = ( k1_xboole_0 ) ) ) ) ) =>
% 0.34/0.52         ( r1_tarski @ A @ ( k2_relat_1 @ B ) ) ) ))).
% 0.34/0.52  thf(zf_stmt_0, negated_conjecture,
% 0.34/0.52    (~( ![A:$i,B:$i]:
% 0.34/0.52        ( ( v1_relat_1 @ B ) =>
% 0.34/0.52          ( ( ![C:$i]:
% 0.34/0.52              ( ~( ( r2_hidden @ C @ A ) & 
% 0.34/0.52                   ( ( k10_relat_1 @ B @ ( k1_tarski @ C ) ) = ( k1_xboole_0 ) ) ) ) ) =>
% 0.34/0.52            ( r1_tarski @ A @ ( k2_relat_1 @ B ) ) ) ) )),
% 0.34/0.52    inference('cnf.neg', [status(esa)], [t143_funct_1])).
% 0.34/0.52  thf('0', plain, (~ (r1_tarski @ sk_A @ (k2_relat_1 @ sk_B))),
% 0.34/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.34/0.52  thf(d3_tarski, axiom,
% 0.34/0.52    (![A:$i,B:$i]:
% 0.34/0.52     ( ( r1_tarski @ A @ B ) <=>
% 0.34/0.52       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.34/0.52  thf('1', plain,
% 0.34/0.52      (![X1 : $i, X3 : $i]:
% 0.34/0.52         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.34/0.52      inference('cnf', [status(esa)], [d3_tarski])).
% 0.34/0.52  thf(l27_zfmisc_1, axiom,
% 0.34/0.52    (![A:$i,B:$i]:
% 0.34/0.52     ( ( ~( r2_hidden @ A @ B ) ) => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ))).
% 0.34/0.52  thf('2', plain,
% 0.34/0.52      (![X19 : $i, X20 : $i]:
% 0.34/0.52         ((r1_xboole_0 @ (k1_tarski @ X19) @ X20) | (r2_hidden @ X19 @ X20))),
% 0.34/0.52      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 0.34/0.52  thf(d7_xboole_0, axiom,
% 0.34/0.52    (![A:$i,B:$i]:
% 0.34/0.52     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.34/0.52       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.34/0.52  thf('3', plain,
% 0.34/0.52      (![X4 : $i, X5 : $i]:
% 0.34/0.52         (((k3_xboole_0 @ X4 @ X5) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X4 @ X5))),
% 0.34/0.52      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.34/0.52  thf('4', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         ((r2_hidden @ X1 @ X0)
% 0.34/0.52          | ((k3_xboole_0 @ (k1_tarski @ X1) @ X0) = (k1_xboole_0)))),
% 0.34/0.52      inference('sup-', [status(thm)], ['2', '3'])).
% 0.34/0.52  thf(commutativity_k2_tarski, axiom,
% 0.34/0.52    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.34/0.52  thf('5', plain,
% 0.34/0.52      (![X7 : $i, X8 : $i]: ((k2_tarski @ X8 @ X7) = (k2_tarski @ X7 @ X8))),
% 0.34/0.52      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.34/0.52  thf(t12_setfam_1, axiom,
% 0.34/0.52    (![A:$i,B:$i]:
% 0.34/0.52     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.34/0.52  thf('6', plain,
% 0.34/0.52      (![X21 : $i, X22 : $i]:
% 0.34/0.52         ((k1_setfam_1 @ (k2_tarski @ X21 @ X22)) = (k3_xboole_0 @ X21 @ X22))),
% 0.34/0.52      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.34/0.52  thf('7', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         ((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X0 @ X1))),
% 0.34/0.52      inference('sup+', [status(thm)], ['5', '6'])).
% 0.34/0.52  thf('8', plain,
% 0.34/0.52      (![X21 : $i, X22 : $i]:
% 0.34/0.52         ((k1_setfam_1 @ (k2_tarski @ X21 @ X22)) = (k3_xboole_0 @ X21 @ X22))),
% 0.34/0.52      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.34/0.52  thf('9', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.34/0.52      inference('sup+', [status(thm)], ['7', '8'])).
% 0.34/0.52  thf('10', plain,
% 0.34/0.52      (![X4 : $i, X6 : $i]:
% 0.34/0.52         ((r1_xboole_0 @ X4 @ X6) | ((k3_xboole_0 @ X4 @ X6) != (k1_xboole_0)))),
% 0.34/0.52      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.34/0.52  thf('11', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         (((k3_xboole_0 @ X1 @ X0) != (k1_xboole_0)) | (r1_xboole_0 @ X0 @ X1))),
% 0.34/0.52      inference('sup-', [status(thm)], ['9', '10'])).
% 0.34/0.52  thf('12', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         (((k1_xboole_0) != (k1_xboole_0))
% 0.34/0.52          | (r2_hidden @ X1 @ X0)
% 0.34/0.52          | (r1_xboole_0 @ X0 @ (k1_tarski @ X1)))),
% 0.34/0.52      inference('sup-', [status(thm)], ['4', '11'])).
% 0.34/0.52  thf('13', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         ((r1_xboole_0 @ X0 @ (k1_tarski @ X1)) | (r2_hidden @ X1 @ X0))),
% 0.34/0.52      inference('simplify', [status(thm)], ['12'])).
% 0.34/0.52  thf(t173_relat_1, axiom,
% 0.34/0.52    (![A:$i,B:$i]:
% 0.34/0.52     ( ( v1_relat_1 @ B ) =>
% 0.34/0.52       ( ( ( k10_relat_1 @ B @ A ) = ( k1_xboole_0 ) ) <=>
% 0.34/0.52         ( r1_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.34/0.52  thf('14', plain,
% 0.34/0.52      (![X23 : $i, X24 : $i]:
% 0.34/0.52         (~ (r1_xboole_0 @ (k2_relat_1 @ X23) @ X24)
% 0.34/0.52          | ((k10_relat_1 @ X23 @ X24) = (k1_xboole_0))
% 0.34/0.52          | ~ (v1_relat_1 @ X23))),
% 0.34/0.52      inference('cnf', [status(esa)], [t173_relat_1])).
% 0.34/0.52  thf('15', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         ((r2_hidden @ X0 @ (k2_relat_1 @ X1))
% 0.34/0.52          | ~ (v1_relat_1 @ X1)
% 0.34/0.52          | ((k10_relat_1 @ X1 @ (k1_tarski @ X0)) = (k1_xboole_0)))),
% 0.34/0.52      inference('sup-', [status(thm)], ['13', '14'])).
% 0.34/0.52  thf('16', plain,
% 0.34/0.52      (![X1 : $i, X3 : $i]:
% 0.34/0.52         ((r1_tarski @ X1 @ X3) | ~ (r2_hidden @ (sk_C @ X3 @ X1) @ X3))),
% 0.34/0.52      inference('cnf', [status(esa)], [d3_tarski])).
% 0.34/0.52  thf('17', plain,
% 0.34/0.52      (![X0 : $i, X1 : $i]:
% 0.34/0.52         (((k10_relat_1 @ X0 @ (k1_tarski @ (sk_C @ (k2_relat_1 @ X0) @ X1)))
% 0.34/0.52            = (k1_xboole_0))
% 0.34/0.52          | ~ (v1_relat_1 @ X0)
% 0.34/0.52          | (r1_tarski @ X1 @ (k2_relat_1 @ X0)))),
% 0.34/0.52      inference('sup-', [status(thm)], ['15', '16'])).
% 0.34/0.52  thf('18', plain,
% 0.34/0.52      (![X25 : $i]:
% 0.34/0.52         (~ (r2_hidden @ X25 @ sk_A)
% 0.34/0.52          | ((k10_relat_1 @ sk_B @ (k1_tarski @ X25)) != (k1_xboole_0)))),
% 0.34/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.34/0.52  thf('19', plain,
% 0.34/0.52      (![X0 : $i]:
% 0.34/0.52         (((k1_xboole_0) != (k1_xboole_0))
% 0.34/0.52          | (r1_tarski @ X0 @ (k2_relat_1 @ sk_B))
% 0.34/0.52          | ~ (v1_relat_1 @ sk_B)
% 0.34/0.52          | ~ (r2_hidden @ (sk_C @ (k2_relat_1 @ sk_B) @ X0) @ sk_A))),
% 0.34/0.52      inference('sup-', [status(thm)], ['17', '18'])).
% 0.34/0.52  thf('20', plain, ((v1_relat_1 @ sk_B)),
% 0.34/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.34/0.52  thf('21', plain,
% 0.34/0.52      (![X0 : $i]:
% 0.34/0.52         (((k1_xboole_0) != (k1_xboole_0))
% 0.34/0.52          | (r1_tarski @ X0 @ (k2_relat_1 @ sk_B))
% 0.34/0.52          | ~ (r2_hidden @ (sk_C @ (k2_relat_1 @ sk_B) @ X0) @ sk_A))),
% 0.34/0.52      inference('demod', [status(thm)], ['19', '20'])).
% 0.34/0.52  thf('22', plain,
% 0.34/0.52      (![X0 : $i]:
% 0.34/0.52         (~ (r2_hidden @ (sk_C @ (k2_relat_1 @ sk_B) @ X0) @ sk_A)
% 0.34/0.52          | (r1_tarski @ X0 @ (k2_relat_1 @ sk_B)))),
% 0.34/0.52      inference('simplify', [status(thm)], ['21'])).
% 0.34/0.52  thf('23', plain,
% 0.34/0.52      (((r1_tarski @ sk_A @ (k2_relat_1 @ sk_B))
% 0.34/0.52        | (r1_tarski @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.34/0.52      inference('sup-', [status(thm)], ['1', '22'])).
% 0.34/0.52  thf('24', plain, ((r1_tarski @ sk_A @ (k2_relat_1 @ sk_B))),
% 0.34/0.52      inference('simplify', [status(thm)], ['23'])).
% 0.34/0.52  thf('25', plain, ($false), inference('demod', [status(thm)], ['0', '24'])).
% 0.34/0.52  
% 0.34/0.52  % SZS output end Refutation
% 0.34/0.52  
% 0.34/0.53  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
