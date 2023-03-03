Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 306C36A9FA4
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Mar 2023 19:55:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pYAYR-00042O-5j;
	Fri, 03 Mar 2023 18:54:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1pY9xv-0004Cx-5N
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Mar 2023 18:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z9o+Fj7F9hEekeJkNgNCjr/Inru7KzeAHF1ZoYV9Iio=; b=KYvZR3QpBxHvrzV9BZz+mogjS+
 90Z/byixytxAnTwK92ksIe1kEGTgNTAIocNMOFCE/L31v/gjWA0uOOy//YkRBsxztxCOV5MBXi3Bq
 0Akw7DFJEUpbljYls0dTXUrdXTYWEDiXWS0+1roo1ri+JBKZgJzqvH44mhHw/5ZV8lGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z9o+Fj7F9hEekeJkNgNCjr/Inru7KzeAHF1ZoYV9Iio=; b=VAleL4W5VfoRQQHhfFdYpSgyu0
 J2cZBbjGEpeUO6bWqi3ogi1iHmFwOBuWYVLP77PMPY+JaqEbqv9mr/EuMOnpznp3dKVA267c5/8lK
 vdssuLCWohWbD0ATcIm9WrSkrKEiGPfZP4tN5HR9KpNw3Z6EYT58WPFaluLLaL0xA1Lw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pY9xt-0008R8-5D for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Mar 2023 18:17:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 89599618D3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri,  3 Mar 2023 18:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58327C4339B
 for <openipmi-developer@lists.sourceforge.net>;
 Fri,  3 Mar 2023 18:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1677867424;
 bh=z9o+Fj7F9hEekeJkNgNCjr/Inru7KzeAHF1ZoYV9Iio=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=q5qfBhY9iCWtlaLxLeTmsQNk+zZgPKuSN1vP9+lXy9wtJQXElNCbzgno1bGwsBdp6
 txLh/hO3LVI43E4dxhnGuvmtPRTW2DrbnxUTgG/GHWDkHkVewGG/+zubVDWfllEgnS
 iTsB/lcmDOnObMBCN993OT8k4WipLERBXc1j1t/iFPPUkH0snFWYJ5UJGwN18UYuMz
 gRdWeXhpkE/w51KmTIU5Cu3M+EONG1PuF439+095Db1oSqd3DiP1B86yB7zA77FprW
 e4A8yQOC3nF8FXo8tWlOZlfHq4gG1sSeoRY79pbWFLPHr6w2RvXPKlQPzmetP972gL
 s4GlFmjsVXQsA==
Received: by mail-ed1-f42.google.com with SMTP id u9so13877625edd.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Mar 2023 10:17:04 -0800 (PST)
X-Gm-Message-State: AO0yUKV9eBY6tALT2kFTR/fJWbGnYh7mmyNo5dxoH1QK7GI9HsrJx42u
 s0XTHX35LUqJJmjfibwU+5RUMeD04v2RAyeIxXw=
X-Google-Smtp-Source: AK7set8+TKohTy6ON4qynrd6qM7FwtWsRtV8zfmEmFF5syO7UhwA/Y8VS4hyO7ZdSGW9G+CTTREWUsKalOtJ4y3BnUw=
X-Received: by 2002:a05:6512:3c83:b0:4d8:86c2:75ea with SMTP id
 h3-20020a0565123c8300b004d886c275eamr3273736lfv.3.1677867401669; Fri, 03 Mar
 2023 10:16:41 -0800 (PST)
MIME-Version: 1.0
References: <20230302204612.782387-1-mcgrof@kernel.org>
 <20230302204612.782387-5-mcgrof@kernel.org>
In-Reply-To: <20230302204612.782387-5-mcgrof@kernel.org>
From: Song Liu <song@kernel.org>
Date: Fri, 3 Mar 2023 10:16:29 -0800
X-Gmail-Original-Message-ID: <CAPhsuW4k1hpLDWcQGCtEeR6LEgSboTY+tqbiPp+30_2T+rFezw@mail.gmail.com>
Message-ID: <CAPhsuW4k1hpLDWcQGCtEeR6LEgSboTY+tqbiPp+30_2T+rFezw@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 2,
 2023 at 12:46 PM Luis Chamberlain <mcgrof@kernel.org>
 wrote: > > register_sysctl_table() is a deprecated compatibility wrapper.
 > register_sysctl() can do the directory creation for you [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pY9xt-0008R8-5D
X-Mailman-Approved-At: Fri, 03 Mar 2023 18:54:53 +0000
Subject: Re: [Openipmi-developer] [PATCH 4/7] md: simplify sysctl
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
 patches@lists.linux.dev, kys@microsoft.com, jirislaby@kernel.org,
 wei.liu@kernel.org, sstabellini@kernel.org, arnd@arndb.de,
 linux-scsi@vger.kernel.org, decui@microsoft.com, willy@infradead.org,
 zhangpeng362@huawei.com, xen-devel@lists.xenproject.org, yzaikin@google.com,
 haiyangz@microsoft.com, keescook@chromium.org, minyard@acm.org,
 mike.travis@hpe.com, jejb@linux.ibm.com, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 nixiaoming@huawei.com, jgross@suse.com, martin.petersen@oracle.com,
 sujiaxun@uniontech.com, gregkh@linuxfoundation.org, robinmholt@gmail.com,
 linux-kernel@vger.kernel.org, oleksandr_tyshchenko@epam.com,
 ebiederm@xmission.com, tangmeng@uniontech.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 2, 2023 at 12:46 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> register_sysctl_table() is a deprecated compatibility wrapper.
> register_sysctl() can do the directory creation for you so just use
> that.
>
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Acked-by: Song Liu <song@kernel.org>

Thanks!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
