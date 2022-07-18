Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E14AC5782C7
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Jul 2022 14:52:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDQEK-0008UH-JB; Mon, 18 Jul 2022 12:52:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oDQEJ-0008UB-KQ
 for openipmi-developer@lists.sourceforge.net; Mon, 18 Jul 2022 12:52:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4uXCnri7wkZqApftIfl++Q32cRWGI8+outdITbrGHc=; b=S+jgr5zlTdXM0bC8uzrjozi/H4
 mnUjbKkxWEb9crTXUSva8u6QM1EGiLLgul4OJd35G4AggLO2ihF26FLtEwtpkxgNRZqL1ew65SRj2
 karFm9PenFovqFE/4r6MkIdIZV+wWL4IUjqq3huk696SNMwUCiSmA1LB7SMTFjMEWvMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q4uXCnri7wkZqApftIfl++Q32cRWGI8+outdITbrGHc=; b=JB5P/otFNhDKBm+yBoPCUgkl9B
 RXFzur/mRSdB/XtgoY9fGpZ9S7RoO1tqAkCfekOUhQ6xx0lIh79+LiVx61X2h9iF/QM95LhyeGEIw
 G7vDxZz/YDDcsp6KSNDpmR2QAb09jMKOibqWuU8FiUhobA659xSQjG4LMWlUyUGuAjNI=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oDQEF-00012L-Ts
 for openipmi-developer@lists.sourceforge.net; Mon, 18 Jul 2022 12:52:07 +0000
Received: by mail-qv1-f42.google.com with SMTP id cw12so8604067qvb.12
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 18 Jul 2022 05:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q4uXCnri7wkZqApftIfl++Q32cRWGI8+outdITbrGHc=;
 b=mfwU1MrXxoUE9k8PRf1ghXzDyHkUuq7wH5bE/Iie7YAGNDnffmXTNlGee4El/zADOu
 HMaXGJvyJ4tN8bAs62/cQCCuQh+PS4OunuuB2EHqlPamTfb5UgqWOdd6xsR4pI0GM9sh
 L+AbQgyT7FLKBR91CL9Oirc5o/jsRWGmkFMbh1xZfekjrM1sVJUtoaxLLSaxs6UqxKVq
 F4jfK19USZ8Pwnu/ZtdI/2Snfw3HByfa8T4ncy7mM2pjSCIQYlVTAZsHWcdEbEYvmmUR
 MD5N/iatkvSBkw+x80i1wtg60ZEQmegYiLYMoT9ft7RE9dKKjc7kHjzN7Ci5IQ3YzeMI
 /vvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Q4uXCnri7wkZqApftIfl++Q32cRWGI8+outdITbrGHc=;
 b=t1uj3IpnMwd3SsJdUOORl1p/vW6yQOWuBWTFocMP6rPl8Af26pbvSv0R6fnUuXMtAw
 IIH0JpQMOipKFnKWhHEY+rWWIdoGdUZlj5cl1oyI2UPON+F2nEWVKbpOfAWWr8DdToY/
 vb7JZkLyur61gSA/QvLsuaBNaagxoWnju0Hr5Df0mlU02e9FiO+OVkweooLIK0rUVx6b
 up6IIMxnw4+1IdJs0ZPEmd4wf3mqkd7qPKrRnm1UkoCGPohQQw31+MC+aAw3czLVm2sJ
 x0r5o1nNJKyabbEvK26UEHOrXxBzs97CpnxXw2WPIKfPwA+EZXADYSpRdbWt7PAlsIF4
 MBJw==
X-Gm-Message-State: AJIora9Slm5QCDSrTmRepioW0jG/Kv8f+6KG0FD1VHxZjpzrCgOUmByG
 17DY6GKuRBdHVNlL2Kq6pA==
X-Google-Smtp-Source: AGRyM1vse5BUOdsqfBrG9qrwaKVpJOQ5Sqbh1uVY6hhCSsFT/ffcNioVZq5UoaiRMiyDIrZlg2oWwA==
X-Received: by 2002:a05:6214:410a:b0:473:38b7:e09c with SMTP id
 kc10-20020a056214410a00b0047338b7e09cmr21024496qvb.26.1658148717955; 
 Mon, 18 Jul 2022 05:51:57 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 y17-20020a05620a25d100b006b46a78bc0fsm10984027qko.118.2022.07.18.05.51.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jul 2022 05:51:57 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:5961:4f8c:df98:38fc])
 by serve.minyard.net (Postfix) with ESMTPSA id 2C0A61800BB;
 Mon, 18 Jul 2022 12:51:56 +0000 (UTC)
Date: Mon, 18 Jul 2022 07:51:55 -0500
From: Corey Minyard <minyard@acm.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Message-ID: <20220718125155.GA40038@minyard.net>
References: <20220717121124.154734-1-tmaimon77@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220717121124.154734-1-tmaimon77@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
 > This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support
 to > KCS NPCM driver. > > The NPCM KCS driver tested on NPCM84 [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oDQEF-00012L-Ts
Subject: Re: [Openipmi-developer] [PATCH v1 0/2] char: ipmi: kcs: add Arbel
 NPCM8XX support
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
Reply-To: minyard@acm.org
Cc: devicetree@vger.kernel.org, benjaminfair@google.com, avifishman70@gmail.com,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, yuenn@google.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, openipmi-developer@lists.sourceforge.net,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
> This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to 
> KCS NPCM driver.
> 
> The NPCM KCS driver tested on NPCM845 evaluation board.

This seems reasonable, I've pulled it into my tree.  If anyone has any
issues with this, please respond.

-corey

> 
> Tomer Maimon (2):
>   dt-bindings: ipmi: Add npcm845 compatible
>   char: ipmi: modify NPCM KCS configuration
> 
>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
>  drivers/char/ipmi/Kconfig                                  | 6 +++---
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> -- 
> 2.33.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
