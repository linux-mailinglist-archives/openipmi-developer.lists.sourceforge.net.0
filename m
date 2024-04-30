Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EC68B7B60
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Apr 2024 17:25:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1s1pLn-0003ru-T6;
	Tue, 30 Apr 2024 15:25:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1s1pLm-0003rf-Mz
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Apr 2024 15:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Za8m9PgXEyAXrSi4yjut6H0E5LtPO0zgGXxgGyKSqyA=; b=jYWKKE5xMkM6QvmaeG+EWbVxMW
 9cOiawRJa8fvQlvf7xhY5xYGhsAxOGpryAa4i6COIeEJ1DZoJ0AIMIe03MwB7AqprBqGwxORmcCpD
 uvkb5KIfYQ2lCsevHE9EnD8eyzhfSBo68blAZGcSsDWEHTb3wsY6rIpLX+qubuZbVLo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Za8m9PgXEyAXrSi4yjut6H0E5LtPO0zgGXxgGyKSqyA=; b=P
 RGNrMMnSDp08IBXwm4ambuXJQ6ozvrU2W9t+t4QxfNf9eMOmyoaCidKU1JN36qOV+cHCKhxc84CEC
 fj2rE8k7kepH5RrVg9XgINOOwhK0dXnRUt7WX+XkPGXY7Ftb/doVoaP0Q8eSqeQMbXmLDzZNGWO9Y
 ZeheL9SP5qlJ0dpg=;
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s1pLm-0002WQ-CT for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Apr 2024 15:24:59 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 006d021491bc7-5af23552167so3657500eaf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Apr 2024 08:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714490688; x=1715095488; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=Za8m9PgXEyAXrSi4yjut6H0E5LtPO0zgGXxgGyKSqyA=;
 b=T6fvnBLEgpKWm0TFdiYq1D9DrLnEDN66RfW1tG6Wa0zUldCXZdpL6yUW43BlW2e0F6
 m5pihePuB9cgiQotlnTXSDvJ0FnnTlsr/z4cq0ZS1ao3OEQTzPl38zIVX6jKKExfE8CE
 0m9Uou9UlsxNXS8mtxSh0/61esfHKiqxNPfbg9khtZEBXkwQZiuft0IfelN82ulbNC9e
 o1z/ubGj0oNmIq/XltR4K2DR1T90UQ5bsflayzGA+QvQf/kr1xJRKwmjXgMElUH/Q+fB
 hH49uXW0mpqMUiCJXASZ+vAjKi01Fmi/qE0qe11dLxoG07x7tK/KcB+hGXSub81O3OTx
 +0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714490688; x=1715095488;
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Za8m9PgXEyAXrSi4yjut6H0E5LtPO0zgGXxgGyKSqyA=;
 b=SdQSKvGCIbTf/WY+nqxmguOq8Ba4I607CW8fALVAfOcs3O4Gu17Vy8pctkjK1XtefM
 h2EjoC4uMvmDBamxxBWb20L0p9DFXC2CZT+YQKgWKqAS9KJUrirtfrgjb7jCnY2OkQOK
 FllRl1MaYaH7S+aeFGBSdD6mx2Ps+7yvy5ZFOB2M1wAOA1WPx2vr2zftN6pUd//0BVNo
 9MNEtNyOMqxMik/CR4/44lCbFemG5fLWndG7wrh3hJ63l5LQi6kqskYnnA2Yt8ngKiCe
 Pa9AQesohmtRPvRIO52BTvE1VWWYf+fXncEFmv4mD5r/aE8dXhk0rNC3TAoknaQbWBYk
 mAAw==
X-Gm-Message-State: AOJu0Yxbw1AhI7EPdwtRA8L9XEOMbCVzEsJxj68kjSgj2eUAXTJZ0ipY
 g6DdegyvvR+x7Mti504CRJlednuWaEsmR2+ljK0aaC5Jvo+MLT3uaYKL
X-Google-Smtp-Source: AGHT+IEDuR6qox4CHXu8zJdyJ/3ey1U4lDsfyjVGjLxWTEdPf4GHThyt6fbrbSW013lCvnGXchQ03g==
X-Received: by 2002:a05:6870:1610:b0:23c:f48:1589 with SMTP id
 b16-20020a056870161000b0023c0f481589mr11194309oae.49.1714490688009; 
 Tue, 30 Apr 2024 08:24:48 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 s16-20020a05683004d000b006ebd5eb0f64sm3899749otd.77.2024.04.30.08.24.47
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Apr 2024 08:24:47 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e85e:8722:2ba8:7cb7])
 by serve.minyard.net (Postfix) with ESMTPSA id AE07C180011
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Apr 2024 15:24:46 +0000 (UTC)
Date: Tue, 30 Apr 2024 10:24:45 -0500
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <ZjENPQOEvDLo1SDQ@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I spent some time going analyzing with Coverity and CodeQL
 to clean up a bunch of issues. No functional changes, just bug fixes. You
 should upgrade. -corey 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.161.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1s1pLm-0002WQ-CT
Subject: [Openipmi-developer] OpenIPMI 2.0.35 released
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
From: Corey Minyard via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I spent some time going analyzing with Coverity and CodeQL to clean up a
bunch of issues. No functional changes, just bug fixes. You should
upgrade.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
