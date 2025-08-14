Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A60B27F74
	for <lists+openipmi-developer@lfdr.de>; Fri, 15 Aug 2025 13:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:In-Reply-To:References:MIME-Version:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uc0ZMWSFkEpzOk5g8VLILIDsSAcWvcaSVqC05ltbSes=; b=dEgQGU8/lGXT66+tgdEh0W2ehY
	HvRC8sy6vRyiUdEZwckNZ/I/t9gDCgqhjsGLaCGNhPYkknJwoKcA0wD6X/Ytev3L0/MQc4eDFUOSB
	BIXjpPZLD+UwSxwE8Hwm6SaVjSUQmOgGSDYh5+MTgCmAj5RFMAGG0DivAwX0UHtaj/1A=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1umsqw-0003HG-2G;
	Fri, 15 Aug 2025 11:44:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mbannister@janestreet.com>) id 1umbfy-0004qK-8a
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 17:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B6k5YW3wI5fz8soXIbkhJLS+in+S/9gVa5s34SC5GFA=; b=aqBQuX0AFtQloyC9UiK/fxYPzy
 MycqngOfupOSbF5R6bGKkuCbhGQ3xWu+ii0ree2NHwuBzUCd0N9JIhUifq6q/xtJtWcCS6i+uPNT+
 F6ZXpHP9kR1pMEaAb6n/EiSF6k5YZgzaKEY7rZ7gmhpHFG2hM6UzEvFEMBMS3PXlOjiw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B6k5YW3wI5fz8soXIbkhJLS+in+S/9gVa5s34SC5GFA=; b=RxFuOzvNedWN7Bm5LuO+sPWE3S
 g0eSjYjBZEgfgJr+HTSJQFzEd7w/yQMIkatG8XEatUL4tbejicUOxggrhSFGMv8pPQNb2OFvLJqSs
 ujrdhs+hgqQhPRnz8J1iAJRGxgs20LnaWeBKiQwcpd9bh2IYa0MsaxIZ8ewetmXLnVX4=;
