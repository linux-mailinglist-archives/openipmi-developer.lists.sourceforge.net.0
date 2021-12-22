Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5618947D65A
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Dec 2021 19:14:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n068b-0007xw-5g; Wed, 22 Dec 2021 18:14:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1n068Z-0007xp-Ti
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 18:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ScR+h8VxB37NfMoT2O7P+LO0E7Y+1klzOjqDJpdvCio=; b=mu/Qkbl6S+Z9o56COnKQDBYre2
 QPwxnrUTM1sggSUtiG+60/jFhgg628kygh0m11/TleglNqTLbU83hNc+VmI4bMHPZvPRxcgfFzH7l
 2tvna01HiiaStq76Lm1VPhmnnuaHjRtNxYULTWhCW/imZmiMWSjYsMLCRsxmBy+MFamg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ScR+h8VxB37NfMoT2O7P+LO0E7Y+1klzOjqDJpdvCio=; b=jspGaeRe93T/+hQKiA9Li8y4fy
 6yDmTv3leJMKkg8Tp4X23lzxPnMnwW2rniOLU+A4PZ2wSBeSPkBaNGNGoUk3liQUfQESTAQ9iK8oq
 JgaNW5FNakyQBP8vCeH7Fz2K//S6vltl2YARM1NLU38Gx8npa52OdlenA7vwV/Wj6FV4=;
Received: from mail-ed1-f45.google.com ([209.85.208.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n068U-006VT4-Ml
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 18:14:52 +0000
Received: by mail-ed1-f45.google.com with SMTP id b13so11860561edd.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Dec 2021 10:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ScR+h8VxB37NfMoT2O7P+LO0E7Y+1klzOjqDJpdvCio=;
 b=GHajjSqYwzDUScknLHhC2cSvbd2WjJYXmG/OgyzSUwS4BwOkEGVLtK0RQ2+JghWIUB
 Hd0WgknEY0Bm52oilAhwU1h6KAbovXoc0XIAIytMGOU+HQI6D528g8f8mgzu6hJZODBF
 GK1MTi3tY3qi7v2soGoo1R7yPbIfqKXwv6FV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ScR+h8VxB37NfMoT2O7P+LO0E7Y+1klzOjqDJpdvCio=;
 b=wcp5FhMGTXgX1GTshnzEBNsjrBiEnmGqbHlY70Oy2KrcsmI80RXf32ksYOF/XJvgMv
 aJ7W4hciXxD9z4NPJ+YQWBmu7XXyKwi+1E2JuQ5exSrfGpgjFjzQeI/1WnaLv+A7KaJz
 sYgSNivPeyOsniW2jL8I+nXByy3c4solO425FTgCr8jnrjb0Won1RGVy7Jp0DOQNzaDK
 0lZB1Ep/nwwXOVQQPBEINo4kKPcq76R34ecK6YCuqF8ovD1Cmg42M0txFTAkORI4Bj4q
 lUm9cwSqNAIU6c08JahiHsmWAA0HtNso61lPU9ONLtDFR4thcy6j4HVL/Ufpoaqn9qS8
 gIsA==
X-Gm-Message-State: AOAM531NbCk2fWWvA1FIfBdN8/oRvH7sGqCNbRzqpScqTFUpUVzNADnV
 gX32vUCTYyu+CfMYSXnUdWFagDpo/wnvD928CJ0=
X-Google-Smtp-Source: ABdhPJz27yEgTkDalWIy3Mu2D8+hGDbiTuUkVTu0W14wSQLVRpppyg/fdTSnrYc3dhNhWTm1inbQOw==
X-Received: by 2002:aa7:cc15:: with SMTP id q21mr3969551edt.254.1640196880262; 
 Wed, 22 Dec 2021 10:14:40 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id cq19sm1171238edb.27.2021.12.22.10.14.39
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Dec 2021 10:14:39 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id n14so6318146wra.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Dec 2021 10:14:39 -0800 (PST)
X-Received: by 2002:a5d:6211:: with SMTP id y17mr2891851wru.97.1640196879077; 
 Wed, 22 Dec 2021 10:14:39 -0800 (PST)
MIME-Version: 1.0
References: <20211222141155.GV14936@minyard.net>
In-Reply-To: <20211222141155.GV14936@minyard.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 22 Dec 2021 10:14:23 -0800
X-Gmail-Original-Message-ID: <CAHk-=whBq4Fo+K=2dpRLF03z4crDC6SKvYQ-5f3QTx_QW6grBg@mail.gmail.com>
Message-ID: <CAHk-=whBq4Fo+K=2dpRLF03z4crDC6SKvYQ-5f3QTx_QW6grBg@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 22,
 2021 at 6:12 AM Corey Minyard <minyard@acm.org>
 wrote: > > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-3
 > > for you to fetch changes up to ffb76a86f8096a8206be03b14 [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.45 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n068U-006VT4-Ml
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.16 (3)
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Dec 22, 2021 at 6:12 AM Corey Minyard <minyard@acm.org> wrote:
>
>   https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-3
>
> for you to fetch changes up to ffb76a86f8096a8206be03b14adda6092e18e275:
>
>   ipmi: Fix UAF when uninstall ipmi_si and ipmi_msghandler module (2021-12-21 08:04:42 -0600)

No diffstat, no shortlog?

I've pulled this, but you need to do better.

              Linus


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
