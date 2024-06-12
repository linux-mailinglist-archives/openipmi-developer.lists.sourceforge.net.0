Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 875F4907CE8
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jun 2024 21:50:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sHqSR-0004H2-Qn;
	Thu, 13 Jun 2024 19:50:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1sHFhe-00053M-3U
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Jun 2024 04:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FcgKiRFptA5wGMWvTtSCxIu+CVZgMKx0LwpVaGdU3m0=; b=BMQiqtLnaG78nFMk2QY81MY1et
 TSylu8NMn8ysYiwD1yGZWyEyljDNEA0RTPXGh3VSwGfX9yEtvf3Og7sYwTGdZooHA7/5vbwoOs/QZ
 eI093f/Vjrv/qGa3DPJ5KEecADFTMd9KlkMFkfTxsaBWvEn9IMNo4LWPclYgp1Q/zdUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FcgKiRFptA5wGMWvTtSCxIu+CVZgMKx0LwpVaGdU3m0=; b=L
 iuDqcomTejX9HSb9AS0yRBlWTC5zFJB9DT/SdUzTvLwfFnxVjhtBMu4CURk8VhiVW43mBjyOFaOzY
 BwFtZR0JZVBCEEN2bAOXP+9vQqM7O0nvp9Ig9B3oWl2VcgTueNySo6sLZ1dHUwHZD1VO+WyYuhg20
 PAIyuSkh7KgtapTs=;
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sHFhe-00071E-NR for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Jun 2024 04:35:18 +0000
Received: by mail-oi1-f173.google.com with SMTP id
 5614622812f47-3d22378c59eso1117199b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Jun 2024 21:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718166907; x=1718771707; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FcgKiRFptA5wGMWvTtSCxIu+CVZgMKx0LwpVaGdU3m0=;
 b=j603FGmquAPzqtSonMJSUp3jcbBUnR2Okl3jbsir5HxyZYYxlUvamskeyg5c5ix4mY
 tNGaVxdK6vW5qZBYzzAG+e9aU/+He38UYJhICpFxYkMjTBzBdQUYaxZD8bqMP6PRF2oO
 1UrqywbzU0y5e7+seL72BOxzbiM8pWgz/xnGawOGbQ+9Z9NxzJYjJzlt8YNgYPX5WgmS
 m9Jr8EQ7Vc/C/Ms1xDcRkqxyJF5wnA+EeIISWwdYQJOpGSVbQwohMWcR9Q/ZvzSUSNY9
 7KhdGsRgBPRcBdTncbRjGGmYNGqgBXvq6oSSm7S7jYSm1NSzt0NH8CSsc+J6O4o16izZ
 OTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718166907; x=1718771707;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FcgKiRFptA5wGMWvTtSCxIu+CVZgMKx0LwpVaGdU3m0=;
 b=ruK1I3k2yEHsNfkFpN2hRbAFUzKXxcvA5L+fOadRdCgOVT/NDHByW5FFQSFjw2jsG3
 dGmZwFn1aojyDXrm2mt1qNrTsoLLRm3t8iItTqhao1Ye6Snpn1QU41O0p+4if91Icrcu
 xlMYWR1gwFE/jWnCje2BpBTUXErgLJHc4ZvDpt65Hm5pl8QPM7ijWgBTVP1zFVYf8roc
 ze4GGntLeLijZnZBczXBqY82e8jqB4Y3pErTglP+jJPPD/xcqqMA+9OhLGQWVHRKgt7h
 pbAGqzH57+loCA820S5WGn+Vbeds8cmK26vzevyrHw2kJdXMbuZ9pXkHiUDdInifPwOg
 L+YA==
X-Gm-Message-State: AOJu0YzQdn8efrpRjl9INyIFH5qIsjs8bu2EH43Uxu43+kcCFk8cWRDD
 0csrjX4Tm6LEq1nZJUCAksgrwfFPR1yuilx+7XcslaEMBc3FyivG
X-Google-Smtp-Source: AGHT+IEJDGJTwJnI3MRL/73vf8uDAdbsr6Xop1CeeCIYUnDnzlja3WAixsMCdC76m2jl4wXONrXsWA==
X-Received: by 2002:a05:6808:10d6:b0:3d2:3dba:f5a8 with SMTP id
 5614622812f47-3d23e01b462mr1084539b6e.9.1718166905613; 
 Tue, 11 Jun 2024 21:35:05 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-6de276061e3sm9021275a12.80.2024.06.11.21.35.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jun 2024 21:35:05 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>
Date: Wed, 12 Jun 2024 12:32:53 +0800
Message-Id: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Adding support of skipping ARM SBMR boot progress response, 
 to avoid SSIF state machine problem if host chosse not read back the response.
 Potin Lai (2): bindings: ipmi: Add property for skipping SBMR boot progress
 response ipmi: ssif_bmc: support skipping ARM SBMR bootprogress response 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.173 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.173 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.173 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHFhe-00071E-NR
X-Mailman-Approved-At: Thu, 13 Jun 2024 19:50:00 +0000
Subject: [Openipmi-developer] [PATCH 0/2] ipmi: ssif_bmc: add support of
 skipping ARM SBMR boot progress response
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
Cc: devicetree@vger.kernel.org, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Adding support of skipping ARM SBMR boot progress response, to avoid
SSIF state machine problem if host chosse not read back the response.

Potin Lai (2):
  bindings: ipmi: Add property for skipping SBMR boot progress response
  ipmi: ssif_bmc: support skipping ARM SBMR bootprogress response

 .../devicetree/bindings/ipmi/ssif-bmc.yaml    |  5 ++++
 drivers/char/ipmi/ssif_bmc.c                  | 25 +++++++++++++++++++
 2 files changed, 30 insertions(+)

-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
