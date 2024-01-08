Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B62C6827074
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Jan 2024 14:58:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rMq9I-0004V1-Fs;
	Mon, 08 Jan 2024 13:58:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rMq9H-0004Uu-Az
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jan 2024 13:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3+Uald3hXpkL6rERFfHLnDIIjZwOssqnYWQuwEAP/E4=; b=fqC8N4Q0tY7+03fFWKw83+s0Ry
 oyImxuMA0HDmZu6v8w9ERPhMNo/2TEB/I6Rr6WJlG5bqxR77YNEQ8py/COQa/05UwHKq1or09iU0R
 dVi1QbdzwWj2MVvrcreK7HnvUiaTz6xegNWyw20YZOWJ6lR3nXohAMMu+b7RGm7tsPh8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3+Uald3hXpkL6rERFfHLnDIIjZwOssqnYWQuwEAP/E4=; b=A
 yDJ26WjrKsJn6QM/d82a29bFKekpPdWzDwK/+zzxloUQDcU9kTd4/EehxtnfwYAxc7UFDmyCF3YUK
 dEwS7pjKGXMIFEicS3tv3mMK87iOE1YsOrIgT0vughgBdojImRxfR/lwjDxiK2TOIiST+U0V0WTBK
 12KV4xkRN7kPRpXE=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rMq9C-0004WO-Dx for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jan 2024 13:58:39 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-6dc20b4595bso1473608a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Jan 2024 05:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704722309; x=1705327109; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=3+Uald3hXpkL6rERFfHLnDIIjZwOssqnYWQuwEAP/E4=;
 b=P/R2aAJ9JQsPSITZ62r6n0nH+dEYv9CBDVc5nlkqFVqQ/ZaryYAK5G5w8JypBcyM4p
 QnrxS7EOz1PkMY5X8EiKNemnbQgDLiRlc3886ZxUGg9YmBYmQLJR4WFIiWp07yWafb5T
 txIyj8Rnd0LbrlyBEylQx8D2TE7mMQZ+y0LWugnmGq744AyfhHOxoGDjk26c40fnaeBG
 ckFIFU68VnRa8gUVHg/N41fCegJY7Lrf5eID/Uxxcf5/zKITXoT3m4a2+La8cjkypim3
 ++f6kDlzU6De/USN9MvTauG1KsP0WhPCFJp4pT5Qs+b115nj/5CQuOoDoD9kSstPf1en
 BthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704722309; x=1705327109;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3+Uald3hXpkL6rERFfHLnDIIjZwOssqnYWQuwEAP/E4=;
 b=qxRIKTlvjVwDOtGSshOcgHOH6Cd7N8rqWBBfOfo7nJP9kjgXQ2Xbs1hv3fzgigGYuR
 c1pNMsQghZVQLJJ0GohVCyOP5h68F/FfT6soCOrAIdelGc/Sx47oPigZArakgz951wmw
 /Ag8DpPE0PkzBRJPlHHRMZMZFGWfB6ON3G9uVF4NV+hg/9K0o5PxY4EqykywcOV/xRqz
 L6X4iFOmpXqpJOhRDw8mhwk4mtGOQYJCTzMtwsxzUI5yk7St8C1wRm2V/7SO7oGJQN3E
 pQsXs+MUimiOCUDtl70Ya6ugfHmXYFhUt17q7i2AMIlcuKe4oSG3tnKY86SEPBPJOcbn
 AoRw==
X-Gm-Message-State: AOJu0YzHRhmpliIXVGV0aHpXUJSageVWmSAZ6MH61VF5eC+HTXyK9LCS
 71tHrfCzZ2ku92tPaNV258Vze7L4Cg==
X-Google-Smtp-Source: AGHT+IFWxLsq/+3FcSyAZ71H28oAZdrAlpYXB16Ykt3JZdH0QAxj5J8r97on44B0UEbsnFx0l+XDgg==
X-Received: by 2002:a9d:590a:0:b0:6db:fe20:fc1c with SMTP id
 t10-20020a9d590a000000b006dbfe20fc1cmr2782711oth.63.1704722308724; 
 Mon, 08 Jan 2024 05:58:28 -0800 (PST)
Received: from serve.minyard.net ([47.184.128.73])
 by smtp.gmail.com with ESMTPSA id
 b19-20020a9d5d13000000b006ddbfc37c87sm899909oti.49.2024.01.08.05.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jan 2024 05:58:28 -0800 (PST)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:876e:4000:b2cc:9ba1])
 by serve.minyard.net (Postfix) with ESMTPSA id 60BE41800BF;
 Mon,  8 Jan 2024 13:58:27 +0000 (UTC)
Date: Mon, 8 Jan 2024 07:58:26 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZZv/gs97F3xQwOGQ@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 ceb6a6f023fd3e8b07761ed900352ef574010bcb:
 Linux 6.7-rc6 (2023-12-17 15:19:28 -0800) are available in the Git repository
 at: Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.41 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1rMq9C-0004WO-Dx
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.8
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit ceb6a6f023fd3e8b07761ed900352ef574010bcb:

  Linux 6.7-rc6 (2023-12-17 15:19:28 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.8-1

for you to fetch changes up to 9bd9fbd9032a3b7e9ea916d6e58ba0116e0621be:

  ipmi: Remove usage of the deprecated ida_simple_xx() API (2023-12-19 06:33:45 -0600)

----------------------------------------------------------------
IPMI: Some small fixes

Nothing big, just aligning things with some changes.

----------------------------------------------------------------
Christophe JAILLET (1):
      ipmi: Remove usage of the deprecated ida_simple_xx() API

Emilio Perez (1):
      ipmi: Use regspacings passed as a module parameter

Rob Herring (1):
      ipmi: si: Use device_get_match_data()

 drivers/char/ipmi/ipmi_msghandler.c  |  4 ++--
 drivers/char/ipmi/ipmi_si_hardcode.c |  2 +-
 drivers/char/ipmi/ipmi_si_platform.c | 12 ++++--------
 3 files changed, 7 insertions(+), 11 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
