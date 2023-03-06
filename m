Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC316AC4CF
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Mar 2023 16:27:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pZCkB-0001r0-OL;
	Mon, 06 Mar 2023 15:27:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wei.liu.linux@gmail.com>) id 1pZCkA-0001qq-G8
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Mar 2023 15:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WjzbTdN7CLD76LwUYgSQFGlrkv+uCLMJlqFIMmRORpA=; b=bNeGhbIElqw+mKOFkF3WmZLTqV
 mSIubuLfAEo/ImpM3WUiq10nOjS2dLHoNOmNkHUTmsb/KzLO4j4Xgaag/YMr2xPYdLKZeoIil662y
 KmcXNml7y6SPYl2NgfyC0skh20o8hhnwnxPhYwF8t8OAQqP+zRrh2pILZN1eOhkeau0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WjzbTdN7CLD76LwUYgSQFGlrkv+uCLMJlqFIMmRORpA=; b=GduNZD9LZxPwGdltBfLRUbuVsh
 iJJrisYPn0D7ujlwoCCYaUqTgG9sAG6pioP3PNlDU4oCYIOHghF9O3hyNcCU4r+/5jnl+nfbAKkjc
 KMVMC5RTUbKL3TMyJc0thDZLNLTda9OofQUQuQhm1m5VfrQeMj46UA/nU3tgA5riukaU=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pZCk7-0005A8-3h for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Mar 2023 15:27:16 +0000
Received: by mail-wr1-f44.google.com with SMTP id bx12so9201085wrb.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 06 Mar 2023 07:27:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678116429;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WjzbTdN7CLD76LwUYgSQFGlrkv+uCLMJlqFIMmRORpA=;
 b=G3AY9UI3yPBohMuHQ+pdY/770DR2UGfljozZqHtGhrEcIduDQKsUCKlPrALdmFrRfb
 0+cg/fNJx4mc4OCIC5TlU1mZyZk34w15Kx/bhVBZTBOjQrrZMtpW2EliN8e80rICXOzv
 v3Gpx5f3R0B/x3Cblak2OQUTr27+tztv1seIiZ84x3Yw+X85aaEzOXXAfKP+XyMYVCY9
 eZUrMS9Ke4fX6ryZVYo81K/t4+toJaXFJnpttMPrkA1Z2/eKDSAWdOlziiGbiujm00wB
 yuJ5+8EWgRMPITEmb8yzWAdGdITSYHUooYbTjQQxh7X/IZprxEO8kAhhV12Xneljbs4M
 fOpQ==
X-Gm-Message-State: AO0yUKVcv18GB/YBGHDx1no7jogUP3cqQm8Vd6pR0xWcCEADfbX1k2zD
 f6t1C+vfk9FdDMRPWM38onM=
X-Google-Smtp-Source: AK7set8sLVDUwT8GQGScn0gVSp+FOGcmG6WKTOjmYMNL/6orgxuEwPFL/9jsyQwuVKKF6cXajJRglg==
X-Received: by 2002:adf:eb4b:0:b0:2c6:e744:cf71 with SMTP id
 u11-20020adfeb4b000000b002c6e744cf71mr6185222wrn.52.1678116429360; 
 Mon, 06 Mar 2023 07:27:09 -0800 (PST)
Received: from liuwe-devbox-debian-v2 ([51.145.34.42])
 by smtp.gmail.com with ESMTPSA id
 r1-20020a056000014100b002c5534db60bsm10414947wrx.71.2023.03.06.07.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Mar 2023 07:27:08 -0800 (PST)
Date: Mon, 6 Mar 2023 15:27:03 +0000
From: Wei Liu <wei.liu@kernel.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZAYGR4DFQrjZVpC5@liuwe-devbox-debian-v2>
References: <20230302204612.782387-1-mcgrof@kernel.org>
 <20230302204612.782387-4-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230302204612.782387-4-mcgrof@kernel.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 02, 2023 at 12:46:08PM -0800, Luis Chamberlain
 wrote: > register_sysctl_table() is a deprecated compatibility wrapper. >
 register_sysctl() can do the directory creation for you so just use [...]
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wei.liu.linux[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pZCk7-0005A8-3h
Subject: Re: [Openipmi-developer] [PATCH 3/7] hv: simplify sysctl
 registration
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
Cc: j.granados@samsung.com, linux-hyperv@vger.kernel.org, steve.wahl@hpe.com,
 patches@lists.linux.dev, song@kernel.org, kys@microsoft.com,
 jirislaby@kernel.org, wei.liu@kernel.org, sstabellini@kernel.org,
 arnd@arndb.de, linux-scsi@vger.kernel.org, decui@microsoft.com,
 willy@infradead.org, zhangpeng362@huawei.com, xen-devel@lists.xenproject.org,
 yzaikin@google.com, haiyangz@microsoft.com, keescook@chromium.org,
 minyard@acm.org, mike.travis@hpe.com, jejb@linux.ibm.com,
 apparmor@lists.ubuntu.com, linux-raid@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, nixiaoming@huawei.com,
 jgross@suse.com, martin.petersen@oracle.com, sujiaxun@uniontech.com,
 gregkh@linuxfoundation.org, robinmholt@gmail.com, linux-kernel@vger.kernel.org,
 oleksandr_tyshchenko@epam.com, ebiederm@xmission.com, tangmeng@uniontech.com,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 02, 2023 at 12:46:08PM -0800, Luis Chamberlain wrote:
> register_sysctl_table() is a deprecated compatibility wrapper.
> register_sysctl() can do the directory creation for you so just use
> that.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Reviewed-by: Wei Liu <wei.liu@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
