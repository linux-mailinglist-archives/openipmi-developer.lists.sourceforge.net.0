Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 450A861DE8F
	for <lists+openipmi-developer@lfdr.de>; Sat,  5 Nov 2022 22:20:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1orQan-0002Lj-4r;
	Sat, 05 Nov 2022 21:20:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1orQal-0002Lc-Oi
 for openipmi-developer@lists.sourceforge.net;
 Sat, 05 Nov 2022 21:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=; b=Lq9k2gieHSxXQkC6X3VlkoNkWU
 iOuTFGkhyJB51MXjtzhwaIamHtRortzeZ1GS4jWP+R1kH72JxSadKongYIvRG/Jwg9Usq9Xh/SIRe
 bnrlWzyBPzLQyTW5fY4sma32C52gOPdwpQYlDzKP1fE6UxCnFQtSE9+SQdHzXo65+jDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=; b=PQPHjxiRnQCaT9NzEIo0rzneqc
 cgtCW53q0ir4UpP+P/5K+ykWamAO11Z3WVpnlaLFassIKB+BVW2/dgnZxP2jEeCNycZCwVpHCwumx
 vb8H5CVp3KlErNmoyt/UWCgEZ85qMIu+KAiY562ZhB7aSFK0+nNMPoBzT593QCtqrNW8=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orQak-00DX4n-0O for openipmi-developer@lists.sourceforge.net;
 Sat, 05 Nov 2022 21:20:39 +0000
Received: by mail-qk1-f171.google.com with SMTP id k4so5270940qkj.8
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 05 Nov 2022 14:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=;
 b=ZuJIeLB+J2B+Wi1b1yHoLdNdJG615BQeh3CPU6LD93y3msmDVTjWdZW9SDWuwWG0Ca
 YhJ+P7666j6kD5Xt3qGOHQOk6MqT4dr6x8NEoIAvnzfrmsju0oEob+uN+nSjB06pGmVE
 9YOPL0fQ+TfTab0XaBhkdWiy9kYH1H39RsusA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=;
 b=ncIUKfYJ8a/5kiSvEAPCz89+Auq+xmh1OXbpWnleZpp0jQxTKVo8dfa7DFhnaEtuEI
 KE7McAPGn8aWBw8b+3LvSN2R+GFGI36Z3uJ6I6TBX3cgBSaXWZZ3rrvgOauDJ+UgCNW3
 F2LDOVTu/62AB2bWFZz1f74l9yer7QO/ZKRbT1u+sauTlT4vYILAElwFBv8iPjvZgFjM
 SUkc0E/fqNT6U1LFO2KPlwgcgA1JJbqaG9DeCXYxylHCUcgVHH1yUKLzRY2fLwt9BBdE
 glB/uxTTbeP/RoXw0zquWs2H6/YpSdCBUE5k7EeUgZmXY8Cj2XYfsLF/F8s9jMsdzM/c
 zWXA==
X-Gm-Message-State: ACrzQf2YYAlxaOd5pM4UvYb95E6z4dn5wnUf0VZi/aM9tatJkagGrzsD
 qb5VtJj97Wk2zYTEDDjQx6u0PbxKQU79kw==
X-Google-Smtp-Source: AMsMyM5muavQ1YRYWjr9jhfBSUIsuPdbZK5zRNDgFVZEk6i/F8CUIoSYlT32my1Wwp9lt3YdC6JdEg==
X-Received: by 2002:a05:620a:448d:b0:6cf:2a95:a10c with SMTP id
 x13-20020a05620a448d00b006cf2a95a10cmr31157296qkp.526.1667683232011; 
 Sat, 05 Nov 2022 14:20:32 -0700 (PDT)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com.
 [209.85.128.173]) by smtp.gmail.com with ESMTPSA id
 m19-20020a05620a24d300b006ee8874f5fasm2819497qkn.53.2022.11.05.14.20.31
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Nov 2022 14:20:31 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-368edbc2c18so72610027b3.13
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 05 Nov 2022 14:20:31 -0700 (PDT)
X-Received: by 2002:a05:6902:1352:b0:6bb:3f4b:9666 with SMTP id
 g18-20020a056902135200b006bb3f4b9666mr38314227ybu.101.1667682810745; Sat, 05
 Nov 2022 14:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home> <Y2bPlllkHo5DUmLY@zx2c4.com>
In-Reply-To: <Y2bPlllkHo5DUmLY@zx2c4.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 14:13:14 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
Message-ID: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 5,
 2022 at 2:03 PM Jason A. Donenfeld <Jason@zx2c4.com>
 wrote: > > Something that might help here is changing the `...` into > `...
 when exists` or into `... when != ptr` or similar. I actually tried that.
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
X-Headers-End: 1orQak-00DX4n-0O
Subject: Re: [Openipmi-developer] [PATCH v4a 00/38] timers: Use
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
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-s390@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Nov 5, 2022 at 2:03 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Something that might help here is changing the `...` into
> `... when exists` or into `... when != ptr` or similar.

I actually tried that.

You don't want "when exists", you'd want "when forall", but that seems
to be the default.

And trying "when != ptr->timer" actually does the right thing in that
it gets rid of the case where the timer is modified outside of the
del_timer() case, *but* it also causes odd other changes to the
output.

Look at what it generates for that

   drivers/media/usb/pvrusb2/pvrusb2-hdw.c

file, which finds a lot of triggers with the "when !=  ptr->timer",
but only does one without it.

So I gave up, just because I clearly don't understand the rules.

(Comparing output is also fun because the ordering of the patches is
random, so consecutive runs with the same rule will give different
patches. I assume that it's just because it's done in parallel, but it
doesn't help the "try to see what changes when you change the script"
;)

                 Linus


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