Received: from mxout5.mail.janestreet.com ([64.215.233.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1umbfx-00009D-Nf for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 17:23:42 +0000
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by mxgoog2.mail.janestreet.com with esmtps (TLS1.3:TLS_AES_128_GCM_SHA256:128)
 (Exim 4.98.2) id 1umbfs-00000000HLy-11yy
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 13:23:36 -0400
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3e5700c0d70so12801235ab.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 14 Aug 2025 10:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=janestreet.com; s=google; t=1755192215; x=1755797015;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=B6k5YW3wI5fz8soXIbkhJLS+in+S/9gVa5s34SC5GFA=;
 b=J9Xt5lixV80e3stuMjb528KMfxkaBKtCVEudj9NZGK5ynlIA9VEc2gH3f2euHQX5OI
 GRsMujDxbrVRVExrLPY8+o4+Ux1pWF2kSY5ikMgATqw3C742g1HEAy2ZSZ4xtsA5abAh
 MhL6vBCQEOhxaKuC/RV/6BYFhcoirl059NhVw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=janestreet.com;
 s=waixah; t=1755192216;
 bh=B6k5YW3wI5fz8soXIbkhJLS+in+S/9gVa5s34SC5GFA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc;
 b=VQiCpaOZ/86Wfmn8xRJSdomEVseBs7Xk1UK4UzWMMdZaGJq6GK7/Hke6J0Wa4mTga
 /gz+V+fQnX/aZpBumjJokzjsM4jcZWQ9F1M/yKbqfVQWvrIrA5gS2hKxsVYL/e+Wj6
 O3iRvIBya2ic+BTe5O+cTDAh52E8LlH8IqYqPIfW8qUsz9Ro4CbgIb6eFqIjCtCZaE
 V6dH9CgAjVsTti0pdmCZIWtTYrQDXkDPxu5+KJn05SfgKhYsoGBsfaKe0fphBCK3zu
 gMz2zkLU7nPurZ6aPvtcV+RqTSLcSgGYDtGnqjal35DEo/ZjGmOm1tisdNWwszIlnq
 9xvmv9ySyQWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755192215; x=1755797015;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B6k5YW3wI5fz8soXIbkhJLS+in+S/9gVa5s34SC5GFA=;
 b=cYBE8zTAtaSlo6OyqvpX7j1Fpo9MVk8icvOK1u+L+p+NEAESeBOlGOKmpacpjF3sP6
 ZgFd0yVKzSbj5AZxWJkfT1EdR2WTXx/UEnMo7IthYG9He/VAL6gwwBKc1ooDJ8RnxHKq
 jXB7oaAjawW1TPU94BdCIzuJpJdy4CfiJKWGOcVoUKL/HSbpPxQOf9Iu21kb7W32LQHA
 rcKKRUI7hwguye2/324CkxDpOI6uzxdSoR5klQdwltlLg4qsF8e/PF406fvq056ciRLF
 bxmc76dcePIMcyuAXU6Y+mnkrGgrikNgMkwN6S2S09/l1UwaOUomCaLNUjZW3sqbjGi0
 G7dw==
X-Gm-Message-State: AOJu0YxCSHN7Ceid42JsK8WFVd7brvvkmRBcMHTUwtbzMkf9f3+xheVR
 lA3QePFlTN4YZXoti/cfYeJFzu1phfNFquUADDLldZ7bpoJVUmE7akm9OYvs30iLE8YovHn6g/w
 CnjILXkxcYNdNIu98zH+iphwSm/GVemwLk3Wchd+2KlWg+wc24VMAXlReVcM/dYJJ3lRqidxFPo
 sSa/lJcu+l1AWRrz93WE5CiZ4WpUHBAP611agiPBpK29ELRbGYfYLfAwES1hW1jJb5Dw==
X-Gm-Gg: ASbGncut50ijt6Rhl3XCt1jSHGLpIAUyAgbOplfDhNDL4FkKmH4ScOolcAX+oEyFvV+
 UjCMcEfG6pAAThecEUTr2JDLRyxeFVKG8GqP27HtUgohFb/1wkVQkVI/JbtAqvLBQ2WWt0e1PVU
 tEFfOM+a1vjU3DipW2bs9I
X-Received: by 2002:a05:6e02:3807:b0:3e5:42ec:1357 with SMTP id
 e9e14a558f8ab-3e5707d312fmr70299925ab.4.1755192215308; 
 Thu, 14 Aug 2025 10:23:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnZw/dxJM0cN2TOzkNNcicPH0gN8uFa7jFvrnSt6dqJNS7QVH2KkyGSn+Vl24tXgzhkTatjrcXQ1KluIWP7Bk=
X-Received: by 2002:a05:6e02:3807:b0:3e5:42ec:1357 with SMTP id
 e9e14a558f8ab-3e5707d312fmr70299495ab.4.1755192214870; Thu, 14 Aug 2025
 10:23:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250814135419.616256-1-corey@minyard.net>
 <CABpvmx_FO+MSJahsNRrv2KBfnb-Rib9FZa2f0w05MvZuwDhYOw@mail.gmail.com>
In-Reply-To: <CABpvmx_FO+MSJahsNRrv2KBfnb-Rib9FZa2f0w05MvZuwDhYOw@mail.gmail.com>
Date: Thu, 14 Aug 2025 18:23:23 +0100
X-Gm-Features: Ac12FXzSdjT4F-Yy_HmsZTK4S72i3AsW8ZKRtgnjnVikEwsfbZCDXmHuTtfbnUI
Message-ID: <CABpvmx91CoVz8Tcui2j3CUSn=t4fSvCSRbYRWjZWZzSV+we_0w@mail.gmail.com>
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > > Thanks for the bug report and debugging info. I think
 I know what is > > going on, I've attached a patch that should hopefully fix
 it. > > Basically, it looks like the BMC is alive enough that it [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [64.215.233.18 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.215.233.18 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1umbfx-00009D-Nf
X-Mailman-Approved-At: Fri, 15 Aug 2025 11:44:08 +0000
Subject: Re: [Openipmi-developer] [TEST PATCH] ipmi:si: Delay when an error
 is discovered in error recovery
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Mark Bannister via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Mark Bannister <mbannister@janestreet.com>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============5483098540928833201=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============5483098540928833201==
Content-Type: multipart/alternative; boundary="0000000000007af52b063c56880e"

--0000000000007af52b063c56880e
Content-Type: text/plain; charset="UTF-8"

> > Thanks for the bug report and debugging info.  I think I know what is
> > going on, I've attached a patch that should hopefully fix it.
> > Basically, it looks like the BMC is alive enough that it sort of
> > responds to the host, but not alive enough to actually complete a
> > transaction.  The driver needs to not immediately retry in that case, it
> > needs to delay a bit.
> >
> > It passes all my tests, but the situation you are in would be hard to
> > manufacture for me.
> >
> > Can you try this patch?
>
> Thanks for the super quick response, I'll try out this patch and report
back my findings.
>
> Best regards
> Mark

The patch looks good.  Without the patch I was able to reproduce the
problem on kernels 6.6 and 6.12 (but not 6.1) after 5-20 attempts of
running 'ipmitool mc reset cold' every 2 minutes.  With the patch, I have
run it 50 times without incident.  The hosed counter isn't as much of an
indicator as I thought, I saw it in the tens of thousands with and without
the patch, I have also seen it in the hundreds of thousands without the
patch and on other hardware I have seen it reach 5 million in one hour
without the patch (but also without incident).

We will incorporate your patch into our builds so that we avoid hitting
this problem in production again.

Best regards
Mark

--0000000000007af52b063c56880e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; &gt; Thanks for the bug report and debugging info.=C2=
=A0 I think I know what is<br>&gt;=C2=A0&gt;=C2=A0going on, I&#39;ve attach=
ed a patch that should hopefully fix it.<br>&gt; &gt;=C2=A0Basically, it lo=
oks like the BMC is alive enough that it sort of<br>&gt;=C2=A0&gt;=C2=A0res=
ponds to the host, but not alive enough to actually complete a<br>&gt;=C2=
=A0&gt;=C2=A0transaction.=C2=A0 The driver needs to not immediately retry i=
n that case, it<br>&gt;=C2=A0&gt;=C2=A0needs to delay a bit.<br>&gt;=C2=A0&=
gt;=C2=A0<br>&gt;=C2=A0&gt;=C2=A0It passes all my tests, but the situation =
you are in would be hard to<br>&gt;=C2=A0&gt;=C2=A0manufacture for me.<br>&=
gt;=C2=A0&gt;=C2=A0<br>&gt;=C2=A0&gt;=C2=A0Can you try this patch?<div>&gt;=
=C2=A0</div><div>&gt; Thanks for the super quick response, I&#39;ll try out=
 this patch and report back my findings.</div><div>&gt;=C2=A0</div><div>&gt=
; Best regards<br>&gt;=C2=A0Mark</div><div><br></div><div>The patch looks g=
ood.=C2=A0 Without the patch I was able to reproduce the problem on kernels=
 6.6 and 6.12 (but not 6.1) after 5-20 attempts of running &#39;ipmitool mc=
 reset cold&#39; every 2 minutes.=C2=A0 With the patch, I have run it 50 ti=
mes without incident.=C2=A0 The hosed counter isn&#39;t as much of an indic=
ator as I thought, I saw it in the tens of thousands with and without the p=
atch, I have also seen it in the hundreds of thousands without the patch an=
d on other hardware I have seen it reach 5 million in one hour without the =
patch (but also without incident).</div><div><br></div><div>We will incorpo=
rate your patch into our builds so that we avoid hitting this problem in pr=
oduction again.</div><div><br></div><div>Best regards</div><div>Mark</div><=
/div>

--0000000000007af52b063c56880e--


--===============5483098540928833201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5483098540928833201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5483098540928833201==--

