Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AF49B477
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Aug 2019 18:29:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i1CRo-0006C8-4x; Fri, 23 Aug 2019 16:29:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i1CRn-0006Bz-Be
 for openipmi-developer@lists.sourceforge.net; Fri, 23 Aug 2019 16:29:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F34BcrdxKel8hln0GXTYZG6t0mQg84zx3JyKZCvo2oI=; b=C2/W8zr8DuJSq+uIfDxT/vfPaf
 l1ZEOx/KzGonnpdlCnZdxYr6ywJ7L4ba+5d5hQm8lQoxJ0R8sTIHF80wAZJWCOcubYB/DDpCkIBzQ
 GsgC7EJAwJE2e6KswDeuJWsldZgDkVPbTvr4R1mjXn0NlflOKKYxQfdW69eUkA3iC1/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F34BcrdxKel8hln0GXTYZG6t0mQg84zx3JyKZCvo2oI=; b=D
 weRmnADPaVjEP9v1uXXuOZlaBXfXhovOn9iWQLWiWG0AluAlFaCeGtPaEX/utOX5dqFvZYXj5hn4s
 bVcQ1oDUEIHrSF+sctSBJIeh11ltGCJuVv9XfUzTw+icn+s520NC0ps2bSMGfF5G+0g9LbEb/L5Ir
 S1U6eHkUfrKXMK3M=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i1CRk-00Dh1K-1B
 for openipmi-developer@lists.sourceforge.net; Fri, 23 Aug 2019 16:29:55 +0000
Received: by mail-ot1-f43.google.com with SMTP id o101so9270740ota.8
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 Aug 2019 09:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=F34BcrdxKel8hln0GXTYZG6t0mQg84zx3JyKZCvo2oI=;
 b=aWkXo33Ebepi+pYiFIMQ80GJwL17nl5KNaU/zxEn0z2keFwe+5TnHcfYFh4hB2VXMS
 QhhghW7KJjkaKmrCEYLS/1wuM8pt7FvWZPjs+jXKY7HRt17KLL3JIsLXz8gxCDzLFDq4
 uny8uweS3T+PWC7vt/tNB2CTRPiC5ixRpWyn+pKW4VGVd6bp87OxWQu9l8LivkkXAqiD
 O8T4QdjidyCeiNtgaCUUUfQ/X0wbrWN+XLb4kvEV0XIjm24qsAPW/dnRRxkMWq7XqRu3
 JdFgv0GeSNYJRD2j4kOSdAytjf/k4iHREwsys6KRLMIqfMiyyv+70+2sXYM2fQ9wISil
 g3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :mime-version:content-disposition:user-agent;
 bh=F34BcrdxKel8hln0GXTYZG6t0mQg84zx3JyKZCvo2oI=;
 b=UuWdujsrXDbU8j3yQ+JYzFR21D8xWXpZWZAw9lfH3NXI+F2BY6uG76CmWwhewwLMg5
 b/rxUJJmZCfXkADGyA6oNaF/cpzqBkrXm3U0jhjRgAt494PZ2Ox0cKbR5CpH5nVKSQAR
 2SB+jJLWbqCc6w6bqN2j8zIfH9V1SmFs+o8KMvKit59Ic07LF4nMcD+7ceUfHdTI3/xu
 UFg4Z+nVpU2ubnZ1iGbS+KnFFCdUt1bHfmybhTW7XLwvNdYPnCsAy4A3HF22vyMWcDld
 B3PNnQhPs8O1+qRCC9osaSELZfW+kvrPNB1FNOCdyFff8l6kbLLgwSPXn+M9L/XvZPUZ
 P1QA==
X-Gm-Message-State: APjAAAUvys4M9OTBjMrQUhQWhYapsZDfQWcldP1b6849pUgeWBaXMeKm
 eFIIQPh0HYCAXjqoJUzmllp6lnY=
X-Google-Smtp-Source: APXvYqw8WNSX+asazAH9Y0NIlL/XX3VApQXVERdMkC9qhVvFwhQzD2tS5JJcf+yRF0RWDsozh1bkFg==
X-Received: by 2002:a9d:66c5:: with SMTP id t5mr5097328otm.255.1566577785798; 
 Fri, 23 Aug 2019 09:29:45 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id j19sm1042892otk.46.2019.08.23.09.29.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 09:29:45 -0700 (PDT)
Received: from minyard.net (t430m.minyard.net [192.168.27.3])
 by serve.minyard.net (Postfix) with ESMTPSA id F22C2180039;
 Fri, 23 Aug 2019 16:29:44 +0000 (UTC)
Date: Fri, 23 Aug 2019 11:29:43 -0500
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 LKML <linux-kernel@vger.kernel.org>
Message-ID: <20190823162943.GA26680@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.43 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i1CRk-00Dh1K-1B
Subject: [Openipmi-developer] Removal of IPMI watchdog features
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I am considering moving the IPMI watchdog over to the standard
watchdog framework.  This will require the removal of the feature
that provides a byte of read data when the pretimeout occurs,
since that is not available in the standard framework.

Before I remove this, I thought I would ask: Is anyone using
this feature?  If they are, I'll need to rething what is done.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
