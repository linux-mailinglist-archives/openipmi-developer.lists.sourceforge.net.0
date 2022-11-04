Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A0461A298
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Nov 2022 21:43:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1or3Wt-0003Xb-RA;
	Fri, 04 Nov 2022 20:43:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1or3Wq-0003XO-E8;
 Fri, 04 Nov 2022 20:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=; b=aUp4y7ZFvWNOdLiHXVXLKQEtsb
 hg+CY2x33eQiG0Ltd5CIEV00J76TkX1J9EQKaVw9cDgicJOKucOUmi2Pi6vJ6luxZiE6j4/lp0e6B
 5LARckjzzxkoHAhayDHgeqHRUsjGgSBMMMORiZRICbsIZw7LJBFmN2IosuRn6nMKNcBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=; b=l53Gg2mwX4LUt5sXVjqJig1Av3
 V7EGKtsWMbG5CApAO4yO+MrWwmTKPhZbZFripRVeqXZEn4WtIGnoYnekLadxqfodL16+ilBfgtrK6
 hNrdd1P/AJaGPq3L33Fq+54bEvwYb9GivfcU+5mXaDpsMngLzyDPVmzhayBlrmdnCuE4=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1or3Wk-0006vk-QN; Fri, 04 Nov 2022 20:43:04 +0000
Received: by mail-oi1-f171.google.com with SMTP id v81so6372551oie.5;
 Fri, 04 Nov 2022 13:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
 b=lSF8e6DLqbKKv+/YhmRhAK/T1efgb2O636TOXNjLfcC0viXP62NhHdxomxLJWtIe7d
 2JndYje5nsRNFlqIXElcBPkKCNEcFme9PlK3C7Q1VMpYaqUkgV/gQHQcIxtcw2fILMZW
 OKJ4E8wSXhLBL3J9S3NnNPs9rdwe6KKkDhBPqcY/XDJgpqSUigUMcqCvapDa55nrN05q
 GmtiLLrP+Y0lcIHCsefgW4EhiR9DSJnDXwmLBbW8A31Y89yswej4P9L3XtJNKO8bMaw7
 4czQwKTd2lx34+qzGmcV/Exm8IIRhuHeavJKESaaJd5m9cQQb9K2fLTxromO6yhuwk2D
 Ci4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
 b=4sXzFwU7fwgM2aczdAwMtw0shA4Az/vARWizaHLCLvFF1NfZUdVMyUVq4sHFRtJVMq
 n4I8S4Y/lgHODyoI67Di4Y7Zwgzjt5vufNKvgrBe/r5nyuV6Riz/0K9RVW07M8vrdn9R
 lR7UT5KB7a0/PBA7dpNKW2lgDz2I9wEVtotfwZo4okhisvme9JnmQnoFnb91xXz6cXzD
 pbh+11fT/mMVNENOswMxpHW7QW64NS67mSzXK2TisF+hiC8OA79LoLVSKkaVwWKo9B8T
 V4826m7uCYRMp1eAhygWYeoIh+RaVtcNojCSgoV1gAuKdu4ebWe3JY2f63nwqfkaV0jC
 nGZQ==
X-Gm-Message-State: ACrzQf0bwxZpPhOz+MWb9oQXFrJ1STTJb5/mEiMuyxNL5eX3IDjXM1n3
 04LqyTrTHxexr680HM51DuA=
X-Google-Smtp-Source: AMsMyM6uhfbCXJb2q3AkwRuMO9Mjf9xHTKiSSXkljdTFDkgQ9gIWK1vZZlSecO9utfeB4MFPxnhffw==
X-Received: by 2002:a54:4587:0:b0:359:c737:b2e8 with SMTP id
 z7-20020a544587000000b00359c737b2e8mr20212921oib.234.1667594573223; 
 Fri, 04 Nov 2022 13:42:53 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 f1-20020a056830204100b006619483182csm162608otp.18.2022.11.04.13.42.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 13:42:52 -0700 (PDT)
Date: Fri, 4 Nov 2022 13:42:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104204251.GB506794@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
 <20221104154355.578ab689@rorschach.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104154355.578ab689@rorschach.local.home>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 04, 2022 at 04:38:34PM -0400,
 Steven Rostedt wrote:
 > On Fri, 4 Nov 2022 15:42:09 -0400 > Steven Rostedt <rostedt@goodmis.org>
 wrote: > [ ... ] > > > drivers/clocksource/timer-fttmr010.c: [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1or3Wk-0006vk-QN
Subject: Re: [Openipmi-developer] [RFC][PATCH v3 00/33] timers: Use
 timer_shutdown*() before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org,
 cgroups@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Nov 04, 2022 at 04:38:34PM -0400, Steven Rostedt wrote:
> On Fri, 4 Nov 2022 15:42:09 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
[ ... ]
> 
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
> 
> I won't touch structure fields though.
> 

Agreed, same here.

Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
